package com.sightcall.mediacapture.presenter.views.camera;

import android.view.ScaleGestureDetector;
import androidx.camera.core.Camera;
import androidx.camera.core.ZoomState;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\tH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/sightcall/mediacapture/presenter/views/camera/ZoomManager;", "Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;", "camera", "Landroidx/camera/core/Camera;", "zoomState", "Landroidx/camera/core/ZoomState;", "<init>", "(Landroidx/camera/core/Camera;Landroidx/camera/core/ZoomState;)V", "zoomRatio", "", "computedZoom", "minZoomRatio", "maxZoomRatio", "onScale", "", "detector", "Landroid/view/ScaleGestureDetector;", "onScaleEnd", "", "computeZoom", "scaleFactor", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ZoomManager extends ScaleGestureDetector.SimpleOnScaleGestureListener {
    private final Camera camera;
    private float computedZoom;
    private final float maxZoomRatio;
    private final float minZoomRatio;
    private float zoomRatio;

    public ZoomManager(Camera camera, ZoomState zoomState) {
        camera.getClass();
        zoomState.getClass();
        this.camera = camera;
        float fD = zoomState.d();
        this.zoomRatio = fD;
        this.computedZoom = fD;
        this.minZoomRatio = zoomState.c();
        this.maxZoomRatio = zoomState.a();
    }

    private final float computeZoom(float scaleFactor) {
        return Math.max(Math.min(this.zoomRatio * scaleFactor, this.maxZoomRatio), this.minZoomRatio);
    }

    @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScale(ScaleGestureDetector detector) {
        detector.getClass();
        this.computedZoom = computeZoom(detector.getScaleFactor());
        this.camera.a().b(this.computedZoom);
        return super.onScale(detector);
    }

    @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
    public void onScaleEnd(ScaleGestureDetector detector) {
        detector.getClass();
        this.zoomRatio = this.computedZoom;
        super.onScaleEnd(detector);
    }
}
