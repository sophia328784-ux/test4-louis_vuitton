package com.linkplay.lpmdpkit.bean;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class LPPresetData implements Serializable {
    private String backupQueue = "";
    private String keyMapping = "";
    private String index = "";
    private String source = "";

    public String getBackupQueue() {
        return this.backupQueue;
    }

    public String getIndex() {
        return this.index;
    }

    public String getKeyMapping() {
        return this.keyMapping;
    }

    public String getSource() {
        return this.source;
    }

    public void setBackupQueue(String str) {
        this.backupQueue = str;
    }

    public void setIndex(String str) {
        this.index = str;
    }

    public void setKeyMapping(String str) {
        this.keyMapping = str;
    }

    public void setSource(String str) {
        this.source = str;
    }
}
