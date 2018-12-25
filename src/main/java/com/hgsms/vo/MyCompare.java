package com.hgsms.vo;

import com.hgsms.model.message.DepartMent;

import java.util.Comparator;

/**
 * Created by CDZ on 2018/11/30.
 */
public class MyCompare implements Comparator<DepartMent> {
    @Override
    public int compare(DepartMent o1, DepartMent o2) {
        if (Integer.valueOf(o1.getDplv()) < Integer.valueOf(o2.getDplv())) {
            return -1;
        } else {
            return 1;
        }
    }
}
