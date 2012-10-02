py_jenkins_example
==================

Simple Example of Jenkins usage with Pylint, Pep8, and Coverage


Setup
------

The setup is done in three separate slightly goofy steps (step_*.sh)

PostBuild Action
----------------

Publish Cobertura Coverage Report

Cobertura xml report pattern **/py_jenkins_example/example_pkg/coverage.xml


Publish JUnit test results report
---------------------------------

Test report XMLS **/nosetests.xml


Publish coverage.py HTML reports
---------------------------------

Report directory **/htmlcov


Report Violations
---------------------

pylint 10 999 999 pylint.out

pep8 10 999 999 pep8.out

Source Path Pattern **/py_jenkins_example/example_pkg


Publish SLOCCount analysis results
----------------------------------

SLOCCount reports **/sloccount.out


