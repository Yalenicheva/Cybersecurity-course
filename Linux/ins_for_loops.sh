!#/bin/bash

#list variables
month=(
'january'
'february'
'march'
'april'
'may'
'june'
'july'
'august'
'september'
'october'
'novemebr'
'december'
)
days=('mon' 'tues' 'wed' 'thur' 'fri' 'sat' 'sun')

#create for loops

#print out months
for month in ${months[@]}
do
    echo $month
done

#print out the days of the week
for day in ${days[@]}
do
    if [$day = 'sun'] || [$day = 'sat']
    then
       echo "It is the weekend! Take it easy."
    else
       echo "It is a weekday! Get to work."
    fi
done

# run a command on each file
for file in $(ls)
do
    ls -lah $file
done

#display the number if its 1 or 4
for num in {0...5}
do
    if [$num = 1] || [$num = 4]
    echo $num
done
