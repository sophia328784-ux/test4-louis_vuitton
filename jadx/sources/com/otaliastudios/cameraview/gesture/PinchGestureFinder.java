package com.otaliastudios.cameraview.gesture;

import android.view.ScaleGestureDetector;
import defpackage.tr;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public class PinchGestureFinder extends GestureFinder {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ScaleGestureDetector f38985e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f38986f;
    public float g;

    public PinchGestureFinder(GestureFinder.Controller controller) {
        super(controller, 2);
        this.g = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.f38979b = Gesture.PINCH;
        ScaleGestureDetector scaleGestureDetector = new ScaleGestureDetector(controller.getContext(), new ScaleGestureDetector.SimpleOnScaleGestureListener() { // from class: com.otaliastudios.cameraview.gesture.PinchGestureFinder.1
            @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
            public final boolean onScale(ScaleGestureDetector scaleGestureDetector2) {
                PinchGestureFinder pinchGestureFinder = PinchGestureFinder.this;
                pinchGestureFinder.f38986f = true;
                pinchGestureFinder.g = (scaleGestureDetector2.getScaleFactor() - 1.0f) * 2.0f;
                return true;
            }
        });
        this.f38985e = scaleGestureDetector;
        scaleGestureDetector.setQuickScaleEnabled(false);
    }

    @Override // com.otaliastudios.cameraview.gesture.GestureFinder
    public final float b(float f2, float f3, float f4) {
        return tr.a(f4, f3, this.g, f2);
    }
}
