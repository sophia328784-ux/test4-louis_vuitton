package com.linkplay.lpmdpkit.bean;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class LPAlarmData implements Serializable {
    private String backupQueue = "";
    private String keyMapping = "";
    private String queueName = "";

    public String getBackupQueue() {
        return this.backupQueue;
    }

    public String getKeyMapping() {
        return this.keyMapping;
    }

    public String getQueueName() {
        return this.queueName;
    }

    public void setBackupQueue(String str) {
        this.backupQueue = str;
    }

    public void setKeyMapping(String str) {
        this.keyMapping = str;
    }

    public void setQueueName(String str) {
        this.queueName = str;
    }
}
