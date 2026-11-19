package com.batch.android.j0;

import android.view.MotionEvent;

/* JADX INFO: loaded from: classes2.dex */
public interface b {

    public interface a {
        boolean a(MotionEvent motionEvent, b bVar);

        boolean a(MotionEvent motionEvent, b bVar, boolean z);
    }

    boolean a(MotionEvent motionEvent);

    boolean b(MotionEvent motionEvent);

    void setTouchEventDelegate(a aVar);
}
