
#!/bin/bash
RANDOM=$$

PIPS=2
MAXTHROWS=10
throw=0

Head=0
Tails=0
print_result ()
{
echo
echo "Head =   $Head"
echo "Tails =   $Tails"

echo
}

update_count()
{
case "$1" in
  0) let "Head += 1";;
  1) let "Tails += 1";;

esac
}

echo

while [ "$throw" -lt "$MAXTHROWS" ]
do
  let "die1 = RANDOM % $PIPS"
  update_count $die1
  let "throw += 1"
done

print_result
exit 0
