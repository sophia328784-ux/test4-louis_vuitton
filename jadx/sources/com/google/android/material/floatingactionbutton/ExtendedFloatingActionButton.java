package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.R$styleable;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import com.vuitton.android.R;
import defpackage.md;
import defpackage.pq0;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ExtendedFloatingActionButton extends MaterialButton implements CoordinatorLayout.AttachedBehavior {
    public int G;
    public boolean H;
    public final ChangeSizeStrategy I;
    public final ChangeSizeStrategy J;
    public final ShowStrategy K;
    public final HideStrategy L;
    public final int M;
    public int N;
    public int O;
    public final ExtendedFloatingActionButtonBehavior P;
    public boolean Q;
    public boolean R;
    public boolean S;
    public ColorStateList T;
    public int V;
    public int W;
    public static final Property h0 = new AnonymousClass6(Float.class, "width");
    public static final Property t0 = new AnonymousClass7(Float.class, "height");
    public static final Property b1 = new AnonymousClass8(Float.class, "paddingStart");
    public static final Property c1 = new AnonymousClass9(Float.class, "paddingEnd");

    /* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$2, reason: invalid class name */
    class AnonymousClass2 implements Size {
        public AnonymousClass2() {
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
        public final int a() {
            return ExtendedFloatingActionButton.this.O;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
        public final ViewGroup.LayoutParams b() {
            return new ViewGroup.LayoutParams(-2, -2);
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
        public final int c() {
            return ExtendedFloatingActionButton.this.N;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
        public final int getHeight() {
            return ExtendedFloatingActionButton.this.getMeasuredHeight();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
        public final int getWidth() {
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            return ((extendedFloatingActionButton.getMeasuredWidth() - extendedFloatingActionButton.getPaddingStart()) - extendedFloatingActionButton.getPaddingEnd()) + extendedFloatingActionButton.N + extendedFloatingActionButton.O;
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$3, reason: invalid class name */
    class AnonymousClass3 implements Size {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ AnonymousClass2 f32636a;

        public AnonymousClass3(AnonymousClass2 anonymousClass2) {
            this.f32636a = anonymousClass2;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
        public final int a() {
            return ExtendedFloatingActionButton.this.O;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
        public final ViewGroup.LayoutParams b() {
            int i2 = ExtendedFloatingActionButton.this.W;
            if (i2 == 0) {
                i2 = -2;
            }
            return new ViewGroup.LayoutParams(-1, i2);
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
        public final int c() {
            return ExtendedFloatingActionButton.this.N;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
        public final int getHeight() {
            ViewGroup.MarginLayoutParams marginLayoutParams;
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            ExtendedFloatingActionButton extendedFloatingActionButton2 = ExtendedFloatingActionButton.this;
            int i2 = extendedFloatingActionButton2.W;
            if (i2 != -1) {
                return (i2 == 0 || i2 == -2) ? extendedFloatingActionButton.getMeasuredHeight() : i2;
            }
            if (!(extendedFloatingActionButton2.getParent() instanceof View)) {
                return extendedFloatingActionButton.getMeasuredHeight();
            }
            View view = (View) extendedFloatingActionButton2.getParent();
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null || layoutParams.height != -2) {
                return (view.getHeight() - ((!(extendedFloatingActionButton2.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) || (marginLayoutParams = (ViewGroup.MarginLayoutParams) extendedFloatingActionButton2.getLayoutParams()) == null) ? 0 : marginLayoutParams.topMargin + marginLayoutParams.bottomMargin)) - (view.getPaddingBottom() + view.getPaddingTop());
            }
            return extendedFloatingActionButton.getMeasuredHeight();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
        public final int getWidth() {
            ViewGroup.MarginLayoutParams marginLayoutParams;
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            boolean z = extendedFloatingActionButton.getParent() instanceof View;
            AnonymousClass2 anonymousClass2 = this.f32636a;
            if (!z) {
                return anonymousClass2.getWidth();
            }
            View view = (View) extendedFloatingActionButton.getParent();
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null || layoutParams.width != -2) {
                return (view.getWidth() - ((!(extendedFloatingActionButton.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) || (marginLayoutParams = (ViewGroup.MarginLayoutParams) extendedFloatingActionButton.getLayoutParams()) == null) ? 0 : marginLayoutParams.leftMargin + marginLayoutParams.rightMargin)) - (view.getPaddingRight() + view.getPaddingLeft());
            }
            return anonymousClass2.getWidth();
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$6, reason: invalid class name */
    public class AnonymousClass6 extends Property<View, Float> {
        @Override // android.util.Property
        public final Float get(View view) {
            return Float.valueOf(view.getLayoutParams().width);
        }

        @Override // android.util.Property
        public final void set(View view, Float f2) {
            View view2 = view;
            view2.getLayoutParams().width = f2.intValue();
            view2.requestLayout();
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$7, reason: invalid class name */
    public class AnonymousClass7 extends Property<View, Float> {
        @Override // android.util.Property
        public final Float get(View view) {
            return Float.valueOf(view.getLayoutParams().height);
        }

        @Override // android.util.Property
        public final void set(View view, Float f2) {
            View view2 = view;
            view2.getLayoutParams().height = f2.intValue();
            view2.requestLayout();
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$8, reason: invalid class name */
    public class AnonymousClass8 extends Property<View, Float> {
        @Override // android.util.Property
        public final Float get(View view) {
            return Float.valueOf(view.getPaddingStart());
        }

        @Override // android.util.Property
        public final void set(View view, Float f2) {
            View view2 = view;
            view2.setPaddingRelative(f2.intValue(), view2.getPaddingTop(), view2.getPaddingEnd(), view2.getPaddingBottom());
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$9, reason: invalid class name */
    public class AnonymousClass9 extends Property<View, Float> {
        @Override // android.util.Property
        public final Float get(View view) {
            return Float.valueOf(view.getPaddingEnd());
        }

        @Override // android.util.Property
        public final void set(View view, Float f2) {
            View view2 = view;
            view2.setPaddingRelative(view2.getPaddingStart(), view2.getPaddingTop(), f2.intValue(), view2.getPaddingBottom());
        }
    }

    public class ChangeSizeStrategy extends BaseMotionStrategy {
        public final Size g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final boolean f32642h;

        public ChangeSizeStrategy(AnimatorTracker animatorTracker, Size size, boolean z) {
            super(ExtendedFloatingActionButton.this, animatorTracker);
            this.g = size;
            this.f32642h = z;
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public final void a() {
            this.d.f32617a = null;
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            extendedFloatingActionButton.R = false;
            extendedFloatingActionButton.setHorizontallyScrolling(false);
            ViewGroup.LayoutParams layoutParams = extendedFloatingActionButton.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            Size size = this.g;
            layoutParams.width = size.b().width;
            layoutParams.height = size.b().height;
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public final void c() {
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            boolean z = this.f32642h;
            extendedFloatingActionButton.Q = z;
            ViewGroup.LayoutParams layoutParams = extendedFloatingActionButton.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            if (!z) {
                extendedFloatingActionButton.V = layoutParams.width;
                extendedFloatingActionButton.W = layoutParams.height;
            }
            Size size = this.g;
            layoutParams.width = size.b().width;
            layoutParams.height = size.b().height;
            if (z) {
                extendedFloatingActionButton.l(extendedFloatingActionButton.T);
            } else if (extendedFloatingActionButton.getText() != null && extendedFloatingActionButton.getText() != "") {
                extendedFloatingActionButton.l(ColorStateList.valueOf(0));
            }
            extendedFloatingActionButton.setPaddingRelative(size.c(), extendedFloatingActionButton.getPaddingTop(), size.a(), extendedFloatingActionButton.getPaddingBottom());
            extendedFloatingActionButton.requestLayout();
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public final boolean d() {
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            return this.f32642h == extendedFloatingActionButton.Q || extendedFloatingActionButton.getIcon() == null || TextUtils.isEmpty(extendedFloatingActionButton.getText());
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public final int e() {
            return this.f32642h ? R.animator.mtrl_extended_fab_change_size_expand_motion_spec : R.animator.mtrl_extended_fab_change_size_collapse_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.BaseMotionStrategy, com.google.android.material.floatingactionbutton.MotionStrategy
        public final AnimatorSet f() {
            MotionSpec motionSpec = this.f32622f;
            if (motionSpec == null) {
                if (this.f32621e == null) {
                    this.f32621e = MotionSpec.b(e(), this.f32618a);
                }
                motionSpec = this.f32621e;
                motionSpec.getClass();
            }
            boolean zG = motionSpec.g("width");
            Size size = this.g;
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            if (zG) {
                PropertyValuesHolder[] propertyValuesHolderArrE = motionSpec.e("width");
                propertyValuesHolderArrE[0].setFloatValues(extendedFloatingActionButton.getWidth(), size.getWidth());
                motionSpec.h("width", propertyValuesHolderArrE);
            }
            if (motionSpec.g("height")) {
                PropertyValuesHolder[] propertyValuesHolderArrE2 = motionSpec.e("height");
                propertyValuesHolderArrE2[0].setFloatValues(extendedFloatingActionButton.getHeight(), size.getHeight());
                motionSpec.h("height", propertyValuesHolderArrE2);
            }
            if (motionSpec.g("paddingStart")) {
                PropertyValuesHolder[] propertyValuesHolderArrE3 = motionSpec.e("paddingStart");
                propertyValuesHolderArrE3[0].setFloatValues(extendedFloatingActionButton.getPaddingStart(), size.c());
                motionSpec.h("paddingStart", propertyValuesHolderArrE3);
            }
            if (motionSpec.g("paddingEnd")) {
                PropertyValuesHolder[] propertyValuesHolderArrE4 = motionSpec.e("paddingEnd");
                propertyValuesHolderArrE4[0].setFloatValues(extendedFloatingActionButton.getPaddingEnd(), size.a());
                motionSpec.h("paddingEnd", propertyValuesHolderArrE4);
            }
            if (motionSpec.g("labelOpacity")) {
                PropertyValuesHolder[] propertyValuesHolderArrE5 = motionSpec.e("labelOpacity");
                boolean z = this.f32642h;
                propertyValuesHolderArrE5[0].setFloatValues(z ? 0.0f : 1.0f, z ? 1.0f : 0.0f);
                motionSpec.h("labelOpacity", propertyValuesHolderArrE5);
            }
            return g(motionSpec);
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public final void onAnimationStart(Animator animator) {
            AnimatorTracker animatorTracker = this.d;
            Animator animator2 = animatorTracker.f32617a;
            if (animator2 != null) {
                animator2.cancel();
            }
            animatorTracker.f32617a = animator;
            boolean z = this.f32642h;
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            extendedFloatingActionButton.Q = z;
            extendedFloatingActionButton.R = true;
            extendedFloatingActionButton.setHorizontallyScrolling(true);
        }
    }

    public class HideStrategy extends BaseMotionStrategy {
        public boolean g;

        public HideStrategy(AnimatorTracker animatorTracker) {
            super(ExtendedFloatingActionButton.this, animatorTracker);
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public final void a() {
            this.d.f32617a = null;
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            extendedFloatingActionButton.G = 0;
            if (this.g) {
                return;
            }
            extendedFloatingActionButton.setVisibility(8);
        }

        @Override // com.google.android.material.floatingactionbutton.BaseMotionStrategy, com.google.android.material.floatingactionbutton.MotionStrategy
        public final void b() {
            super.b();
            this.g = true;
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public final void c() {
            ExtendedFloatingActionButton.this.setVisibility(8);
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public final boolean d() {
            Property property = ExtendedFloatingActionButton.h0;
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            int visibility = extendedFloatingActionButton.getVisibility();
            int i2 = extendedFloatingActionButton.G;
            if (visibility == 0) {
                if (i2 != 1) {
                    return false;
                }
            } else if (i2 == 2) {
                return false;
            }
            return true;
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public final int e() {
            return R.animator.mtrl_extended_fab_hide_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public final void onAnimationStart(Animator animator) {
            AnimatorTracker animatorTracker = this.d;
            Animator animator2 = animatorTracker.f32617a;
            if (animator2 != null) {
                animator2.cancel();
            }
            animatorTracker.f32617a = animator;
            this.g = false;
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            extendedFloatingActionButton.setVisibility(0);
            extendedFloatingActionButton.G = 1;
        }
    }

    public class ShowStrategy extends BaseMotionStrategy {
        public ShowStrategy(AnimatorTracker animatorTracker) {
            super(ExtendedFloatingActionButton.this, animatorTracker);
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public final void a() {
            this.d.f32617a = null;
            ExtendedFloatingActionButton.this.G = 0;
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public final void c() {
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            extendedFloatingActionButton.setVisibility(0);
            extendedFloatingActionButton.setAlpha(1.0f);
            extendedFloatingActionButton.setScaleY(1.0f);
            extendedFloatingActionButton.setScaleX(1.0f);
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public final boolean d() {
            Property property = ExtendedFloatingActionButton.h0;
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            int visibility = extendedFloatingActionButton.getVisibility();
            int i2 = extendedFloatingActionButton.G;
            if (visibility != 0) {
                if (i2 != 2) {
                    return false;
                }
            } else if (i2 == 1) {
                return false;
            }
            return true;
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public final int e() {
            return R.animator.mtrl_extended_fab_show_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        public final void onAnimationStart(Animator animator) {
            AnimatorTracker animatorTracker = this.d;
            Animator animator2 = animatorTracker.f32617a;
            if (animator2 != null) {
                animator2.cancel();
            }
            animatorTracker.f32617a = animator;
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            extendedFloatingActionButton.setVisibility(0);
            extendedFloatingActionButton.G = 2;
        }
    }

    public interface Size {
        int a();

        ViewGroup.LayoutParams b();

        int c();

        int getHeight();

        int getWidth();
    }

    public ExtendedFloatingActionButton(Context context, AttributeSet attributeSet, int i2) {
        super(MaterialThemeOverlay.b(context, attributeSet, i2, R.style.Widget_MaterialComponents_ExtendedFloatingActionButton_Icon), attributeSet, i2);
        this.G = 0;
        this.H = true;
        AnimatorTracker animatorTracker = new AnimatorTracker();
        ShowStrategy showStrategy = new ShowStrategy(animatorTracker);
        this.K = showStrategy;
        HideStrategy hideStrategy = new HideStrategy(animatorTracker);
        this.L = hideStrategy;
        this.Q = true;
        this.R = false;
        this.S = false;
        Context context2 = getContext();
        this.P = new ExtendedFloatingActionButtonBehavior(context2, attributeSet);
        TypedArray typedArrayD = ThemeEnforcement.d(context2, attributeSet, R$styleable.m, i2, R.style.Widget_MaterialComponents_ExtendedFloatingActionButton_Icon, new int[0]);
        MotionSpec motionSpecA = MotionSpec.a(context2, typedArrayD, 5);
        MotionSpec motionSpecA2 = MotionSpec.a(context2, typedArrayD, 4);
        MotionSpec motionSpecA3 = MotionSpec.a(context2, typedArrayD, 2);
        MotionSpec motionSpecA4 = MotionSpec.a(context2, typedArrayD, 6);
        this.M = typedArrayD.getDimensionPixelSize(0, -1);
        int i3 = typedArrayD.getInt(3, 1);
        this.N = getPaddingStart();
        this.O = getPaddingEnd();
        AnimatorTracker animatorTracker2 = new AnimatorTracker();
        final AnonymousClass2 anonymousClass2 = new AnonymousClass2();
        final AnonymousClass3 anonymousClass3 = new AnonymousClass3(anonymousClass2);
        Size size = new Size() { // from class: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.4
            @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
            public final int a() {
                return ExtendedFloatingActionButton.this.O;
            }

            @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
            public final ViewGroup.LayoutParams b() {
                ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
                int i4 = extendedFloatingActionButton.V;
                if (i4 == 0) {
                    i4 = -2;
                }
                int i5 = extendedFloatingActionButton.W;
                return new ViewGroup.LayoutParams(i4, i5 != 0 ? i5 : -2);
            }

            @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
            public final int c() {
                return ExtendedFloatingActionButton.this.N;
            }

            @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
            public final int getHeight() {
                int i4 = ExtendedFloatingActionButton.this.W;
                if (i4 == -1) {
                    return anonymousClass3.getHeight();
                }
                return (i4 == 0 || i4 == -2) ? ExtendedFloatingActionButton.this.getMeasuredHeight() : i4;
            }

            @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
            public final int getWidth() {
                int i4 = ExtendedFloatingActionButton.this.V;
                if (i4 == -1) {
                    return anonymousClass3.getWidth();
                }
                return (i4 == 0 || i4 == -2) ? anonymousClass2.getWidth() : i4;
            }
        };
        boolean z = true;
        Size size2 = anonymousClass2;
        if (i3 != 1) {
            Size size3 = i3 != 2 ? size : anonymousClass3;
            z = true;
            size2 = size3;
        }
        ChangeSizeStrategy changeSizeStrategy = new ChangeSizeStrategy(animatorTracker2, size2, z);
        this.J = changeSizeStrategy;
        ChangeSizeStrategy changeSizeStrategy2 = new ChangeSizeStrategy(animatorTracker2, new Size() { // from class: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.1
            @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
            public final int a() {
                return ExtendedFloatingActionButton.this.getCollapsedPadding();
            }

            @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
            public final ViewGroup.LayoutParams b() {
                ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
                return new ViewGroup.LayoutParams(extendedFloatingActionButton.getCollapsedSize(), extendedFloatingActionButton.getCollapsedSize());
            }

            @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
            public final int c() {
                return ExtendedFloatingActionButton.this.getCollapsedPadding();
            }

            @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
            public final int getHeight() {
                return ExtendedFloatingActionButton.this.getCollapsedSize();
            }

            @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
            public final int getWidth() {
                return ExtendedFloatingActionButton.this.getCollapsedSize();
            }
        }, false);
        this.I = changeSizeStrategy2;
        showStrategy.f32622f = motionSpecA;
        hideStrategy.f32622f = motionSpecA2;
        changeSizeStrategy.f32622f = motionSpecA3;
        changeSizeStrategy2.f32622f = motionSpecA4;
        typedArrayD.recycle();
        setShapeAppearanceModel(ShapeAppearanceModel.d(context2, attributeSet, i2, R.style.Widget_MaterialComponents_ExtendedFloatingActionButton_Icon, ShapeAppearanceModel.m).a());
        this.T = getTextColors();
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0043  */
    /* JADX WARN: Code duplicated, block: B:31:0x0049  */
    /* JADX WARN: Code duplicated, block: B:32:0x004b  */
    /* JADX WARN: Code duplicated, block: B:34:0x0051  */
    /* JADX WARN: Code duplicated, block: B:35:0x005a  */
    /* JADX WARN: Code duplicated, block: B:39:0x0082 A[LOOP:0: B:37:0x007c->B:39:0x0082, LOOP_END] */
    public static void k(ExtendedFloatingActionButton extendedFloatingActionButton, int i2) {
        final BaseMotionStrategy baseMotionStrategy;
        AnimatorSet animatorSetF;
        Iterator it;
        ViewGroup.LayoutParams layoutParams;
        if (i2 == 0) {
            baseMotionStrategy = extendedFloatingActionButton.K;
        } else if (i2 == 1) {
            baseMotionStrategy = extendedFloatingActionButton.L;
        } else if (i2 == 2) {
            baseMotionStrategy = extendedFloatingActionButton.I;
        } else {
            if (i2 != 3) {
                md.k(pq0.k(i2, "Unknown strategy type: "));
                return;
            }
            baseMotionStrategy = extendedFloatingActionButton.J;
        }
        if (baseMotionStrategy.d()) {
            return;
        }
        if (extendedFloatingActionButton.H) {
            if (!extendedFloatingActionButton.isLaidOut()) {
                int visibility = extendedFloatingActionButton.getVisibility();
                int i3 = extendedFloatingActionButton.G;
                if (visibility == 0 ? i3 == 1 : i3 != 2) {
                    if (extendedFloatingActionButton.S) {
                        if (!extendedFloatingActionButton.isInEditMode()) {
                            if (i2 == 2) {
                                layoutParams = extendedFloatingActionButton.getLayoutParams();
                                if (layoutParams != null) {
                                    extendedFloatingActionButton.V = layoutParams.width;
                                    extendedFloatingActionButton.W = layoutParams.height;
                                } else {
                                    extendedFloatingActionButton.V = extendedFloatingActionButton.getWidth();
                                    extendedFloatingActionButton.W = extendedFloatingActionButton.getHeight();
                                }
                            }
                            extendedFloatingActionButton.measure(0, 0);
                            animatorSetF = baseMotionStrategy.f();
                            animatorSetF.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.5
                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public final void onAnimationCancel(Animator animator) {
                                    baseMotionStrategy.b();
                                }

                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public final void onAnimationEnd(Animator animator) {
                                    baseMotionStrategy.a();
                                }

                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public final void onAnimationStart(Animator animator) {
                                    baseMotionStrategy.onAnimationStart(animator);
                                }
                            });
                            it = baseMotionStrategy.f32620c.iterator();
                            while (it.hasNext()) {
                                animatorSetF.addListener((Animator.AnimatorListener) it.next());
                            }
                            animatorSetF.start();
                            return;
                        }
                    }
                }
            } else if (!extendedFloatingActionButton.isInEditMode()) {
                if (i2 == 2) {
                    layoutParams = extendedFloatingActionButton.getLayoutParams();
                    if (layoutParams != null) {
                        extendedFloatingActionButton.V = layoutParams.width;
                        extendedFloatingActionButton.W = layoutParams.height;
                    } else {
                        extendedFloatingActionButton.V = extendedFloatingActionButton.getWidth();
                        extendedFloatingActionButton.W = extendedFloatingActionButton.getHeight();
                    }
                }
                extendedFloatingActionButton.measure(0, 0);
                animatorSetF = baseMotionStrategy.f();
                animatorSetF.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.5
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationCancel(Animator animator) {
                        baseMotionStrategy.b();
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        baseMotionStrategy.a();
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationStart(Animator animator) {
                        baseMotionStrategy.onAnimationStart(animator);
                    }
                });
                it = baseMotionStrategy.f32620c.iterator();
                while (it.hasNext()) {
                    animatorSetF.addListener((Animator.AnimatorListener) it.next());
                }
                animatorSetF.start();
                return;
            }
        }
        baseMotionStrategy.c();
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "com.google.android.material.floatingactionbutton.FloatingActionButton";
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    public CoordinatorLayout.Behavior<ExtendedFloatingActionButton> getBehavior() {
        return this.P;
    }

    public int getCollapsedPadding() {
        return (getCollapsedSize() - getIconSize()) / 2;
    }

    public int getCollapsedSize() {
        int i2 = this.M;
        if (i2 >= 0) {
            return i2;
        }
        return getIconSize() + (Math.min(getPaddingStart(), getPaddingEnd()) * 2);
    }

    public MotionSpec getExtendMotionSpec() {
        return this.J.f32622f;
    }

    public MotionSpec getHideMotionSpec() {
        return this.L.f32622f;
    }

    public MotionSpec getShowMotionSpec() {
        return this.K.f32622f;
    }

    public MotionSpec getShrinkMotionSpec() {
        return this.I.f32622f;
    }

    public final void l(ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
    }

    @Override // com.google.android.material.button.MaterialButton, android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.Q && TextUtils.isEmpty(getText()) && getIcon() != null) {
            this.Q = false;
            this.I.c();
        }
    }

    public void setAnimateShowBeforeLayout(boolean z) {
        this.S = z;
    }

    public void setAnimationEnabled(boolean z) {
        this.H = z;
    }

    public void setExtendMotionSpec(MotionSpec motionSpec) {
        this.J.f32622f = motionSpec;
    }

    public void setExtendMotionSpecResource(int i2) {
        setExtendMotionSpec(MotionSpec.b(i2, getContext()));
    }

    public void setExtended(boolean z) {
        if (this.Q == z) {
            return;
        }
        ChangeSizeStrategy changeSizeStrategy = z ? this.J : this.I;
        if (changeSizeStrategy.d()) {
            return;
        }
        changeSizeStrategy.c();
    }

    public void setHideMotionSpec(MotionSpec motionSpec) {
        this.L.f32622f = motionSpec;
    }

    public void setHideMotionSpecResource(int i2) {
        setHideMotionSpec(MotionSpec.b(i2, getContext()));
    }

    @Override // android.widget.TextView, android.view.View
    public final void setPadding(int i2, int i3, int i4, int i5) {
        super.setPadding(i2, i3, i4, i5);
        if (!this.Q || this.R) {
            return;
        }
        this.N = getPaddingStart();
        this.O = getPaddingEnd();
    }

    @Override // android.widget.TextView, android.view.View
    public final void setPaddingRelative(int i2, int i3, int i4, int i5) {
        super.setPaddingRelative(i2, i3, i4, i5);
        if (!this.Q || this.R) {
            return;
        }
        this.N = i2;
        this.O = i4;
    }

    public void setShowMotionSpec(MotionSpec motionSpec) {
        this.K.f32622f = motionSpec;
    }

    public void setShowMotionSpecResource(int i2) {
        setShowMotionSpec(MotionSpec.b(i2, getContext()));
    }

    public void setShrinkMotionSpec(MotionSpec motionSpec) {
        this.I.f32622f = motionSpec;
    }

    public void setShrinkMotionSpecResource(int i2) {
        setShrinkMotionSpec(MotionSpec.b(i2, getContext()));
    }

    @Override // android.widget.TextView
    public void setTextColor(int i2) {
        super.setTextColor(i2);
        this.T = getTextColors();
    }

    @Override // android.widget.TextView
    public void setTextColor(ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
        this.T = getTextColors();
    }

    public static class ExtendedFloatingActionButtonBehavior<T extends ExtendedFloatingActionButton> extends CoordinatorLayout.Behavior<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Rect f32644b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f32645c;
        public final boolean d;

        public ExtendedFloatingActionButtonBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.n);
            this.f32645c = typedArrayObtainStyledAttributes.getBoolean(0, false);
            this.d = typedArrayObtainStyledAttributes.getBoolean(1, true);
            typedArrayObtainStyledAttributes.recycle();
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final /* bridge */ /* synthetic */ boolean e(View view, Rect rect) {
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final void g(CoordinatorLayout.LayoutParams layoutParams) {
            if (layoutParams.f11856h == 0) {
                layoutParams.f11856h = 80;
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean h(CoordinatorLayout coordinatorLayout, View view, View view2) {
            ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) view;
            if (view2 instanceof AppBarLayout) {
                w(coordinatorLayout, (AppBarLayout) view2, extendedFloatingActionButton);
            } else {
                ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                if (layoutParams instanceof CoordinatorLayout.LayoutParams ? ((CoordinatorLayout.LayoutParams) layoutParams).f11851a instanceof BottomSheetBehavior : false) {
                    x(view2, extendedFloatingActionButton);
                }
            }
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean l(CoordinatorLayout coordinatorLayout, View view, int i2) {
            ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) view;
            List listE = coordinatorLayout.e(extendedFloatingActionButton);
            int size = listE.size();
            for (int i3 = 0; i3 < size; i3++) {
                View view2 = (View) listE.get(i3);
                if (!(view2 instanceof AppBarLayout)) {
                    ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                    if ((layoutParams instanceof CoordinatorLayout.LayoutParams ? ((CoordinatorLayout.LayoutParams) layoutParams).f11851a instanceof BottomSheetBehavior : false) && x(view2, extendedFloatingActionButton)) {
                        break;
                    }
                } else {
                    if (w(coordinatorLayout, (AppBarLayout) view2, extendedFloatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.r(i2, extendedFloatingActionButton);
            return true;
        }

        public final boolean w(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, ExtendedFloatingActionButton extendedFloatingActionButton) {
            CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) extendedFloatingActionButton.getLayoutParams();
            boolean z = this.f32645c;
            boolean z2 = this.d;
            if ((!z && !z2) || layoutParams.f11855f != appBarLayout.getId()) {
                return false;
            }
            if (this.f32644b == null) {
                this.f32644b = new Rect();
            }
            Rect rect = this.f32644b;
            DescendantOffsetUtils.a(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                ExtendedFloatingActionButton.k(extendedFloatingActionButton, z2 ? 2 : 1);
            } else {
                ExtendedFloatingActionButton.k(extendedFloatingActionButton, z2 ? 3 : 0);
            }
            return true;
        }

        public final boolean x(View view, ExtendedFloatingActionButton extendedFloatingActionButton) {
            CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) extendedFloatingActionButton.getLayoutParams();
            boolean z = this.f32645c;
            boolean z2 = this.d;
            if ((!z && !z2) || layoutParams.f11855f != view.getId()) {
                return false;
            }
            if (view.getTop() < (extendedFloatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) extendedFloatingActionButton.getLayoutParams())).topMargin) {
                ExtendedFloatingActionButton.k(extendedFloatingActionButton, z2 ? 2 : 1);
            } else {
                ExtendedFloatingActionButton.k(extendedFloatingActionButton, z2 ? 3 : 0);
            }
            return true;
        }

        public ExtendedFloatingActionButtonBehavior() {
            this.f32645c = false;
            this.d = true;
        }
    }

    public ExtendedFloatingActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.extendedFloatingActionButtonStyle);
    }

    public ExtendedFloatingActionButton(Context context) {
        this(context, null);
    }
}
