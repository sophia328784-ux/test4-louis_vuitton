package com.otaliastudios.opengl.internal;

import android.opengl.EGLContext;
import com.networkbench.nbslens.nbsnativecrashlib.n;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0080\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/otaliastudios/opengl/internal/EglContext;", "", "Landroid/opengl/EGLContext;", n.f38806i, "<init>", "(Landroid/opengl/EGLContext;)V", "library_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final /* data */ class EglContext {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EGLContext f39108a;

    public EglContext(EGLContext eGLContext) {
        this.f39108a = eGLContext;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof EglContext) && Intrinsics.c(this.f39108a, ((EglContext) obj).f39108a);
    }

    public final int hashCode() {
        EGLContext eGLContext = this.f39108a;
        if (eGLContext == null) {
            return 0;
        }
        return eGLContext.hashCode();
    }

    public final String toString() {
        return "EglContext(native=" + this.f39108a + ')';
    }
}
