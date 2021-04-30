
#!/bin/bash
RANDOM=$$

PIPS=2
MAXTHROWS=21
throw=0
 point=0
Head=0
Tails=0
print_result ()
{
echo
echo "Head =   $Head"
echo "Tails =   $Tails"
echo "-------"
echo ${arr[$Head]}
echo ${arr[$Tails]}
echo
}

update_count()
{
case "$1" in
  0) let "Head += 1";;
  1) let "Tails += 1";;

esac
}

update_point()

{

if [[ ${arr[$Head]} -gt ${arr[$Tails]} ]];

 point= +2

}


echo
while [ "$throw" -lt "$MAXTHROWS" ]
do
  let "die1 = RANDOM % $PIPS"
  update_count $die1
 let "throw += 1"
done

if [[ ${arr[$Head]} -gt ${arr[$Tails]} ]];
then
    echo "Head is win"
     elif [[${Head} -eq ${arr[$Tails]} ]];
then
     echo "Tie"
fi

print_result
exit 0
