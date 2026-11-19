package com.otaliastudios.opengl.surface;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import com.otaliastudios.opengl.core.EglCore;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u00002\u00020\u0001B#\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\b\u0010\f¨\u0006\r"}, d2 = {"Lcom/otaliastudios/opengl/surface/EglWindowSurface;", "Lcom/otaliastudios/opengl/surface/EglNativeWindowSurface;", "Lcom/otaliastudios/opengl/core/EglCore;", "eglCore", "Landroid/view/Surface;", "surface", "", "releaseSurface", "<init>", "(Lcom/otaliastudios/opengl/core/EglCore;Landroid/view/Surface;Z)V", "Landroid/graphics/SurfaceTexture;", "surfaceTexture", "(Lcom/otaliastudios/opengl/core/EglCore;Landroid/graphics/SurfaceTexture;)V", "library_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public class EglWindowSurface extends EglNativeWindowSurface {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Surface f39146c;
    public final boolean d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EglWindowSurface(EglCore eglCore, Surface surface, boolean z) {
        super(eglCore, eglCore.a(surface));
        eglCore.getClass();
        surface.getClass();
        this.f39146c = surface;
        this.d = z;
    }

    public /* synthetic */ EglWindowSurface(EglCore eglCore, Surface surface, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(eglCore, surface, (i2 & 4) != 0 ? false : z);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public EglWindowSurface(EglCore eglCore, Surface surface) {
        this(eglCore, surface, false, 4, null);
        eglCore.getClass();
        surface.getClass();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EglWindowSurface(EglCore eglCore, SurfaceTexture surfaceTexture) {
        super(eglCore, eglCore.a(surfaceTexture));
        eglCore.getClass();
        surfaceTexture.getClass();
    }
}
