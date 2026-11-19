package com.otaliastudios.opengl.core;

import android.opengl.EGL14;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import com.otaliastudios.opengl.internal.EglContext;
import com.otaliastudios.opengl.internal.EglDisplay;
import com.otaliastudios.opengl.internal.EglKt;
import com.otaliastudios.opengl.internal.EglSurface;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\bB\u001f\b\u0007\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/otaliastudios/opengl/core/EglCore;", "Lcom/otaliastudios/opengl/core/EglNativeCore;", "Landroid/opengl/EGLContext;", "sharedContext", "", "flags", "<init>", "(Landroid/opengl/EGLContext;I)V", "Companion", "library_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class EglCore extends EglNativeCore {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/otaliastudios/opengl/core/EglCore$Companion;", "", "", "FLAG_RECORDABLE", "I", "FLAG_TRY_GLES3", "library_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public /* synthetic */ EglCore(EGLContext eGLContext, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? EGL14.EGL_NO_CONTEXT : eGLContext, (i3 & 2) != 0 ? 0 : i2);
    }

    public final void b() {
        EglDisplay eglDisplay = this.f39100a;
        EglDisplay eglDisplay2 = EglKt.f39111b;
        if (eglDisplay != eglDisplay2) {
            EglSurface eglSurface = EglKt.f39112c;
            EglContext eglContext = EglKt.f39110a;
            EGLDisplay eGLDisplay = eglDisplay.f39109a;
            EGLSurface eGLSurface = eglSurface.f39119a;
            EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, eglContext.f39108a);
            EGL14.eglDestroyContext(this.f39100a.f39109a, this.f39101b.f39108a);
            EGL14.eglReleaseThread();
            EGL14.eglTerminate(this.f39100a.f39109a);
        }
        this.f39100a = eglDisplay2;
        this.f39101b = EglKt.f39110a;
        this.f39102c = null;
    }

    public final void finalize() {
        b();
    }

    public EglCore(EGLContext eGLContext) {
        this(eGLContext, 0, 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public EglCore() {
        this(null, 0, 3, 0 == true ? 1 : 0);
    }

    public EglCore(EGLContext eGLContext, int i2) {
        super(new EglContext(eGLContext), i2);
    }
}
