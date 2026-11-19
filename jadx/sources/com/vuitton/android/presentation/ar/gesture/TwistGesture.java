package com.vuitton.android.presentation.ar.gesture;

import android.view.MotionEvent;
import com.vuitton.android.presentation.ar.MatrixKt;
import com.vuitton.android.presentation.ar.V3;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0002\n\u000bB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;", "Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;", "Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;", "gesturePointersUtility", "Landroid/view/MotionEvent;", "motionEvent", "", "pointerId2", "<init>", "(Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;Landroid/view/MotionEvent;I)V", "OnGestureEventListener", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TwistGesture extends BaseGesture<TwistGesture> {
    public static final Companion m = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f50610f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final V3 f50611h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final V3 f50612i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public V3 f50613j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public V3 f50614k;
    public float l;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/ar/gesture/TwistGesture$Companion;", "", "", "SLOP_ROTATION_DEGREES", "F", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static final float a(Companion companion, V3 v3, V3 v4, V3 v5, V3 v6) {
            companion.getClass();
            V3 v3D = MatrixKt.d(MatrixKt.h(v3, v4));
            V3 v3D2 = MatrixKt.d(MatrixKt.h(v5, v6));
            float fAcos = ((float) Math.acos(MatrixKt.a(v3D, v3D2))) * 57.295776f;
            float[] fArr = v3D2.f50557a;
            float f2 = fArr[0];
            float[] fArr2 = v3D.f50557a;
            return Math.signum((f2 * fArr2[1]) - (fArr[1] * fArr2[0])) * fAcos;
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/ar/gesture/TwistGesture$OnGestureEventListener;", "Lcom/vuitton/android/presentation/ar/gesture/BaseGesture$OnGestureEventListener;", "Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface OnGestureEventListener extends BaseGesture.OnGestureEventListener<TwistGesture> {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwistGesture(GesturePointersUtility gesturePointersUtility, MotionEvent motionEvent, int i2) {
        super(gesturePointersUtility);
        gesturePointersUtility.getClass();
        motionEvent.getClass();
        this.f50610f = i2;
        int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
        this.g = pointerId;
        GesturePointersUtility.f50599c.getClass();
        V3 v3A = GesturePointersUtility.Companion.a(motionEvent, pointerId);
        this.f50611h = v3A;
        V3 v3A2 = GesturePointersUtility.Companion.a(motionEvent, i2);
        this.f50612i = v3A2;
        this.f50613j = v3A;
        this.f50614k = v3A2;
    }

    @Override // com.vuitton.android.presentation.ar.gesture.BaseGesture
    public final boolean a(MotionEvent motionEvent) {
        GesturePointersUtility gesturePointersUtility = this.f50590a;
        int i2 = this.g;
        if (!gesturePointersUtility.a(i2)) {
            int i3 = this.f50610f;
            if (!gesturePointersUtility.a(i3)) {
                int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked == 3) {
                    b();
                    return false;
                }
                if ((actionMasked == 1 || actionMasked == 6) && (pointerId == i2 || pointerId == i3)) {
                    b();
                    return false;
                }
                if (actionMasked == 2) {
                    GesturePointersUtility.f50599c.getClass();
                    V3 v3A = GesturePointersUtility.Companion.a(motionEvent, i2);
                    V3 v3A2 = GesturePointersUtility.Companion.a(motionEvent, i3);
                    V3 v3H = MatrixKt.h(v3A, this.f50613j);
                    V3 v3H2 = MatrixKt.h(v3A2, this.f50614k);
                    this.f50613j = v3A;
                    this.f50614k = v3A2;
                    V3 v3 = MatrixKt.f50552a;
                    if (!MatrixKt.b(v3H, v3) && !MatrixKt.b(v3H2, v3)) {
                        if (Math.abs(Companion.a(m, v3A, v3A2, this.f50611h, this.f50612i)) >= 15.0f) {
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
        gesturePointersUtility.f50601b.remove(Integer.valueOf(this.f50610f));
    }

    @Override // com.vuitton.android.presentation.ar.gesture.BaseGesture
    public final void e(MotionEvent motionEvent) {
        int i2 = this.g;
        GesturePointersUtility gesturePointersUtility = this.f50590a;
        gesturePointersUtility.b(i2);
        gesturePointersUtility.b(this.f50610f);
    }

    @Override // com.vuitton.android.presentation.ar.gesture.BaseGesture
    public final boolean f(MotionEvent motionEvent) {
        int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 3) {
            b();
            return false;
        }
        int i2 = this.f50610f;
        int i3 = this.g;
        if ((actionMasked == 1 || actionMasked == 6) && (pointerId == i3 || pointerId == i2)) {
            b();
            return false;
        }
        if (actionMasked != 2) {
            return false;
        }
        GesturePointersUtility.f50599c.getClass();
        V3 v3A = GesturePointersUtility.Companion.a(motionEvent, i3);
        V3 v3A2 = GesturePointersUtility.Companion.a(motionEvent, i2);
        float fA = Companion.a(m, v3A, v3A2, this.f50613j, this.f50614k);
        this.l = fA;
        if (Float.isNaN(fA)) {
            this.l = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        this.f50613j = v3A;
        this.f50614k = v3A2;
        return true;
    }
}
