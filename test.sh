echo "Running tests..."
echo

output=$(./main.out)

# Read the values into an array
readarray -t values <<< "$output"

# Assign each value to a variable
val1=${values[0]}
val2=${values[1]}

if [ $? -eq 0 ] ; then
  echo "Pass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi

if [ "$val1" == "5.00" ] ; then
  echo "Pass: Hypotenuse: $val1"
else
  echo "Expected '5.00' but got: $val1"
  exit 1
fi

if [ "$val2" == "13.00" ] ; then
  echo "Pass: Hypotenuse: $val2"
else
  echo "Expected '13.00' but got: $val2"
  exit 1
fi

echo
echo "All tests passed."

exit 0
