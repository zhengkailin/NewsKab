package com.accp.controller;

import org.springframework.core.convert.converter.Converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DataConverter implements Converter<String,Date> {
    //将要转换的格式set进来
    private String dataPatter;

    public void setDataPatter(String dataPatter) {
        this.dataPatter = dataPatter;
    }

    /**
     * 注意！！！
     * 我们重写这个方法，是改变spring原有的默认时间格式如2017/1/12，
     * 而现在我们也支持了在配置文件配置的yyyy-MM-dd格式，所以我们表单提交的时候，
     * 可以支持这个方式提交到这里进来而不报错了
     * @param s
     * @return
     */
    public Date convert(String s) {
        Date date=null;
        try {
            date= new SimpleDateFormat(dataPatter).parse(s);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return date;
    }
}
