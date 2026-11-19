package com.linkplay.core.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class DelayedTimer implements Serializable {
    private long MAX_DELAYED;
    private long start = 0;
    private long end = 0;
    public boolean isRefreshing = false;
    private boolean isFirstDelayed = true;

    public DelayedTimer(long j2) {
        this.MAX_DELAYED = j2;
    }

    public synchronized boolean isRefreshing() {
        return this.isRefreshing;
    }

    public boolean isValidate() {
        if (!this.isFirstDelayed) {
            return !this.isRefreshing && System.currentTimeMillis() - this.start > this.MAX_DELAYED;
        }
        this.isFirstDelayed = false;
        return true;
    }

    public synchronized void resetDelayedTimer() {
        this.start = 0L;
        this.isRefreshing = false;
    }

    public synchronized void setRefreshTime(boolean z) {
        this.isRefreshing = z;
    }

    public synchronized void updateStartTime() {
        this.start = System.currentTimeMillis();
    }
}
