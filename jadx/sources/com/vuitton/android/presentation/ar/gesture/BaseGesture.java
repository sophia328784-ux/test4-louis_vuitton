package com.vuitton.android.presentation.ar.gesture;

import android.view.MotionEvent;
import com.vuitton.android.presentation.ar.gesture.BaseGesture;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b'\u0018\u0000*\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00002\u00020\u0002:\u0001\u0007B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;", "T", "", "Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;", "gesturePointersUtility", "<init>", "(Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;)V", "OnGestureEventListener", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class BaseGesture<T extends BaseGesture<T>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GesturePointersUtility f50590a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f50591b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f50592c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public OnGestureEventListener f50593e;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\bf\u0018\u0000*\u000e\b\u0001\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00010\u00012\u00020\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/ar/gesture/BaseGesture$OnGestureEventListener;", "Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;", "T", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface OnGestureEventListener<T extends BaseGesture<T>> {
        void a(BaseGesture baseGesture);

        void b(BaseGesture baseGesture);
    }

    public BaseGesture(GesturePointersUtility gesturePointersUtility) {
        gesturePointersUtility.getClass();
        this.f50590a = gesturePointersUtility;
    }

    public abstract boolean a(MotionEvent motionEvent);

    public final void b() {
        this.d = true;
        if (this.f50591b) {
            d();
            OnGestureEventListener onGestureEventListener = this.f50593e;
            if (onGestureEventListener != null) {
                onGestureEventListener.a(c());
            }
        }
    }

    public abstract BaseGesture c();

    public abstract void d();

    public abstract void e(MotionEvent motionEvent);

    public abstract boolean f(MotionEvent motionEvent);
}
