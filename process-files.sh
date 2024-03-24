myArray=(
  "https://games.engineering.com/star-wars-rebels-special-ops/media/images/localized/gui_localized_tutorial_x.png"
  "https://games.engineering.com/star-wars-rebels-special-ops/media/images/shader/shader.jpg"
)
baseDir='games/star-wars-rebels-special-ops'


for str in ${myArray[@]}; do
  val="$(echo "$str" | cut -c 60-)"

  # Does not exist
  if [ ! -e "$baseDir/$val" ]; then
    echo "Downloading $val"
    wget "https://games.engineering.com/star-wars-rebels-special-ops/$val" -O "$baseDir/$val"

    # Pause for 250 milliseconds (a 1/4th of a second)
    sleep 0.25
  fi
done
