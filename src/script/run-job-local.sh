export HADOOP_CLASSPATH=target/classes
hadoop net.madvirus.yarn.mr.MaxTemperatureDriver -fs file:/// -jt local input/ncdc output
