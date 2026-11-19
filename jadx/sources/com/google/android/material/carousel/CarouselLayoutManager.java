package com.google.android.material.carousel;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import androidx.core.util.Preconditions;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R$styleable;
import com.google.android.material.animation.AnimationUtils;
import com.vuitton.android.R;
import defpackage.cj;
import defpackage.md;
import defpackage.oj;
import defpackage.pq0;
import defpackage.tr;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class CarouselLayoutManager extends RecyclerView.LayoutManager implements Carousel, RecyclerView.SmoothScroller.ScrollVectorProvider {
    public int A;
    public int B;
    public final int C;
    public int p;
    public int q;
    public int r;
    public final DebugItemDecoration s;
    public final CarouselStrategy t;
    public KeylineStateList u;
    public KeylineState v;
    public int w;
    public HashMap x;
    public CarouselOrientationHelper y;
    public final View.OnLayoutChangeListener z;

    public static final class ChildCalculations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final View f32441a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final float f32442b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float f32443c;
        public final KeylineRange d;

        public ChildCalculations(View view, float f2, float f3, KeylineRange keylineRange) {
            this.f32441a = view;
            this.f32442b = f2;
            this.f32443c = f3;
            this.d = keylineRange;
        }
    }

    public static class DebugItemDecoration extends RecyclerView.ItemDecoration {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Paint f32444a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public List f32445b;

        public DebugItemDecoration() {
            Paint paint = new Paint();
            this.f32444a = paint;
            this.f32445b = Collections.unmodifiableList(new ArrayList());
            paint.setStrokeWidth(5.0f);
            paint.setColor(-65281);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public final void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
            Canvas canvas2;
            super.onDrawOver(canvas, recyclerView, state);
            float dimension = recyclerView.getResources().getDimension(R.dimen.m3_carousel_debug_keyline_width);
            Paint paint = this.f32444a;
            paint.setStrokeWidth(dimension);
            for (KeylineState.Keyline keyline : this.f32445b) {
                paint.setColor(ColorUtils.b(-65281, -16776961, keyline.f32467c));
                if (((CarouselLayoutManager) recyclerView.getLayoutManager()).Y0()) {
                    canvas2 = canvas;
                    canvas2.drawLine(keyline.f32466b, ((CarouselLayoutManager) recyclerView.getLayoutManager()).y.g(), keyline.f32466b, ((CarouselLayoutManager) recyclerView.getLayoutManager()).y.c(), paint);
                } else {
                    canvas2 = canvas;
                    canvas2.drawLine(((CarouselLayoutManager) recyclerView.getLayoutManager()).y.d(), keyline.f32466b, ((CarouselLayoutManager) recyclerView.getLayoutManager()).y.e(), keyline.f32466b, paint);
                }
                canvas = canvas2;
            }
        }
    }

    public static class KeylineRange {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final KeylineState.Keyline f32446a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final KeylineState.Keyline f32447b;

        public KeylineRange(KeylineState.Keyline keyline, KeylineState.Keyline keyline2) {
            Preconditions.a(keyline.f32465a <= keyline2.f32465a);
            this.f32446a = keyline;
            this.f32447b = keyline2;
        }
    }

    public CarouselLayoutManager(Context context, AttributeSet attributeSet, int i2, int i3) {
        this.s = new DebugItemDecoration();
        this.w = 0;
        this.z = new oj(this, 0);
        this.B = -1;
        this.C = 0;
        this.t = new MultiBrowseCarouselStrategy();
        e1();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.g);
            this.C = typedArrayObtainStyledAttributes.getInt(0, 0);
            e1();
            g1(typedArrayObtainStyledAttributes.getInt(0, 0));
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static KeylineRange X0(List list, float f2, boolean z) {
        float f3 = Float.MAX_VALUE;
        int i2 = -1;
        int i3 = -1;
        int i4 = -1;
        int i5 = -1;
        float f4 = -3.4028235E38f;
        float f5 = Float.MAX_VALUE;
        float f6 = Float.MAX_VALUE;
        for (int i6 = 0; i6 < list.size(); i6++) {
            KeylineState.Keyline keyline = (KeylineState.Keyline) list.get(i6);
            float f7 = z ? keyline.f32466b : keyline.f32465a;
            float fAbs = Math.abs(f7 - f2);
            if (f7 <= f2 && fAbs <= f3) {
                i2 = i6;
                f3 = fAbs;
            }
            if (f7 > f2 && fAbs <= f5) {
                i4 = i6;
                f5 = fAbs;
            }
            if (f7 <= f6) {
                i3 = i6;
                f6 = f7;
            }
            if (f7 > f4) {
                i5 = i6;
                f4 = f7;
            }
        }
        if (i2 == -1) {
            i2 = i3;
        }
        if (i4 == -1) {
            i4 = i5;
        }
        return new KeylineRange((KeylineState.Keyline) list.get(i2), (KeylineState.Keyline) list.get(i4));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void C(View view, Rect rect) {
        RecyclerView.getDecoratedBoundsWithMarginsInt(view, rect);
        float fCenterY = rect.centerY();
        if (Y0()) {
            fCenterY = rect.centerX();
        }
        KeylineRange keylineRangeX0 = X0(this.v.f32455c, fCenterY, true);
        KeylineState.Keyline keyline = keylineRangeX0.f32446a;
        float f2 = keyline.d;
        KeylineState.Keyline keyline2 = keylineRangeX0.f32447b;
        float fB = AnimationUtils.b(f2, keyline2.d, keyline.f32466b, keyline2.f32466b, fCenterY);
        boolean zY0 = Y0();
        float fHeight = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        float fWidth = zY0 ? (rect.width() - fB) / 2.0f : 0.0f;
        if (!Y0()) {
            fHeight = (rect.height() - fB) / 2.0f;
        }
        rect.set((int) (rect.left + fWidth), (int) (rect.top + fHeight), (int) (rect.right - fWidth), (int) (rect.bottom - fHeight));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void I0(RecyclerView recyclerView, int i2) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext()) { // from class: com.google.android.material.carousel.CarouselLayoutManager.1
            @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller
            public final PointF a(int i3) {
                return CarouselLayoutManager.this.a(i3);
            }

            @Override // androidx.recyclerview.widget.LinearSmoothScroller
            public final int h(int i3, View view) {
                CarouselLayoutManager carouselLayoutManager = CarouselLayoutManager.this;
                if (carouselLayoutManager.u == null || !carouselLayoutManager.Y0()) {
                    return 0;
                }
                int iN = RecyclerView.LayoutManager.N(view);
                return (int) (carouselLayoutManager.p - carouselLayoutManager.V0(iN, carouselLayoutManager.U0(iN)));
            }

            @Override // androidx.recyclerview.widget.LinearSmoothScroller
            public final int i(int i3, View view) {
                CarouselLayoutManager carouselLayoutManager = CarouselLayoutManager.this;
                if (carouselLayoutManager.u == null || carouselLayoutManager.Y0()) {
                    return 0;
                }
                int iN = RecyclerView.LayoutManager.N(view);
                return (int) (carouselLayoutManager.p - carouselLayoutManager.V0(iN, carouselLayoutManager.U0(iN)));
            }
        };
        linearSmoothScroller.f19301a = i2;
        J0(linearSmoothScroller);
    }

    public final void L0(View view, int i2, ChildCalculations childCalculations) {
        float f2 = this.v.f32453a / 2.0f;
        c(view, i2, false);
        c1(view);
        float f3 = childCalculations.f32443c;
        this.y.h(view, (int) (f3 - f2), (int) (f3 + f2));
        h1(view, childCalculations.f32442b, childCalculations.d);
    }

    public final float M0(float f2, float f3) {
        return Z0() ? f2 - f3 : f2 + f3;
    }

    public final void N0(RecyclerView.Recycler recycler, int i2, int i3) {
        if (i2 < 0 || i2 >= I()) {
            return;
        }
        float fR0 = R0(i2);
        View viewD = recycler.d(i2);
        c1(viewD);
        float fM0 = M0(fR0, this.v.f32453a / 2.0f);
        KeylineRange keylineRangeX0 = X0(this.v.f32455c, fM0, false);
        L0(viewD, i3, new ChildCalculations(viewD, fM0, Q0(fM0, keylineRangeX0), keylineRangeX0));
    }

    public final void O0(int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        float fR0 = R0(i2);
        while (i2 < state.b()) {
            float fM0 = M0(fR0, this.v.f32453a / 2.0f);
            KeylineRange keylineRangeX0 = X0(this.v.f32455c, fM0, false);
            float fQ0 = Q0(fM0, keylineRangeX0);
            if (a1(fQ0, keylineRangeX0)) {
                return;
            }
            fR0 = M0(fR0, this.v.f32453a);
            if (!b1(fQ0, keylineRangeX0)) {
                View viewD = recycler.d(i2);
                L0(viewD, -1, new ChildCalculations(viewD, fM0, fQ0, keylineRangeX0));
            }
            i2++;
        }
    }

    public final void P0(RecyclerView.Recycler recycler, int i2) {
        float fR0 = R0(i2);
        while (i2 >= 0) {
            float fM0 = M0(fR0, this.v.f32453a / 2.0f);
            KeylineRange keylineRangeX0 = X0(this.v.f32455c, fM0, false);
            float fQ0 = Q0(fM0, keylineRangeX0);
            if (b1(fQ0, keylineRangeX0)) {
                return;
            }
            float f2 = this.v.f32453a;
            fR0 = Z0() ? fR0 + f2 : fR0 - f2;
            if (!a1(fQ0, keylineRangeX0)) {
                View viewD = recycler.d(i2);
                L0(viewD, 0, new ChildCalculations(viewD, fM0, fQ0, keylineRangeX0));
            }
            i2--;
        }
    }

    public final float Q0(float f2, KeylineRange keylineRange) {
        KeylineState.Keyline keyline = keylineRange.f32446a;
        float f3 = keyline.f32466b;
        KeylineState.Keyline keyline2 = keylineRange.f32447b;
        float f4 = keyline2.f32466b;
        float f5 = keyline.f32465a;
        float f6 = keyline2.f32465a;
        float fB = AnimationUtils.b(f3, f4, f5, f6, f2);
        if (keyline2 != this.v.b() && keyline != this.v.d()) {
            return fB;
        }
        return tr.a(1.0f, keyline2.f32467c, f2 - f6, fB);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean R() {
        return true;
    }

    public final float R0(int i2) {
        return M0(this.y.f() - this.p, this.v.f32453a * i2);
    }

    public final void S0(RecyclerView.Recycler recycler, RecyclerView.State state) {
        while (x() > 0) {
            View viewW = w(0);
            Rect rect = new Rect();
            RecyclerView.getDecoratedBoundsWithMarginsInt(viewW, rect);
            float fCenterX = Y0() ? rect.centerX() : rect.centerY();
            if (!b1(fCenterX, X0(this.v.f32455c, fCenterX, true))) {
                break;
            } else {
                t0(viewW, recycler);
            }
        }
        while (x() - 1 >= 0) {
            View viewW2 = w(x() - 1);
            Rect rect2 = new Rect();
            RecyclerView.getDecoratedBoundsWithMarginsInt(viewW2, rect2);
            float fCenterX2 = Y0() ? rect2.centerX() : rect2.centerY();
            if (!a1(fCenterX2, X0(this.v.f32455c, fCenterX2, true))) {
                break;
            } else {
                t0(viewW2, recycler);
            }
        }
        if (x() == 0) {
            P0(recycler, this.w - 1);
            O0(this.w, recycler, state);
        } else {
            int iN = RecyclerView.LayoutManager.N(w(0));
            int iN2 = RecyclerView.LayoutManager.N(w(x() - 1));
            P0(recycler, iN - 1);
            O0(iN2 + 1, recycler, state);
        }
    }

    public final int T0() {
        return Y0() ? this.n : this.o;
    }

    public final KeylineState U0(int i2) {
        KeylineState keylineState;
        HashMap map = this.x;
        return (map == null || (keylineState = (KeylineState) map.get(Integer.valueOf(MathUtils.b(i2, 0, Math.max(0, I() + (-1)))))) == null) ? this.u.f32471a : keylineState;
    }

    public final int V0(int i2, KeylineState keylineState) {
        if (!Z0()) {
            return (int) ((keylineState.f32453a / 2.0f) + ((i2 * keylineState.f32453a) - keylineState.a().f32465a));
        }
        float fT0 = T0() - keylineState.c().f32465a;
        float f2 = keylineState.f32453a;
        return (int) ((fT0 - (i2 * f2)) - (f2 / 2.0f));
    }

    public final int W0(int i2, KeylineState keylineState) {
        int i3 = Integer.MAX_VALUE;
        for (KeylineState.Keyline keyline : keylineState.f32455c.subList(keylineState.d, keylineState.f32456e + 1)) {
            float f2 = keylineState.f32453a;
            float f3 = (f2 / 2.0f) + (i2 * f2);
            int iT0 = (Z0() ? (int) ((T0() - keyline.f32465a) - f3) : (int) (f3 - keyline.f32465a)) - this.p;
            if (Math.abs(i3) > Math.abs(iT0)) {
                i3 = iT0;
            }
        }
        return i3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void Y(RecyclerView recyclerView) {
        Context context = recyclerView.getContext();
        CarouselStrategy carouselStrategy = this.t;
        float dimension = carouselStrategy.f32451a;
        if (dimension <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            dimension = context.getResources().getDimension(R.dimen.m3_carousel_small_item_size_min);
        }
        carouselStrategy.f32451a = dimension;
        float dimension2 = carouselStrategy.f32452b;
        if (dimension2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            dimension2 = context.getResources().getDimension(R.dimen.m3_carousel_small_item_size_max);
        }
        carouselStrategy.f32452b = dimension2;
        e1();
        recyclerView.addOnLayoutChangeListener(this.z);
    }

    public final boolean Y0() {
        return this.y.f32448a == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void Z(RecyclerView recyclerView) {
        recyclerView.removeOnLayoutChangeListener(this.z);
    }

    public final boolean Z0() {
        return Y0() && this.f19271b.getLayoutDirection() == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    public final PointF a(int i2) {
        if (this.u == null) {
            return null;
        }
        int iV0 = V0(i2, U0(i2)) - this.p;
        return Y0() ? new PointF(iV0, Call.Parameters.DEFAULT_CAMERA_ZOOM) : new PointF(Call.Parameters.DEFAULT_CAMERA_ZOOM, iV0);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0025  */
    /* JADX WARN: Code duplicated, block: B:19:0x0029  */
    /* JADX WARN: Code duplicated, block: B:23:0x0033  */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final View a0(View view, int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        byte b2;
        if (x() == 0) {
            return null;
        }
        int i3 = this.y.f32448a;
        if (i2 == 1) {
            b2 = -1;
        } else if (i2 == 2) {
            b2 = 1;
        } else if (i2 != 17) {
            if (i2 != 33) {
                if (i2 != 66) {
                    if (i2 == 130 && i3 == 1) {
                        b2 = 1;
                    } else {
                        b2 = -2147483648;
                    }
                } else if (i3 != 0) {
                    b2 = -2147483648;
                } else if (Z0()) {
                    b2 = -1;
                } else {
                    b2 = 1;
                }
            } else if (i3 == 1) {
                b2 = -1;
            } else {
                b2 = -2147483648;
            }
        } else if (i3 != 0) {
            b2 = -2147483648;
        } else if (Z0()) {
            b2 = 1;
        } else {
            b2 = -1;
        }
        if (b2 == -2147483648) {
            return null;
        }
        if (b2 == -1) {
            if (RecyclerView.LayoutManager.N(view) == 0) {
                return null;
            }
            N0(recycler, RecyclerView.LayoutManager.N(w(0)) - 1, 0);
            return w(Z0() ? x() - 1 : 0);
        }
        if (RecyclerView.LayoutManager.N(view) == I() - 1) {
            return null;
        }
        N0(recycler, RecyclerView.LayoutManager.N(w(x() - 1)) + 1, -1);
        return w(Z0() ? 0 : x() - 1);
    }

    public final boolean a1(float f2, KeylineRange keylineRange) {
        KeylineState.Keyline keyline = keylineRange.f32446a;
        float f3 = keyline.d;
        KeylineState.Keyline keyline2 = keylineRange.f32447b;
        float fB = AnimationUtils.b(f3, keyline2.d, keyline.f32466b, keyline2.f32466b, f2) / 2.0f;
        float f4 = Z0() ? f2 + fB : f2 - fB;
        if (Z0()) {
            return f4 < Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        return f4 > ((float) T0());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void b0(AccessibilityEvent accessibilityEvent) {
        super.b0(accessibilityEvent);
        if (x() > 0) {
            accessibilityEvent.setFromIndex(RecyclerView.LayoutManager.N(w(0)));
            accessibilityEvent.setToIndex(RecyclerView.LayoutManager.N(w(x() - 1)));
        }
    }

    public final boolean b1(float f2, KeylineRange keylineRange) {
        KeylineState.Keyline keyline = keylineRange.f32446a;
        float f3 = keyline.d;
        KeylineState.Keyline keyline2 = keylineRange.f32447b;
        float fM0 = M0(f2, AnimationUtils.b(f3, keyline2.d, keyline.f32466b, keyline2.f32466b, f2) / 2.0f);
        if (Z0()) {
            return fM0 > ((float) T0());
        }
        return fM0 < Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public final void c1(View view) {
        if (!(view instanceof Maskable)) {
            md.k("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
            return;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        Rect rect = new Rect();
        e(view, rect);
        int i2 = rect.left + rect.right;
        int i3 = rect.top + rect.bottom;
        KeylineStateList keylineStateList = this.u;
        view.measure(RecyclerView.LayoutManager.y(this.n, this.l, Y0(), L() + K() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + i2, (int) ((keylineStateList == null || this.y.f32448a != 0) ? ((ViewGroup.MarginLayoutParams) layoutParams).width : keylineStateList.f32471a.f32453a)), RecyclerView.LayoutManager.y(this.o, this.m, g(), J() + M() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + i3, (int) ((keylineStateList == null || this.y.f32448a != 1) ? ((ViewGroup.MarginLayoutParams) layoutParams).height : keylineStateList.f32471a.f32453a)));
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0257 A[LOOP:3: B:98:0x024a->B:102:0x0257, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:106:0x0261  */
    /* JADX WARN: Code duplicated, block: B:108:0x0266  */
    /* JADX WARN: Code duplicated, block: B:111:0x0271  */
    /* JADX WARN: Code duplicated, block: B:114:0x0287  */
    /* JADX WARN: Code duplicated, block: B:116:0x0295  */
    /* JADX WARN: Code duplicated, block: B:119:0x02a0 A[LOOP:4: B:115:0x0293->B:119:0x02a0, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:123:0x02a8  */
    /* JADX WARN: Code duplicated, block: B:125:0x02ab  */
    /* JADX WARN: Code duplicated, block: B:127:0x02af  */
    /* JADX WARN: Code duplicated, block: B:128:0x02be  */
    /* JADX WARN: Code duplicated, block: B:130:0x02d1  */
    /* JADX WARN: Code duplicated, block: B:133:0x02f5  */
    /* JADX WARN: Code duplicated, block: B:135:0x02fa  */
    /* JADX WARN: Code duplicated, block: B:137:0x0319  */
    /* JADX WARN: Code duplicated, block: B:139:0x0327  */
    /* JADX WARN: Code duplicated, block: B:142:0x0338 A[LOOP:6: B:138:0x0325->B:142:0x0338, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:145:0x0342  */
    /* JADX WARN: Code duplicated, block: B:148:0x035a  */
    /* JADX WARN: Code duplicated, block: B:161:0x025a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:162:0x025b A[EDGE_INSN: B:162:0x025b->B:104:0x025b BREAK  A[LOOP:3: B:98:0x024a->B:102:0x0257], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:163:0x02a3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:164:0x02a5 A[EDGE_INSN: B:164:0x02a5->B:121:0x02a5 BREAK  A[LOOP:4: B:115:0x0293->B:119:0x02a0], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:167:0x0369 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:169:0x033b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:170:0x0335 A[EDGE_INSN: B:170:0x0335->B:141:0x0335 BREAK  A[LOOP:6: B:138:0x0325->B:142:0x0338], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x0135 A[PHI: r24
      0x0135: PHI (r24v1 float) = (r24v4 float), (r24v5 float) binds: [B:63:0x0133, B:59:0x012b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:66:0x0139  */
    /* JADX WARN: Code duplicated, block: B:67:0x014e  */
    /* JADX WARN: Code duplicated, block: B:99:0x024c  */
    public final void d1(RecyclerView.Recycler recycler) {
        int i2;
        int iM;
        int iJ;
        int i3;
        int i4;
        float f2;
        int i5;
        int i6;
        float f3;
        ArrayList arrayList;
        int size;
        int i7;
        int i8;
        int i9;
        int i10;
        float f4;
        float f5;
        int i11;
        KeylineState keylineState;
        int i12;
        int i13;
        float f6;
        int i14;
        KeylineState.Keyline keylineC;
        int size2;
        KeylineState.Keyline keyline;
        float f7;
        KeylineState.Keyline keyline2;
        int i15;
        int i16;
        View viewD = recycler.d(0);
        c1(viewD);
        CarouselStrategy carouselStrategy = this.t;
        KeylineState keylineStateB = carouselStrategy.b(this, viewD);
        if (Z0()) {
            int iT0 = T0();
            KeylineState.Builder builder = new KeylineState.Builder(keylineStateB.f32453a, iT0);
            float f8 = (iT0 - keylineStateB.d().f32466b) - (keylineStateB.d().d / 2.0f);
            List list = keylineStateB.f32455c;
            int size3 = list.size() - 1;
            while (size3 >= 0) {
                KeylineState.Keyline keyline3 = (KeylineState.Keyline) list.get(size3);
                float f9 = keyline3.d;
                builder.a((f9 / 2.0f) + f8, keyline3.f32467c, f9, size3 >= keylineStateB.d && size3 <= keylineStateB.f32456e, keyline3.f32468e);
                f8 += keyline3.d;
                size3--;
            }
            keylineStateB = builder.d();
        }
        KeylineState keylineState2 = keylineStateB;
        List list2 = keylineState2.f32455c;
        if (x() > 0) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) w(0).getLayoutParams();
            if (this.y.f32448a == 0) {
                i15 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                i16 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            } else {
                i15 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                i16 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            }
            i2 = i15 + i16;
        } else {
            i2 = 0;
        }
        float f10 = i2;
        if (z()) {
            iM = 0;
        } else {
            iM = this.y.f32448a == 1 ? M() : K();
        }
        float f11 = iM;
        if (z()) {
            iJ = 0;
        } else {
            iJ = this.y.f32448a == 1 ? J() : L();
        }
        float f12 = iJ;
        carouselStrategy.getClass();
        CarouselStrategy.StrategyType strategyType = CarouselStrategy.StrategyType.CONTAINED;
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(keylineState2);
        int i17 = 0;
        while (true) {
            i3 = keylineState2.f32456e;
            i4 = keylineState2.d;
            if (i17 >= list2.size()) {
                i17 = -1;
                break;
            } else if (!((KeylineState.Keyline) list2.get(i17)).f32468e) {
                break;
            } else {
                i17++;
            }
        }
        int i18 = Y0() ? this.n : this.o;
        if (keylineState2.a().f32466b - (keylineState2.a().d / 2.0f) >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            KeylineState.Keyline keylineA = keylineState2.a();
            f2 = 0.0f;
            int i19 = 0;
            while (true) {
                if (i19 >= list2.size()) {
                    keyline2 = null;
                    break;
                }
                keyline2 = (KeylineState.Keyline) list2.get(i19);
                if (!keyline2.f32468e) {
                    break;
                } else {
                    i19++;
                }
            }
            if (keylineA == keyline2) {
                if (f11 > f2) {
                    arrayList2.add(KeylineStateList.f(keylineState2, f11, i18, true, f10, strategyType));
                    i5 = i4;
                    f3 = f12;
                    i6 = i3;
                } else {
                    i5 = i4;
                    i6 = i3;
                    f3 = f12;
                }
            }
            arrayList = new ArrayList();
            arrayList.add(keylineState2);
            size = list2.size() - 1;
            while (true) {
                if (size >= 0) {
                    size = -1;
                    break;
                } else if (!((KeylineState.Keyline) list2.get(size)).f32468e) {
                    break;
                } else {
                    size--;
                }
            }
            if (Y0()) {
                i7 = this.n;
            } else {
                i7 = this.o;
            }
            i8 = i7;
            i9 = this.o;
            if (Y0()) {
                i9 = this.n;
            }
            if ((keylineState2.c().d / 2.0f) + keylineState2.c().f32466b <= i9) {
                keylineC = keylineState2.c();
                size2 = list2.size() - 1;
                while (true) {
                    if (size2 >= 0) {
                        keyline = null;
                        break;
                    }
                    keyline = (KeylineState.Keyline) list2.get(size2);
                    if (!keyline.f32468e) {
                        break;
                    } else {
                        size2--;
                    }
                }
                if (keylineC == keyline) {
                    if (f3 > f2) {
                        arrayList.add(KeylineStateList.f(keylineState2, f3, i8, false, f10, strategyType));
                    }
                } else if (size == -1) {
                    i10 = size - i6;
                    f4 = keylineState2.b().f32466b - (keylineState2.b().d / 2.0f);
                    if (i10 <= 0 || keylineState2.c().f32469f <= f2) {
                        f5 = f2;
                        i11 = 0;
                        while (i11 < i10) {
                            keylineState = (KeylineState) cj.c(1, arrayList);
                            int i20 = size - i11;
                            float f13 = f5 + ((KeylineState.Keyline) list2.get(i20)).f32469f;
                            i12 = i20 + 1;
                            if (i12 < list2.size()) {
                                f6 = ((KeylineState.Keyline) list2.get(i12)).f32467c;
                                i14 = keylineState.d - 1;
                                while (true) {
                                    if (i14 < 0) {
                                        i14 = 0;
                                        break;
                                    } else if (f6 == ((KeylineState.Keyline) keylineState.f32455c.get(i14)).f32467c) {
                                        break;
                                    } else {
                                        i14--;
                                    }
                                }
                                i13 = i14 + 1;
                            } else {
                                i13 = 0;
                            }
                            int i21 = size;
                            KeylineState keylineStateE = KeylineStateList.e(keylineState, i21, i13, f4 - f13, i5 + i11 + 1, i6 + i11 + 1, i8);
                            if (i11 != i10 - 1 && f3 > f2) {
                                float f14 = f10;
                                keylineStateE = KeylineStateList.f(keylineStateE, f3, i8, false, f14, strategyType);
                                f10 = f14;
                            }
                            arrayList.add(keylineStateE);
                            i11++;
                            size = i21;
                            f5 = f13;
                        }
                    } else {
                        arrayList.add(KeylineStateList.e(keylineState2, 0, 0, (f4 - keylineState2.c().f32469f) - f3, keylineState2.d, keylineState2.f32456e, i8));
                    }
                } else if (f3 > f2) {
                    arrayList.add(KeylineStateList.f(keylineState2, f3, i8, false, f10, strategyType));
                }
            } else if (size == -1) {
                i10 = size - i6;
                f4 = keylineState2.b().f32466b - (keylineState2.b().d / 2.0f);
                if (i10 <= 0) {
                    f5 = f2;
                    i11 = 0;
                    while (i11 < i10) {
                        keylineState = (KeylineState) cj.c(1, arrayList);
                        int i22 = size - i11;
                        float f15 = f5 + ((KeylineState.Keyline) list2.get(i22)).f32469f;
                        i12 = i22 + 1;
                        if (i12 < list2.size()) {
                            f6 = ((KeylineState.Keyline) list2.get(i12)).f32467c;
                            i14 = keylineState.d - 1;
                            while (true) {
                                if (i14 < 0) {
                                    i14 = 0;
                                    break;
                                } else {
                                    if (f6 == ((KeylineState.Keyline) keylineState.f32455c.get(i14)).f32467c) {
                                        break;
                                        break;
                                    }
                                    i14--;
                                }
                            }
                            i13 = i14 + 1;
                        } else {
                            i13 = 0;
                        }
                        int i23 = size;
                        KeylineState keylineStateE2 = KeylineStateList.e(keylineState, i23, i13, f4 - f15, i5 + i11 + 1, i6 + i11 + 1, i8);
                        if (i11 != i10 - 1) {
                        }
                        arrayList.add(keylineStateE2);
                        i11++;
                        size = i23;
                        f5 = f15;
                    }
                } else {
                    f5 = f2;
                    i11 = 0;
                    while (i11 < i10) {
                        keylineState = (KeylineState) cj.c(1, arrayList);
                        int i24 = size - i11;
                        float f16 = f5 + ((KeylineState.Keyline) list2.get(i24)).f32469f;
                        i12 = i24 + 1;
                        if (i12 < list2.size()) {
                            f6 = ((KeylineState.Keyline) list2.get(i12)).f32467c;
                            i14 = keylineState.d - 1;
                            while (true) {
                                if (i14 < 0) {
                                    i14 = 0;
                                    break;
                                } else {
                                    if (f6 == ((KeylineState.Keyline) keylineState.f32455c.get(i14)).f32467c) {
                                        break;
                                        break;
                                    }
                                    i14--;
                                }
                            }
                            i13 = i14 + 1;
                        } else {
                            i13 = 0;
                        }
                        int i25 = size;
                        KeylineState keylineStateE3 = KeylineStateList.e(keylineState, i25, i13, f4 - f16, i5 + i11 + 1, i6 + i11 + 1, i8);
                        if (i11 != i10 - 1) {
                        }
                        arrayList.add(keylineStateE3);
                        i11++;
                        size = i25;
                        f5 = f16;
                    }
                }
            } else if (f3 > f2) {
                arrayList.add(KeylineStateList.f(keylineState2, f3, i8, false, f10, strategyType));
            }
            this.u = new KeylineStateList(keylineState2, arrayList2, arrayList);
        }
        f2 = 0.0f;
        if (i17 != -1) {
            int i26 = i4;
            float f17 = f10;
            int i27 = i26 - i17;
            float f18 = keylineState2.b().f32466b - (keylineState2.b().d / 2.0f);
            if (i27 > 0 || keylineState2.a().f32469f <= f2) {
                i6 = i3;
                float f19 = f2;
                int i28 = 0;
                while (i28 < i27) {
                    KeylineState keylineState3 = (KeylineState) cj.c(1, arrayList2);
                    int i29 = i17 + i28;
                    int size4 = list2.size() - 1;
                    int i30 = i26;
                    float f20 = ((KeylineState.Keyline) list2.get(i29)).f32469f + f19;
                    int i31 = i29 - 1;
                    if (i31 >= 0) {
                        float f21 = ((KeylineState.Keyline) list2.get(i31)).f32467c;
                        int size5 = keylineState3.f32456e;
                        List list3 = keylineState3.f32455c;
                        while (true) {
                            if (size5 >= list3.size()) {
                                size5 = list3.size() - 1;
                                break;
                            } else if (f21 == ((KeylineState.Keyline) list3.get(size5)).f32467c) {
                                break;
                            } else {
                                size5++;
                            }
                        }
                        size4 = size5 - 1;
                    }
                    int i32 = i17;
                    KeylineState keylineStateE4 = KeylineStateList.e(keylineState3, i32, size4, f18 + f20, (i30 - i28) - 1, (i6 - i28) - 1, i18);
                    if (i28 != i27 - 1 || f11 <= f2) {
                        f7 = f17;
                    } else {
                        float f22 = f17;
                        keylineStateE4 = KeylineStateList.f(keylineStateE4, f11, i18, true, f22, strategyType);
                        f7 = f22;
                    }
                    arrayList2.add(keylineStateE4);
                    i28++;
                    f17 = f7;
                    i17 = i32;
                    i26 = i30;
                    f19 = f20;
                    f12 = f12;
                }
                i5 = i26;
                f10 = f17;
                f3 = f12;
            } else {
                i6 = i3;
                arrayList2.add(KeylineStateList.e(keylineState2, 0, 0, f18 + keylineState2.a().f32469f + f11, keylineState2.d, keylineState2.f32456e, i18));
                i5 = i26;
                f3 = f12;
                f10 = f17;
            }
        } else if (f11 > f2) {
            arrayList2.add(KeylineStateList.f(keylineState2, f11, i18, true, f10, strategyType));
            i5 = i4;
            f3 = f12;
            i6 = i3;
        } else {
            i5 = i4;
            i6 = i3;
            f3 = f12;
        }
        arrayList = new ArrayList();
        arrayList.add(keylineState2);
        size = list2.size() - 1;
        while (true) {
            if (size >= 0) {
                size = -1;
                break;
            } else {
                if (!((KeylineState.Keyline) list2.get(size)).f32468e) {
                    break;
                    break;
                }
                size--;
            }
        }
        if (Y0()) {
            i7 = this.n;
        } else {
            i7 = this.o;
        }
        i8 = i7;
        i9 = this.o;
        if (Y0()) {
            i9 = this.n;
        }
        if ((keylineState2.c().d / 2.0f) + keylineState2.c().f32466b <= i9) {
            keylineC = keylineState2.c();
            size2 = list2.size() - 1;
            while (true) {
                if (size2 >= 0) {
                    keyline = null;
                    break;
                }
                keyline = (KeylineState.Keyline) list2.get(size2);
                if (!keyline.f32468e) {
                    break;
                    break;
                }
                size2--;
            }
            if (keylineC == keyline) {
                if (f3 > f2) {
                    arrayList.add(KeylineStateList.f(keylineState2, f3, i8, false, f10, strategyType));
                }
            } else if (size == -1) {
                i10 = size - i6;
                f4 = keylineState2.b().f32466b - (keylineState2.b().d / 2.0f);
                if (i10 <= 0) {
                    f5 = f2;
                    i11 = 0;
                    while (i11 < i10) {
                        keylineState = (KeylineState) cj.c(1, arrayList);
                        int i210 = size - i11;
                        float f110 = f5 + ((KeylineState.Keyline) list2.get(i210)).f32469f;
                        i12 = i210 + 1;
                        if (i12 < list2.size()) {
                            f6 = ((KeylineState.Keyline) list2.get(i12)).f32467c;
                            i14 = keylineState.d - 1;
                            while (true) {
                                if (i14 < 0) {
                                    i14 = 0;
                                    break;
                                } else {
                                    if (f6 == ((KeylineState.Keyline) keylineState.f32455c.get(i14)).f32467c) {
                                        break;
                                        break;
                                    }
                                    i14--;
                                }
                            }
                            i13 = i14 + 1;
                        } else {
                            i13 = 0;
                        }
                        int i211 = size;
                        KeylineState keylineStateE5 = KeylineStateList.e(keylineState, i211, i13, f4 - f110, i5 + i11 + 1, i6 + i11 + 1, i8);
                        if (i11 != i10 - 1) {
                        }
                        arrayList.add(keylineStateE5);
                        i11++;
                        size = i211;
                        f5 = f110;
                    }
                } else {
                    f5 = f2;
                    i11 = 0;
                    while (i11 < i10) {
                        keylineState = (KeylineState) cj.c(1, arrayList);
                        int i212 = size - i11;
                        float f111 = f5 + ((KeylineState.Keyline) list2.get(i212)).f32469f;
                        i12 = i212 + 1;
                        if (i12 < list2.size()) {
                            f6 = ((KeylineState.Keyline) list2.get(i12)).f32467c;
                            i14 = keylineState.d - 1;
                            while (true) {
                                if (i14 < 0) {
                                    i14 = 0;
                                    break;
                                } else {
                                    if (f6 == ((KeylineState.Keyline) keylineState.f32455c.get(i14)).f32467c) {
                                        break;
                                        break;
                                    }
                                    i14--;
                                }
                            }
                            i13 = i14 + 1;
                        } else {
                            i13 = 0;
                        }
                        int i213 = size;
                        KeylineState keylineStateE6 = KeylineStateList.e(keylineState, i213, i13, f4 - f111, i5 + i11 + 1, i6 + i11 + 1, i8);
                        if (i11 != i10 - 1) {
                        }
                        arrayList.add(keylineStateE6);
                        i11++;
                        size = i213;
                        f5 = f111;
                    }
                }
            } else if (f3 > f2) {
                arrayList.add(KeylineStateList.f(keylineState2, f3, i8, false, f10, strategyType));
            }
        } else if (size == -1) {
            i10 = size - i6;
            f4 = keylineState2.b().f32466b - (keylineState2.b().d / 2.0f);
            if (i10 <= 0) {
                f5 = f2;
                i11 = 0;
                while (i11 < i10) {
                    keylineState = (KeylineState) cj.c(1, arrayList);
                    int i214 = size - i11;
                    float f112 = f5 + ((KeylineState.Keyline) list2.get(i214)).f32469f;
                    i12 = i214 + 1;
                    if (i12 < list2.size()) {
                        f6 = ((KeylineState.Keyline) list2.get(i12)).f32467c;
                        i14 = keylineState.d - 1;
                        while (true) {
                            if (i14 < 0) {
                                i14 = 0;
                                break;
                            } else {
                                if (f6 == ((KeylineState.Keyline) keylineState.f32455c.get(i14)).f32467c) {
                                    break;
                                    break;
                                }
                                i14--;
                            }
                        }
                        i13 = i14 + 1;
                    } else {
                        i13 = 0;
                    }
                    int i215 = size;
                    KeylineState keylineStateE7 = KeylineStateList.e(keylineState, i215, i13, f4 - f112, i5 + i11 + 1, i6 + i11 + 1, i8);
                    if (i11 != i10 - 1) {
                    }
                    arrayList.add(keylineStateE7);
                    i11++;
                    size = i215;
                    f5 = f112;
                }
            } else {
                f5 = f2;
                i11 = 0;
                while (i11 < i10) {
                    keylineState = (KeylineState) cj.c(1, arrayList);
                    int i216 = size - i11;
                    float f113 = f5 + ((KeylineState.Keyline) list2.get(i216)).f32469f;
                    i12 = i216 + 1;
                    if (i12 < list2.size()) {
                        f6 = ((KeylineState.Keyline) list2.get(i12)).f32467c;
                        i14 = keylineState.d - 1;
                        while (true) {
                            if (i14 < 0) {
                                i14 = 0;
                                break;
                            } else {
                                if (f6 == ((KeylineState.Keyline) keylineState.f32455c.get(i14)).f32467c) {
                                    break;
                                    break;
                                }
                                i14--;
                            }
                        }
                        i13 = i14 + 1;
                    } else {
                        i13 = 0;
                    }
                    int i217 = size;
                    KeylineState keylineStateE8 = KeylineStateList.e(keylineState, i217, i13, f4 - f113, i5 + i11 + 1, i6 + i11 + 1, i8);
                    if (i11 != i10 - 1) {
                    }
                    arrayList.add(keylineStateE8);
                    i11++;
                    size = i217;
                    f5 = f113;
                }
            }
        } else if (f3 > f2) {
            arrayList.add(KeylineStateList.f(keylineState2, f3, i8, false, f10, strategyType));
        }
        this.u = new KeylineStateList(keylineState2, arrayList2, arrayList);
    }

    public final void e1() {
        this.u = null;
        w0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean f() {
        return Y0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void f0(int i2, int i3) {
        j1();
    }

    public final int f1(int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (x() != 0 && i2 != 0) {
            if (this.u == null) {
                d1(recycler);
            }
            int I = I();
            KeylineStateList keylineStateList = this.u;
            if (I > (Z0() ? keylineStateList.a() : keylineStateList.c()).f32454b) {
                int i3 = this.p;
                int i4 = this.q;
                int i5 = this.r;
                int i6 = i3 + i2;
                if (i6 < i4) {
                    i2 = i4 - i3;
                } else if (i6 > i5) {
                    i2 = i5 - i3;
                }
                this.p = i3 + i2;
                i1(this.u);
                float f2 = this.v.f32453a / 2.0f;
                float fR0 = R0(RecyclerView.LayoutManager.N(w(0)));
                Rect rect = new Rect();
                boolean zZ0 = Z0();
                KeylineState keylineState = this.v;
                float f3 = zZ0 ? keylineState.c().f32466b : keylineState.a().f32466b;
                float f4 = Float.MAX_VALUE;
                for (int i7 = 0; i7 < x(); i7++) {
                    View viewW = w(i7);
                    float fM0 = M0(fR0, f2);
                    KeylineRange keylineRangeX0 = X0(this.v.f32455c, fM0, false);
                    float fQ0 = Q0(fM0, keylineRangeX0);
                    RecyclerView.getDecoratedBoundsWithMarginsInt(viewW, rect);
                    h1(viewW, fM0, keylineRangeX0);
                    this.y.j(viewW, rect, f2, fQ0);
                    float fAbs = Math.abs(f3 - fQ0);
                    if (fAbs < f4) {
                        this.B = RecyclerView.LayoutManager.N(viewW);
                        f4 = fAbs;
                    }
                    fR0 = M0(fR0, this.v.f32453a);
                }
                S0(recycler, state);
                return i2;
            }
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean g() {
        return !Y0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void g0() {
        j1();
    }

    public final void g1(int i2) {
        CarouselOrientationHelper carouselOrientationHelper;
        if (i2 != 0 && i2 != 1) {
            md.n(pq0.k(i2, "invalid orientation:"));
            return;
        }
        d(null);
        CarouselOrientationHelper carouselOrientationHelper2 = this.y;
        if (carouselOrientationHelper2 == null || i2 != carouselOrientationHelper2.f32448a) {
            if (i2 == 0) {
                carouselOrientationHelper = new CarouselOrientationHelper() { // from class: com.google.android.material.carousel.CarouselOrientationHelper.2
                    {
                        super(0);
                    }

                    @Override // com.google.android.material.carousel.CarouselOrientationHelper
                    public final void a(RectF rectF, RectF rectF2, RectF rectF3) {
                        float f2 = rectF2.left;
                        float f3 = rectF3.left;
                        if (f2 < f3 && rectF2.right > f3) {
                            float f4 = f3 - f2;
                            rectF.left += f4;
                            rectF2.left += f4;
                        }
                        float f5 = rectF2.right;
                        float f6 = rectF3.right;
                        if (f5 <= f6 || rectF2.left >= f6) {
                            return;
                        }
                        float f7 = f5 - f6;
                        rectF.right = Math.max(rectF.right - f7, rectF.left);
                        rectF2.right = Math.max(rectF2.right - f7, rectF2.left);
                    }

                    @Override // com.google.android.material.carousel.CarouselOrientationHelper
                    public final RectF b(float f2, float f3, float f4, float f5) {
                        return new RectF(f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, f3 - f5, f2);
                    }

                    @Override // com.google.android.material.carousel.CarouselOrientationHelper
                    public final int c() {
                        CarouselLayoutManager carouselLayoutManager = this.f32450b;
                        return carouselLayoutManager.o - carouselLayoutManager.J();
                    }

                    @Override // com.google.android.material.carousel.CarouselOrientationHelper
                    public final int d() {
                        return 0;
                    }

                    @Override // com.google.android.material.carousel.CarouselOrientationHelper
                    public final int e() {
                        return this.f32450b.n;
                    }

                    @Override // com.google.android.material.carousel.CarouselOrientationHelper
                    public final int f() {
                        CarouselLayoutManager carouselLayoutManager = this.f32450b;
                        if (carouselLayoutManager.Z0()) {
                            return carouselLayoutManager.n;
                        }
                        return 0;
                    }

                    @Override // com.google.android.material.carousel.CarouselOrientationHelper
                    public final int g() {
                        return this.f32450b.M();
                    }

                    @Override // com.google.android.material.carousel.CarouselOrientationHelper
                    public final void h(View view, int i3, int i4) {
                        int iM = this.f32450b.M();
                        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                        RecyclerView.LayoutManager.U(view, i3, iM, i4, RecyclerView.LayoutManager.E(view) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + iM);
                    }

                    @Override // com.google.android.material.carousel.CarouselOrientationHelper
                    public final void i(RectF rectF, RectF rectF2, RectF rectF3) {
                        if (rectF2.right <= rectF3.left) {
                            float fFloor = ((float) Math.floor(rectF.right)) - 1.0f;
                            rectF.right = fFloor;
                            rectF.left = Math.min(rectF.left, fFloor);
                        }
                        if (rectF2.left >= rectF3.right) {
                            float fCeil = ((float) Math.ceil(rectF.left)) + 1.0f;
                            rectF.left = fCeil;
                            rectF.right = Math.max(fCeil, rectF.right);
                        }
                    }

                    @Override // com.google.android.material.carousel.CarouselOrientationHelper
                    public final void j(View view, Rect rect, float f2, float f3) {
                        view.offsetLeftAndRight((int) (f3 - (rect.left + f2)));
                    }
                };
            } else {
                if (i2 != 1) {
                    md.n("invalid orientation");
                    return;
                }
                carouselOrientationHelper = new CarouselOrientationHelper() { // from class: com.google.android.material.carousel.CarouselOrientationHelper.1
                    {
                        super(1);
                    }

                    @Override // com.google.android.material.carousel.CarouselOrientationHelper
                    public final void a(RectF rectF, RectF rectF2, RectF rectF3) {
                        float f2 = rectF2.top;
                        float f3 = rectF3.top;
                        if (f2 < f3 && rectF2.bottom > f3) {
                            float f4 = f3 - f2;
                            rectF.top += f4;
                            rectF3.top += f4;
                        }
                        float f5 = rectF2.bottom;
                        float f6 = rectF3.bottom;
                        if (f5 <= f6 || rectF2.top >= f6) {
                            return;
                        }
                        float f7 = f5 - f6;
                        rectF.bottom = Math.max(rectF.bottom - f7, rectF.top);
                        rectF2.bottom = Math.max(rectF2.bottom - f7, rectF2.top);
                    }

                    @Override // com.google.android.material.carousel.CarouselOrientationHelper
                    public final RectF b(float f2, float f3, float f4, float f5) {
                        return new RectF(Call.Parameters.DEFAULT_CAMERA_ZOOM, f4, f3, f2 - f4);
                    }

                    @Override // com.google.android.material.carousel.CarouselOrientationHelper
                    public final int c() {
                        return this.f32449b.o;
                    }

                    @Override // com.google.android.material.carousel.CarouselOrientationHelper
                    public final int d() {
                        return this.f32449b.K();
                    }

                    @Override // com.google.android.material.carousel.CarouselOrientationHelper
                    public final int e() {
                        CarouselLayoutManager carouselLayoutManager = this.f32449b;
                        return carouselLayoutManager.n - carouselLayoutManager.L();
                    }

                    @Override // com.google.android.material.carousel.CarouselOrientationHelper
                    public final int f() {
                        return 0;
                    }

                    @Override // com.google.android.material.carousel.CarouselOrientationHelper
                    public final int g() {
                        return 0;
                    }

                    @Override // com.google.android.material.carousel.CarouselOrientationHelper
                    public final void h(View view, int i3, int i4) {
                        int iK = this.f32449b.K();
                        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                        RecyclerView.LayoutManager.U(view, iK, i3, RecyclerView.LayoutManager.F(view) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + iK, i4);
                    }

                    @Override // com.google.android.material.carousel.CarouselOrientationHelper
                    public final void i(RectF rectF, RectF rectF2, RectF rectF3) {
                        if (rectF2.bottom <= rectF3.top) {
                            float fFloor = ((float) Math.floor(rectF.bottom)) - 1.0f;
                            rectF.bottom = fFloor;
                            rectF.top = Math.min(rectF.top, fFloor);
                        }
                        if (rectF2.top >= rectF3.bottom) {
                            float fCeil = ((float) Math.ceil(rectF.top)) + 1.0f;
                            rectF.top = fCeil;
                            rectF.bottom = Math.max(fCeil, rectF.bottom);
                        }
                    }

                    @Override // com.google.android.material.carousel.CarouselOrientationHelper
                    public final void j(View view, Rect rect, float f2, float f3) {
                        view.offsetTopAndBottom((int) (f3 - (rect.top + f2)));
                    }
                };
            }
            this.y = carouselOrientationHelper;
            e1();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void h1(View view, float f2, KeylineRange keylineRange) {
        if (view instanceof Maskable) {
            KeylineState.Keyline keyline = keylineRange.f32446a;
            float f3 = keyline.f32467c;
            KeylineState.Keyline keyline2 = keylineRange.f32447b;
            float fB = AnimationUtils.b(f3, keyline2.f32467c, keyline.f32465a, keyline2.f32465a, f2);
            float height = view.getHeight();
            float width = view.getWidth();
            RectF rectFB = this.y.b(height, width, AnimationUtils.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, height / 2.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, fB), AnimationUtils.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, width / 2.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, fB));
            float fQ0 = Q0(f2, keylineRange);
            RectF rectF = new RectF(fQ0 - (rectFB.width() / 2.0f), fQ0 - (rectFB.height() / 2.0f), (rectFB.width() / 2.0f) + fQ0, (rectFB.height() / 2.0f) + fQ0);
            RectF rectF2 = new RectF(this.y.d(), this.y.g(), this.y.e(), this.y.c());
            this.t.getClass();
            this.y.a(rectFB, rectF, rectF2);
            this.y.i(rectFB, rectF, rectF2);
            ((Maskable) view).a();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void i0(int i2, int i3) {
        j1();
    }

    public final void i1(KeylineStateList keylineStateList) {
        int i2 = this.r;
        int i3 = this.q;
        if (i2 <= i3) {
            this.v = Z0() ? keylineStateList.a() : keylineStateList.c();
        } else {
            this.v = keylineStateList.b(this.p, i3, i2);
        }
        List list = this.v.f32455c;
        DebugItemDecoration debugItemDecoration = this.s;
        debugItemDecoration.getClass();
        debugItemDecoration.f32445b = Collections.unmodifiableList(list);
    }

    public final void j1() {
        int I = I();
        int i2 = this.A;
        if (I == i2 || this.u == null) {
            return;
        }
        if (this.t.c(this, i2)) {
            e1();
        }
        this.A = I;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void k0(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (state.b() <= 0 || T0() <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            r0(recycler);
            this.w = 0;
            return;
        }
        boolean zZ0 = Z0();
        KeylineStateList keylineStateList = this.u;
        int i2 = 1;
        boolean z = keylineStateList == null;
        if (z || keylineStateList.f32471a.f32457f != T0()) {
            d1(recycler);
        }
        KeylineStateList keylineStateList2 = this.u;
        boolean zZ1 = Z0();
        KeylineState keylineStateA = zZ1 ? keylineStateList2.a() : keylineStateList2.c();
        float f2 = (zZ1 ? keylineStateA.c() : keylineStateA.a()).f32465a;
        float f3 = keylineStateA.f32453a / 2.0f;
        int iF = (int) (this.y.f() - (Z0() ? f2 + f3 : f2 - f3));
        KeylineStateList keylineStateList3 = this.u;
        boolean zZ2 = Z0();
        KeylineState keylineStateC = zZ2 ? keylineStateList3.c() : keylineStateList3.a();
        KeylineState.Keyline keylineA = zZ2 ? keylineStateC.a() : keylineStateC.c();
        int iB = (int) ((((zZ2 ? -1 : 1) * keylineA.d) / 2.0f) + ((((state.b() - 1) * keylineStateC.f32453a) * (zZ2 ? -1.0f : 1.0f)) - (keylineA.f32465a - this.y.f())));
        int iMin = zZ2 ? Math.min(0, iB) : Math.max(0, iB);
        this.q = zZ0 ? iMin : iF;
        if (zZ0) {
            iMin = iF;
        }
        this.r = iMin;
        if (z) {
            this.p = iF;
            KeylineStateList keylineStateList4 = this.u;
            int I = I();
            int i3 = this.q;
            int i4 = this.r;
            boolean zZ3 = Z0();
            List list = keylineStateList4.f32472b;
            List list2 = keylineStateList4.f32473c;
            float f4 = keylineStateList4.f32471a.f32453a;
            HashMap map = new HashMap();
            int i5 = 0;
            int i6 = 0;
            while (i5 < I) {
                int i7 = zZ3 ? (I - i5) - i2 : i5;
                int i8 = i2;
                if (i7 * f4 * (zZ3 ? -1 : i8) > i4 - keylineStateList4.g || i5 >= I - list2.size()) {
                    map.put(Integer.valueOf(i7), (KeylineState) list2.get(MathUtils.b(i6, 0, list2.size() - 1)));
                    i6++;
                }
                i5++;
                i2 = i8;
            }
            int i9 = i2;
            int i10 = 0;
            for (int i11 = I - 1; i11 >= 0; i11--) {
                int i12 = zZ3 ? (I - i11) - 1 : i11;
                if (i12 * f4 * (zZ3 ? -1 : i9) < i3 + keylineStateList4.f32475f || i11 < list.size()) {
                    map.put(Integer.valueOf(i12), (KeylineState) list.get(MathUtils.b(i10, 0, list.size() - 1)));
                    i10++;
                }
            }
            this.x = map;
            int i13 = this.B;
            if (i13 != -1) {
                this.p = V0(i13, U0(i13));
            }
        }
        int i14 = this.p;
        int i15 = this.q;
        int i16 = this.r;
        this.p = (i14 < i15 ? i15 - i14 : i14 > i16 ? i16 - i14 : 0) + i14;
        this.w = MathUtils.b(this.w, 0, state.b());
        i1(this.u);
        r(recycler);
        S0(recycler, state);
        this.A = I();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int l(RecyclerView.State state) {
        if (x() == 0 || this.u == null || I() <= 1) {
            return 0;
        }
        return (int) (this.n * (this.u.f32471a.f32453a / n(state)));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void l0(RecyclerView.State state) {
        if (x() == 0) {
            this.w = 0;
        } else {
            this.w = RecyclerView.LayoutManager.N(w(0));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int m(RecyclerView.State state) {
        return this.p;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int n(RecyclerView.State state) {
        return this.r - this.q;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int o(RecyclerView.State state) {
        if (x() == 0 || this.u == null || I() <= 1) {
            return 0;
        }
        return (int) (this.o * (this.u.f32471a.f32453a / q(state)));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int p(RecyclerView.State state) {
        return this.p;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int q(RecyclerView.State state) {
        return this.r - this.q;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams t() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean v0(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
        int iW0;
        if (this.u == null || (iW0 = W0(RecyclerView.LayoutManager.N(view), U0(RecyclerView.LayoutManager.N(view)))) == 0) {
            return false;
        }
        int i2 = this.p;
        int i3 = this.q;
        int i4 = this.r;
        int i5 = i2 + iW0;
        if (i5 < i3) {
            iW0 = i3 - i2;
        } else if (i5 > i4) {
            iW0 = i4 - i2;
        }
        int iW1 = W0(RecyclerView.LayoutManager.N(view), this.u.b(i2 + iW0, i3, i4));
        if (Y0()) {
            recyclerView.scrollBy(iW1, 0);
            return true;
        }
        recyclerView.scrollBy(0, iW1);
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int x0(int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (Y0()) {
            return f1(i2, recycler, state);
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void y0(int i2) {
        this.B = i2;
        if (this.u == null) {
            return;
        }
        this.p = V0(i2, U0(i2));
        this.w = MathUtils.b(i2, 0, Math.max(0, I() - 1));
        i1(this.u);
        w0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int z0(int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (g()) {
            return f1(i2, recycler, state);
        }
        return 0;
    }

    public CarouselLayoutManager(CarouselStrategy carouselStrategy) {
        this(carouselStrategy, 0);
    }

    public CarouselLayoutManager(CarouselStrategy carouselStrategy, int i2) {
        this.s = new DebugItemDecoration();
        this.w = 0;
        this.z = new oj(this, 0);
        this.B = -1;
        this.C = 0;
        this.t = carouselStrategy;
        e1();
        g1(i2);
    }

    public CarouselLayoutManager() {
        this(new MultiBrowseCarouselStrategy());
    }
}
