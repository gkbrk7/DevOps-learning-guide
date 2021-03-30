#! /bin/bash
# Github Link all the documents : https://github.com/SonarSystems/Bash-Scripting


# -n says no new line
echo -n "Hello Gokberk "
echo "Hello Gizem"

# allows special characters
echo -e "deneme \n test"

# multiple comment line
: 'asdf
sadfasfd
aaasdf
asdf'

# variables
var="Hello"
num=20
((result=num/2))
echo "This is $var"
echo $result
echo $num/3 | bc
echo $num/3 | bc -l

# Strings
text1="Hello"
text2="My Darling"
text2+=$text1
str="Hello World"
sub=${str:6:5}
echo "$text1 $text2"
echo $sub

# While Loop
# Reference : https://tldp.org/LDP/abs/html/comparison-ops.html
count=0
while [ $count -lt 10 ]; do
    echo "Loop is at $count"
    let count=count+1
done

# For Loop
for i in $( ls ); do
    echo $i
done

for i in `seq 1 25`; do
    echo $i
done

# Until Loop
count2=25
until [ $count2 -lt 10 ]; do
    echo $count2
    let count2-=1
done

# Break and Continue
count2=0

while [ $count2 -lt 10 ]; do
    let count2+=1

    if [ $count2 -eq 5 ];
    then
        break
        # continue
    fi

    echo $count2
done

# User Input
echo "Input your favourite superhero"
read superhero
echo "Your favourite superhero is $superhero"

# If statement
echo "Enter a number"
read _num
if [[ ($_num -lt 10 && $_num -gt 5) ]];
then
    echo "Nice !!!"
elif [ $_num -lt 20 ];
then
    echo "Nope so close :D"
else
    echo "Nothing :("
fi

# Case Statements
echo "Give me a state"
read state

case $state in 
1) echo "This is a very common case";;
2) echo "This is a common case";;
3) echo "This is a uncommon case";;
*) echo "This is a very uncommon case";;
esac

# Get Arguments from the terminal
totalArgs=$#
dollar=$1
dollar1=$2
echo "Total number of args = $totalArgs"
echo "$1 * $2 = $(( $1*$2 ))"

# Functions
function Hello()
{
    echo "Hello Gokberk"
}

Hello

function Adder(){
    result=$(($1+$2))
    echo "Result is $result"
}

Adder 8 10

function Adder2(){
    result=$(($1+$2))
    echo $result
}

value=$(Adder2 7 8)
echo $value

# Arrays
arr=( "Batman" "Yoda" "Superman" "Ironman" )

size=${#arr[@]}

index=1
val1=${arr[${index}]}

echo $size
echo $val1

for (( i=0; i<$size; i++ )); do
    echo ${arr[${i}]}
done

# Shell Environment Variables
echo $BASH
echo $SHELL
# export EPIC="Hello"
# echo $EPIC
# Can be configured in ~/.bashrc and reload with source command 

# Scheduled Automation
# Learn more at https://kvz.io/schedule-tasks-on-linux-using-crontab.html
# sudo crontab -l
# sudo crontab -e

#  Aliases (These are the local shell variables so if you register the environment save this aliases or environment variables into ~/.bashrc)
# alias desktop="cd /home/gokberk/Desktop"
# desktop

# Wildcards
# Learn more at https://tldp.org/LDP/GNU-Linux-Tools-Summary/html/x11655.htm
# cp {*.mp4,*.mp3} /home/gokberk/Desktop/folder

# Multiple Commands (; or &&)

