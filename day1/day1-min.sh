k=0;while read c;do if [[ -n $x && -n $y && -n $z ]]; then let b=$x+$y+$z; let a=$x+$y+$c; if [[ $b -lt $a ]]; then let k=$k+1;fi; fi; z=$y; y=$x; x=$c; done; echo $k
