package com.google.android.material.behavior;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
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
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.LinkedHashSet;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class HideBottomViewOnScrollBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinkedHashSet f32308b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f32309c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public TimeInterpolator f32310e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public TimeInterpolator f32311f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public AccessibilityManager f32312h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public f2 f32313i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f32314j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f32315k;
    public int l;
    public ViewPropertyAnimator m;

    /* JADX INFO: renamed from: com.google.android.material.behavior.HideBottomViewOnScrollBehavior$2, reason: invalid class name */
    class AnonymousClass2 extends AnimatorListenerAdapter {
        public AnonymousClass2() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            HideBottomViewOnScrollBehavior.this.m = null;
        }
    }

    public interface OnScrollStateChangedListener {
        void a();
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ScrollState {
    }

    public HideBottomViewOnScrollBehavior() {
        this.f32308b = new LinkedHashSet();
        this.g = 0;
        this.f32314j = true;
        this.f32315k = 2;
        this.l = 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean l(CoordinatorLayout coordinatorLayout, View view, int i2) {
        this.g = view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).bottomMargin;
        this.f32309c = MotionUtils.c(view.getContext(), R.attr.motionDurationLong2, 225);
        this.d = MotionUtils.c(view.getContext(), R.attr.motionDurationMedium4, 175);
        this.f32310e = MotionUtils.d(view.getContext(), R.attr.motionEasingEmphasizedInterpolator, AnimationUtils.d);
        this.f32311f = MotionUtils.d(view.getContext(), R.attr.motionEasingEmphasizedInterpolator, AnimationUtils.f32229c);
        if (this.f32312h == null) {
            this.f32312h = (AccessibilityManager) ContextCompat.getSystemService(view.getContext(), AccessibilityManager.class);
        }
        AccessibilityManager accessibilityManager = this.f32312h;
        if (accessibilityManager == null || this.f32313i != null) {
            return false;
        }
        f2 f2Var = new f2(this, view, 1);
        this.f32313i = f2Var;
        accessibilityManager.addTouchExplorationStateChangeListener(f2Var);
        view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.google.android.material.behavior.HideBottomViewOnScrollBehavior.1
            @Override // android.view.View.OnAttachStateChangeListener
            public final void onViewAttachedToWindow(View view2) {
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public final void onViewDetachedFromWindow(View view2) {
                AccessibilityManager accessibilityManager2;
                HideBottomViewOnScrollBehavior hideBottomViewOnScrollBehavior = HideBottomViewOnScrollBehavior.this;
                f2 f2Var2 = hideBottomViewOnScrollBehavior.f32313i;
                if (f2Var2 == null || (accessibilityManager2 = hideBottomViewOnScrollBehavior.f32312h) == null) {
                    return;
                }
                accessibilityManager2.removeTouchExplorationStateChangeListener(f2Var2);
                hideBottomViewOnScrollBehavior.f32313i = null;
            }
        });
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void p(CoordinatorLayout coordinatorLayout, View view, int i2, int i3, int i4, int[] iArr) {
        AccessibilityManager accessibilityManager;
        if (i2 <= 0) {
            if (i2 < 0) {
                w(view);
                return;
            }
            return;
        }
        if (this.f32315k == 1) {
            return;
        }
        if (this.f32314j && (accessibilityManager = this.f32312h) != null && accessibilityManager.isTouchExplorationEnabled()) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.m;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            view.clearAnimation();
        }
        this.f32315k = 1;
        Iterator it = this.f32308b.iterator();
        while (it.hasNext()) {
            ((OnScrollStateChangedListener) it.next()).a();
        }
        this.m = view.animate().translationY(this.g + this.l).setInterpolator(this.f32311f).setDuration(this.d).setListener(new AnonymousClass2());
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean t(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i2, int i3) {
        return i2 == 2;
    }

    public final void w(View view) {
        if (this.f32315k == 2) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.m;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            view.clearAnimation();
        }
        this.f32315k = 2;
        Iterator it = this.f32308b.iterator();
        while (it.hasNext()) {
            ((OnScrollStateChangedListener) it.next()).a();
        }
        this.m = view.animate().translationY(Call.Parameters.DEFAULT_CAMERA_ZOOM).setInterpolator(this.f32310e).setDuration(this.f32309c).setListener(new AnonymousClass2());
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f32308b = new LinkedHashSet();
        this.g = 0;
        this.f32314j = true;
        this.f32315k = 2;
        this.l = 0;
    }
}
