#! /bin/bash


cat AutoHandler3Test.cpp | $1 -stdin x.cpp -- -std=c++1z > /dev/null

echo "" | $1 -stdin x.cpp -- -std=c++1z > /dev/null

`echo -n ""` | $1 -stdin x.cpp -- -std=c++1z > /dev/null

#$1 -stdin x.cpp -- -std=c++1z > /dev/null

#$1 -stdin x.cpp -- -std=c++1z 0>&-


$1 -version

# close stdin
exec 0<&-

# results in: Bad file descriptor
$1 -stdin x.cpp -- -std=c++1z

exit 0
