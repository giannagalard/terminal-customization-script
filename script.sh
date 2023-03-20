greeting() {
  local day=$(date +"%A")
  local time=$(date +"%H:%M:%S")
  local hour=$(date +"%H")
  local greeting
  if [ $hour -lt 12 ]; then
    greeting="Good morning"
  elif [ $hour -lt 18 ]; then
    greeting="Good afternoon"
  else
    greeting="Good evening"
  fi
echo "$greeting, Gianna ♡"
echo "Today is $day and it is $time ♡"
}
random_quote() {
  local quote_data=$(curl -s "https://zenquotes.io/api/random")
  local quote_text=$(echo $quote_data | jq -r '.[0].q')
  local quote_author=$(echo $quote_data | jq -r '.[0].a')
  echo "\"$quote_text\" - $quote_author"
}
echo ""
greeting
echo ""
echo "$(random_quote)"
PROMPT='
 🌸  '
