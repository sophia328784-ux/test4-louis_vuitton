package androidx.media3.exoplayer.video.spherical;

import android.content.Context;
import android.graphics.PointF;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class TouchTracker extends GestureDetector.SimpleOnGestureListener implements View.OnTouchListener, OrientationListener.Listener {
    public final Listener d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f16051e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final GestureDetector f16052f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PointF f16049b = new PointF();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PointF f16050c = new PointF();
    public volatile float g = 3.1415927f;

    public interface Listener {
        void b(PointF pointF);

        default boolean onSingleTapUp(MotionEvent motionEvent) {
            return false;
        }
    }

    public TouchTracker(Context context, Listener listener, float f2) {
        this.d = listener;
        this.f16051e = f2;
        this.f16052f = new GestureDetector(context, this);
    }

    @Override // androidx.media3.exoplayer.video.spherical.OrientationListener.Listener
    public final void a(float f2, float[] fArr) {
        this.g = -f2;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onDown(MotionEvent motionEvent) {
        this.f16049b.set(motionEvent.getX(), motionEvent.getY());
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
        float x = (motionEvent2.getX() - this.f16049b.x) / this.f16051e;
        float y = motionEvent2.getY();
        PointF pointF = this.f16049b;
        float f4 = (y - pointF.y) / this.f16051e;
        pointF.set(motionEvent2.getX(), motionEvent2.getY());
        double d = this.g;
        float fCos = (float) Math.cos(d);
        float fSin = (float) Math.sin(d);
        PointF pointF2 = this.f16050c;
        pointF2.x -= (fCos * x) - (fSin * f4);
        float f5 = (fCos * f4) + (fSin * x) + pointF2.y;
        pointF2.y = f5;
        pointF2.y = Math.max(-45.0f, Math.min(45.0f, f5));
        this.d.b(this.f16050c);
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onSingleTapUp(MotionEvent motionEvent) {
        return this.d.onSingleTapUp(motionEvent);
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        return this.f16052f.onTouchEvent(motionEvent);
    }
}
