@echo off

REM ==============================
REM CONFIG
REM ==============================
set JMETER_HOME=C:\Tools\apache-jmeter-5.6.3
set TEST_PLAN=jmx\login_test.jmx

REM ==============================
REM CLEAN OLD RESULTS (IMPORTANT)
REM ==============================
if exist results rmdir /s /q results
if exist reports rmdir /s /q reports

mkdir results
mkdir reports

REM ==============================
REM BASELINE TEST
REM ==============================
echo Running BASELINE test...
CALL "%JMETER_HOME%\bin\jmeter.bat" -n ^
 -t %TEST_PLAN% ^
 -Jthreads=5 ^
 -Jrampup=5 ^
 -Jloops=1 ^
 -l results\baseline.jtl ^
 -e -o reports\baseline

REM ==============================
REM LOAD TEST
REM ==============================
echo Running LOAD test...
CALL "%JMETER_HOME%\bin\jmeter.bat" -n ^
 -t %TEST_PLAN% ^
 -Jthreads=20 ^
 -Jrampup=20 ^
 -Jloops=2 ^
 -l results\load.jtl ^
 -e -o reports\load

REM ==============================
REM STRESS TEST
REM ==============================
echo Running STRESS test...
CALL "%JMETER_HOME%\bin\jmeter.bat" -n ^
 -t %TEST_PLAN% ^
 -Jthreads=50 ^
 -Jrampup=30 ^
 -Jloops=3 ^
 -l results\stress.jtl ^
 -e -o reports\stress

REM ==============================
REM SPIKE TEST
REM ==============================
echo Running SPIKE test...
CALL "%JMETER_HOME%\bin\jmeter.bat" -n ^
 -t %TEST_PLAN% ^
 -Jthreads=40 ^
 -Jrampup=2 ^
 -Jloops=1 ^
 -l results\spike.jtl ^
 -e -o reports\spike

echo ==============================
echo ALL PERFORMANCE TESTS COMPLETED
echo ==============================

exit /b 0
