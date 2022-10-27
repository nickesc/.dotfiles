# Catppuccin Theme (for zsh-syntax-highlighting)

# The MIT License (MIT)

# Copyright (c) 2021 Catppuccin

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

# (Catpucchin file used as base, edited by nickesc to use Paradise (https://github.com/paradise-theme/paradise))
# Catpuccin (https://github.com/catppuccin/zsh-syntax-highlighting)
#
# Paste this files contents inside your ~/.zshrc before you activate zsh-syntax-highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main cursor)
typeset -gA ZSH_HIGHLIGHT_STYLES

# Main highlighter styling: https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters/main.md
#
## General
### Diffs
### Markup
## Classes
## Comments
ZSH_HIGHLIGHT_STYLES[comment]='fg=#424242' #grey/darkblue
## Constants
## Entitites
## Functions/methods
ZSH_HIGHLIGHT_STYLES[alias]='fg=#8c977d,bold' # green
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=#8c977d,bold' # green
ZSH_HIGHLIGHT_STYLES[global-alias]='fg=#8c977d,bold' # green
ZSH_HIGHLIGHT_STYLES[function]='fg=#8c977d,bold' # green
ZSH_HIGHLIGHT_STYLES[command]='fg=#8c977d' # green
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#8c977d,italic' # green
ZSH_HIGHLIGHT_STYLES[autodirectory]='fg=#fab387,italic' # orange??
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#fab387' # orange??
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#fab387' # orange??
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=#a988b0' # magenta
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-unclosed]='fg=#a988b0,bold'  # magenta
## Keywords
## Built ins
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#8c977d' # green
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#8c977d' # green
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=#8c977d' # green
## Punctuation
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=#a988b0' # purple
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]='fg=#e8e3e3' # lightblue/white
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-unquoted]='fg=#e8e3e3' # lightblue/white
ZSH_HIGHLIGHT_STYLES[process-substitution-delimiter]='fg=#e8e3e3' # lightblue/white
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]='fg=#b66467' # lightred/pink
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=#b66467' # lightred/pink
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]='fg=#b66467' # lightred/pink
## Serializable / Configuration Languages
## Storage
## Strings
ZSH_HIGHLIGHT_STYLES[command-substitution-quoted]='fg=#d9bc8c' # yellow
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-quoted]='fg=#d9bc8c' # yellow
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#d9bc8c' # yellow
ZSH_HIGHLIGHT_STYLES[single-quoted-argument-unclosed]='fg=#d9bc8c,bold' # yellow
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#d9bc8c' # yellow
ZSH_HIGHLIGHT_STYLES[double-quoted-argument-unclosed]='fg=#d9bc8c,bold' # yellow
ZSH_HIGHLIGHT_STYLES[rc-quote]='fg=#d9bc8c' # yellow
## Variables
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=#e8e3e3' # lightblue/white
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument-unclosed]='fg=#e8e3e3,bold' # lightblue/white
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=#e8e3e3' # lightblue/white
ZSH_HIGHLIGHT_STYLES[assign]='fg=#e8e3e3' # lightblue/white
ZSH_HIGHLIGHT_STYLES[named-fd]='fg=#e8e3e3' # lightblue/white
ZSH_HIGHLIGHT_STYLES[numeric-fd]='fg=#e8e3e3' # lightblue/white
## No category relevant in spec
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#b66467' # red
ZSH_HIGHLIGHT_STYLES[path]='fg=#8da3b9,underline' # blue
ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=#b66467,underline' # lightred/pink
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=#8da3b9' # blue
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]='fg=#b66467' # lightred/pink
ZSH_HIGHLIGHT_STYLES[globbing]='fg=#a988b0' # purple
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=#a988b0'  # magenta
#ZSH_HIGHLIGHT_STYLES[command-substitution]='fg=?'
#ZSH_HIGHLIGHT_STYLES[command-substitution-unquoted]='fg=?'
#ZSH_HIGHLIGHT_STYLES[process-substitution]='fg=?'
#ZSH_HIGHLIGHT_STYLES[arithmetic-expansion]='fg=?'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=#e8e3e3' # lightblue/white
ZSH_HIGHLIGHT_STYLES[arg0]='fg=#e8e3e3' # lightblue/white
ZSH_HIGHLIGHT_STYLES[default]='fg=#e8e3e3' # lightblue/white
ZSH_HIGHLIGHT_STYLES[cursor]='fg=#e8e3e3' # lightblue/white
