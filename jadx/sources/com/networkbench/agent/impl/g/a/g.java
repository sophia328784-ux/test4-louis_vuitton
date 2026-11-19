package com.networkbench.agent.impl.g.a;

import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;

/* JADX INFO: loaded from: classes2.dex */
public class g implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private GestureDetector f37188a;

    public g(GestureDetector gestureDetector) {
        this.f37188a = gestureDetector;
    }

    @Override // com.networkbench.agent.impl.g.a.c
    public void a(MotionEvent motionEvent) {
        this.f37188a.onTouchEvent(motionEvent);
    }

    @Override // com.networkbench.agent.impl.g.a.c
    public void a(KeyEvent keyEvent) {
    }
}
