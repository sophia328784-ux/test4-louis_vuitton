package com.otaliastudios.opengl.internal;

import android.opengl.EGLConfig;
import com.networkbench.nbslens.nbsnativecrashlib.n;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0080\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/otaliastudios/opengl/internal/EglConfig;", "", "Landroid/opengl/EGLConfig;", n.f38806i, "<init>", "(Landroid/opengl/EGLConfig;)V", "library_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final /* data */ class EglConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EGLConfig f39107a;

    public EglConfig(EGLConfig eGLConfig) {
        eGLConfig.getClass();
        this.f39107a = eGLConfig;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof EglConfig) && Intrinsics.c(this.f39107a, ((EglConfig) obj).f39107a);
    }

    public final int hashCode() {
        return this.f39107a.hashCode();
    }

    public final String toString() {
        return "EglConfig(native=" + this.f39107a + ')';
    }
}
