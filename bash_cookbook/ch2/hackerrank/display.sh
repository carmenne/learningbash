#!/bin/bash
read N
cols=100
rows=63
mid=$(($cols / 2))

declare -A matrix
let wide=16

function create_node() {
    
    # Y
    #echo create node: $1 $2 $3 $4 $5
    left=$(($1-1))
    right=$(($1+1))
    for i in `seq 1 $3`; do
        matrix[$(($2-$i)),$1]=$5
        matrix[$(($2-$3-$i)),$left]=$5
        matrix[$(($2-$3-$i)),$right]=$5
        let left--
        let right++
    done
}

for ((i=0;i<63;i++)) do
    for ((j=0;j<$cols;j++)) do
        matrix[$i,$j]="_"
    done
done


it=0
function create() {

    let comp=`echo "2   ^$N - 1" | bc`
    if [ $4 -lt $N ]; then
        create_node $1 $2 $3 $4 $5
        # re-assign args

        create $(($1-$3)) $(($2-2*$3)) $(($3/2)) $(($4+1)) 1
        create $(($1+$3)) $(($2-2*$3)) $(($3/2)) $(($4+1)) 1

    fi
}
    
create $mid $rows $wide $it 1
# Print the matrix
for ((i=0;i<63;i++)) do
    for ((j=0;j<cols;j++)) do
        printf "%s" ${matrix[$i,$j]}
    done
    echo
done


