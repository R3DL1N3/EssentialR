splitRight()
{
    for x in $@; do
        echo ${x%:*} ${x##*:}
    done
}

matchRight()
{
    local pattern=$1
    shift
    while (($#)); do
        local left=$1
        shift
        [[ $1 =~ $pattern ]] && echo $left $1
        shift
    done
}

leftOf()
{
    while (($#)); do
        echo $1
        shift
        shift
    done
}

longOpts()
{
    while (($#)); do
        local left=$1
        shift
        echo "--$1-$left"
        shift
    done
}
