package com.perfectcorp.perfectlib.gpuimage;

import android.graphics.Bitmap;
import com.cyberlink.clgpuimage.OpenGlUtils;
import com.perfectcorp.common.opengl.GLMoreUtils;
import com.perfectcorp.common.utility.Bitmaps;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Bitmap f40175a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f40176b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicReference f40177c = new AtomicReference();

    public final void a() {
        Runnable runnable = (Runnable) this.f40177c.getAndSet(null);
        if (runnable != null) {
            runnable.run();
        }
        Bitmap bitmap = this.f40175a;
        if (bitmap != null) {
            this.f40176b = OpenGlUtils.f(bitmap, this.f40176b);
            GLMoreUtils.a("GLBitmapHolder.loadTexture");
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("GLBitmapHolder@");
        sb.append(Integer.toHexString(hashCode()));
        sb.append(" [bitmap=");
        sb.append(Bitmaps.c(this.f40175a));
        sb.append(", texture=");
        return defpackage.a.i(this.f40176b, "]", sb);
    }
}
