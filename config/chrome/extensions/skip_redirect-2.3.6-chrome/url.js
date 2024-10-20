/* global base64 */
const url = (function(root) { //  eslint-disable-line no-unused-vars

    if (typeof base64 === "undefined") {
        base64 = require("./base64"); //  eslint-disable-line no-global-assign,no-unused-vars
    }

    const PROTOCOLS = [
        "ftp",
        "http",
        "https",
        "mms",
        "rtsp",
    ];

    function comprehend(array, transformFunction) {
        const result = [];
        for (const thing of array) {
            result.push(transformFunction(thing));
        }

        return result;
    }

    const possibleColonPrefixes = comprehend(PROTOCOLS, protocol => protocol + "(?::)").concat("www\\.");
    const possibleColonPrefixesString = "(?:" + possibleColonPrefixes.join("|") + ")";

    const possibleEncodedColonPrefixes = comprehend(PROTOCOLS, protocol => protocol + "(?:%3A|%253A)").concat("www\\.");
    const possibleEncodedColonPrefixesString = "(?:" + possibleEncodedColonPrefixes.join("|") + ")";

    const possiblePlainPrefixes = comprehend(PROTOCOLS, protocol => protocol + "(?::|%3A|%253A)").concat("www\\.");
    const possiblePlainPrefixesString = "(?:" + possiblePlainPrefixes.join("|") + ")";

    const possibleBase64Prefixes =        comprehend(PROTOCOLS, protocol =>  base64.encode(protocol + "://").slice(0, -4)).concat(base64.encode("www"));
    const possibleBase64PrefixesDecoded = comprehend(PROTOCOLS, protocol =>                protocol + "://")              .concat("www\\.");
    const possibleBase64PrefixesString = "(?:" + possibleBase64Prefixes.join("|") + ")";

    const base64JunkPrefix = "(?:[ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/]+\\.)?";
    const validBase64 =         "[ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/]+";

    // the slice above is required in case there is padding, that's why a test on
    // the decoded string is needed
    const base64CheckRegexp = new RegExp("^(?:" + possibleBase64PrefixesDecoded.join("|") + ")", "i");

    const pathRegexpPlainProtocol   = new RegExp("https?://.*?" + "(?:[^/][/]|\\?)" +                            "(" + possibleColonPrefixesString         + ".*$"       + ")", "i");
    const pathRegexpEncodedProtocol = new RegExp("https?://.*?" + "(?:[^/][/]|\\?)" +                            "(" + possibleEncodedColonPrefixesString  + "[^?&;#]*"  + ")", "i");
    const pathRegexpBase64Protocol  = new RegExp("https?://.*?" + "(?:[^/][/]|[^#][#]|\\?)" + base64JunkPrefix + "(" + possibleBase64PrefixesString        + validBase64 + ")", "i");

    // %
    const percentRegExp = new RegExp("%25", "i");

    // #$&+,/:;=?@
    const symbolRegExp = new RegExp("(%23|%24|%26|%2B|%2C|%2F|%3A|%3B|%3D|%3F|%40)", "i");

    function getQueryRegexpPlainProtocol(parameterExceptions) {
        // the first alternative in the group is for the case that there are several ?
        // in the url and thus encoding is incomplete - it just picks everything from
        // there to the end or the next ?
        const simple = new RegExp("https?://.*" +                                  "=" + "(" + possiblePlainPrefixesString  + "(?:[^?&;#]+[?][^?]+|[^?&;#]+)" + ")", "i");
        if (!parameterExceptions || parameterExceptions.length == 0) {
            return simple;
        }

        // use try/catch to catch problems with given exceptions and to keep
        // (partially) working on older browsers
        try {
            return new RegExp("https?://.*" + `(?<!${parameterExceptions.join("|")})=` + "(" + possiblePlainPrefixesString  + "(?:[^?&;#]+[?][^?]+|[^?&;#]+)" + ")", "i");
        } catch(_exception) {
            return simple;
        }
    }

    function getQueryRegexpBase64Protocol(parameterExceptions) {
        const simple = new RegExp("https?://.*" +                                  "=" + "(" + possibleBase64PrefixesString + validBase64                     + ")", "i");
        if (!parameterExceptions || parameterExceptions.length == 0) {
            return simple;
        }

        // use try/catch to catch problems with given exceptions and to keep
        // (partially) working on older browsers
        try {
            return new RegExp("https?://.*" + `(?<!${parameterExceptions.join("|")})=` + "(" + possibleBase64PrefixesString + validBase64                     + ")", "i");
        } catch(_exception) {
            return simple;
        }
    }

    function maybeDecode(urlMatch) {
        if (percentRegExp.test(urlMatch)) {
            urlMatch = decodeURIComponent(urlMatch);
        }

        if (symbolRegExp.test(urlMatch, "i")) {
            urlMatch = decodeURIComponent(urlMatch);
        }

        if (urlMatch.indexOf("http") !== 0) {
            urlMatch = "http://" + urlMatch;
        }

        return urlMatch;
    }

    function getPlainMatches(url, parameterExceptions) {
        const matches =
            url.match(pathRegexpPlainProtocol, "i") ||
            url.match(pathRegexpEncodedProtocol, "i") ||
            url.match(getQueryRegexpPlainProtocol(parameterExceptions), "i") ||
            undefined;
        if (matches) {
            return matches[1];
        }
    }

    function getBase64Matches(url, parameterExceptions) {
        const matches =
            url.match(pathRegexpBase64Protocol, "i") ||
            url.match(getQueryRegexpBase64Protocol(parameterExceptions), "i") ||
            undefined;
        if (matches) {
            const decodedMatch = base64.decode(matches[1]).split("\n")[0];
            if (base64CheckRegexp.test(decodedMatch, "i")) {
                return decodedMatch;
            }
        }
    }

    function getRedirectTarget(url, urlExceptions, parameterExceptions) {
        if (urlExceptions.length > 0 && new RegExp("(" + urlExceptions.join("|") + ")", "i").test(url)) {
            return url;
        }

        const extractedUrl = getPlainMatches(url, parameterExceptions) || getBase64Matches(url, parameterExceptions);
        if (extractedUrl) {
            return getRedirectTarget(maybeDecode(extractedUrl), urlExceptions, parameterExceptions);
        }

        return url;
    }

    root.getRedirectTarget = getRedirectTarget;

    return {
        getRedirectTarget: getRedirectTarget,
    };

})(this);
