VEN_JENKINS_HOME=$WORKSPACE/.virtualenvs/

if [ ! -d $VEN_JENKINS_HOME/py_jenkins_example ]; then
echo "Doing a fresh pull of of py_jenkins_example"
git clone git://github.com/mpkocher/py_jenkins_example.git
else
cd $VEN_JENKINS_HOME/py_jenkins_example
git pull
fi

echo "Starting build at `date`"

if [ -d $VEN_JENKINS_HOME ]; then
echo "Removing $VEN_JENKINS_HOME"
rm -rf $VEN_JENKINS_HOME
fi

# Make Virtual env
echo "Making virtualenv $VEN_JENKINS_HOME"
/usr/local/share/python/virtualenv $VEN_JENKINS_HOME

echo "Activating virtualenv $VEN_JENKINS_HOME"
source $VEN_JENKINS_HOME/bin/activate
pip install --quiet -r $WORKSPACE/py_jenkins_example/requirements.txt
echo $?
pip install --quiet nosexcover
echo $?

echo "Complete initial Build step"
