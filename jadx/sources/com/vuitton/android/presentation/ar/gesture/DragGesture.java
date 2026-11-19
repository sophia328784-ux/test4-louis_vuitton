package com.vuitton.android.presentation.ar.gesture;

import android.util.TypedValue;
import android.view.MotionEvent;
import com.vuitton.android.presentation.ar.MatrixKt;
import com.vuitton.android.presentation.ar.V3;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0002\b\tB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/ar/gesture/DragGesture;", "Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;", "Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;", "gesturePointersUtility", "Landroid/view/MotionEvent;", "motionEvent", "<init>", "(Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;Landroid/view/MotionEvent;)V", "OnGestureEventListener", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DragGesture extends BaseGesture<DragGesture> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f50597f;
    public final V3 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public V3 f50598h;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/ar/gesture/DragGesture$Companion;", "", "", "SLOP_INCHES", "F", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/ar/gesture/DragGesture$OnGestureEventListener;", "Lcom/vuitton/android/presentation/ar/gesture/BaseGesture$OnGestureEventListener;", "Lcom/vuitton/android/presentation/ar/gesture/DragGesture;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface OnGestureEventListener extends BaseGesture.OnGestureEventListener<DragGesture> {
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DragGesture(GesturePointersUtility gesturePointersUtility, MotionEvent motionEvent) {
        super(gesturePointersUtility);
        gesturePointersUtility.getClass();
        motionEvent.getClass();
        int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
        this.f50597f = pointerId;
        GesturePointersUtility.f50599c.getClass();
        V3 v3A = GesturePointersUtility.Companion.a(motionEvent, pointerId);
        this.g = v3A;
        this.f50598h = v3A;
        V3 v3 = MatrixKt.f50552a;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x006b A[RETURN] */
    @Override // com.vuitton.android.presentation.ar.gesture.BaseGesture
    public final boolean a(MotionEvent motionEvent) {
        V3 v3H;
        int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
        int actionMasked = motionEvent.getActionMasked();
        GesturePointersUtility gesturePointersUtility = this.f50590a;
        int i2 = this.f50597f;
        if (gesturePointersUtility.a(i2) || ((pointerId == i2 && (actionMasked == 1 || actionMasked == 6)) || actionMasked == 3)) {
            b();
            return false;
        }
        if (actionMasked == 2) {
            if (motionEvent.getPointerCount() > 1) {
                int pointerCount = motionEvent.getPointerCount();
                for (int i3 = 0; i3 < pointerCount; i3++) {
                    int pointerId2 = motionEvent.getPointerId(i3);
                    if (pointerId2 == i2 || gesturePointersUtility.a(pointerId2)) {
                    }
                }
                GesturePointersUtility.f50599c.getClass();
                v3H = MatrixKt.h(GesturePointersUtility.Companion.a(motionEvent, i2), this.g);
                if (((float) Math.sqrt(MatrixKt.a(v3H, v3H))) >= TypedValue.applyDimension(4, 0.1f, gesturePointersUtility.f50600a)) {
                    return true;
                }
            } else {
                GesturePointersUtility.f50599c.getClass();
                v3H = MatrixKt.h(GesturePointersUtility.Companion.a(motionEvent, i2), this.g);
                if (((float) Math.sqrt(MatrixKt.a(v3H, v3H))) >= TypedValue.applyDimension(4, 0.1f, gesturePointersUtility.f50600a)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.vuitton.android.presentation.ar.gesture.BaseGesture
    public final BaseGesture c() {
        return this;
    }

    @Override // com.vuitton.android.presentation.ar.gesture.BaseGesture
    public final void d() {
        this.f50590a.f50601b.remove(Integer.valueOf(this.f50597f));
    }

    @Override // com.vuitton.android.presentation.ar.gesture.BaseGesture
    public final void e(MotionEvent motionEvent) {
        GesturePointersUtility.f50599c.getClass();
        int i2 = this.f50597f;
        this.f50598h = GesturePointersUtility.Companion.a(motionEvent, i2);
        this.f50590a.b(i2);
    }

    @Override // com.vuitton.android.presentation.ar.gesture.BaseGesture
    public final boolean f(MotionEvent motionEvent) {
        int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
        int actionMasked = motionEvent.getActionMasked();
        int i2 = this.f50597f;
        if (actionMasked == 2) {
            GesturePointersUtility.f50599c.getClass();
            V3 v3A = GesturePointersUtility.Companion.a(motionEvent, i2);
            if (MatrixKt.b(v3A, this.f50598h)) {
                return false;
            }
            MatrixKt.h(v3A, this.f50598h);
            this.f50598h = v3A;
            return true;
        }
        if (pointerId == i2 && (actionMasked == 1 || actionMasked == 6)) {
            b();
            return false;
        }
        if (actionMasked != 3) {
            return false;
        }
        b();
        return false;
    }
}
