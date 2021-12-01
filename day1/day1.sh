
        # If we reaaally cared we could just remove the oldest and add the newest. Window size is 3 so meh
        #Could also have an array of length windowSize if we wanteed this to be modular as well



count=0

while read cur; do
    if [[ -n $prev && -n $prevPrev && -n $prevPrevPrev ]]; then
        let windowOld="$prev + $prevPrev + $prevPrevPrev"
        let windowNew="$prev + $prevPrev + $cur"
        if [[ "$windowOld" -lt "$windowNew" ]]; then
            let count="$count + 1"
        fi
    fi
    prevPrevPrev="$prevPrev"
    prevPrev="$prev"
    prev="$cur"
done

echo "$count"
