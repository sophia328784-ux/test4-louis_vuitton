package com.google.android.filament;

import android.opengl.EGL14;
import android.opengl.EGLContext;
import android.view.Surface;

/* JADX INFO: loaded from: classes2.dex */
final class AndroidPlatform extends Platform {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f28524b = 0;

    static {
        EGL14.eglGetDisplay(0);
    }

    @Override // com.google.android.filament.Platform
    public final long b(Object obj) {
        return ((EGLContext) obj).getNativeHandle();
    }

    @Override // com.google.android.filament.Platform
    public final boolean c(Object obj) {
        return obj instanceof EGLContext;
    }

    @Override // com.google.android.filament.Platform
    public final boolean d(Object obj) {
        return obj instanceof Surface;
    }
}
