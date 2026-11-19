package com.otaliastudios.opengl.surface;

import com.otaliastudios.opengl.core.EglCore;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001B\u0019\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/otaliastudios/opengl/surface/EglNativeWindowSurface;", "Lcom/otaliastudios/opengl/surface/EglSurface;", "Lcom/otaliastudios/opengl/core/EglCore;", "eglCore", "Lcom/otaliastudios/opengl/internal/EglSurface;", "eglSurface", "<init>", "(Lcom/otaliastudios/opengl/core/EglCore;Lcom/otaliastudios/opengl/internal/EglSurface;)V", "library_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public abstract class EglNativeWindowSurface extends EglSurface {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EglNativeWindowSurface(EglCore eglCore, com.otaliastudios.opengl.internal.EglSurface eglSurface) {
        super(eglCore, eglSurface);
        eglCore.getClass();
        eglSurface.getClass();
    }
}
