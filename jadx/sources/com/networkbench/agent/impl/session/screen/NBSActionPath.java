package com.networkbench.agent.impl.session.screen;

/* JADX INFO: loaded from: classes2.dex */
public class NBSActionPath {
    long time;
    float x;
    float y;

    public NBSActionPath(NBSMotionEvent nBSMotionEvent) {
        this.time = nBSMotionEvent.time;
        this.x = nBSMotionEvent.x;
        this.y = nBSMotionEvent.y;
    }
}
