package com.otaliastudios.cameraview.preview;

import android.graphics.SurfaceTexture;
import com.otaliastudios.cameraview.filter.Filter;

/* JADX INFO: loaded from: classes3.dex */
public interface RendererFrameCallback {
    void a(SurfaceTexture surfaceTexture, int i2, float f2, float f3);

    void b(int i2);

    void c(Filter filter);
}
