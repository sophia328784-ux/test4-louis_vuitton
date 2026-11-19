package com.perfectcorp.perfectlib;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
import com.cyberlink.clgpuimage.GPUImage;
import com.cyberlink.clgpuimage.GPUImageRenderer;
import defpackage.fw;

/* JADX INFO: loaded from: classes2.dex */
public final class CameraView extends GLSurfaceView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public GPUImage f39507b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile ScaleType f39508c;

    public enum ScaleType {
        CENTER_INSIDE(GPUImage.ScaleType.CENTER_INSIDE_CAMERA_YUV_BUFFER),
        CENTER_CROP(GPUImage.ScaleType.CENTER_CROP_CAMERA_YUV_BUFFER),
        FIT_XY(GPUImage.ScaleType.FIT_XY_CAMERA_YUV_BUFFER);


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final GPUImage.ScaleType f39510a;

        ScaleType(GPUImage.ScaleType scaleType) {
            this.f39510a = scaleType;
        }
    }

    public CameraView(Context context) {
        super(context);
        a();
        setScaleType(ScaleType.CENTER_INSIDE);
    }

    public final void a() {
        if (isInEditMode()) {
            return;
        }
        GPUImage gPUImage = new GPUImage(getContext().getApplicationContext());
        this.f39507b = gPUImage;
        setEGLContextClientVersion(3);
        setRenderer(gPUImage.f25439a);
        setRenderMode(0);
        requestRender();
        GPUImageRenderer gPUImageRenderer = gPUImage.f25439a;
        gPUImageRenderer.getClass();
        gPUImageRenderer.f25465f = new fw(this, 5);
    }

    public final GPUImage getGPUImage() {
        return this.f39507b;
    }

    public final ScaleType getScaleType() {
        return this.f39508c;
    }

    public final void setScaleType(ScaleType scaleType) {
        this.f39508c = scaleType;
        this.f39507b.f25439a.j(scaleType.f39510a);
        requestRender();
    }

    public CameraView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
        setScaleType(ScaleType.CENTER_INSIDE);
    }
}
