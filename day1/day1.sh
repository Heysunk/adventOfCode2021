count=0

while read cur; do
    if [[ -n "$prev" && "$prev" -lt "$cur" ]]; then
        let count="$count + 1"
    fi
    prev="$cur"
done

echo "$count"
