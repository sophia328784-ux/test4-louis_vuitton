package com.linkplay.lpmdpkit.bean;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class LPPlayMediaData implements Serializable {
    private int appendCount;
    private String mediaSource;
    private int playIndex;
    private String queueName = "";
    private String playData = "";
    private List<String> headData = new ArrayList();
    private List<String> tailData = new ArrayList();

    public int getAppendCount() {
        return this.appendCount;
    }

    public List<String> getHeadData() {
        return this.headData;
    }

    public String getMediaSource() {
        return this.mediaSource;
    }

    public String getPlayData() {
        return this.playData;
    }

    public int getPlayIndex() {
        return this.playIndex;
    }

    public String getQueueName() {
        return this.queueName;
    }

    public List<String> getTailData() {
        return this.tailData;
    }

    public void setAppendCount(int i2) {
        this.appendCount = i2;
    }

    public void setHeadData(List<String> list) {
        this.headData = list;
    }

    public void setMediaSource(String str) {
        this.mediaSource = str;
    }

    public void setPlayData(String str) {
        this.playData = str;
    }

    public void setPlayIndex(int i2) {
        this.playIndex = i2;
    }

    public void setQueueName(String str) {
        this.queueName = str;
    }

    public void setTailData(List<String> list) {
        this.tailData = list;
    }
}
