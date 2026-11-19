package com.networkbench.agent.impl.session.screen;

import android.view.MotionEvent;
import defpackage.fc;

/* JADX INFO: loaded from: classes2.dex */
public class NBSMotionEvent {
    long time;
    float x;
    float y;

    public NBSMotionEvent conversionMotionEvent(MotionEvent motionEvent, long j2) {
        this.time = j2;
        this.x = motionEvent.getX();
        this.y = motionEvent.getY();
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("NBSMotionEvent{x=");
        sb.append(this.x);
        sb.append(", y=");
        sb.append(this.y);
        sb.append(", time=");
        return fc.k(sb, this.time, '}');
    }
}
