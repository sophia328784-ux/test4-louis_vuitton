package com.otaliastudios.opengl.surface;

import android.graphics.Bitmap;
import android.opengl.EGL14;
import android.opengl.GLES20;
import com.otaliastudios.opengl.core.EglCore;
import com.otaliastudios.opengl.core.Egloo;
import com.otaliastudios.opengl.internal.EglContext;
import com.otaliastudios.opengl.internal.EglKt;
import defpackage.v7;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u00002\u00020\u0001:\u0001\bB\u0019\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/otaliastudios/opengl/surface/EglSurface;", "Lcom/otaliastudios/opengl/surface/EglNativeSurface;", "Lcom/otaliastudios/opengl/core/EglCore;", "eglCore", "Lcom/otaliastudios/opengl/internal/EglSurface;", "eglSurface", "<init>", "(Lcom/otaliastudios/opengl/core/EglCore;Lcom/otaliastudios/opengl/internal/EglSurface;)V", "Companion", "library_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public abstract class EglSurface extends EglNativeSurface {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/otaliastudios/opengl/surface/EglSurface$Companion;", "", "library_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EglSurface(EglCore eglCore, com.otaliastudios.opengl.internal.EglSurface eglSurface) {
        super(eglCore, eglSurface);
        eglCore.getClass();
        eglSurface.getClass();
    }

    public final void a(ByteArrayOutputStream byteArrayOutputStream) {
        Bitmap.CompressFormat compressFormat = Bitmap.CompressFormat.JPEG;
        compressFormat.getClass();
        com.otaliastudios.opengl.internal.EglSurface eglSurface = this.f39145b;
        EglCore eglCore = this.f39144a;
        eglCore.getClass();
        eglSurface.getClass();
        if (!Intrinsics.c(eglCore.f39101b, new EglContext(EGL14.eglGetCurrentContext())) || !eglSurface.equals(new com.otaliastudios.opengl.internal.EglSurface(EGL14.eglGetCurrentSurface(EglKt.f39115h)))) {
            v7.h("Expected EGL context/surface is not current");
            return;
        }
        com.otaliastudios.opengl.internal.EglSurface eglSurface2 = this.f39145b;
        int i2 = EglKt.f39114f;
        eglSurface2.getClass();
        int[] iArr = new int[1];
        EGL14.eglQuerySurface(eglCore.f39100a.f39109a, eglSurface2.f39119a, i2, iArr, 0);
        int i3 = iArr[0];
        com.otaliastudios.opengl.internal.EglSurface eglSurface3 = this.f39145b;
        int i4 = EglKt.g;
        eglSurface3.getClass();
        int[] iArr2 = new int[1];
        EGL14.eglQuerySurface(eglCore.f39100a.f39109a, eglSurface3.f39119a, i4, iArr2, 0);
        int i5 = iArr2[0];
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(i3 * i5 * 4);
        byteBufferAllocateDirect.order(ByteOrder.LITTLE_ENDIAN);
        GLES20.glReadPixels(0, 0, i3, i5, 6408, 5121, byteBufferAllocateDirect);
        Egloo.b("glReadPixels");
        byteBufferAllocateDirect.rewind();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i3, i5, Bitmap.Config.ARGB_8888);
        bitmapCreateBitmap.copyPixelsFromBuffer(byteBufferAllocateDirect);
        bitmapCreateBitmap.compress(compressFormat, 90, byteArrayOutputStream);
        bitmapCreateBitmap.recycle();
    }
}
