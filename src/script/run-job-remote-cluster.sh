# hadoop fs -mkdir hdfs://bt4:8020/tmp/bkchoi/ncdc
# hadoop fs -copyFromLocal input/ncdc/1902 hdfs://bt4:8020/tmp/bkchoi/ncdc
# hadoop fs -rm -f -r -skipTrash hdfs://bt4:8020/tmp/bkchoi/output/ncdc
yarn jar target/yarn-mr.jar net.madvirus.yarn.mr.MaxTemperatureDriver -conf conf/yarn-remote.xml hdfs://bt4:8020/tmp/bkchoi/ncdc hdfs://bt4:8020/tmp/bkchoi/output/ncdc
