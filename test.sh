# ./test.sh
# to run parsing tests
# ./test.sh -t
# to run parsing tests and type checks

if [[ "$1" == "-t" ]]
then
    PASS=./testcases/typecheck/pass/*
    FAIL=./testcases/typecheck/fail/*
    echo "Typechecking..."
elif [[ "$1" == "-p" ]]
then
    PASS=./testcases/parsing/pass/*
    FAIL=./testcases/parsing/fail/*
    echo "Check parsing..."
else
    PASS=./testcases/vm/pass/*
    echo "Check vm..."
    echo "All the output should be 9"
fi

# f=./testcases/typecheck/scope
# printf "%-60s `./main $1 $f`\n" "$f"
echo "These should pass..."
for f in $PASS
do
    printf "%-60s `./main $1 $f`\n" "$f"
done
echo ""
echo "These should fail..."
for f in $FAIL
do
    printf "%-60s `./main $1 $f`\n" "$f"
done
