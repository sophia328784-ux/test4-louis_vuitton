package com.google.android.material.behavior;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityManager;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.content.ContextCompat;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.motion.MotionUtils;
import com.vuitton.android.R;
import defpackage.f2;
import defpackage.md;
import defpackage.n00;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes2.dex */
public class HideViewOnScrollBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public HideViewOnScrollDelegate f32318b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AccessibilityManager f32319c;
    public f2 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f32320e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LinkedHashSet f32321f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f32322h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public TimeInterpolator f32323i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public TimeInterpolator f32324j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f32325k;
    public int l;
    public ViewPropertyAnimator m;
    public final boolean n;

    /* JADX INFO: renamed from: com.google.android.material.behavior.HideViewOnScrollBehavior$2, reason: invalid class name */
    class AnonymousClass2 extends AnimatorListenerAdapter {
        public AnonymousClass2() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            HideViewOnScrollBehavior.this.m = null;
        }
    }

    public interface OnScrollStateChangedListener {
        void a();
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ScrollState {
    }

    public HideViewOnScrollBehavior() {
        this.f32320e = true;
        this.f32321f = new LinkedHashSet();
        this.f32325k = 0;
        this.l = 2;
        this.n = false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean l(CoordinatorLayout coordinatorLayout, View view, int i2) {
        if (this.f32319c == null) {
            this.f32319c = (AccessibilityManager) ContextCompat.getSystemService(view.getContext(), AccessibilityManager.class);
        }
        AccessibilityManager accessibilityManager = this.f32319c;
        int i3 = 2;
        if (accessibilityManager != null && this.d == null) {
            f2 f2Var = new f2(this, view, 2);
            this.d = f2Var;
            accessibilityManager.addTouchExplorationStateChangeListener(f2Var);
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.google.android.material.behavior.HideViewOnScrollBehavior.1
                @Override // android.view.View.OnAttachStateChangeListener
                public final void onViewAttachedToWindow(View view2) {
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public final void onViewDetachedFromWindow(View view2) {
                    AccessibilityManager accessibilityManager2;
                    HideViewOnScrollBehavior hideViewOnScrollBehavior = HideViewOnScrollBehavior.this;
                    f2 f2Var2 = hideViewOnScrollBehavior.d;
                    if (f2Var2 == null || (accessibilityManager2 = hideViewOnScrollBehavior.f32319c) == null) {
                        return;
                    }
                    accessibilityManager2.removeTouchExplorationStateChangeListener(f2Var2);
                    hideViewOnScrollBehavior.d = null;
                }
            });
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        if (!this.n) {
            int i4 = ((CoordinatorLayout.LayoutParams) view.getLayoutParams()).f11853c;
            if (i4 == 80 || i4 == 81) {
                w(1);
            } else {
                int absoluteGravity = Gravity.getAbsoluteGravity(i4, i2);
                if (absoluteGravity != 3 && absoluteGravity != 19) {
                    i3 = 0;
                }
                w(i3);
            }
        }
        this.f32325k = this.f32318b.a(view, marginLayoutParams);
        this.g = MotionUtils.c(view.getContext(), R.attr.motionDurationLong2, 225);
        this.f32322h = MotionUtils.c(view.getContext(), R.attr.motionDurationMedium4, 175);
        this.f32323i = MotionUtils.d(view.getContext(), R.attr.motionEasingEmphasizedInterpolator, AnimationUtils.d);
        this.f32324j = MotionUtils.d(view.getContext(), R.attr.motionEasingEmphasizedInterpolator, AnimationUtils.f32229c);
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void p(CoordinatorLayout coordinatorLayout, View view, int i2, int i3, int i4, int[] iArr) {
        AccessibilityManager accessibilityManager;
        if (i2 <= 0) {
            if (i2 < 0) {
                x(view);
                return;
            }
            return;
        }
        if (this.l == 1) {
            return;
        }
        if (this.f32320e && (accessibilityManager = this.f32319c) != null && accessibilityManager.isTouchExplorationEnabled()) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.m;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            view.clearAnimation();
        }
        this.l = 1;
        Iterator it = this.f32321f.iterator();
        while (it.hasNext()) {
            ((OnScrollStateChangedListener) it.next()).a();
        }
        this.m = this.f32318b.c(this.f32325k, view).setInterpolator(this.f32324j).setDuration(this.f32322h).setListener(new AnonymousClass2());
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean t(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i2, int i3) {
        return i2 == 2;
    }

    public final void w(int i2) {
        HideViewOnScrollDelegate hideViewOnScrollDelegate = this.f32318b;
        if (hideViewOnScrollDelegate == null || hideViewOnScrollDelegate.b() != i2) {
            if (i2 == 0) {
                this.f32318b = new HideRightViewOnScrollDelegate();
                return;
            }
            if (i2 == 1) {
                this.f32318b = new HideBottomViewOnScrollDelegate();
            } else if (i2 == 2) {
                this.f32318b = new HideLeftViewOnScrollDelegate();
            } else {
                md.n(n00.m(i2, "Invalid view edge position value: ", ". Must be 0, 1 or 2."));
            }
        }
    }

    public final void x(View view) {
        if (this.l == 2) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.m;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            view.clearAnimation();
        }
        this.l = 2;
        Iterator it = this.f32321f.iterator();
        while (it.hasNext()) {
            ((OnScrollStateChangedListener) it.next()).a();
        }
        this.f32318b.getClass();
        this.m = this.f32318b.c(0, view).setInterpolator(this.f32323i).setDuration(this.g).setListener(new AnonymousClass2());
    }

    public HideViewOnScrollBehavior(int i2) {
        this();
        this.n = true;
        w(i2);
    }

    public HideViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f32320e = true;
        this.f32321f = new LinkedHashSet();
        this.f32325k = 0;
        this.l = 2;
        this.n = false;
    }
}
