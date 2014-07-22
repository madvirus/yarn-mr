package net.madvirus.yarn.mr;


import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;

import java.io.IOException;

public class MaxTemperatureMapper extends Mapper<LongWritable, Text, Text, IntWritable> {

    @Override
    protected void map(LongWritable key, Text value, Context context) throws IOException, InterruptedException {
        String line = value.toString();
        String year = line.substring(15, 19);
        String temp = line.substring(87, 92);
        if (!missing(temp)) {
            int airTemperatur = Integer.parseInt(line.substring(87, 92));
            context.write(new Text(year), new IntWritable(airTemperatur));
        }
    }

    private boolean missing(String temp) {
        return temp.equals("+9999");
    }
}
