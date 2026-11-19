package com.sightcall.universal.internal.view;

import android.content.Context;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;

/* JADX INFO: loaded from: classes3.dex */
class MyScaleGestureDetector {
    private final OnScaleCallback callback;
    private final ScaleGestureDetector detector;
    private long time;
    private final float MIN = 1.0f;
    private final float MAX = 5.0f;
    private float scaleFactor = 1.0f;

    public interface OnScaleCallback {
        void onScale(float f2);
    }

    public MyScaleGestureDetector(Context context, OnScaleCallback onScaleCallback) {
        this.callback = onScaleCallback;
        this.detector = new ScaleGestureDetector(context, new MySimpleOnScaleGestureListener(this, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callback() {
        this.callback.onScale((this.scaleFactor - 1.0f) / 4.0f);
        this.time = SystemClock.elapsedRealtime();
    }

    public void configure(float f2) {
        this.scaleFactor = (f2 * 4.0f) + 1.0f;
    }

    public boolean isInProgress() {
        return this.detector.isInProgress();
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.detector.onTouchEvent(motionEvent);
    }

    public void reset() {
        this.scaleFactor = 1.0f;
    }

    public class MySimpleOnScaleGestureListener extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        private final long DELTA;
        private final float EPSILON;

        private MySimpleOnScaleGestureListener() {
            this.EPSILON = 0.025f;
            this.DELTA = 60L;
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            float scaleFactor = scaleGestureDetector.getScaleFactor();
            if (Math.abs(scaleFactor - 1.0f) < 0.025f) {
                return false;
            }
            float fMax = Math.max(1.0f, Math.min(MyScaleGestureDetector.this.scaleFactor * scaleFactor, 5.0f));
            if (MyScaleGestureDetector.this.scaleFactor == fMax) {
                return true;
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            MyScaleGestureDetector.this.scaleFactor = fMax;
            if (jElapsedRealtime - MyScaleGestureDetector.this.time <= 60) {
                return true;
            }
            MyScaleGestureDetector.this.callback();
            return true;
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
            MyScaleGestureDetector.this.callback();
            return super.onScaleBegin(scaleGestureDetector);
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
            MyScaleGestureDetector.this.callback();
            super.onScaleEnd(scaleGestureDetector);
        }

        public /* synthetic */ MySimpleOnScaleGestureListener(MyScaleGestureDetector myScaleGestureDetector, int i2) {
            this();
        }
    }
}
