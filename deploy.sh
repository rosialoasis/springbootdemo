#!/bin/sh
SERVER_NAME=demo-1-0.0.1-SNAPSHOT
JAR_NAME=demo-1-0.0.1-SNAPSHOT
#JAR_PATH=/usr/local/jenkins/springbootdemo/target
JAR_WORK_PATH=/usr/local/jenkins/springbootdemo/target

PID=`ps -ef | grep "$SERVER_NAME" | grep -v grep | awk '{print $2}'`
echo "PID：$PID"

if [ ! -n "$PID" ]; then
  echo "IS NULL"
else
  echo "NOT NULL"
  for id in $PID
  do
    kill -9 $id
    echo "killed $id"
  done
fi

cd $JAR_WORK_PATH
chmod 755 $JAR_NAME.jar
BUILD_ID=dontKillMe nohup java -jar  -Dspring.profiles.active=test  $JAR_NAME.jar  > $JAR_NAME.log 2>&1 &

echo "END!"
