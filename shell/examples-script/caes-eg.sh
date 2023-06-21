#!/bin/bash
read -r -p "Enter your lucky number: " n
case $n in
1)
echo "You won 1st prize"
;;
2)
echo "You won 2nd prize"
;;
3)
echo "You got 3rd prize"
;;
*)
echo "Sorry,try again"
;;
esac
