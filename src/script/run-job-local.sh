export HADOOP_CLASSPATH=target/classes
rm -R -f output

#yarn net.madvirus.yarn.mr.MaxTemperatureDriver \
#-conf conf/local-mr.xml \
#input/ncdc output

#hadoop net.madvirus.yarn.mr.MaxTemperatureDriver -fs file:/// -jt local input/ncdc output
hadoop net.madvirus.yarn.mr.MaxTemperatureDriver -conf conf/local-mr.xml input/ncdc output

