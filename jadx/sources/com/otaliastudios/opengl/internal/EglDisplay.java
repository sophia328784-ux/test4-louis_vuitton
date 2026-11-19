package com.otaliastudios.opengl.internal;

import android.opengl.EGLDisplay;
import com.networkbench.nbslens.nbsnativecrashlib.n;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0080\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/otaliastudios/opengl/internal/EglDisplay;", "", "Landroid/opengl/EGLDisplay;", n.f38806i, "<init>", "(Landroid/opengl/EGLDisplay;)V", "library_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final /* data */ class EglDisplay {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EGLDisplay f39109a;

    public EglDisplay(EGLDisplay eGLDisplay) {
        this.f39109a = eGLDisplay;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof EglDisplay) && Intrinsics.c(this.f39109a, ((EglDisplay) obj).f39109a);
    }

    public final int hashCode() {
        EGLDisplay eGLDisplay = this.f39109a;
        if (eGLDisplay == null) {
            return 0;
        }
        return eGLDisplay.hashCode();
    }

    public final String toString() {
        return "EglDisplay(native=" + this.f39109a + ')';
    }
}
