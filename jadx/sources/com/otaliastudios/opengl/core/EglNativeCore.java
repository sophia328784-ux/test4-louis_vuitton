package com.otaliastudios.opengl.core;

import android.opengl.EGL14;
import android.opengl.EGLContext;
import com.otaliastudios.opengl.internal.EglConfig;
import com.otaliastudios.opengl.internal.EglContext;
import com.otaliastudios.opengl.internal.EglDisplay;
import com.otaliastudios.opengl.internal.EglKt;
import com.otaliastudios.opengl.internal.EglSurface;
import defpackage.v7;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0016\u0018\u00002\u00020\u0001:\u0001\bB\u001d\b\u0000\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/otaliastudios/opengl/core/EglNativeCore;", "", "Lcom/otaliastudios/opengl/internal/EglContext;", "sharedContext", "", "flags", "<init>", "(Lcom/otaliastudios/opengl/internal/EglContext;I)V", "Companion", "library_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public class EglNativeCore {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public EglDisplay f39100a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public EglContext f39101b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public EglConfig f39102c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/otaliastudios/opengl/core/EglNativeCore$Companion;", "", "", "FLAG_RECORDABLE", "I", "FLAG_TRY_GLES3", "library_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public EglNativeCore(EglContext eglContext, int i2) {
        EglConfig eglConfigA;
        eglContext.getClass();
        EGLContext eGLContext = eglContext.f39108a;
        EglDisplay eglDisplay = EglKt.f39111b;
        this.f39100a = eglDisplay;
        this.f39101b = EglKt.f39110a;
        EglDisplay eglDisplay2 = new EglDisplay(EGL14.eglGetDisplay(0));
        this.f39100a = eglDisplay2;
        if (eglDisplay2 == eglDisplay) {
            v7.h("unable to get EGL14 display");
            throw null;
        }
        if (!EGL14.eglInitialize(eglDisplay2.f39109a, new int[1], 0, new int[1], 0)) {
            v7.h("unable to initialize EGL14");
            throw null;
        }
        new EglNativeConfigChooser();
        boolean z = (i2 & 1) != 0;
        if ((i2 & 2) != 0 && (eglConfigA = EglNativeConfigChooser.a(this.f39100a, 3, z)) != null) {
            EglContext eglContext2 = new EglContext(EGL14.eglCreateContext(this.f39100a.f39109a, eglConfigA.f39107a, eGLContext, new int[]{EglKt.f39116i, 3, EglKt.f39113e}, 0));
            try {
                Egloo.a("eglCreateContext (3)");
                this.f39102c = eglConfigA;
                this.f39101b = eglContext2;
            } catch (Exception unused) {
            }
        }
        if (this.f39101b == EglKt.f39110a) {
            EglConfig eglConfigA2 = EglNativeConfigChooser.a(this.f39100a, 2, z);
            if (eglConfigA2 == null) {
                v7.h("Unable to find a suitable EGLConfig");
                throw null;
            }
            EglContext eglContext3 = new EglContext(EGL14.eglCreateContext(this.f39100a.f39109a, eglConfigA2.f39107a, eGLContext, new int[]{EglKt.f39116i, 2, EglKt.f39113e}, 0));
            Egloo.a("eglCreateContext (2)");
            this.f39102c = eglConfigA2;
            this.f39101b = eglContext3;
        }
    }

    public final EglSurface a(Object obj) {
        obj.getClass();
        int[] iArr = {EglKt.f39113e};
        EglDisplay eglDisplay = this.f39100a;
        EglConfig eglConfig = this.f39102c;
        eglConfig.getClass();
        EglSurface eglSurface = new EglSurface(EGL14.eglCreateWindowSurface(eglDisplay.f39109a, eglConfig.f39107a, obj, iArr, 0));
        Egloo.a("eglCreateWindowSurface");
        if (eglSurface != EglKt.f39112c) {
            return eglSurface;
        }
        v7.h("surface was null");
        return null;
    }

    public EglNativeCore(EglContext eglContext, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? EglKt.f39110a : eglContext, (i3 & 2) != 0 ? 0 : i2);
    }

    public EglNativeCore() {
        this(null, 0, 3, null);
    }
}
