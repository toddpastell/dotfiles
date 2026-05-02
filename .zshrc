export CLICOLOR=1
PROMPT="%2~ %# "
path+=(/opt/homebrew/bin)
path+=(/Applications/love.app/Contents/MacOS)

eval "$(fnm env --use-on-cd --shell zsh)"

