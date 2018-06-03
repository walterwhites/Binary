if [ $# -eq 1 ]
then
        git log --author=$1 --pretty=tformat: --numstat | awk '{ add += $1; subs += $2; loc += $1 - $2 } END { printf "added lines: %s, removed lines: %s, total lines: %s\n", add, subs, loc }' - > logs.txt
        cat logs.txt
else
        echo "ERROR: you should pass username at argument"
fi
