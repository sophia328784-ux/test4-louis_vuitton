package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R$styleable;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.animation.TransformationCallback;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import com.vuitton.android.R;
import defpackage.yg;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class BottomAppBar extends Toolbar implements CoordinatorLayout.AttachedBehavior {
    public static final /* synthetic */ int v1 = 0;
    public Integer W;
    public AnimatorSet b1;
    public int c1;
    public int d1;
    public int e1;
    public final int f1;
    public int g1;
    public final MaterialShapeDrawable h0;
    public int h1;
    public final boolean i1;
    public boolean j1;
    public final boolean k1;
    public final boolean l1;
    public final boolean m1;
    public boolean n1;
    public boolean o1;
    public Behavior p1;
    public int q1;
    public int r1;
    public int s1;
    public AnimatorSet t0;
    public final AnimatorListenerAdapter t1;
    public final TransformationCallback u1;

    public interface AnimationListener {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface FabAlignmentMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface FabAnchorMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface FabAnimationMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface MenuAlignmentMode {
    }

    public BottomAppBar(Context context, AttributeSet attributeSet, int i2) {
        super(MaterialThemeOverlay.b(context, attributeSet, i2, R.style.Widget_MaterialComponents_BottomAppBar), attributeSet, i2);
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        this.h0 = materialShapeDrawable;
        this.n1 = false;
        this.o1 = true;
        this.t1 = new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                BottomAppBar bottomAppBar = BottomAppBar.this;
                if (bottomAppBar.n1) {
                    return;
                }
                bottomAppBar.E(bottomAppBar.c1, bottomAppBar.o1);
            }
        };
        this.u1 = new TransformationCallback<FloatingActionButton>() { // from class: com.google.android.material.bottomappbar.BottomAppBar.2
            @Override // com.google.android.material.animation.TransformationCallback
            public final void a(View view) {
                FloatingActionButton floatingActionButton = (FloatingActionButton) view;
                BottomAppBar bottomAppBar = BottomAppBar.this;
                bottomAppBar.h0.s((floatingActionButton.getVisibility() == 0 && bottomAppBar.e1 == 1) ? floatingActionButton.getScaleY() : Call.Parameters.DEFAULT_CAMERA_ZOOM);
            }

            @Override // com.google.android.material.animation.TransformationCallback
            public final void b(View view) {
                FloatingActionButton floatingActionButton = (FloatingActionButton) view;
                BottomAppBar bottomAppBar = BottomAppBar.this;
                int i3 = bottomAppBar.e1;
                MaterialShapeDrawable materialShapeDrawable2 = bottomAppBar.h0;
                if (i3 != 1) {
                    return;
                }
                float translationX = floatingActionButton.getTranslationX();
                if (bottomAppBar.getTopEdgeTreatment().f32356f != translationX) {
                    bottomAppBar.getTopEdgeTreatment().f32356f = translationX;
                    materialShapeDrawable2.invalidateSelf();
                }
                float f2 = -floatingActionButton.getTranslationY();
                float scaleY = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                float fMax = Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, f2);
                if (bottomAppBar.getTopEdgeTreatment().f32355e != fMax) {
                    bottomAppBar.getTopEdgeTreatment().c(fMax);
                    materialShapeDrawable2.invalidateSelf();
                }
                if (floatingActionButton.getVisibility() == 0) {
                    scaleY = floatingActionButton.getScaleY();
                }
                materialShapeDrawable2.s(scaleY);
            }
        };
        Context context2 = getContext();
        TypedArray typedArrayD = ThemeEnforcement.d(context2, attributeSet, R$styleable.f32221e, i2, R.style.Widget_MaterialComponents_BottomAppBar, new int[0]);
        ColorStateList colorStateListA = MaterialResources.a(context2, typedArrayD, 1);
        if (typedArrayD.hasValue(12)) {
            setNavigationIconTint(typedArrayD.getColor(12, -1));
        }
        int dimensionPixelSize = typedArrayD.getDimensionPixelSize(2, 0);
        float dimensionPixelOffset = typedArrayD.getDimensionPixelOffset(7, 0);
        float dimensionPixelOffset2 = typedArrayD.getDimensionPixelOffset(8, 0);
        float dimensionPixelOffset3 = typedArrayD.getDimensionPixelOffset(9, 0);
        this.c1 = typedArrayD.getInt(3, 0);
        this.d1 = typedArrayD.getInt(6, 0);
        this.e1 = typedArrayD.getInt(5, 1);
        this.i1 = typedArrayD.getBoolean(16, true);
        this.h1 = typedArrayD.getInt(11, 0);
        this.j1 = typedArrayD.getBoolean(10, false);
        this.k1 = typedArrayD.getBoolean(13, false);
        this.l1 = typedArrayD.getBoolean(14, false);
        this.m1 = typedArrayD.getBoolean(15, false);
        this.g1 = typedArrayD.getDimensionPixelOffset(4, -1);
        boolean z = typedArrayD.getBoolean(0, true);
        typedArrayD.recycle();
        this.f1 = getResources().getDimensionPixelOffset(R.dimen.mtrl_bottomappbar_fabOffsetEndMode);
        BottomAppBarTopEdgeTreatment bottomAppBarTopEdgeTreatment = new BottomAppBarTopEdgeTreatment(dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        ShapeAppearanceModel.Builder builder = new ShapeAppearanceModel.Builder();
        builder.f32974i = bottomAppBarTopEdgeTreatment;
        materialShapeDrawable.setShapeAppearanceModel(builder.a());
        if (z) {
            materialShapeDrawable.v(2);
        } else {
            materialShapeDrawable.v(1);
            setOutlineAmbientShadowColor(0);
            setOutlineSpotShadowColor(0);
        }
        Paint.Style style = Paint.Style.FILL;
        materialShapeDrawable.t();
        materialShapeDrawable.n(context2);
        materialShapeDrawable.setTintList(colorStateListA);
        setElevation(dimensionPixelSize);
        setBackground(materialShapeDrawable);
        ViewUtils.c(this, attributeSet, i2, new ViewUtils.OnApplyWindowInsetsListener() { // from class: com.google.android.material.bottomappbar.BottomAppBar.3
            @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
            public final WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat, ViewUtils.RelativePadding relativePadding) {
                boolean z2;
                BottomAppBar bottomAppBar = BottomAppBar.this;
                if (bottomAppBar.k1) {
                    bottomAppBar.q1 = windowInsetsCompat.g();
                }
                boolean z3 = false;
                if (bottomAppBar.l1) {
                    z2 = bottomAppBar.s1 != windowInsetsCompat.h();
                    bottomAppBar.s1 = windowInsetsCompat.h();
                } else {
                    z2 = false;
                }
                if (bottomAppBar.m1) {
                    boolean z4 = bottomAppBar.r1 != windowInsetsCompat.i();
                    bottomAppBar.r1 = windowInsetsCompat.i();
                    z3 = z4;
                }
                if (!z2 && !z3) {
                    return windowInsetsCompat;
                }
                AnimatorSet animatorSet = bottomAppBar.b1;
                if (animatorSet != null) {
                    animatorSet.cancel();
                }
                AnimatorSet animatorSet2 = bottomAppBar.t0;
                if (animatorSet2 != null) {
                    animatorSet2.cancel();
                }
                bottomAppBar.G();
                bottomAppBar.F();
                return windowInsetsCompat;
            }
        });
    }

    public static void J(BottomAppBar bottomAppBar, View view) {
        CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) view.getLayoutParams();
        layoutParams.d = 17;
        int i2 = bottomAppBar.e1;
        if (i2 == 1) {
            layoutParams.d = 49;
        }
        if (i2 == 0) {
            layoutParams.d |= 80;
        }
    }

    private ActionMenuView getActionMenuView() {
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt instanceof ActionMenuView) {
                return (ActionMenuView) childAt;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getBottomInset() {
        return this.q1;
    }

    private int getFabAlignmentAnimationDuration() {
        return MotionUtils.c(getContext(), R.attr.motionDurationLong2, 300);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getFabTranslationX() {
        return C(this.c1);
    }

    private float getFabTranslationY() {
        if (this.e1 == 1) {
            return -getTopEdgeTreatment().f32355e;
        }
        View viewA = A();
        return viewA != null ? (-((getMeasuredHeight() + getBottomInset()) - viewA.getMeasuredHeight())) / 2 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getLeftInset() {
        return this.s1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getRightInset() {
        return this.r1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BottomAppBarTopEdgeTreatment getTopEdgeTreatment() {
        return (BottomAppBarTopEdgeTreatment) this.h0.f32936c.f32945a.f32965i;
    }

    public final View A() {
        if (getParent() instanceof CoordinatorLayout) {
            ArrayList arrayList = (ArrayList) ((CoordinatorLayout) getParent()).f11842c.f11862b.get(this);
            List<View> arrayList2 = arrayList == null ? null : new ArrayList(arrayList);
            if (arrayList2 == null) {
                arrayList2 = Collections.EMPTY_LIST;
            }
            for (View view : arrayList2) {
                if ((view instanceof FloatingActionButton) || (view instanceof ExtendedFloatingActionButton)) {
                    return view;
                }
            }
        }
        return null;
    }

    public final int B(ActionMenuView actionMenuView, int i2, boolean z) {
        int i3 = 0;
        if (this.h1 != 1 && (i2 != 1 || !z)) {
            return 0;
        }
        boolean z2 = getLayoutDirection() == 1;
        int measuredWidth = z2 ? getMeasuredWidth() : 0;
        for (int i4 = 0; i4 < getChildCount(); i4++) {
            View childAt = getChildAt(i4);
            if ((childAt.getLayoutParams() instanceof Toolbar.LayoutParams) && (((Toolbar.LayoutParams) childAt.getLayoutParams()).f785a & 8388615) == 8388611) {
                measuredWidth = z2 ? Math.min(measuredWidth, childAt.getLeft()) : Math.max(measuredWidth, childAt.getRight());
            }
        }
        int right = z2 ? actionMenuView.getRight() : actionMenuView.getLeft();
        int i5 = z2 ? this.r1 : -this.s1;
        if (getNavigationIcon() == null) {
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.m3_bottomappbar_horizontal_padding);
            if (!z2) {
                dimensionPixelOffset = -dimensionPixelOffset;
            }
            i3 = dimensionPixelOffset;
        }
        return measuredWidth - ((right + i5) + i3);
    }

    public final float C(int i2) {
        boolean z = getLayoutDirection() == 1;
        if (i2 != 1) {
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        View viewA = A();
        int i3 = z ? this.s1 : this.r1;
        return ((getMeasuredWidth() / 2) - ((this.g1 == -1 || viewA == null) ? this.f1 + i3 : ((viewA.getMeasuredWidth() / 2) + this.g1) + i3)) * (z ? -1 : 1);
    }

    public final boolean D() {
        View viewA = A();
        FloatingActionButton floatingActionButton = viewA instanceof FloatingActionButton ? (FloatingActionButton) viewA : null;
        return floatingActionButton != null && floatingActionButton.k();
    }

    public final void E(final int i2, final boolean z) {
        if (!isLaidOut()) {
            this.n1 = false;
            return;
        }
        AnimatorSet animatorSet = this.b1;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        ArrayList arrayList = new ArrayList();
        if (!D()) {
            i2 = 0;
            z = false;
        }
        final ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView != null) {
            float fabAlignmentAnimationDuration = getFabAlignmentAnimationDuration();
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", 1.0f);
            objectAnimatorOfFloat.setDuration((long) (0.8f * fabAlignmentAnimationDuration));
            if (Math.abs(actionMenuView.getTranslationX() - B(actionMenuView, i2, z)) > 1.0f) {
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(actionMenuView, "alpha", Call.Parameters.DEFAULT_CAMERA_ZOOM);
                objectAnimatorOfFloat2.setDuration((long) (fabAlignmentAnimationDuration * 0.2f));
                objectAnimatorOfFloat2.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.7

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public boolean f32346a;

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationCancel(Animator animator) {
                        this.f32346a = true;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        if (this.f32346a) {
                            return;
                        }
                        BottomAppBar.this.I(actionMenuView, i2, z, false);
                    }
                });
                AnimatorSet animatorSet2 = new AnimatorSet();
                animatorSet2.playSequentially(objectAnimatorOfFloat2, objectAnimatorOfFloat);
                arrayList.add(animatorSet2);
            } else if (actionMenuView.getAlpha() < 1.0f) {
                arrayList.add(objectAnimatorOfFloat);
            }
        }
        AnimatorSet animatorSet3 = new AnimatorSet();
        animatorSet3.playTogether(arrayList);
        this.b1 = animatorSet3;
        animatorSet3.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                int i3 = BottomAppBar.v1;
                BottomAppBar bottomAppBar = BottomAppBar.this;
                bottomAppBar.n1 = false;
                bottomAppBar.b1 = null;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                int i3 = BottomAppBar.v1;
            }
        });
        this.b1.start();
    }

    public final void F() {
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView == null || this.b1 != null) {
            return;
        }
        actionMenuView.setAlpha(1.0f);
        if (D()) {
            I(actionMenuView, this.c1, this.o1, false);
        } else {
            I(actionMenuView, 0, false, false);
        }
    }

    public final void G() {
        getTopEdgeTreatment().f32356f = getFabTranslationX();
        this.h0.s((this.o1 && D() && this.e1 == 1) ? 1.0f : Call.Parameters.DEFAULT_CAMERA_ZOOM);
        View viewA = A();
        if (viewA != null) {
            viewA.setTranslationY(getFabTranslationY());
            viewA.setTranslationX(getFabTranslationX());
        }
    }

    public final void H(int i2) {
        float f2 = i2;
        if (f2 != getTopEdgeTreatment().d) {
            getTopEdgeTreatment().d = f2;
            this.h0.invalidateSelf();
        }
    }

    public final void I(final ActionMenuView actionMenuView, final int i2, final boolean z, boolean z2) {
        Runnable runnable = new Runnable() { // from class: com.google.android.material.bottomappbar.BottomAppBar.8
            @Override // java.lang.Runnable
            public void run() {
                ActionMenuView actionMenuView2 = actionMenuView;
                actionMenuView2.setTranslationX(BottomAppBar.this.B(actionMenuView2, i2, z));
            }
        };
        if (z2) {
            actionMenuView.post(runnable);
        } else {
            runnable.run();
        }
    }

    public ColorStateList getBackgroundTint() {
        return this.h0.f32936c.f32949f;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    public Behavior getBehavior() {
        if (this.p1 == null) {
            this.p1 = new Behavior();
        }
        return this.p1;
    }

    public float getCradleVerticalOffset() {
        return getTopEdgeTreatment().f32355e;
    }

    public int getFabAlignmentMode() {
        return this.c1;
    }

    public int getFabAlignmentModeEndMargin() {
        return this.g1;
    }

    public int getFabAnchorMode() {
        return this.e1;
    }

    public int getFabAnimationMode() {
        return this.d1;
    }

    public float getFabCradleMargin() {
        return getTopEdgeTreatment().f32354c;
    }

    public float getFabCradleRoundedCornerRadius() {
        return getTopEdgeTreatment().f32353b;
    }

    public boolean getHideOnScroll() {
        return this.j1;
    }

    public int getMenuAlignmentMode() {
        return this.h1;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.b(this, this.h0);
        if (getParent() instanceof ViewGroup) {
            ((ViewGroup) getParent()).setClipChildren(false);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        if (z) {
            AnimatorSet animatorSet = this.b1;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            AnimatorSet animatorSet2 = this.t0;
            if (animatorSet2 != null) {
                animatorSet2.cancel();
            }
            G();
            View viewA = A();
            if (viewA != null && viewA.isLaidOut()) {
                viewA.post(new yg(viewA, 0));
            }
        }
        F();
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.f12555b);
        this.c1 = savedState.d;
        this.o1 = savedState.f32352e;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.d = this.c1;
        savedState.f32352e = this.o1;
        return savedState;
    }

    public void setBackgroundTint(ColorStateList colorStateList) {
        this.h0.setTintList(colorStateList);
    }

    public void setCradleVerticalOffset(float f2) {
        if (f2 != getCradleVerticalOffset()) {
            getTopEdgeTreatment().c(f2);
            this.h0.invalidateSelf();
            G();
        }
    }

    @Override // android.view.View
    public void setElevation(float f2) {
        MaterialShapeDrawable materialShapeDrawable = this.h0;
        materialShapeDrawable.q(f2);
        int iJ = materialShapeDrawable.f32936c.p - materialShapeDrawable.j();
        Behavior behavior = getBehavior();
        behavior.l = iJ;
        if (behavior.f32315k == 1) {
            setTranslationY(behavior.g + iJ);
        }
    }

    public void setFabAlignmentMode(final int i2) {
        this.n1 = true;
        E(i2, this.o1);
        if (this.c1 != i2 && isLaidOut()) {
            AnimatorSet animatorSet = this.t0;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            ArrayList arrayList = new ArrayList();
            if (this.d1 == 1) {
                View viewA = A();
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewA instanceof FloatingActionButton ? (FloatingActionButton) viewA : null, "translationX", C(i2));
                objectAnimatorOfFloat.setDuration(getFabAlignmentAnimationDuration());
                arrayList.add(objectAnimatorOfFloat);
            } else {
                View viewA2 = A();
                FloatingActionButton floatingActionButton = viewA2 instanceof FloatingActionButton ? (FloatingActionButton) viewA2 : null;
                if (floatingActionButton != null && !floatingActionButton.j()) {
                    floatingActionButton.i(new FloatingActionButton.OnVisibilityChangedListener() { // from class: com.google.android.material.bottomappbar.BottomAppBar.5

                        /* JADX INFO: renamed from: com.google.android.material.bottomappbar.BottomAppBar$5$1, reason: invalid class name */
                        class AnonymousClass1 extends FloatingActionButton.OnVisibilityChangedListener {
                            @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.OnVisibilityChangedListener
                            public final void b() {
                                int i2 = BottomAppBar.v1;
                            }
                        }

                        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.OnVisibilityChangedListener
                        public final void a(FloatingActionButton floatingActionButton2) {
                            int i3 = BottomAppBar.v1;
                            floatingActionButton2.setTranslationX(BottomAppBar.this.C(i2));
                            floatingActionButton2.m(new AnonymousClass1(), true);
                        }
                    }, true);
                }
            }
            AnimatorSet animatorSet2 = new AnimatorSet();
            animatorSet2.playTogether(arrayList);
            animatorSet2.setInterpolator(MotionUtils.d(getContext(), R.attr.motionEasingEmphasizedInterpolator, AnimationUtils.f32227a));
            this.t0 = animatorSet2;
            animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    int i3 = BottomAppBar.v1;
                    BottomAppBar.this.t0 = null;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                    int i3 = BottomAppBar.v1;
                }
            });
            this.t0.start();
        }
        this.c1 = i2;
    }

    public void setFabAlignmentModeEndMargin(int i2) {
        if (this.g1 != i2) {
            this.g1 = i2;
            G();
        }
    }

    public void setFabAnchorMode(int i2) {
        this.e1 = i2;
        G();
        View viewA = A();
        if (viewA != null) {
            J(this, viewA);
            viewA.requestLayout();
            this.h0.invalidateSelf();
        }
    }

    public void setFabAnimationMode(int i2) {
        this.d1 = i2;
    }

    public void setFabCornerSize(float f2) {
        if (f2 != getTopEdgeTreatment().g) {
            getTopEdgeTreatment().g = f2;
            this.h0.invalidateSelf();
        }
    }

    public void setFabCradleMargin(float f2) {
        if (f2 != getFabCradleMargin()) {
            getTopEdgeTreatment().f32354c = f2;
            this.h0.invalidateSelf();
        }
    }

    public void setFabCradleRoundedCornerRadius(float f2) {
        if (f2 != getFabCradleRoundedCornerRadius()) {
            getTopEdgeTreatment().f32353b = f2;
            this.h0.invalidateSelf();
        }
    }

    public void setHideOnScroll(boolean z) {
        this.j1 = z;
    }

    public void setMenuAlignmentMode(int i2) {
        if (this.h1 != i2) {
            this.h1 = i2;
            ActionMenuView actionMenuView = getActionMenuView();
            if (actionMenuView != null) {
                I(actionMenuView, this.c1, D(), false);
            }
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null && this.W != null) {
            drawable = drawable.mutate();
            drawable.setTint(this.W.intValue());
        }
        super.setNavigationIcon(drawable);
    }

    public void setNavigationIconTint(int i2) {
        this.W = Integer.valueOf(i2);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new AnonymousClass1();
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f32352e;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.d = parcel.readInt();
            this.f32352e = parcel.readInt() != 0;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.d);
            parcel.writeInt(this.f32352e ? 1 : 0);
        }

        /* JADX INFO: renamed from: com.google.android.material.bottomappbar.BottomAppBar$SavedState$1, reason: invalid class name */
        public class AnonymousClass1 implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
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

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {
        public final Rect n;
        public WeakReference o;
        public int p;
        public final View.OnLayoutChangeListener q;

        public Behavior() {
            this.q = new View.OnLayoutChangeListener() { // from class: com.google.android.material.bottomappbar.BottomAppBar.Behavior.1
                @Override // android.view.View.OnLayoutChangeListener
                public final void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                    Behavior behavior = Behavior.this;
                    Rect rect = behavior.n;
                    BottomAppBar bottomAppBar = (BottomAppBar) behavior.o.get();
                    if (bottomAppBar != null) {
                        int i10 = bottomAppBar.f1;
                        if ((view instanceof FloatingActionButton) || (view instanceof ExtendedFloatingActionButton)) {
                            int height = view.getHeight();
                            if (view instanceof FloatingActionButton) {
                                FloatingActionButton floatingActionButton = (FloatingActionButton) view;
                                floatingActionButton.g(rect);
                                int iHeight = rect.height();
                                bottomAppBar.H(iHeight);
                                bottomAppBar.setFabCornerSize(floatingActionButton.getShapeAppearanceModel().f32962e.a(new RectF(rect)));
                                height = iHeight;
                            }
                            CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) view.getLayoutParams();
                            if (behavior.p == 0) {
                                if (bottomAppBar.e1 == 1) {
                                    ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = bottomAppBar.getBottomInset() + (bottomAppBar.getResources().getDimensionPixelOffset(R.dimen.mtrl_bottomappbar_fab_bottom_margin) - ((view.getMeasuredHeight() - height) / 2));
                                }
                                ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = bottomAppBar.getLeftInset();
                                ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = bottomAppBar.getRightInset();
                                if (view.getLayoutDirection() == 1) {
                                    ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin += i10;
                                } else {
                                    ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin += i10;
                                }
                            }
                            int i11 = BottomAppBar.v1;
                            bottomAppBar.G();
                            return;
                        }
                    }
                    view.removeOnLayoutChangeListener(this);
                }
            };
            this.n = new Rect();
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean l(CoordinatorLayout coordinatorLayout, View view, int i2) {
            final BottomAppBar bottomAppBar = (BottomAppBar) view;
            this.o = new WeakReference(bottomAppBar);
            int i3 = BottomAppBar.v1;
            View viewA = bottomAppBar.A();
            if (viewA != null && !viewA.isLaidOut()) {
                BottomAppBar.J(bottomAppBar, viewA);
                this.p = ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) viewA.getLayoutParams())).bottomMargin;
                if (viewA instanceof FloatingActionButton) {
                    FloatingActionButton floatingActionButton = (FloatingActionButton) viewA;
                    if (bottomAppBar.e1 == 0 && bottomAppBar.i1) {
                        floatingActionButton.setElevation(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        floatingActionButton.setCompatElevation(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    }
                    if (floatingActionButton.getShowMotionSpec() == null) {
                        floatingActionButton.setShowMotionSpecResource(R.animator.mtrl_fab_show_motion_spec);
                    }
                    if (floatingActionButton.getHideMotionSpec() == null) {
                        floatingActionButton.setHideMotionSpecResource(R.animator.mtrl_fab_hide_motion_spec);
                    }
                    floatingActionButton.d(bottomAppBar.t1);
                    floatingActionButton.e(new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.9
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationStart(Animator animator) {
                            BottomAppBar bottomAppBar2 = BottomAppBar.this;
                            bottomAppBar2.t1.onAnimationStart(animator);
                            View viewA2 = bottomAppBar2.A();
                            FloatingActionButton floatingActionButton2 = viewA2 instanceof FloatingActionButton ? (FloatingActionButton) viewA2 : null;
                            if (floatingActionButton2 != null) {
                                floatingActionButton2.setTranslationX(bottomAppBar2.getFabTranslationX());
                            }
                        }
                    });
                    floatingActionButton.f(bottomAppBar.u1);
                }
                viewA.addOnLayoutChangeListener(this.q);
                bottomAppBar.G();
            }
            coordinatorLayout.r(i2, bottomAppBar);
            super.l(coordinatorLayout, bottomAppBar, i2);
            return false;
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean t(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i2, int i3) {
            BottomAppBar bottomAppBar = (BottomAppBar) view;
            return bottomAppBar.getHideOnScroll() && super.t(coordinatorLayout, bottomAppBar, view2, view3, i2, i3);
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.q = new View.OnLayoutChangeListener() { // from class: com.google.android.material.bottomappbar.BottomAppBar.Behavior.1
                @Override // android.view.View.OnLayoutChangeListener
                public final void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                    Behavior behavior = Behavior.this;
                    Rect rect = behavior.n;
                    BottomAppBar bottomAppBar = (BottomAppBar) behavior.o.get();
                    if (bottomAppBar != null) {
                        int i10 = bottomAppBar.f1;
                        if ((view instanceof FloatingActionButton) || (view instanceof ExtendedFloatingActionButton)) {
                            int height = view.getHeight();
                            if (view instanceof FloatingActionButton) {
                                FloatingActionButton floatingActionButton = (FloatingActionButton) view;
                                floatingActionButton.g(rect);
                                int iHeight = rect.height();
                                bottomAppBar.H(iHeight);
                                bottomAppBar.setFabCornerSize(floatingActionButton.getShapeAppearanceModel().f32962e.a(new RectF(rect)));
                                height = iHeight;
                            }
                            CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) view.getLayoutParams();
                            if (behavior.p == 0) {
                                if (bottomAppBar.e1 == 1) {
                                    ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = bottomAppBar.getBottomInset() + (bottomAppBar.getResources().getDimensionPixelOffset(R.dimen.mtrl_bottomappbar_fab_bottom_margin) - ((view.getMeasuredHeight() - height) / 2));
                                }
                                ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = bottomAppBar.getLeftInset();
                                ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = bottomAppBar.getRightInset();
                                if (view.getLayoutDirection() == 1) {
                                    ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin += i10;
                                } else {
                                    ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin += i10;
                                }
                            }
                            int i11 = BottomAppBar.v1;
                            bottomAppBar.G();
                            return;
                        }
                    }
                    view.removeOnLayoutChangeListener(this);
                }
            };
            this.n = new Rect();
        }
    }

    public BottomAppBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.bottomAppBarStyle);
    }

    public BottomAppBar(Context context) {
        this(context, null);
    }
}
