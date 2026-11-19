package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import defpackage.md;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class LinearSmoothScroller extends RecyclerView.SmoothScroller {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public PointF f19251j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final DisplayMetrics f19252k;
    public float m;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final LinearInterpolator f19249h = new LinearInterpolator();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final DecelerateInterpolator f19250i = new DecelerateInterpolator();
    public boolean l = false;
    public int n = 0;
    public int o = 0;

    public LinearSmoothScroller(Context context) {
        this.f19252k = context.getResources().getDisplayMetrics();
    }

    public static int g(int i2, int i3, int i4, int i5, int i6) {
        if (i6 == -1) {
            return i4 - i2;
        }
        if (i6 != 0) {
            if (i6 == 1) {
                return i5 - i3;
            }
            md.n("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
            return 0;
        }
        int i7 = i4 - i2;
        if (i7 > 0) {
            return i7;
        }
        int i8 = i5 - i3;
        if (i8 < 0) {
            return i8;
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller
    public final void c(int i2, int i3, RecyclerView.SmoothScroller.Action action) {
        if (this.f19302b.mLayout.x() == 0) {
            f();
            return;
        }
        int i4 = this.n;
        int i5 = i4 - i2;
        if (i4 * i5 <= 0) {
            i5 = 0;
        }
        this.n = i5;
        int i6 = this.o;
        int i7 = i6 - i3;
        int i8 = i6 * i7 > 0 ? i7 : 0;
        this.o = i8;
        if (i5 == 0 && i8 == 0) {
            PointF pointFA = a(this.f19301a);
            if (pointFA != null) {
                float f2 = pointFA.x;
                if (f2 != Call.Parameters.DEFAULT_CAMERA_ZOOM || pointFA.y != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    float f3 = pointFA.y;
                    float fSqrt = (float) Math.sqrt((f3 * f3) + (f2 * f2));
                    float f4 = pointFA.x / fSqrt;
                    pointFA.x = f4;
                    float f5 = pointFA.y / fSqrt;
                    pointFA.y = f5;
                    this.f19251j = pointFA;
                    this.n = (int) (f4 * 10000.0f);
                    this.o = (int) (f5 * 10000.0f);
                    int iK = k(10000);
                    int i9 = (int) (this.n * 1.2f);
                    int i10 = (int) (this.o * 1.2f);
                    action.f19306a = i9;
                    action.f19307b = i10;
                    action.f19308c = (int) (iK * 1.2f);
                    action.f19309e = this.f19249h;
                    action.f19310f = true;
                    return;
                }
            }
            action.d = this.f19301a;
            f();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller
    public final void d() {
        this.o = 0;
        this.n = 0;
        this.f19251j = null;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0015  */
    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller
    public void e(View view, RecyclerView.SmoothScroller.Action action) {
        int i2;
        PointF pointF = this.f19251j;
        int i3 = 0;
        if (pointF != null) {
            float f2 = pointF.x;
            if (f2 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                i2 = 0;
            } else {
                i2 = f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM ? 1 : -1;
            }
        } else {
            i2 = 0;
        }
        int iH = h(i2, view);
        PointF pointF2 = this.f19251j;
        if (pointF2 != null) {
            float f3 = pointF2.y;
            if (f3 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                i3 = f3 > Call.Parameters.DEFAULT_CAMERA_ZOOM ? 1 : -1;
            }
        }
        int i4 = i(i3, view);
        int iCeil = (int) Math.ceil(((double) k((int) Math.sqrt((i4 * i4) + (iH * iH)))) / 0.3356d);
        if (iCeil > 0) {
            action.f19306a = -iH;
            action.f19307b = -i4;
            action.f19308c = iCeil;
            action.f19309e = this.f19250i;
            action.f19310f = true;
        }
    }

    public int h(int i2, View view) {
        RecyclerView.LayoutManager layoutManager = this.f19303c;
        if (layoutManager == null || !layoutManager.f()) {
            return 0;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        return g(RecyclerView.LayoutManager.D(view) - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, RecyclerView.LayoutManager.G(view) + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, layoutManager.K(), layoutManager.n - layoutManager.L(), i2);
    }

    public int i(int i2, View view) {
        RecyclerView.LayoutManager layoutManager = this.f19303c;
        if (layoutManager == null || !layoutManager.g()) {
            return 0;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        return g(RecyclerView.LayoutManager.H(view) - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, RecyclerView.LayoutManager.B(view) + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, layoutManager.M(), layoutManager.o - layoutManager.J(), i2);
    }

    public float j(DisplayMetrics displayMetrics) {
        return 25.0f / displayMetrics.densityDpi;
    }

    public int k(int i2) {
        float fAbs = Math.abs(i2);
        if (!this.l) {
            this.m = j(this.f19252k);
            this.l = true;
        }
        return (int) Math.ceil(fAbs * this.m);
    }
}
