package com.otaliastudios.cameraview.gesture;

import android.graphics.PointF;
import android.view.GestureDetector;
import android.view.MotionEvent;
import com.otaliastudios.cameraview.CameraLogger;

/* JADX INFO: loaded from: classes3.dex */
public class ScrollGestureFinder extends GestureFinder {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final CameraLogger f38988h = CameraLogger.a("ScrollGestureFinder");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final GestureDetector f38989e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f38990f;
    public float g;

    public ScrollGestureFinder(final GestureFinder.Controller controller) {
        super(controller, 2);
        GestureDetector gestureDetector = new GestureDetector(controller.getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: com.otaliastudios.cameraview.gesture.ScrollGestureFinder.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
                ScrollGestureFinder scrollGestureFinder = ScrollGestureFinder.this;
                PointF[] pointFArr = scrollGestureFinder.f38980c;
                ScrollGestureFinder.f38988h.b(1, "onScroll:", "distanceX=" + f2, "distanceY=" + f3);
                boolean z = false;
                if (motionEvent == null || motionEvent2 == null) {
                    return false;
                }
                if (motionEvent.getX() != pointFArr[0].x || motionEvent.getY() != pointFArr[0].y) {
                    boolean z2 = Math.abs(f2) >= Math.abs(f3);
                    scrollGestureFinder.f38979b = z2 ? Gesture.SCROLL_HORIZONTAL : Gesture.SCROLL_VERTICAL;
                    pointFArr[0].set(motionEvent.getX(), motionEvent.getY());
                    z = z2;
                } else if (scrollGestureFinder.f38979b == Gesture.SCROLL_HORIZONTAL) {
                    z = true;
                }
                pointFArr[1].set(motionEvent2.getX(), motionEvent2.getY());
                GestureFinder.Controller controller2 = controller;
                float width = z ? f2 / controller2.getWidth() : f3 / controller2.getHeight();
                scrollGestureFinder.g = width;
                if (z) {
                    width = -width;
                }
                scrollGestureFinder.g = width;
                scrollGestureFinder.f38990f = true;
                return true;
            }
        });
        this.f38989e = gestureDetector;
        gestureDetector.setIsLongpressEnabled(false);
    }

    @Override // com.otaliastudios.cameraview.gesture.GestureFinder
    public final float b(float f2, float f3, float f4) {
        return ((f4 - f3) * this.g * 2.0f) + f2;
    }
}
