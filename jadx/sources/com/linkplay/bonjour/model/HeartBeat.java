package com.linkplay.bonjour.model;

/* JADX INFO: loaded from: classes2.dex */
public class HeartBeat {
    private String heart = "heart";
    private long time;

    public HeartBeat() {
        this.time = 0L;
        this.time = System.currentTimeMillis();
    }

    public String getHeart() {
        return this.heart;
    }

    public long getTime() {
        return this.time;
    }

    public HeartBeat setHeart(String str) {
        this.heart = str;
        return this;
    }

    public HeartBeat setTime(long j2) {
        this.time = j2;
        return this;
    }
}
