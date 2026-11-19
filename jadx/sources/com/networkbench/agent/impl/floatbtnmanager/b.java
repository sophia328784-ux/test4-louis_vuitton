package com.networkbench.agent.impl.floatbtnmanager;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class b implements View.OnTouchListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f37073a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f37074b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f37075c;
    private float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private FloatingViewItem f37076e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f37077f;
    private int g;

    public b(FloatingViewItem floatingViewItem) {
        this.f37076e = floatingViewItem;
        this.f37077f = floatingViewItem.getPosBeginX();
        this.g = floatingViewItem.getPosBeginY();
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent == null || !this.f37076e.k()) {
            return false;
        }
        float rawX = motionEvent.getRawX();
        float rawY = motionEvent.getRawY();
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f37073a = true;
            this.f37075c = rawX - this.f37077f;
            this.d = rawY - this.g;
            this.f37074b = System.currentTimeMillis();
        } else if (action == 1) {
            this.f37073a = false;
            this.f37076e.c();
        } else if (action == 2 && this.f37073a) {
            int i2 = (int) (rawX - this.f37075c);
            this.f37077f = i2;
            int i3 = (int) (rawY - this.d);
            this.g = i3;
            this.f37076e.a(motionEvent, i2, i3);
        }
        return false;
    }
}
