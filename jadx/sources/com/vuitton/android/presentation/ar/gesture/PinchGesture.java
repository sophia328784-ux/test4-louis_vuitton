package com.vuitton.android.presentation.ar.gesture;

import android.util.TypedValue;
import android.view.MotionEvent;
import com.vuitton.android.presentation.ar.MatrixKt;
import com.vuitton.android.presentation.ar.V3;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0002\n\u000bB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/ar/gesture/PinchGesture;", "Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;", "Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;", "gesturePointersUtility", "Landroid/view/MotionEvent;", "motionEvent", "", "pointerId2", "<init>", "(Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;Landroid/view/MotionEvent;I)V", "OnGestureEventListener", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PinchGesture extends BaseGesture<PinchGesture> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f50602f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final V3 f50603h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final V3 f50604i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public V3 f50605j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public V3 f50606k;
    public float l;
    public float m;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/ar/gesture/PinchGesture$Companion;", "", "", "SLOP_INCHES", "F", "SLOP_MOTION_DIRECTION_DEGREES", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/ar/gesture/PinchGesture$OnGestureEventListener;", "Lcom/vuitton/android/presentation/ar/gesture/BaseGesture$OnGestureEventListener;", "Lcom/vuitton/android/presentation/ar/gesture/PinchGesture;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface OnGestureEventListener extends BaseGesture.OnGestureEventListener<PinchGesture> {
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PinchGesture(GesturePointersUtility gesturePointersUtility, MotionEvent motionEvent, int i2) {
        super(gesturePointersUtility);
        gesturePointersUtility.getClass();
        motionEvent.getClass();
        this.f50602f = i2;
        int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
        this.g = pointerId;
        GesturePointersUtility.f50599c.getClass();
        V3 v3A = GesturePointersUtility.Companion.a(motionEvent, pointerId);
        this.f50603h = v3A;
        V3 v3A2 = GesturePointersUtility.Companion.a(motionEvent, i2);
        this.f50604i = v3A2;
        this.f50605j = v3A;
        this.f50606k = v3A2;
    }

    @Override // com.vuitton.android.presentation.ar.gesture.BaseGesture
    public final boolean a(MotionEvent motionEvent) {
        int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
        int actionMasked = motionEvent.getActionMasked();
        boolean z = actionMasked == 1 || actionMasked == 6;
        GesturePointersUtility gesturePointersUtility = this.f50590a;
        int i2 = this.g;
        if (!gesturePointersUtility.a(i2)) {
            int i3 = this.f50602f;
            if (!gesturePointersUtility.a(i3) && actionMasked != 3 && (!z || (pointerId != i2 && pointerId != i3))) {
                if (actionMasked == 2) {
                    V3 v3H = MatrixKt.h(this.f50603h, this.f50604i);
                    V3 v3D = MatrixKt.d(v3H);
                    GesturePointersUtility.f50599c.getClass();
                    V3 v3A = GesturePointersUtility.Companion.a(motionEvent, i2);
                    V3 v3A2 = GesturePointersUtility.Companion.a(motionEvent, i3);
                    V3 v3H2 = MatrixKt.h(v3A, this.f50605j);
                    V3 v3H3 = MatrixKt.h(v3A2, this.f50606k);
                    this.f50605j = v3A;
                    this.f50606k = v3A2;
                    V3 v3D2 = MatrixKt.d(v3H2);
                    float[] fArr = v3D.f50557a;
                    float fA = MatrixKt.a(v3D2, MatrixKt.k(-fArr[0], -fArr[1], -fArr[2]));
                    float fA2 = MatrixKt.a(MatrixKt.d(v3H3), v3D);
                    float fCos = (float) Math.cos(Math.toRadians(30.0d));
                    V3 v3 = MatrixKt.f50552a;
                    if ((MatrixKt.b(v3H2, v3) || Math.abs(fA) >= fCos) && (MatrixKt.b(v3H3, v3) || Math.abs(fA2) >= fCos)) {
                        float fSqrt = (float) Math.sqrt(MatrixKt.a(v3H, v3H));
                        V3 v3H4 = MatrixKt.h(v3A, v3A2);
                        float fSqrt2 = (float) Math.sqrt(MatrixKt.a(v3H4, v3H4));
                        this.l = fSqrt2;
                        if (Math.abs(fSqrt2 - fSqrt) >= TypedValue.applyDimension(4, 0.05f, gesturePointersUtility.f50600a)) {
                            return true;
                        }
                    }
                }
                return false;
            }
        }
        b();
        return false;
    }

    @Override // com.vuitton.android.presentation.ar.gesture.BaseGesture
    public final BaseGesture c() {
        return this;
    }

    @Override // com.vuitton.android.presentation.ar.gesture.BaseGesture
    public final void d() {
        GesturePointersUtility gesturePointersUtility = this.f50590a;
        gesturePointersUtility.f50601b.remove(Integer.valueOf(this.g));
        gesturePointersUtility.f50601b.remove(Integer.valueOf(this.f50602f));
    }

    @Override // com.vuitton.android.presentation.ar.gesture.BaseGesture
    public final void e(MotionEvent motionEvent) {
        int i2 = this.g;
        GesturePointersUtility gesturePointersUtility = this.f50590a;
        gesturePointersUtility.b(i2);
        gesturePointersUtility.b(this.f50602f);
    }

    @Override // com.vuitton.android.presentation.ar.gesture.BaseGesture
    public final boolean f(MotionEvent motionEvent) {
        int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 3) {
            b();
            return false;
        }
        int i2 = this.f50602f;
        int i3 = this.g;
        if ((actionMasked == 1 || actionMasked == 6) && (pointerId == i3 || pointerId == i2)) {
            b();
            return false;
        }
        if (actionMasked == 2) {
            GesturePointersUtility.f50599c.getClass();
            V3 v3H = MatrixKt.h(GesturePointersUtility.Companion.a(motionEvent, i3), GesturePointersUtility.Companion.a(motionEvent, i2));
            float fSqrt = (float) Math.sqrt(MatrixKt.a(v3H, v3H));
            float f2 = this.l;
            if (fSqrt != f2) {
                this.m = fSqrt - f2;
                this.l = fSqrt;
                return true;
            }
        }
        return false;
    }
}
