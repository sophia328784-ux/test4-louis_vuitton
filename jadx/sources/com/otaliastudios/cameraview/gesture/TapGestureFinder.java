package com.otaliastudios.cameraview.gesture;

import android.view.GestureDetector;
import android.view.MotionEvent;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public class TapGestureFinder extends GestureFinder {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final GestureDetector f38993e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f38994f;

    public TapGestureFinder(GestureFinder.Controller controller) {
        super(controller, 1);
        GestureDetector gestureDetector = new GestureDetector(controller.getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: com.otaliastudios.cameraview.gesture.TapGestureFinder.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public final void onLongPress(MotionEvent motionEvent) {
                TapGestureFinder tapGestureFinder = TapGestureFinder.this;
                tapGestureFinder.f38994f = true;
                tapGestureFinder.f38979b = Gesture.LONG_TAP;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public final boolean onSingleTapUp(MotionEvent motionEvent) {
                TapGestureFinder tapGestureFinder = TapGestureFinder.this;
                tapGestureFinder.f38994f = true;
                tapGestureFinder.f38979b = Gesture.TAP;
                return true;
            }
        });
        this.f38993e = gestureDetector;
        gestureDetector.setIsLongpressEnabled(true);
    }

    @Override // com.otaliastudios.cameraview.gesture.GestureFinder
    public final float b(float f2, float f3, float f4) {
        return Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }
}
