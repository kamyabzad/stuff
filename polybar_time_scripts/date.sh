#!/usr/bin/env sh

case $(redis-cli get polybar-date-toggle) in
    1)
        echo $(date +" %I:%M %p, %A, %d %B %Y, ") $(jdate +"%d %B %Y")
        ;;
    *)
        echo $(date +" %I:%M %p")
esac
