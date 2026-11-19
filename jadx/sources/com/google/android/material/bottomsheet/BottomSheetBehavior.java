package com.google.android.material.bottomsheet;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.RoundedCorner;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.activity.BackEventCompat;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.Insets;
import androidx.core.math.MathUtils;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.ViewDragHelper;
import com.google.android.material.R$styleable;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.motion.MaterialBackHandler;
import com.google.android.material.motion.MaterialBottomContainerBackHelper;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.vuitton.android.R;
import defpackage.md;
import defpackage.n00;
import defpackage.pq0;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.WeakHashMap;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> implements MaterialBackHandler {
    public boolean A;
    public final StateSettlingTracker B;
    public final ValueAnimator C;
    public final int D;
    public int E;
    public int F;
    public final float G;
    public int H;
    public final float I;
    public boolean J;
    public boolean K;
    public final boolean L;
    public final boolean M;
    public boolean N;
    public int O;
    public ViewDragHelper P;
    public boolean Q;
    public int R;
    public boolean S;
    public final float T;
    public int V;
    public int W;
    public int X;
    public WeakReference Y;
    public WeakReference Z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f32357b;
    public MaterialBottomContainerBackHelper b1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f32358c;
    public int c1;
    public final float d;
    public int d1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f32359e;
    public boolean e1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f32360f;
    public HashMap f1;
    public boolean g;
    public final SparseIntArray g1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f32361h;
    public final ArrayList h0;
    public final ViewDragHelper.Callback h1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f32362i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MaterialShapeDrawable f32363j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ColorStateList f32364k;
    public final int l;
    public final int m;
    public int n;
    public final boolean o;
    public final boolean p;
    public final boolean q;
    public final boolean r;
    public final boolean s;
    public final boolean t;
    public VelocityTracker t0;
    public final boolean u;
    public final boolean v;
    public int w;
    public int x;
    public final boolean y;
    public final ShapeAppearanceModel z;

    public static abstract class BottomSheetCallback {
        public void onLayout(View view) {
        }

        public abstract void onSlide(View view, float f2);

        public abstract void onStateChanged(View view, int i2);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface SaveFlags {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface StableState {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface State {
    }

    public class StateSettlingTracker {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f32375a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f32376b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Runnable f32377c = new Runnable() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.StateSettlingTracker.1
            @Override // java.lang.Runnable
            public void run() {
                StateSettlingTracker stateSettlingTracker = StateSettlingTracker.this;
                stateSettlingTracker.f32376b = false;
                ViewDragHelper viewDragHelper = BottomSheetBehavior.this.P;
                if (viewDragHelper != null && viewDragHelper.f()) {
                    StateSettlingTracker stateSettlingTracker2 = StateSettlingTracker.this;
                    stateSettlingTracker2.a(stateSettlingTracker2.f32375a);
                    return;
                }
                StateSettlingTracker stateSettlingTracker3 = StateSettlingTracker.this;
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                if (bottomSheetBehavior.O == 2) {
                    bottomSheetBehavior.K(stateSettlingTracker3.f32375a);
                }
            }
        };

        public StateSettlingTracker() {
        }

        public final void a(int i2) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            WeakReference weakReference = bottomSheetBehavior.Y;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            this.f32375a = i2;
            if (this.f32376b) {
                return;
            }
            ((View) bottomSheetBehavior.Y.get()).postOnAnimation(this.f32377c);
            this.f32376b = true;
        }
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        int i2;
        super(context, attributeSet);
        this.f32357b = 0;
        this.f32358c = true;
        this.l = -1;
        this.m = -1;
        this.B = new StateSettlingTracker();
        this.G = 0.5f;
        this.I = -1.0f;
        this.L = true;
        this.M = true;
        this.O = 4;
        this.T = 0.1f;
        this.h0 = new ArrayList();
        this.d1 = -1;
        this.g1 = new SparseIntArray();
        this.h1 = new ViewDragHelper.Callback() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.5
            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int a(int i3, View view) {
                return view.getLeft();
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int b(int i3, View view) {
                return MathUtils.b(i3, BottomSheetBehavior.this.D(), d());
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int d() {
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                return bottomSheetBehavior.J ? bottomSheetBehavior.X : bottomSheetBehavior.H;
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void f(int i3) {
                if (i3 == 1) {
                    BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                    if (bottomSheetBehavior.L) {
                        bottomSheetBehavior.K(1);
                    }
                }
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void g(View view, int i3, int i4) {
                BottomSheetBehavior.this.z(i4);
            }

            /* JADX WARN: Code duplicated, block: B:20:0x0049  */
            /* JADX WARN: Code duplicated, block: B:34:0x0082  */
            /* JADX WARN: Code duplicated, block: B:6:0x000d  */
            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void h(View view, float f2, float f3) {
                int i3 = 6;
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                if (f3 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    if (bottomSheetBehavior.f32358c) {
                        i3 = 3;
                    } else {
                        int top = view.getTop();
                        SystemClock.uptimeMillis();
                        if (top <= bottomSheetBehavior.F) {
                            i3 = 3;
                        }
                    }
                } else if (bottomSheetBehavior.J && bottomSheetBehavior.L(f3, view)) {
                    if (Math.abs(f2) >= Math.abs(f3) || f3 <= bottomSheetBehavior.f32359e) {
                        if (view.getTop() > (bottomSheetBehavior.D() + bottomSheetBehavior.X) / 2) {
                            i3 = 5;
                        } else if (bottomSheetBehavior.f32358c || Math.abs(view.getTop() - bottomSheetBehavior.D()) < Math.abs(view.getTop() - bottomSheetBehavior.F)) {
                            i3 = 3;
                        }
                    } else {
                        i3 = 5;
                    }
                } else if (f3 == Call.Parameters.DEFAULT_CAMERA_ZOOM || Math.abs(f2) > Math.abs(f3)) {
                    int top2 = view.getTop();
                    if (!bottomSheetBehavior.f32358c) {
                        int i4 = bottomSheetBehavior.F;
                        if (top2 < i4) {
                            if (top2 < Math.abs(top2 - bottomSheetBehavior.H)) {
                                i3 = 3;
                            }
                        } else if (Math.abs(top2 - i4) >= Math.abs(top2 - bottomSheetBehavior.H)) {
                            i3 = 4;
                        }
                    } else if (Math.abs(top2 - bottomSheetBehavior.E) < Math.abs(top2 - bottomSheetBehavior.H)) {
                        i3 = 3;
                    } else {
                        i3 = 4;
                    }
                } else if (bottomSheetBehavior.f32358c) {
                    i3 = 4;
                } else {
                    int top3 = view.getTop();
                    if (Math.abs(top3 - bottomSheetBehavior.F) >= Math.abs(top3 - bottomSheetBehavior.H)) {
                        i3 = 4;
                    }
                }
                bottomSheetBehavior.M(view, i3, true);
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final boolean i(int i3, View view) {
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                int i4 = bottomSheetBehavior.O;
                if (i4 == 1 || bottomSheetBehavior.e1) {
                    return false;
                }
                if (i4 == 3 && bottomSheetBehavior.c1 == i3) {
                    WeakReference weakReference = bottomSheetBehavior.Z;
                    View view2 = weakReference != null ? (View) weakReference.get() : null;
                    if (view2 != null && view2.canScrollVertically(-1)) {
                        return false;
                    }
                }
                SystemClock.uptimeMillis();
                WeakReference weakReference2 = bottomSheetBehavior.Y;
                return weakReference2 != null && weakReference2.get() == view;
            }
        };
        this.f32362i = context.getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.f32222f);
        if (typedArrayObtainStyledAttributes.hasValue(3)) {
            this.f32364k = MaterialResources.a(context, typedArrayObtainStyledAttributes, 3);
        }
        if (typedArrayObtainStyledAttributes.hasValue(22)) {
            this.z = ShapeAppearanceModel.c(context, attributeSet, R.attr.bottomSheetStyle, R.style.Widget_Design_BottomSheet_Modal).a();
        }
        ShapeAppearanceModel shapeAppearanceModel = this.z;
        if (shapeAppearanceModel != null) {
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(shapeAppearanceModel);
            this.f32363j = materialShapeDrawable;
            materialShapeDrawable.n(context);
            ColorStateList colorStateList = this.f32364k;
            if (colorStateList != null) {
                this.f32363j.r(colorStateList);
            } else {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, true);
                this.f32363j.setTint(typedValue.data);
            }
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(x(), 1.0f);
        this.C = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(500L);
        this.C.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                MaterialShapeDrawable materialShapeDrawable2 = BottomSheetBehavior.this.f32363j;
                if (materialShapeDrawable2 != null) {
                    materialShapeDrawable2.s(fFloatValue);
                }
            }
        });
        this.I = typedArrayObtainStyledAttributes.getDimension(2, -1.0f);
        if (typedArrayObtainStyledAttributes.hasValue(0)) {
            this.l = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -1);
        }
        if (typedArrayObtainStyledAttributes.hasValue(1)) {
            this.m = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, -1);
        }
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(10);
        if (typedValuePeekValue == null || (i2 = typedValuePeekValue.data) != -1) {
            I(typedArrayObtainStyledAttributes.getDimensionPixelSize(10, -1));
        } else {
            I(i2);
        }
        H(typedArrayObtainStyledAttributes.getBoolean(9, false));
        this.o = typedArrayObtainStyledAttributes.getBoolean(14, false);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(7, true);
        if (this.f32358c != z) {
            this.f32358c = z;
            if (this.Y != null) {
                w();
            }
            K((this.f32358c && this.O == 6) ? 3 : this.O);
            O(this.O, true);
            N();
        }
        this.K = typedArrayObtainStyledAttributes.getBoolean(13, false);
        this.L = typedArrayObtainStyledAttributes.getBoolean(4, true);
        this.M = typedArrayObtainStyledAttributes.getBoolean(5, true);
        this.f32357b = typedArrayObtainStyledAttributes.getInt(11, 0);
        float f2 = typedArrayObtainStyledAttributes.getFloat(8, 0.5f);
        if (f2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM || f2 >= 1.0f) {
            md.n("ratio must be a float value between 0 and 1");
            throw null;
        }
        this.G = f2;
        if (this.Y != null) {
            this.F = (int) ((1.0f - f2) * this.X);
        }
        TypedValue typedValuePeekValue2 = typedArrayObtainStyledAttributes.peekValue(6);
        if (typedValuePeekValue2 == null || typedValuePeekValue2.type != 16) {
            int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(6, 0);
            if (dimensionPixelOffset < 0) {
                md.n("offset must be greater than or equal to 0");
                throw null;
            }
            this.D = dimensionPixelOffset;
            O(this.O, true);
        } else {
            int i3 = typedValuePeekValue2.data;
            if (i3 < 0) {
                md.n("offset must be greater than or equal to 0");
                throw null;
            }
            this.D = i3;
            O(this.O, true);
        }
        this.f32359e = typedArrayObtainStyledAttributes.getInt(12, 500);
        this.p = typedArrayObtainStyledAttributes.getBoolean(18, false);
        this.q = typedArrayObtainStyledAttributes.getBoolean(19, false);
        this.r = typedArrayObtainStyledAttributes.getBoolean(20, false);
        this.s = typedArrayObtainStyledAttributes.getBoolean(21, true);
        this.t = typedArrayObtainStyledAttributes.getBoolean(15, false);
        this.u = typedArrayObtainStyledAttributes.getBoolean(16, false);
        this.v = typedArrayObtainStyledAttributes.getBoolean(17, false);
        this.y = typedArrayObtainStyledAttributes.getBoolean(24, true);
        typedArrayObtainStyledAttributes.recycle();
        this.d = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    public static View A(View view) {
        if (view.getVisibility() != 0) {
            return null;
        }
        if (view.isNestedScrollingEnabled()) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View viewA = A(viewGroup.getChildAt(i2));
            if (viewA != null) {
                return viewA;
            }
        }
        return null;
    }

    public static BottomSheetBehavior B(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof CoordinatorLayout.LayoutParams)) {
            md.n("The view is not a child of CoordinatorLayout");
            return null;
        }
        CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).f11851a;
        if (behavior instanceof BottomSheetBehavior) {
            return (BottomSheetBehavior) behavior;
        }
        md.n("The view is not associated with BottomSheetBehavior");
        return null;
    }

    public static int C(int i2, int i3, int i4, int i5) {
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, i3, i5);
        if (i4 == -1) {
            return childMeasureSpec;
        }
        int mode = View.MeasureSpec.getMode(childMeasureSpec);
        int size = View.MeasureSpec.getSize(childMeasureSpec);
        if (mode == 1073741824) {
            return View.MeasureSpec.makeMeasureSpec(Math.min(size, i4), 1073741824);
        }
        if (size != 0) {
            i4 = Math.min(size, i4);
        }
        return View.MeasureSpec.makeMeasureSpec(i4, Integer.MIN_VALUE);
    }

    public final int D() {
        if (this.f32358c) {
            return this.E;
        }
        return Math.max(this.D, this.s ? 0 : this.x);
    }

    public final int E(int i2) {
        if (i2 == 3) {
            return D();
        }
        if (i2 == 4) {
            return this.H;
        }
        if (i2 == 5) {
            return this.X;
        }
        if (i2 == 6) {
            return this.F;
        }
        md.n(pq0.k(i2, "Invalid state to get top offset: "));
        return 0;
    }

    public final boolean F() {
        WeakReference weakReference = this.Y;
        if (weakReference != null && weakReference.get() != null) {
            int[] iArr = new int[2];
            ((View) this.Y.get()).getLocationOnScreen(iArr);
            if (iArr[1] == 0) {
                return true;
            }
        }
        return false;
    }

    public final void G() {
        this.c1 = -1;
        this.d1 = -1;
        VelocityTracker velocityTracker = this.t0;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.t0 = null;
        }
    }

    public final void H(boolean z) {
        if (this.J != z) {
            this.J = z;
            if (!z && this.O == 5) {
                J(4);
            }
            N();
        }
    }

    public final void I(int i2) {
        boolean z = this.g;
        if (i2 == -1) {
            if (z) {
                return;
            } else {
                this.g = true;
            }
        } else {
            if (!z && this.f32360f == i2) {
                return;
            }
            this.g = false;
            this.f32360f = Math.max(0, i2);
        }
        Q();
    }

    public final void J(int i2) {
        if (i2 == 1 || i2 == 2) {
            throw new IllegalArgumentException(n00.r(i2 == 1 ? "DRAGGING" : "SETTLING", " should not be set externally.", new StringBuilder("STATE_")));
        }
        if (this.J || i2 != 5) {
            final int i3 = (i2 == 6 && this.f32358c && E(i2) <= this.E) ? 3 : i2;
            WeakReference weakReference = this.Y;
            if (weakReference == null || weakReference.get() == null) {
                K(i2);
                return;
            }
            final View view = (View) this.Y.get();
            Runnable runnable = new Runnable() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.1
                @Override // java.lang.Runnable
                public void run() {
                    BottomSheetBehavior.this.M(view, i3, false);
                }
            };
            ViewParent parent = view.getParent();
            if (parent != null && parent.isLayoutRequested() && view.isAttachedToWindow()) {
                view.post(runnable);
            } else {
                runnable.run();
            }
        }
    }

    public final void K(int i2) {
        View view;
        if (this.O == i2) {
            return;
        }
        this.O = i2;
        if (i2 != 4 && i2 != 3 && i2 != 6) {
            boolean z = this.J;
        }
        WeakReference weakReference = this.Y;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        int i3 = 0;
        if (i2 == 3) {
            P(true);
        } else if (i2 == 6 || i2 == 5 || i2 == 4) {
            P(false);
        }
        O(i2, true);
        while (true) {
            ArrayList arrayList = this.h0;
            if (i3 >= arrayList.size()) {
                N();
                return;
            } else {
                ((BottomSheetCallback) arrayList.get(i3)).onStateChanged(view, i2);
                i3++;
            }
        }
    }

    public final boolean L(float f2, View view) {
        if (this.K) {
            return true;
        }
        if (view.getTop() < this.H) {
            return false;
        }
        return Math.abs(((f2 * this.T) + ((float) view.getTop())) - ((float) this.H)) / ((float) y()) > 0.5f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0030, code lost:
    
        if (r3 != false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0032, code lost:
    
        K(2);
        O(r4, true);
        r2.B.a(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003f, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0012, code lost:
    
        if (r1.n(r3.getLeft(), r0) != false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void M(android.view.View r3, int r4, boolean r5) {
        /*
            r2 = this;
            int r0 = r2.E(r4)
            androidx.customview.widget.ViewDragHelper r1 = r2.P
            if (r1 == 0) goto L40
            if (r5 == 0) goto L15
            int r3 = r3.getLeft()
            boolean r3 = r1.n(r3, r0)
            if (r3 == 0) goto L40
            goto L32
        L15:
            int r5 = r3.getLeft()
            r1.r = r3
            r3 = -1
            r1.f12568c = r3
            r3 = 0
            boolean r3 = r1.h(r5, r0, r3, r3)
            if (r3 != 0) goto L30
            int r5 = r1.f12566a
            if (r5 != 0) goto L30
            android.view.View r5 = r1.r
            if (r5 == 0) goto L30
            r5 = 0
            r1.r = r5
        L30:
            if (r3 == 0) goto L40
        L32:
            r3 = 2
            r2.K(r3)
            r3 = 1
            r2.O(r4, r3)
            com.google.android.material.bottomsheet.BottomSheetBehavior$StateSettlingTracker r2 = r2.B
            r2.a(r4)
            return
        L40:
            r2.K(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.M(android.view.View, int, boolean):void");
    }

    public final void N() {
        View view;
        int iA;
        WeakReference weakReference = this.Y;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        ViewCompat.q(524288, view);
        ViewCompat.n(0, view);
        ViewCompat.q(262144, view);
        ViewCompat.n(0, view);
        ViewCompat.q(1048576, view);
        ViewCompat.n(0, view);
        SparseIntArray sparseIntArray = this.g1;
        int i2 = sparseIntArray.get(0, -1);
        if (i2 != -1) {
            ViewCompat.q(i2, view);
            ViewCompat.n(0, view);
            sparseIntArray.delete(0);
        }
        final int i3 = 6;
        if (!this.f32358c && this.O != 6) {
            String string = view.getResources().getString(R.string.bottomsheet_action_expand_halfway);
            AccessibilityViewCommand accessibilityViewCommand = new AccessibilityViewCommand() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.6
                @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                public final boolean a(View view2) {
                    BottomSheetBehavior.this.J(i3);
                    return true;
                }
            };
            ArrayList arrayListG = ViewCompat.g(view);
            int i4 = 0;
            while (true) {
                if (i4 >= arrayListG.size()) {
                    int i5 = 0;
                    int i6 = -1;
                    while (true) {
                        int[] iArr = ViewCompat.f12201b;
                        if (i5 >= 32 || i6 != -1) {
                            break;
                        }
                        int i7 = iArr[i5];
                        boolean z = true;
                        for (int i8 = 0; i8 < arrayListG.size(); i8++) {
                            z &= ((AccessibilityNodeInfoCompat.AccessibilityActionCompat) arrayListG.get(i8)).a() != i7;
                        }
                        if (z) {
                            i6 = i7;
                        }
                        i5++;
                    }
                    iA = i6;
                    break;
                }
                if (TextUtils.equals(string, ((AccessibilityNodeInfo.AccessibilityAction) ((AccessibilityNodeInfoCompat.AccessibilityActionCompat) arrayListG.get(i4)).f12276a).getLabel())) {
                    iA = ((AccessibilityNodeInfoCompat.AccessibilityActionCompat) arrayListG.get(i4)).a();
                    break;
                }
                i4++;
            }
            if (iA != -1) {
                AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat = new AccessibilityNodeInfoCompat.AccessibilityActionCompat(iA, string, accessibilityViewCommand);
                AccessibilityDelegateCompat accessibilityDelegateCompatE = ViewCompat.e(view);
                if (accessibilityDelegateCompatE == null) {
                    accessibilityDelegateCompatE = new AccessibilityDelegateCompat();
                }
                ViewCompat.t(view, accessibilityDelegateCompatE);
                ViewCompat.q(accessibilityActionCompat.a(), view);
                ViewCompat.g(view).add(accessibilityActionCompat);
                ViewCompat.n(0, view);
            }
            sparseIntArray.put(0, iA);
        }
        if (this.J) {
            final int i9 = 5;
            if (this.O != 5) {
                ViewCompat.r(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.l, new AccessibilityViewCommand() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.6
                    @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                    public final boolean a(View view2) {
                        BottomSheetBehavior.this.J(i9);
                        return true;
                    }
                });
            }
        }
        int i10 = this.O;
        final int i11 = 4;
        final int i12 = 3;
        if (i10 == 3) {
            i3 = this.f32358c ? 4 : 6;
            ViewCompat.r(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.f12275k, new AccessibilityViewCommand() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.6
                @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                public final boolean a(View view2) {
                    BottomSheetBehavior.this.J(i3);
                    return true;
                }
            });
        } else if (i10 == 4) {
            i3 = this.f32358c ? 3 : 6;
            ViewCompat.r(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.f12274j, new AccessibilityViewCommand() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.6
                @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                public final boolean a(View view2) {
                    BottomSheetBehavior.this.J(i3);
                    return true;
                }
            });
        } else {
            if (i10 != 6) {
                return;
            }
            ViewCompat.r(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.f12275k, new AccessibilityViewCommand() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.6
                @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                public final boolean a(View view2) {
                    BottomSheetBehavior.this.J(i11);
                    return true;
                }
            });
            ViewCompat.r(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.f12274j, new AccessibilityViewCommand() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.6
                @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                public final boolean a(View view2) {
                    BottomSheetBehavior.this.J(i12);
                    return true;
                }
            });
        }
    }

    public final void O(int i2, boolean z) {
        MaterialShapeDrawable materialShapeDrawable;
        if (i2 == 2) {
            return;
        }
        boolean z2 = this.O == 3 && (this.y || F());
        if (this.A == z2 || (materialShapeDrawable = this.f32363j) == null) {
            return;
        }
        this.A = z2;
        ValueAnimator valueAnimator = this.C;
        if (!z || valueAnimator == null) {
            if (valueAnimator != null && valueAnimator.isRunning()) {
                valueAnimator.cancel();
            }
            materialShapeDrawable.s(this.A ? x() : 1.0f);
            return;
        }
        if (valueAnimator.isRunning()) {
            valueAnimator.reverse();
        } else {
            valueAnimator.setFloatValues(materialShapeDrawable.f32936c.f32952j, z2 ? x() : 1.0f);
            valueAnimator.start();
        }
    }

    public final void P(boolean z) {
        WeakReference weakReference = this.Y;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = ((View) weakReference.get()).getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z) {
                if (this.f1 != null) {
                    return;
                } else {
                    this.f1 = new HashMap(childCount);
                }
            }
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = coordinatorLayout.getChildAt(i2);
                if (childAt != this.Y.get() && z) {
                    this.f1.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                }
            }
            if (z) {
                return;
            }
            this.f1 = null;
        }
    }

    public final void Q() {
        View view;
        if (this.Y != null) {
            w();
            if (this.O != 4 || (view = (View) this.Y.get()) == null) {
                return;
            }
            view.requestLayout();
        }
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void a() {
        MaterialBottomContainerBackHelper materialBottomContainerBackHelper = this.b1;
        if (materialBottomContainerBackHelper == null) {
            return;
        }
        BackEventCompat backEventCompat = materialBottomContainerBackHelper.f32755f;
        materialBottomContainerBackHelper.f32755f = null;
        if (backEventCompat == null) {
            return;
        }
        AnimatorSet animatorSetA = materialBottomContainerBackHelper.a();
        animatorSetA.setDuration(materialBottomContainerBackHelper.f32754e);
        animatorSetA.start();
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void b(BackEventCompat backEventCompat) {
        MaterialBottomContainerBackHelper materialBottomContainerBackHelper = this.b1;
        if (materialBottomContainerBackHelper == null) {
            return;
        }
        materialBottomContainerBackHelper.f32755f = backEventCompat;
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void c(BackEventCompat backEventCompat) {
        MaterialBottomContainerBackHelper materialBottomContainerBackHelper = this.b1;
        if (materialBottomContainerBackHelper == null) {
            return;
        }
        BackEventCompat backEventCompat2 = materialBottomContainerBackHelper.f32755f;
        materialBottomContainerBackHelper.f32755f = backEventCompat;
        if (backEventCompat2 == null) {
            return;
        }
        materialBottomContainerBackHelper.c(backEventCompat.f654c);
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void d() {
        MaterialBottomContainerBackHelper materialBottomContainerBackHelper = this.b1;
        if (materialBottomContainerBackHelper == null) {
            return;
        }
        BackEventCompat backEventCompat = materialBottomContainerBackHelper.f32755f;
        materialBottomContainerBackHelper.f32755f = null;
        if (backEventCompat == null || Build.VERSION.SDK_INT < 34) {
            J(this.J ? 5 : 4);
            return;
        }
        if (this.J) {
            materialBottomContainerBackHelper.b(backEventCompat, new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                    bottomSheetBehavior.K(5);
                    WeakReference weakReference = bottomSheetBehavior.Y;
                    if (weakReference == null || weakReference.get() == null) {
                        return;
                    }
                    ((View) bottomSheetBehavior.Y.get()).requestLayout();
                }
            });
            return;
        }
        AnimatorSet animatorSetA = materialBottomContainerBackHelper.a();
        animatorSetA.setDuration(AnimationUtils.c(materialBottomContainerBackHelper.f32753c, materialBottomContainerBackHelper.d, backEventCompat.f654c));
        animatorSetA.start();
        J(4);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void g(CoordinatorLayout.LayoutParams layoutParams) {
        this.Y = null;
        this.P = null;
        this.b1 = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void j() {
        this.Y = null;
        this.P = null;
        this.b1 = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean k(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        int i2;
        ViewDragHelper viewDragHelper;
        if (!view.isShown() || !this.L) {
            this.Q = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            G();
        }
        if (this.t0 == null) {
            this.t0 = VelocityTracker.obtain();
        }
        this.t0.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            this.d1 = y;
            if (this.O != 2) {
                WeakReference weakReference = this.Z;
                View view2 = weakReference != null ? (View) weakReference.get() : null;
                if (view2 != null && coordinatorLayout.l(view2, x, y)) {
                    this.c1 = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.e1 = true;
                }
            }
            this.Q = this.c1 == -1 && !coordinatorLayout.l(view, x, this.d1);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.e1 = false;
            this.c1 = -1;
            if (this.Q) {
                this.Q = false;
                return false;
            }
        }
        if (this.Q || (viewDragHelper = this.P) == null || !viewDragHelper.o(motionEvent)) {
            WeakReference weakReference2 = this.Z;
            View view3 = weakReference2 != null ? (View) weakReference2.get() : null;
            if (actionMasked != 2 || view3 == null || this.Q || this.O == 1 || coordinatorLayout.l(view3, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.P == null || (i2 = this.d1) == -1 || Math.abs(i2 - motionEvent.getY()) <= this.P.f12567b) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean l(CoordinatorLayout coordinatorLayout, View view, int i2) {
        if (coordinatorLayout.getFitsSystemWindows() && !view.getFitsSystemWindows()) {
            view.setFitsSystemWindows(true);
        }
        int i3 = 0;
        if (this.Y == null) {
            this.f32361h = coordinatorLayout.getResources().getDimensionPixelSize(R.dimen.design_bottom_sheet_peek_height_min);
            final boolean z = (this.o || this.g) ? false : true;
            if (this.p || this.q || this.r || this.t || this.u || this.v || z) {
                ViewUtils.b(view, new ViewUtils.OnApplyWindowInsetsListener() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.4
                    /* JADX WARN: Code duplicated, block: B:37:0x0086  */
                    @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
                    public final WindowInsetsCompat a(View view2, WindowInsetsCompat windowInsetsCompat, ViewUtils.RelativePadding relativePadding) {
                        boolean z2;
                        Insets insetsE = windowInsetsCompat.e(519);
                        Insets insetsE2 = windowInsetsCompat.e(32);
                        BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                        boolean z3 = bottomSheetBehavior.p;
                        int i4 = insetsE.f12055b;
                        int i5 = insetsE.f12056c;
                        int i6 = insetsE.f12054a;
                        bottomSheetBehavior.x = i4;
                        boolean z4 = true;
                        boolean z5 = view2.getLayoutDirection() == 1;
                        int paddingBottom = view2.getPaddingBottom();
                        int paddingLeft = view2.getPaddingLeft();
                        int paddingRight = view2.getPaddingRight();
                        if (z3) {
                            int iG = windowInsetsCompat.g();
                            bottomSheetBehavior.w = iG;
                            paddingBottom = iG + relativePadding.d;
                        }
                        if (bottomSheetBehavior.q) {
                            paddingLeft = (z5 ? relativePadding.f32748c : relativePadding.f32746a) + i6;
                        }
                        if (bottomSheetBehavior.r) {
                            paddingRight = (z5 ? relativePadding.f32746a : relativePadding.f32748c) + i5;
                        }
                        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view2.getLayoutParams();
                        if (!bottomSheetBehavior.t || marginLayoutParams.leftMargin == i6) {
                            z2 = false;
                        } else {
                            marginLayoutParams.leftMargin = i6;
                            z2 = true;
                        }
                        if (bottomSheetBehavior.u && marginLayoutParams.rightMargin != i5) {
                            marginLayoutParams.rightMargin = i5;
                            z2 = true;
                        }
                        if (bottomSheetBehavior.v) {
                            int i7 = marginLayoutParams.topMargin;
                            int i8 = insetsE.f12055b;
                            if (i7 != i8) {
                                marginLayoutParams.topMargin = i8;
                            } else {
                                z4 = z2;
                            }
                        } else {
                            z4 = z2;
                        }
                        if (z4) {
                            view2.setLayoutParams(marginLayoutParams);
                        }
                        view2.setPadding(paddingLeft, view2.getPaddingTop(), paddingRight, paddingBottom);
                        boolean z6 = z;
                        if (z6) {
                            bottomSheetBehavior.n = insetsE2.d;
                        }
                        if (!z3 && !z6) {
                            return windowInsetsCompat;
                        }
                        bottomSheetBehavior.Q();
                        return windowInsetsCompat;
                    }
                });
            }
            ViewCompat.A(view, new InsetsAnimationCallback(view));
            this.Y = new WeakReference(view);
            this.b1 = new MaterialBottomContainerBackHelper(view);
            MaterialShapeDrawable materialShapeDrawable = this.f32363j;
            if (materialShapeDrawable != null) {
                view.setBackground(materialShapeDrawable);
                float elevation = this.I;
                if (elevation == -1.0f) {
                    elevation = view.getElevation();
                }
                materialShapeDrawable.q(elevation);
            } else {
                ColorStateList colorStateList = this.f32364k;
                if (colorStateList != null) {
                    view.setBackgroundTintList(colorStateList);
                }
            }
            N();
            if (view.getImportantForAccessibility() == 0) {
                view.setImportantForAccessibility(1);
            }
        }
        if (this.P == null) {
            this.P = new ViewDragHelper(coordinatorLayout.getContext(), coordinatorLayout, this.h1);
        }
        int top = view.getTop();
        coordinatorLayout.r(i2, view);
        this.W = coordinatorLayout.getWidth();
        this.X = coordinatorLayout.getHeight();
        int height = view.getHeight();
        this.V = height;
        int iMin = this.X;
        int i4 = iMin - height;
        int i5 = this.x;
        if (i4 < i5) {
            boolean z2 = this.s;
            int i6 = this.m;
            if (z2) {
                if (i6 != -1) {
                    iMin = Math.min(iMin, i6);
                }
                this.V = iMin;
            } else {
                int iMin2 = iMin - i5;
                if (i6 != -1) {
                    iMin2 = Math.min(iMin2, i6);
                }
                this.V = iMin2;
            }
        }
        this.E = Math.max(0, this.X - this.V);
        this.F = (int) ((1.0f - this.G) * this.X);
        w();
        int i7 = this.O;
        if (i7 == 3) {
            int iD = D();
            WeakHashMap weakHashMap = ViewCompat.f12200a;
            view.offsetTopAndBottom(iD);
        } else if (i7 == 6) {
            int i8 = this.F;
            WeakHashMap weakHashMap2 = ViewCompat.f12200a;
            view.offsetTopAndBottom(i8);
        } else if (this.J && i7 == 5) {
            int i9 = this.X;
            WeakHashMap weakHashMap3 = ViewCompat.f12200a;
            view.offsetTopAndBottom(i9);
        } else if (i7 == 4) {
            int i10 = this.H;
            WeakHashMap weakHashMap4 = ViewCompat.f12200a;
            view.offsetTopAndBottom(i10);
        } else if (i7 == 1 || i7 == 2) {
            int top2 = top - view.getTop();
            WeakHashMap weakHashMap5 = ViewCompat.f12200a;
            view.offsetTopAndBottom(top2);
        }
        O(this.O, false);
        this.Z = new WeakReference(A(view));
        while (true) {
            ArrayList arrayList = this.h0;
            if (i3 >= arrayList.size()) {
                return true;
            }
            ((BottomSheetCallback) arrayList.get(i3)).onLayout(view);
            i3++;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean m(CoordinatorLayout coordinatorLayout, View view, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(C(i2, coordinatorLayout.getPaddingRight() + coordinatorLayout.getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i3, this.l, marginLayoutParams.width), C(i4, coordinatorLayout.getPaddingBottom() + coordinatorLayout.getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, this.m, marginLayoutParams.height));
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean n(View view) {
        WeakReference weakReference = this.Z;
        return (weakReference == null || view != weakReference.get() || this.O == 3 || this.N) ? false : true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void o(CoordinatorLayout coordinatorLayout, View view, View view2, int i2, int i3, int[] iArr, int i4) {
        if (i4 == 1) {
            return;
        }
        WeakReference weakReference = this.Z;
        View view3 = weakReference != null ? (View) weakReference.get() : null;
        if (view2 != view3) {
            return;
        }
        int top = view.getTop();
        int i5 = top - i3;
        boolean z = this.L;
        boolean z2 = this.M;
        if (i3 > 0) {
            if (!this.S && !z2 && view2 == view3 && view2.canScrollVertically(1)) {
                this.N = true;
                return;
            }
            if (i5 < D()) {
                int iD = top - D();
                iArr[1] = iD;
                WeakHashMap weakHashMap = ViewCompat.f12200a;
                view.offsetTopAndBottom(-iD);
                K(3);
            } else {
                if (!z) {
                    return;
                }
                iArr[1] = i3;
                WeakHashMap weakHashMap2 = ViewCompat.f12200a;
                view.offsetTopAndBottom(-i3);
                K(1);
            }
        } else if (i3 < 0) {
            boolean zCanScrollVertically = view2.canScrollVertically(-1);
            if (!this.S && !z2 && view2 == view3 && zCanScrollVertically) {
                this.N = true;
                return;
            }
            if (!zCanScrollVertically) {
                int i6 = this.H;
                if (i5 > i6 && !this.J) {
                    int i7 = top - i6;
                    iArr[1] = i7;
                    WeakHashMap weakHashMap3 = ViewCompat.f12200a;
                    view.offsetTopAndBottom(-i7);
                    K(4);
                } else {
                    if (!z) {
                        return;
                    }
                    iArr[1] = i3;
                    WeakHashMap weakHashMap4 = ViewCompat.f12200a;
                    view.offsetTopAndBottom(-i3);
                    K(1);
                }
            }
        }
        z(view.getTop());
        this.R = i3;
        this.S = true;
        this.N = false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void p(CoordinatorLayout coordinatorLayout, View view, int i2, int i3, int i4, int[] iArr) {
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void r(View view, Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        int i2 = this.f32357b;
        if (i2 != 0) {
            if (i2 == -1 || (i2 & 1) == 1) {
                this.f32360f = savedState.f32372e;
            }
            if (i2 == -1 || (i2 & 2) == 2) {
                this.f32358c = savedState.f32373f;
            }
            if (i2 == -1 || (i2 & 4) == 4) {
                this.J = savedState.g;
            }
            if (i2 == -1 || (i2 & 8) == 8) {
                this.K = savedState.f32374h;
            }
        }
        int i3 = savedState.d;
        if (i3 == 1 || i3 == 2) {
            this.O = 4;
        } else {
            this.O = i3;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final Parcelable s(View view) {
        return new SavedState((Parcelable) View.BaseSavedState.EMPTY_STATE, (BottomSheetBehavior<?>) this);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean t(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i2, int i3) {
        this.R = 0;
        this.S = false;
        return (i2 & 2) != 0;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0055  */
    /* JADX WARN: Code duplicated, block: B:32:0x005a  */
    /* JADX WARN: Code duplicated, block: B:34:0x0062  */
    /* JADX WARN: Code duplicated, block: B:37:0x0074  */
    /* JADX WARN: Code duplicated, block: B:39:0x0078  */
    /* JADX WARN: Code duplicated, block: B:42:0x0083  */
    /* JADX WARN: Code duplicated, block: B:45:0x0093  */
    /* JADX WARN: Code duplicated, block: B:47:0x0097  */
    /* JADX WARN: Code duplicated, block: B:48:0x0099  */
    /* JADX WARN: Code duplicated, block: B:50:0x00ae  */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void u(CoordinatorLayout coordinatorLayout, View view, View view2, int i2) {
        int top;
        int top2;
        int i3;
        float yVelocity;
        int i4 = 3;
        if (view.getTop() == D()) {
            K(3);
            return;
        }
        WeakReference weakReference = this.Z;
        if (weakReference != null && view2 == weakReference.get() && this.S) {
            if (this.R > 0) {
                if (!this.f32358c && view.getTop() > this.F) {
                    i4 = 6;
                }
            } else if (this.J) {
                VelocityTracker velocityTracker = this.t0;
                if (velocityTracker == null) {
                    yVelocity = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                } else {
                    velocityTracker.computeCurrentVelocity(1000, this.d);
                    yVelocity = this.t0.getYVelocity(this.c1);
                }
                if (L(yVelocity, view)) {
                    i4 = 5;
                } else if (this.R == 0) {
                    top2 = view.getTop();
                    if (this.f32358c) {
                        i3 = this.F;
                        if (top2 < i3) {
                            if (top2 >= Math.abs(top2 - this.H)) {
                            }
                        } else if (Math.abs(top2 - i3) < Math.abs(top2 - this.H)) {
                            i4 = 4;
                        }
                        i4 = 6;
                    } else if (Math.abs(top2 - this.E) >= Math.abs(top2 - this.H)) {
                        i4 = 4;
                    }
                } else {
                    if (!this.f32358c) {
                        top = view.getTop();
                        if (Math.abs(top - this.F) < Math.abs(top - this.H)) {
                            i4 = 6;
                        }
                    }
                    i4 = 4;
                }
            } else if (this.R == 0) {
                top2 = view.getTop();
                if (this.f32358c) {
                    i3 = this.F;
                    if (top2 < i3) {
                        if (top2 >= Math.abs(top2 - this.H)) {
                        }
                    } else if (Math.abs(top2 - i3) < Math.abs(top2 - this.H)) {
                        i4 = 4;
                    }
                    i4 = 6;
                } else if (Math.abs(top2 - this.E) >= Math.abs(top2 - this.H)) {
                    i4 = 4;
                }
            } else {
                if (!this.f32358c) {
                    top = view.getTop();
                    if (Math.abs(top - this.F) < Math.abs(top - this.H)) {
                        i4 = 6;
                    }
                }
                i4 = 4;
            }
            M(view, i4, false);
            this.S = false;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean v(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        int i2 = this.O;
        if (i2 == 1 && actionMasked == 0) {
            return true;
        }
        ViewDragHelper viewDragHelper = this.P;
        boolean z = this.L;
        if (viewDragHelper != null && (z || i2 == 1)) {
            viewDragHelper.i(motionEvent);
        }
        if (actionMasked == 0) {
            G();
        }
        if (this.t0 == null) {
            this.t0 = VelocityTracker.obtain();
        }
        this.t0.addMovement(motionEvent);
        if (this.P != null && ((z || this.O == 1) && actionMasked == 2 && !this.Q)) {
            float fAbs = Math.abs(this.d1 - motionEvent.getY());
            ViewDragHelper viewDragHelper2 = this.P;
            if (fAbs > viewDragHelper2.f12567b) {
                viewDragHelper2.b(motionEvent.getPointerId(motionEvent.getActionIndex()), view);
            }
        }
        return !this.Q;
    }

    public final void w() {
        int iY = y();
        boolean z = this.f32358c;
        int i2 = this.X;
        if (z) {
            this.H = Math.max(i2 - iY, this.E);
        } else {
            this.H = i2 - iY;
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0043  */
    public final float x() {
        WeakReference weakReference;
        WindowInsets rootWindowInsets;
        float f2;
        float f3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        MaterialShapeDrawable materialShapeDrawable = this.f32363j;
        if (materialShapeDrawable != null && (weakReference = this.Y) != null && weakReference.get() != null && Build.VERSION.SDK_INT >= 31) {
            View view = (View) this.Y.get();
            if (F() && (rootWindowInsets = view.getRootWindowInsets()) != null) {
                float fL = materialShapeDrawable.l();
                RoundedCorner roundedCorner = rootWindowInsets.getRoundedCorner(0);
                if (roundedCorner != null) {
                    float radius = roundedCorner.getRadius();
                    if (radius <= Call.Parameters.DEFAULT_CAMERA_ZOOM || fL <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        f2 = 0.0f;
                    } else {
                        f2 = radius / fL;
                    }
                } else {
                    f2 = 0.0f;
                }
                float[] fArr = materialShapeDrawable.D;
                float fA = fArr != null ? fArr[0] : materialShapeDrawable.f32936c.f32945a.f32963f.a(materialShapeDrawable.h());
                RoundedCorner roundedCorner2 = rootWindowInsets.getRoundedCorner(1);
                if (roundedCorner2 != null) {
                    float radius2 = roundedCorner2.getRadius();
                    if (radius2 > Call.Parameters.DEFAULT_CAMERA_ZOOM && fA > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        f3 = radius2 / fA;
                    }
                }
                return Math.max(f2, f3);
            }
        }
        return Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public final int y() {
        int iMin;
        int i2;
        int i3;
        if (this.g) {
            iMin = Math.min(Math.max(this.f32361h, this.X - ((this.W * 9) / 16)), this.V);
            i2 = this.w;
        } else {
            if (!this.o && !this.p && (i3 = this.n) > 0) {
                return Math.max(this.f32360f, i3 + this.f32362i);
            }
            iMin = this.f32360f;
            i2 = this.w;
        }
        return iMin + i2;
    }

    public final void z(int i2) {
        float f2;
        float fD;
        View view = (View) this.Y.get();
        if (view != null) {
            ArrayList arrayList = this.h0;
            if (arrayList.isEmpty()) {
                return;
            }
            int i3 = this.H;
            if (i2 > i3 || i3 == D()) {
                int i4 = this.H;
                f2 = i4 - i2;
                fD = this.X - i4;
            } else {
                int i5 = this.H;
                f2 = i5 - i2;
                fD = i5 - D();
            }
            float f3 = f2 / fD;
            for (int i6 = 0; i6 < arrayList.size(); i6++) {
                ((BottomSheetCallback) arrayList.get(i6)).onSlide(view, f3);
            }
        }
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new AnonymousClass1();
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f32372e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f32373f;
        public final boolean g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final boolean f32374h;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.d = parcel.readInt();
            this.f32372e = parcel.readInt();
            this.f32373f = parcel.readInt() == 1;
            this.g = parcel.readInt() == 1;
            this.f32374h = parcel.readInt() == 1;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.d);
            parcel.writeInt(this.f32372e);
            parcel.writeInt(this.f32373f ? 1 : 0);
            parcel.writeInt(this.g ? 1 : 0);
            parcel.writeInt(this.f32374h ? 1 : 0);
        }

        /* JADX INFO: renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$SavedState$1, reason: invalid class name */
        public class AnonymousClass1 implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (ClassLoader) null);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i2) {
                return new SavedState[i2];
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }
        }

        public SavedState(Parcel parcel) {
            this(parcel, (ClassLoader) null);
        }

        public SavedState(Parcelable parcelable, BottomSheetBehavior<?> bottomSheetBehavior) {
            super(parcelable);
            this.d = bottomSheetBehavior.O;
            this.f32372e = bottomSheetBehavior.f32360f;
            this.f32373f = bottomSheetBehavior.f32358c;
            this.g = bottomSheetBehavior.J;
            this.f32374h = bottomSheetBehavior.K;
        }

        @Deprecated
        public SavedState(Parcelable parcelable, int i2) {
            super(parcelable);
            this.d = i2;
        }
    }

    public BottomSheetBehavior() {
        this.f32357b = 0;
        this.f32358c = true;
        this.l = -1;
        this.m = -1;
        this.B = new StateSettlingTracker();
        this.G = 0.5f;
        this.I = -1.0f;
        this.L = true;
        this.M = true;
        this.O = 4;
        this.T = 0.1f;
        this.h0 = new ArrayList();
        this.d1 = -1;
        this.g1 = new SparseIntArray();
        this.h1 = new ViewDragHelper.Callback() { // from class: com.google.android.material.bottomsheet.BottomSheetBehavior.5
            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int a(int i3, View view) {
                return view.getLeft();
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int b(int i3, View view) {
                return MathUtils.b(i3, BottomSheetBehavior.this.D(), d());
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final int d() {
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                return bottomSheetBehavior.J ? bottomSheetBehavior.X : bottomSheetBehavior.H;
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void f(int i3) {
                if (i3 == 1) {
                    BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                    if (bottomSheetBehavior.L) {
                        bottomSheetBehavior.K(1);
                    }
                }
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void g(View view, int i3, int i4) {
                BottomSheetBehavior.this.z(i4);
            }

            /* JADX WARN: Code duplicated, block: B:20:0x0049  */
            /* JADX WARN: Code duplicated, block: B:34:0x0082  */
            /* JADX WARN: Code duplicated, block: B:6:0x000d  */
            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final void h(View view, float f2, float f3) {
                int i3 = 6;
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                if (f3 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    if (bottomSheetBehavior.f32358c) {
                        i3 = 3;
                    } else {
                        int top = view.getTop();
                        SystemClock.uptimeMillis();
                        if (top <= bottomSheetBehavior.F) {
                            i3 = 3;
                        }
                    }
                } else if (bottomSheetBehavior.J && bottomSheetBehavior.L(f3, view)) {
                    if (Math.abs(f2) >= Math.abs(f3) || f3 <= bottomSheetBehavior.f32359e) {
                        if (view.getTop() > (bottomSheetBehavior.D() + bottomSheetBehavior.X) / 2) {
                            i3 = 5;
                        } else if (bottomSheetBehavior.f32358c || Math.abs(view.getTop() - bottomSheetBehavior.D()) < Math.abs(view.getTop() - bottomSheetBehavior.F)) {
                            i3 = 3;
                        }
                    } else {
                        i3 = 5;
                    }
                } else if (f3 == Call.Parameters.DEFAULT_CAMERA_ZOOM || Math.abs(f2) > Math.abs(f3)) {
                    int top2 = view.getTop();
                    if (!bottomSheetBehavior.f32358c) {
                        int i4 = bottomSheetBehavior.F;
                        if (top2 < i4) {
                            if (top2 < Math.abs(top2 - bottomSheetBehavior.H)) {
                                i3 = 3;
                            }
                        } else if (Math.abs(top2 - i4) >= Math.abs(top2 - bottomSheetBehavior.H)) {
                            i3 = 4;
                        }
                    } else if (Math.abs(top2 - bottomSheetBehavior.E) < Math.abs(top2 - bottomSheetBehavior.H)) {
                        i3 = 3;
                    } else {
                        i3 = 4;
                    }
                } else if (bottomSheetBehavior.f32358c) {
                    i3 = 4;
                } else {
                    int top3 = view.getTop();
                    if (Math.abs(top3 - bottomSheetBehavior.F) >= Math.abs(top3 - bottomSheetBehavior.H)) {
                        i3 = 4;
                    }
                }
                bottomSheetBehavior.M(view, i3, true);
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public final boolean i(int i3, View view) {
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                int i4 = bottomSheetBehavior.O;
                if (i4 == 1 || bottomSheetBehavior.e1) {
                    return false;
                }
                if (i4 == 3 && bottomSheetBehavior.c1 == i3) {
                    WeakReference weakReference = bottomSheetBehavior.Z;
                    View view2 = weakReference != null ? (View) weakReference.get() : null;
                    if (view2 != null && view2.canScrollVertically(-1)) {
                        return false;
                    }
                }
                SystemClock.uptimeMillis();
                WeakReference weakReference2 = bottomSheetBehavior.Y;
                return weakReference2 != null && weakReference2.get() == view;
            }
        };
    }
}
