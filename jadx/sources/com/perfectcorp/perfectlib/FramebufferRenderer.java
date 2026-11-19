package com.perfectcorp.perfectlib;

import defpackage.m00;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* JADX INFO: loaded from: classes2.dex */
public interface FramebufferRenderer {

    /* JADX INFO: loaded from: classes3.dex */
    public interface OnDirtyListener {
        public static final OnDirtyListener NOP = new m00();

        void onDirty(FramebufferRenderer framebufferRenderer);
    }

    void onDraw(GL10 gl10, int i2);

    void onEGLContextCreated(GL10 gl10, EGLConfig eGLConfig);

    void release(GL10 gl10);

    void setOnDirtyListener(OnDirtyListener onDirtyListener);
}
