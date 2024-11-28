#!/bin/zsh

languages="golang python3 javascript typescript elixir"
core_utils="curl jq sed awk grep find"

all_tools=$(echo "$languages $core_utils" | tr ' ' '\n' | sort | uniq)

selected=$(echo $all_tools | fzf)

echo -n "Enter your query: "
read query

query=$(echo $query | tr ' ' '+')

if echo $languages | grep -qs $selected; then
  result=$(curl -s cht.sh/$selected/$query)
else
  result=$(curl -s cht.sh/$selected~$query)
fi

echo $result | less
