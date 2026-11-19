package com.perfectcorp.perfectlib.makeupcam.video;

import android.opengl.EGLContext;

/* JADX INFO: loaded from: classes3.dex */
final class c implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ EGLContext f41046a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ int f41047b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private /* synthetic */ int f41048c;
    private /* synthetic */ a.i d;

    public c(a.i iVar, EGLContext eGLContext, int i2, int i3) {
        this.d = iVar;
        this.f41046a = eGLContext;
        this.f41047b = i2;
        this.f41048c = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.d.f41017a.a(this.f41046a, this.f41047b, this.f41048c, true);
    }
}
