# Generate SLOC
# sloc needs makefile_lists
export PATH=$PATH:/usr/local/bin

/usr/local/bin/sloccount --duplicates --wide --details $WORKSPACE/py_jenkins_example > sloccount.out 2> build.error
echo $?