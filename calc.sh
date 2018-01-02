#!/bin/bash

function add (){
   
    first=$1
    second=$2
   
    sum=$(($first+$second))
    return $sum
   
}

function subtraction (){
   
    input1=$1
    input2=$2
   
    result=$(($input1 - $input2))
    return $result
   
}

function multiplication (){
   
    inp1=$1
    inp2=$2
   
    multi=$(($inp1 * $inp2))
    return $multi   
}

function division (){
   
    number1=$1
    number2=$2
   
    div=$(($number1 / $number2))
    return $div
}

function convertIntvalToBase (){ # (Val Base)

   value=$1
   base=$2
   rest=""
   while [ $value -ne 0 ]
    do
        rest=$(($value % $base))$rest
        value=$(($value / $base))
    done
   return $rest
}

function factorial (){
   
    num=$1
    fact=1
    if [ $num -eq 1 ] || [ $num -eq 0 ]; then
        echo "Factorial is: 1"
    fi
    while [ $num -gt 0 ]
    do
        fact=`expr $num \* $fact`
        num=`expr $num - 1`
    done
    return $fact   
   
}

while :
    do
        echo "*******************"
        echo "1)add"
        echo "2)subtraction"
        echo "3)multiplication"
        echo "4)division"
        echo "5)base(value, base)"
        echo "6)factorial"
        echo "*******************"
        echo "Please, enter your choice(string)"
        echo "To exit, press 'q'"
        read operation
        if [ "$operation" == "q" ]; then
            echo "Exiting"
			exit 1 
		fi
	if [ "$operation" == "factorial" ]; then
		echo "For factorial, it takes the first input you entered"
	fi
        echo "Please, enter two numbers:"
        read num1
        read num2
       
        
       
        if [ "$operation" == "add" ]; then
            add $num1 $num2
            echo "Addition is:" $sum
       
        elif [ "$operation" == "subtraction" ]
        then
            subtraction $num1 $num2
            echo "Subtraction is:" $result
       
        elif [ "$operation" == "multiplication" ]
        then
            multiplication $num1 $num2
            echo "Multiplication is:" $multi
       
        elif [ "$operation" == "division" ]
        then
            division $num1 $num2
            echo "Division is:" $div
       
        elif [ "$operation" == "base" ]
        then
            convertIntvalToBase $num1 $num2
            echo "Converting value to base:" $rest
       
        elif [ "$operation" == "factorial" ]
        then
            factorial $num1
            echo "Factorial is:" $fact
       
        else
			echo "Nothing"
        fi
    done
