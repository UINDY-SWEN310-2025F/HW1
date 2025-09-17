echo "Running tests..."
echo

CUR=$(pwd)
echo $CUR
ANS_DIR=$CUR"/answer"
echo $ANS_DIR

COMMAND=$ANS_DIR/show_ps.sh
# echo "------%%"
# echo $COMMAND
# echo "------%%"

$COMMAND > test.out | sleep 10 | echo -ne "\n"

#cat test.out

echo "---------------"


if [ `grep -c "Machine name" test.out ` -gt 0 ] ; then
 echo "Pass: Output1 is correct"
else
 echo "Expected '$expected_output1' but got: $output1"
 exit 1
fi

# output2=$(echo './answer/user.csv' | $ANS_DIR'/grep_user.sh')
# expected_output2="Enter the user file path
# Username, Company, Position, Email
# Alex, Boeing, Manager, alex@box.com
# Bob, Google, Engineer, bob12@gmail.com
# Ted, Google, Manager, ted122@gmail.com
# Steve, Boeing, Engineer, st@email.org
# John, Boeing, Manager, john12@gmail.com
# John, Boeing, Engineer, john122@email.org
# Mary, IBM, Vice President, marymary@gmail.com
# Clock, X.com, Consultant, coclock@gmail.com
# Sara, Facebook, HR, sara@fb.org
# Tina, Steve Mechanics, Engineer, tttina@email.org
# John, X.com, Engineer, john22@emailxyz.org
# John, Facebook, Manager, john272@emailxyz.org
# Sara, IBM, HR, sara12@ibm.com
# The search outcome is John, Boeing, Engineer, john122@email.org"

# if [ "$output2" == "$expected_output2" ] ; then
#  echo "Pass: Output2 is correct"
# else
#  echo "Expected '$expected_output2' but got: $output2"
#  exit 1
# fi

# rm -rf ./answer/xyz_*
# output3=$(./answer/loop_find.sh <<EOF
#   ./answer
#   3
# EOF
# )

# expected_output3="Enter a directory
# Enter a number
# checking ./answer/xyz_1.data
# checking ./answer/xyz_2.data
# checking ./answer/xyz_3.data
# Found ./answer/xyz_3.data"

# if [ "$output3" == "$expected_output3" ] ; then
#  echo "Pass: Output3 is correct"
# else
#  echo "Expected '$expected_output3' but got: $output3"
#  exit 1
# fi

# rm -rf ./answer/xyz_*
# output4=$(./answer/loop_find.sh <<EOF
#   ./xxx
#   ./answer
#   5
# EOF
# )

# expected_output4="Enter a directory
# Not a directory. Enter a directory
# Enter a number
# checking ./answer/xyz_1.data
# checking ./answer/xyz_2.data
# checking ./answer/xyz_3.data
# checking ./answer/xyz_4.data
# checking ./answer/xyz_5.data
# Found ./answer/xyz_5.data"

# if [ "$output4" == "$expected_output4" ] ; then
#  echo "Pass: Output4 is correct"
# else
#  echo "Expected '$expected_output4' but got: $output4"
#  exit 1
# fi

# echo "All tests passed."

exit 0
