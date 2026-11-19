package com.google.android.exoplayer2.video.spherical;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.GLES20;
import com.google.android.exoplayer2.util.GlUtil;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.TimedValueQueue;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.VideoFrameMetadataListener;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
final class SceneRenderer implements VideoFrameMetadataListener, CameraMotionListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f28495a = new AtomicBoolean();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicBoolean f28496b = new AtomicBoolean(true);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ProjectionRenderer f28497c = new ProjectionRenderer();
    public final FrameRotationQueue d = new FrameRotationQueue();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TimedValueQueue f28498e = new TimedValueQueue();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TimedValueQueue f28499f = new TimedValueQueue();
    public final float[] g = new float[16];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float[] f28500h = new float[16];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f28501i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public SurfaceTexture f28502j;

    public final SurfaceTexture a() {
        try {
            GLES20.glClearColor(0.5f, 0.5f, 0.5f, 1.0f);
            GlUtil.b();
            this.f28497c.a();
            GlUtil.b();
            GlUtil.c("No current context", !Util.a(EGL14.eglGetCurrentContext(), EGL14.EGL_NO_CONTEXT));
            int[] iArr = new int[1];
            GLES20.glGenTextures(1, iArr, 0);
            GlUtil.b();
            int i2 = iArr[0];
            GlUtil.a(36197, i2);
            this.f28501i = i2;
        } catch (GlUtil.GlException e2) {
            Log.a(e2);
        }
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f28501i);
        this.f28502j = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: com.google.android.exoplayer2.video.spherical.a
            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public final void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                this.f28523b.f28495a.set(true);
            }
        });
        return this.f28502j;
    }
}
