echo "Starting python testing stage and code metric step"

VEN_JENKINS_HOME=$WORKSPACE/.virtualenvs/

echo "Activating virtualenv $VEN_JENKINS_HOME"
source $VEN_JENKINS_HOME/bin/activate

export PYTHONPATH=$WORKSPACE/py_jenkins_example:$PYTHONPATH
echo "Setting python path to ${PYTHONPATH}"


# Generate JUnit/XUnit
#nosetests --where=$WORKSPACE/example_pkg --with-xunit

# Generate coverage report and JUnit/XUnit report
# nosetests --where=$WORKSPACE/py_jenkins_example/example_pkg --with-xunit --with-cov --cov-report xml --cov-report html
$VEN_JENKINS_HOME/bin/nosetests --where=$WORKSPACE/py_jenkins_example/example_pkg --with-xunit --with-cov --cov-report xml --cov-report html
echo $?


# Generate pylint
$VEN_JENKINS_HOME/bin/pylint -f parseable $WORKSPACE/py_jenkins_example/example_pkg | tee pylint.out
echo $?

# Generate pep8
#$VEN_JENKINS_HOME/bin/pep8 $WORKSPACE/py_jenkins_example/example_pkg > pep8.out
#echo $?
#echo "Completed python testing stage and code metric step"