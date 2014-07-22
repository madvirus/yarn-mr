# hadoop fs -mkdir /input
# hadoop fs -mkdir /input/ncdc
# hadoop fs -copyFromLocal input/ncdc/1902 /input/ncdc
yarn jar target/yarn-mr.jar net.madvirus.yarn.mr.MaxTemperatureDriver /input/ncdc /output
