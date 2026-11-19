package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.AppCompatImageHelper;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.content.ContextCompat;
import androidx.core.view.TintableBackgroundView;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TintableImageSourceView;
import com.google.android.material.R$styleable;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.animation.TransformationCallback;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.expandable.ExpandableTransformationWidget;
import com.google.android.material.expandable.ExpandableWidgetHelper;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.internal.VisibilityAwareImageButton;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shadow.ShadowViewDelegate;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.google.android.material.stateful.ExtendableSavedState;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import com.vuitton.android.R;
import defpackage.md;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class FloatingActionButton extends VisibilityAwareImageButton implements TintableBackgroundView, TintableImageSourceView, ExpandableTransformationWidget, Shapeable, CoordinatorLayout.AttachedBehavior {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ColorStateList f32647c;
    public PorterDuff.Mode d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ColorStateList f32648e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public PorterDuff.Mode f32649f;
    public ColorStateList g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f32650h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f32651i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f32652j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f32653k;
    public boolean l;
    public final Rect m;
    public final Rect n;
    public final AppCompatImageHelper o;
    public final ExpandableWidgetHelper p;
    public FloatingActionButtonImpl q;

    /* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.FloatingActionButton$1, reason: invalid class name */
    class AnonymousClass1 implements FloatingActionButtonImpl.InternalVisibilityChangedListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ OnVisibilityChangedListener f32654a;

        public AnonymousClass1(OnVisibilityChangedListener onVisibilityChangedListener) {
            this.f32654a = onVisibilityChangedListener;
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl.InternalVisibilityChangedListener
        public final void a() {
            this.f32654a.b();
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl.InternalVisibilityChangedListener
        public final void b() {
            this.f32654a.a(FloatingActionButton.this);
        }
    }

    public static abstract class OnVisibilityChangedListener {
        public void a(FloatingActionButton floatingActionButton) {
        }

        public void b() {
        }
    }

    public class ShadowDelegateImpl implements ShadowViewDelegate {
        public ShadowDelegateImpl() {
        }

        public final void a(Drawable drawable) {
            if (drawable != null) {
                FloatingActionButton.super.setBackgroundDrawable(drawable);
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Size {
    }

    public class TransformationCallbackWrapper<T extends FloatingActionButton> implements FloatingActionButtonImpl.InternalTransformationCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TransformationCallback f32659a;

        public TransformationCallbackWrapper(TransformationCallback transformationCallback) {
            this.f32659a = transformationCallback;
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl.InternalTransformationCallback
        public final void a() {
            this.f32659a.b(FloatingActionButton.this);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl.InternalTransformationCallback
        public final void b() {
            this.f32659a.a(FloatingActionButton.this);
        }

        public final boolean equals(Object obj) {
            return (obj instanceof TransformationCallbackWrapper) && ((TransformationCallbackWrapper) obj).f32659a.equals(this.f32659a);
        }

        public final int hashCode() {
            return this.f32659a.hashCode();
        }
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet, int i2) {
        Drawable drawable;
        Drawable layerDrawable;
        super(MaterialThemeOverlay.b(context, attributeSet, i2, R.style.Widget_Design_FloatingActionButton), attributeSet, i2);
        this.m = new Rect();
        this.n = new Rect();
        Context context2 = getContext();
        TypedArray typedArrayD = ThemeEnforcement.d(context2, attributeSet, R$styleable.o, i2, R.style.Widget_Design_FloatingActionButton, new int[0]);
        this.f32647c = MaterialResources.a(context2, typedArrayD, 1);
        this.d = ViewUtils.f(typedArrayD.getInt(2, -1), null);
        this.g = MaterialResources.a(context2, typedArrayD, 12);
        this.f32650h = typedArrayD.getInt(7, -1);
        this.f32651i = typedArrayD.getDimensionPixelSize(6, 0);
        int dimensionPixelSize = typedArrayD.getDimensionPixelSize(3, 0);
        float dimension = typedArrayD.getDimension(4, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        float dimension2 = typedArrayD.getDimension(9, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        float dimension3 = typedArrayD.getDimension(11, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        this.l = typedArrayD.getBoolean(16, false);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.mtrl_fab_min_touch_target);
        setMaxImageSize(typedArrayD.getDimensionPixelSize(10, 0));
        MotionSpec motionSpecA = MotionSpec.a(context2, typedArrayD, 15);
        MotionSpec motionSpecA2 = MotionSpec.a(context2, typedArrayD, 8);
        ShapeAppearanceModel shapeAppearanceModelA = ShapeAppearanceModel.d(context2, attributeSet, i2, R.style.Widget_Design_FloatingActionButton, ShapeAppearanceModel.m).a();
        boolean z = typedArrayD.getBoolean(5, false);
        setEnabled(typedArrayD.getBoolean(0, true));
        typedArrayD.recycle();
        AppCompatImageHelper appCompatImageHelper = new AppCompatImageHelper(this);
        this.o = appCompatImageHelper;
        appCompatImageHelper.b(attributeSet, i2);
        this.p = new ExpandableWidgetHelper(this);
        getImpl().g(shapeAppearanceModelA);
        FloatingActionButtonImpl impl = getImpl();
        ColorStateList colorStateList = this.f32647c;
        PorterDuff.Mode mode = this.d;
        ColorStateList colorStateList2 = this.g;
        FloatingActionButton floatingActionButton = impl.v;
        ShapeAppearanceModel shapeAppearanceModel = impl.f32661a;
        shapeAppearanceModel.getClass();
        FloatingActionButtonImpl.AlwaysStatefulMaterialShapeDrawable alwaysStatefulMaterialShapeDrawable = new FloatingActionButtonImpl.AlwaysStatefulMaterialShapeDrawable(shapeAppearanceModel);
        impl.f32662b = alwaysStatefulMaterialShapeDrawable;
        alwaysStatefulMaterialShapeDrawable.setTintList(colorStateList);
        if (mode != null) {
            impl.f32662b.setTintMode(mode);
        }
        impl.f32662b.n(floatingActionButton.getContext());
        if (dimensionPixelSize > 0) {
            Context context3 = floatingActionButton.getContext();
            ShapeAppearanceModel shapeAppearanceModel2 = impl.f32661a;
            shapeAppearanceModel2.getClass();
            BorderDrawable borderDrawable = new BorderDrawable(shapeAppearanceModel2);
            int color = ContextCompat.getColor(context3, R.color.design_fab_stroke_top_outer_color);
            int color2 = ContextCompat.getColor(context3, R.color.design_fab_stroke_top_inner_color);
            int color3 = ContextCompat.getColor(context3, R.color.design_fab_stroke_end_inner_color);
            int color4 = ContextCompat.getColor(context3, R.color.design_fab_stroke_end_outer_color);
            borderDrawable.f32630i = color;
            borderDrawable.f32631j = color2;
            borderDrawable.f32632k = color3;
            borderDrawable.l = color4;
            float f2 = dimensionPixelSize;
            if (borderDrawable.f32629h != f2) {
                borderDrawable.f32629h = f2;
                borderDrawable.f32625b.setStrokeWidth(f2 * 1.3333f);
                borderDrawable.n = true;
                borderDrawable.invalidateSelf();
            }
            if (colorStateList != null) {
                borderDrawable.m = colorStateList.getColorForState(borderDrawable.getState(), borderDrawable.m);
            }
            borderDrawable.p = colorStateList;
            borderDrawable.n = true;
            borderDrawable.invalidateSelf();
            impl.d = borderDrawable;
            BorderDrawable borderDrawable2 = impl.d;
            borderDrawable2.getClass();
            MaterialShapeDrawable materialShapeDrawable = impl.f32662b;
            materialShapeDrawable.getClass();
            layerDrawable = new LayerDrawable(new Drawable[]{borderDrawable2, materialShapeDrawable});
            drawable = null;
        } else {
            drawable = null;
            impl.d = null;
            layerDrawable = impl.f32662b;
        }
        RippleDrawable rippleDrawable = new RippleDrawable(RippleUtils.b(colorStateList2), layerDrawable, drawable);
        impl.f32663c = rippleDrawable;
        impl.f32664e = rippleDrawable;
        getImpl().f32669k = dimensionPixelSize2;
        FloatingActionButtonImpl impl2 = getImpl();
        if (impl2.f32666h != dimension) {
            impl2.f32666h = dimension;
            impl2.e(dimension, impl2.f32667i, impl2.f32668j);
        }
        FloatingActionButtonImpl impl3 = getImpl();
        if (impl3.f32667i != dimension2) {
            impl3.f32667i = dimension2;
            impl3.e(impl3.f32666h, dimension2, impl3.f32668j);
        }
        FloatingActionButtonImpl impl4 = getImpl();
        if (impl4.f32668j != dimension3) {
            impl4.f32668j = dimension3;
            impl4.e(impl4.f32666h, impl4.f32667i, dimension3);
        }
        getImpl().n = motionSpecA;
        getImpl().o = motionSpecA2;
        getImpl().f32665f = z;
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    private FloatingActionButtonImpl getImpl() {
        if (this.q == null) {
            this.q = new FloatingActionButtonImpl(this, new ShadowDelegateImpl());
        }
        return this.q;
    }

    @Override // com.google.android.material.expandable.ExpandableWidget
    public final boolean a() {
        return this.p.f32615b;
    }

    public final void d(Animator.AnimatorListener animatorListener) {
        FloatingActionButtonImpl impl = getImpl();
        if (impl.t == null) {
            impl.t = new ArrayList();
        }
        impl.t.add(animatorListener);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
    }

    public final void e(Animator.AnimatorListener animatorListener) {
        FloatingActionButtonImpl impl = getImpl();
        if (impl.s == null) {
            impl.s = new ArrayList();
        }
        impl.s.add(animatorListener);
    }

    public final void f(TransformationCallback transformationCallback) {
        FloatingActionButtonImpl impl = getImpl();
        TransformationCallbackWrapper transformationCallbackWrapper = new TransformationCallbackWrapper(transformationCallback);
        if (impl.u == null) {
            impl.u = new ArrayList();
        }
        impl.u.add(transformationCallbackWrapper);
    }

    public final void g(Rect rect) {
        rect.set(0, 0, getMeasuredWidth(), getMeasuredHeight());
        int i2 = rect.left;
        Rect rect2 = this.m;
        rect.left = i2 + rect2.left;
        rect.top += rect2.top;
        rect.right -= rect2.right;
        rect.bottom -= rect2.bottom;
    }

    @Override // android.widget.ImageButton, android.widget.ImageView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "com.google.android.material.floatingactionbutton.FloatingActionButton";
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return this.f32647c;
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return this.d;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    public CoordinatorLayout.Behavior<FloatingActionButton> getBehavior() {
        return new Behavior();
    }

    public float getCompatElevation() {
        return getImpl().v.getElevation();
    }

    public float getCompatHoveredFocusedTranslationZ() {
        return getImpl().f32667i;
    }

    public float getCompatPressedTranslationZ() {
        return getImpl().f32668j;
    }

    public Drawable getContentBackground() {
        return getImpl().f32664e;
    }

    public int getCustomSize() {
        return this.f32651i;
    }

    public int getExpandedComponentIdHint() {
        return this.p.f32616c;
    }

    public MotionSpec getHideMotionSpec() {
        return getImpl().o;
    }

    @Deprecated
    public int getRippleColor() {
        ColorStateList colorStateList = this.g;
        if (colorStateList != null) {
            return colorStateList.getDefaultColor();
        }
        return 0;
    }

    public ColorStateList getRippleColorStateList() {
        return this.g;
    }

    public ShapeAppearanceModel getShapeAppearanceModel() {
        ShapeAppearanceModel shapeAppearanceModel = getImpl().f32661a;
        shapeAppearanceModel.getClass();
        return shapeAppearanceModel;
    }

    public MotionSpec getShowMotionSpec() {
        return getImpl().n;
    }

    public int getSize() {
        return this.f32650h;
    }

    public int getSizeDimension() {
        return h(this.f32650h);
    }

    public ColorStateList getSupportBackgroundTintList() {
        return getBackgroundTintList();
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return getBackgroundTintMode();
    }

    public ColorStateList getSupportImageTintList() {
        return this.f32648e;
    }

    public PorterDuff.Mode getSupportImageTintMode() {
        return this.f32649f;
    }

    public boolean getUseCompatPadding() {
        return this.l;
    }

    public final int h(int i2) {
        int i3 = this.f32651i;
        if (i3 != 0) {
            return i3;
        }
        Resources resources = getResources();
        if (i2 != -1) {
            return i2 != 1 ? resources.getDimensionPixelSize(R.dimen.design_fab_size_normal) : resources.getDimensionPixelSize(R.dimen.design_fab_size_mini);
        }
        return Math.max(resources.getConfiguration().screenWidthDp, resources.getConfiguration().screenHeightDp) < 470 ? h(1) : h(0);
    }

    public final void i(OnVisibilityChangedListener onVisibilityChangedListener, final boolean z) {
        final FloatingActionButtonImpl impl = getImpl();
        final AnonymousClass1 anonymousClass1 = onVisibilityChangedListener == null ? null : new AnonymousClass1(onVisibilityChangedListener);
        FloatingActionButton floatingActionButton = impl.v;
        FloatingActionButton floatingActionButton2 = impl.v;
        int visibility = floatingActionButton.getVisibility();
        int i2 = impl.r;
        if (visibility == 0) {
            if (i2 == 1) {
                return;
            }
        } else if (i2 != 2) {
            return;
        }
        Animator animator = impl.m;
        if (animator != null) {
            animator.cancel();
        }
        if (!floatingActionButton2.isLaidOut() || floatingActionButton2.isInEditMode()) {
            floatingActionButton2.b(z ? 8 : 4, z);
            if (anonymousClass1 != null) {
                anonymousClass1.b();
                return;
            }
            return;
        }
        MotionSpec motionSpec = impl.o;
        AnimatorSet animatorSetB = motionSpec != null ? impl.b(motionSpec, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM) : impl.c(Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.4f, 0.4f, FloatingActionButtonImpl.E, FloatingActionButtonImpl.F);
        animatorSetB.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.floatingactionbutton.FloatingActionButtonImpl.1

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f32670a;

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator2) {
                this.f32670a = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator2) {
                FloatingActionButtonImpl floatingActionButtonImpl = FloatingActionButtonImpl.this;
                floatingActionButtonImpl.r = 0;
                floatingActionButtonImpl.m = null;
                if (this.f32670a) {
                    return;
                }
                FloatingActionButton floatingActionButton3 = floatingActionButtonImpl.v;
                boolean z2 = z;
                floatingActionButton3.b(z2 ? 8 : 4, z2);
                InternalVisibilityChangedListener internalVisibilityChangedListener = anonymousClass1;
                if (internalVisibilityChangedListener != null) {
                    internalVisibilityChangedListener.b();
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator2) {
                FloatingActionButtonImpl floatingActionButtonImpl = FloatingActionButtonImpl.this;
                floatingActionButtonImpl.v.b(0, z);
                floatingActionButtonImpl.r = 1;
                floatingActionButtonImpl.m = animator2;
                this.f32670a = false;
            }
        });
        ArrayList arrayList = impl.t;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                animatorSetB.addListener((Animator.AnimatorListener) it.next());
            }
        }
        animatorSetB.start();
    }

    public final boolean j() {
        FloatingActionButtonImpl impl = getImpl();
        int visibility = impl.v.getVisibility();
        int i2 = impl.r;
        if (visibility == 0) {
            if (i2 != 1) {
                return false;
            }
        } else if (i2 == 2) {
            return false;
        }
        return true;
    }

    public final boolean k() {
        FloatingActionButtonImpl impl = getImpl();
        int visibility = impl.v.getVisibility();
        int i2 = impl.r;
        if (visibility != 0) {
            if (i2 != 2) {
                return false;
            }
        } else if (i2 == 1) {
            return false;
        }
        return true;
    }

    public final void l() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        ColorStateList colorStateList = this.f32648e;
        if (colorStateList == null) {
            drawable.clearColorFilter();
            return;
        }
        int colorForState = colorStateList.getColorForState(getDrawableState(), 0);
        PorterDuff.Mode mode = this.f32649f;
        if (mode == null) {
            mode = PorterDuff.Mode.SRC_IN;
        }
        drawable.mutate().setColorFilter(AppCompatDrawableManager.c(colorForState, mode));
    }

    public final void m(OnVisibilityChangedListener onVisibilityChangedListener, final boolean z) {
        final FloatingActionButtonImpl impl = getImpl();
        final AnonymousClass1 anonymousClass1 = onVisibilityChangedListener == null ? null : new AnonymousClass1(onVisibilityChangedListener);
        FloatingActionButton floatingActionButton = impl.v;
        Matrix matrix = impl.A;
        FloatingActionButton floatingActionButton2 = impl.v;
        int visibility = floatingActionButton.getVisibility();
        int i2 = impl.r;
        if (visibility != 0) {
            if (i2 == 2) {
                return;
            }
        } else if (i2 != 1) {
            return;
        }
        Animator animator = impl.m;
        if (animator != null) {
            animator.cancel();
        }
        boolean z2 = impl.n == null;
        if (!floatingActionButton2.isLaidOut() || floatingActionButton2.isInEditMode()) {
            floatingActionButton.b(0, z);
            floatingActionButton.setAlpha(1.0f);
            floatingActionButton.setScaleY(1.0f);
            floatingActionButton.setScaleX(1.0f);
            impl.p = 1.0f;
            impl.a(1.0f, matrix);
            floatingActionButton2.setImageMatrix(matrix);
            if (anonymousClass1 != null) {
                anonymousClass1.a();
                return;
            }
            return;
        }
        if (floatingActionButton.getVisibility() != 0) {
            float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            floatingActionButton.setAlpha(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            floatingActionButton.setScaleY(z2 ? 0.4f : 0.0f);
            floatingActionButton.setScaleX(z2 ? 0.4f : 0.0f);
            if (z2) {
                f2 = 0.4f;
            }
            impl.p = f2;
            impl.a(f2, matrix);
            floatingActionButton2.setImageMatrix(matrix);
        }
        MotionSpec motionSpec = impl.n;
        AnimatorSet animatorSetB = motionSpec != null ? impl.b(motionSpec, 1.0f, 1.0f, 1.0f) : impl.c(1.0f, 1.0f, 1.0f, FloatingActionButtonImpl.C, FloatingActionButtonImpl.D);
        animatorSetB.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.floatingactionbutton.FloatingActionButtonImpl.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator2) {
                FloatingActionButtonImpl floatingActionButtonImpl = FloatingActionButtonImpl.this;
                floatingActionButtonImpl.r = 0;
                floatingActionButtonImpl.m = null;
                InternalVisibilityChangedListener internalVisibilityChangedListener = anonymousClass1;
                if (internalVisibilityChangedListener != null) {
                    internalVisibilityChangedListener.a();
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator2) {
                FloatingActionButtonImpl floatingActionButtonImpl = FloatingActionButtonImpl.this;
                floatingActionButtonImpl.v.b(0, z);
                floatingActionButtonImpl.r = 2;
                floatingActionButtonImpl.m = animator2;
            }
        });
        ArrayList arrayList = impl.s;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                animatorSetB.addListener((Animator.AnimatorListener) it.next());
            }
        }
        animatorSetB.start();
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        FloatingActionButtonImpl impl = getImpl();
        MaterialShapeDrawable materialShapeDrawable = impl.f32662b;
        if (materialShapeDrawable != null) {
            MaterialShapeUtils.b(impl.v, materialShapeDrawable);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getImpl().v.getViewTreeObserver();
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onMeasure(int i2, int i3) {
        int sizeDimension = getSizeDimension();
        this.f32652j = (sizeDimension - this.f32653k) / 2;
        getImpl().h();
        int iMin = Math.min(View.resolveSize(sizeDimension, i2), View.resolveSize(sizeDimension, i3));
        Rect rect = this.m;
        setMeasuredDimension(rect.left + iMin + rect.right, iMin + rect.top + rect.bottom);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof ExtendableSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ExtendableSavedState extendableSavedState = (ExtendableSavedState) parcelable;
        super.onRestoreInstanceState(extendableSavedState.f12555b);
        Bundle bundle = (Bundle) extendableSavedState.d.get("expandableWidgetHelper");
        bundle.getClass();
        ExpandableWidgetHelper expandableWidgetHelper = this.p;
        expandableWidgetHelper.getClass();
        expandableWidgetHelper.f32615b = bundle.getBoolean("expanded", false);
        expandableWidgetHelper.f32616c = bundle.getInt("expandedComponentIdHint", 0);
        if (expandableWidgetHelper.f32615b) {
            View view = expandableWidgetHelper.f32614a;
            ViewParent parent = view.getParent();
            if (parent instanceof CoordinatorLayout) {
                ((CoordinatorLayout) parent).c(view);
            }
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (parcelableOnSaveInstanceState == null) {
            parcelableOnSaveInstanceState = new Bundle();
        }
        ExtendableSavedState extendableSavedState = new ExtendableSavedState(parcelableOnSaveInstanceState);
        ExpandableWidgetHelper expandableWidgetHelper = this.p;
        expandableWidgetHelper.getClass();
        Bundle bundle = new Bundle();
        bundle.putBoolean("expanded", expandableWidgetHelper.f32615b);
        bundle.putInt("expandedComponentIdHint", expandableWidgetHelper.f32616c);
        extendableSavedState.d.put("expandableWidgetHelper", bundle);
        return extendableSavedState;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            Rect rect = this.n;
            g(rect);
            FloatingActionButtonImpl floatingActionButtonImpl = this.q;
            int i2 = -(floatingActionButtonImpl.f32665f ? Math.max((floatingActionButtonImpl.f32669k - floatingActionButtonImpl.v.getSizeDimension()) / 2, 0) : 0);
            rect.inset(i2, i2);
            if (!rect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return false;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i2) {
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
    }

    @Override // android.view.View
    public void setBackgroundResource(int i2) {
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        if (this.f32647c != colorStateList) {
            this.f32647c = colorStateList;
            FloatingActionButtonImpl impl = getImpl();
            MaterialShapeDrawable materialShapeDrawable = impl.f32662b;
            if (materialShapeDrawable != null) {
                materialShapeDrawable.setTintList(colorStateList);
            }
            BorderDrawable borderDrawable = impl.d;
            if (borderDrawable != null) {
                if (colorStateList != null) {
                    borderDrawable.m = colorStateList.getColorForState(borderDrawable.getState(), borderDrawable.m);
                }
                borderDrawable.p = colorStateList;
                borderDrawable.n = true;
                borderDrawable.invalidateSelf();
            }
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.d != mode) {
            this.d = mode;
            MaterialShapeDrawable materialShapeDrawable = getImpl().f32662b;
            if (materialShapeDrawable != null) {
                materialShapeDrawable.setTintMode(mode);
            }
        }
    }

    public void setCompatElevation(float f2) {
        FloatingActionButtonImpl impl = getImpl();
        if (impl.f32666h != f2) {
            impl.f32666h = f2;
            impl.e(f2, impl.f32667i, impl.f32668j);
        }
    }

    public void setCompatElevationResource(int i2) {
        setCompatElevation(getResources().getDimension(i2));
    }

    public void setCompatHoveredFocusedTranslationZ(float f2) {
        FloatingActionButtonImpl impl = getImpl();
        if (impl.f32667i != f2) {
            impl.f32667i = f2;
            impl.e(impl.f32666h, f2, impl.f32668j);
        }
    }

    public void setCompatHoveredFocusedTranslationZResource(int i2) {
        setCompatHoveredFocusedTranslationZ(getResources().getDimension(i2));
    }

    public void setCompatPressedTranslationZ(float f2) {
        FloatingActionButtonImpl impl = getImpl();
        if (impl.f32668j != f2) {
            impl.f32668j = f2;
            impl.e(impl.f32666h, impl.f32667i, f2);
        }
    }

    public void setCompatPressedTranslationZResource(int i2) {
        setCompatPressedTranslationZ(getResources().getDimension(i2));
    }

    public void setCustomSize(int i2) {
        if (i2 < 0) {
            md.n("Custom size must be non-negative");
        } else if (i2 != this.f32651i) {
            this.f32651i = i2;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setElevation(float f2) {
        super.setElevation(f2);
        MaterialShapeDrawable materialShapeDrawable = getImpl().f32662b;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.q(f2);
        }
    }

    public void setEnsureMinTouchTargetSize(boolean z) {
        if (z != getImpl().f32665f) {
            getImpl().f32665f = z;
            requestLayout();
        }
    }

    public void setExpandedComponentIdHint(int i2) {
        this.p.f32616c = i2;
    }

    public void setHideMotionSpec(MotionSpec motionSpec) {
        getImpl().o = motionSpec;
    }

    public void setHideMotionSpecResource(int i2) {
        setHideMotionSpec(MotionSpec.b(i2, getContext()));
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        if (getDrawable() != drawable) {
            super.setImageDrawable(drawable);
            FloatingActionButtonImpl impl = getImpl();
            float f2 = impl.p;
            impl.p = f2;
            Matrix matrix = impl.A;
            impl.a(f2, matrix);
            impl.v.setImageMatrix(matrix);
            if (this.f32648e != null) {
                l();
            }
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i2) {
        this.o.c(i2);
        l();
    }

    public void setMaxImageSize(int i2) {
        this.f32653k = i2;
        FloatingActionButtonImpl impl = getImpl();
        if (impl.q != i2) {
            impl.q = i2;
            float f2 = impl.p;
            impl.p = f2;
            Matrix matrix = impl.A;
            impl.a(f2, matrix);
            impl.v.setImageMatrix(matrix);
        }
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (this.g != colorStateList) {
            this.g = colorStateList;
            FloatingActionButtonImpl impl = getImpl();
            ColorStateList colorStateList2 = this.g;
            RippleDrawable rippleDrawable = impl.f32663c;
            if (rippleDrawable != null) {
                rippleDrawable.setColor(RippleUtils.b(colorStateList2));
            } else if (rippleDrawable != null) {
                rippleDrawable.setTintList(RippleUtils.b(colorStateList2));
            }
        }
    }

    @Override // android.view.View
    public void setScaleX(float f2) {
        super.setScaleX(f2);
        ArrayList arrayList = getImpl().u;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((FloatingActionButtonImpl.InternalTransformationCallback) it.next()).b();
            }
        }
    }

    @Override // android.view.View
    public void setScaleY(float f2) {
        super.setScaleY(f2);
        ArrayList arrayList = getImpl().u;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((FloatingActionButtonImpl.InternalTransformationCallback) it.next()).b();
            }
        }
    }

    public void setShadowPaddingEnabled(boolean z) {
        FloatingActionButtonImpl impl = getImpl();
        impl.g = z;
        impl.h();
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(ShapeAppearanceModel shapeAppearanceModel) {
        getImpl().g(shapeAppearanceModel);
    }

    public void setShowMotionSpec(MotionSpec motionSpec) {
        getImpl().n = motionSpec;
    }

    public void setShowMotionSpecResource(int i2) {
        setShowMotionSpec(MotionSpec.b(i2, getContext()));
    }

    public void setSize(int i2) {
        this.f32651i = 0;
        if (i2 != this.f32650h) {
            this.f32650h = i2;
            requestLayout();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        setBackgroundTintList(colorStateList);
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        setBackgroundTintMode(mode);
    }

    public void setSupportImageTintList(ColorStateList colorStateList) {
        if (this.f32648e != colorStateList) {
            this.f32648e = colorStateList;
            l();
        }
    }

    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        if (this.f32649f != mode) {
            this.f32649f = mode;
            l();
        }
    }

    @Override // android.view.View
    public void setTranslationX(float f2) {
        super.setTranslationX(f2);
        getImpl().f();
    }

    @Override // android.view.View
    public void setTranslationY(float f2) {
        super.setTranslationY(f2);
        getImpl().f();
    }

    @Override // android.view.View
    public void setTranslationZ(float f2) {
        super.setTranslationZ(f2);
        getImpl().f();
    }

    public void setUseCompatPadding(boolean z) {
        if (this.l != z) {
            this.l = z;
            getImpl().h();
        }
    }

    @Override // com.google.android.material.internal.VisibilityAwareImageButton, android.widget.ImageView, android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
    }

    public static class Behavior extends BaseBehavior<FloatingActionButton> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public static class BaseBehavior<T extends FloatingActionButton> extends CoordinatorLayout.Behavior<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Rect f32656b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f32657c;

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.p);
            this.f32657c = typedArrayObtainStyledAttributes.getBoolean(0, true);
            typedArrayObtainStyledAttributes.recycle();
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean e(View view, Rect rect) {
            FloatingActionButton floatingActionButton = (FloatingActionButton) view;
            Rect rect2 = floatingActionButton.m;
            rect.set(floatingActionButton.getLeft() + rect2.left, floatingActionButton.getTop() + rect2.top, floatingActionButton.getRight() - rect2.right, floatingActionButton.getBottom() - rect2.bottom);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final void g(CoordinatorLayout.LayoutParams layoutParams) {
            if (layoutParams.f11856h == 0) {
                layoutParams.f11856h = 80;
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean h(CoordinatorLayout coordinatorLayout, View view, View view2) {
            FloatingActionButton floatingActionButton = (FloatingActionButton) view;
            if (view2 instanceof AppBarLayout) {
                w(coordinatorLayout, (AppBarLayout) view2, floatingActionButton);
            } else {
                ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                if (layoutParams instanceof CoordinatorLayout.LayoutParams ? ((CoordinatorLayout.LayoutParams) layoutParams).f11851a instanceof BottomSheetBehavior : false) {
                    x(view2, floatingActionButton);
                }
            }
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean l(CoordinatorLayout coordinatorLayout, View view, int i2) {
            FloatingActionButton floatingActionButton = (FloatingActionButton) view;
            List listE = coordinatorLayout.e(floatingActionButton);
            int size = listE.size();
            int i3 = 0;
            for (int i4 = 0; i4 < size; i4++) {
                View view2 = (View) listE.get(i4);
                if (!(view2 instanceof AppBarLayout)) {
                    ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                    if ((layoutParams instanceof CoordinatorLayout.LayoutParams ? ((CoordinatorLayout.LayoutParams) layoutParams).f11851a instanceof BottomSheetBehavior : false) && x(view2, floatingActionButton)) {
                        break;
                    }
                } else {
                    if (w(coordinatorLayout, (AppBarLayout) view2, floatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.r(i2, floatingActionButton);
            Rect rect = floatingActionButton.m;
            if (rect.centerX() > 0 && rect.centerY() > 0) {
                CoordinatorLayout.LayoutParams layoutParams2 = (CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams();
                int i5 = floatingActionButton.getRight() >= coordinatorLayout.getWidth() - ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin ? rect.right : floatingActionButton.getLeft() <= ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin ? -rect.left : 0;
                if (floatingActionButton.getBottom() >= coordinatorLayout.getHeight() - ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin) {
                    i3 = rect.bottom;
                } else if (floatingActionButton.getTop() <= ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin) {
                    i3 = -rect.top;
                }
                if (i3 != 0) {
                    WeakHashMap weakHashMap = ViewCompat.f12200a;
                    floatingActionButton.offsetTopAndBottom(i3);
                }
                if (i5 != 0) {
                    WeakHashMap weakHashMap2 = ViewCompat.f12200a;
                    floatingActionButton.offsetLeftAndRight(i5);
                }
            }
            return true;
        }

        public final boolean w(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, FloatingActionButton floatingActionButton) {
            CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams();
            if (!this.f32657c || layoutParams.f11855f != appBarLayout.getId() || floatingActionButton.getUserSetVisibility() != 0) {
                return false;
            }
            if (this.f32656b == null) {
                this.f32656b = new Rect();
            }
            Rect rect = this.f32656b;
            DescendantOffsetUtils.a(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                floatingActionButton.i(null, false);
                return true;
            }
            floatingActionButton.m(null, false);
            return true;
        }

        public final boolean x(View view, FloatingActionButton floatingActionButton) {
            CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams();
            if (!this.f32657c || layoutParams.f11855f != view.getId() || floatingActionButton.getUserSetVisibility() != 0) {
                return false;
            }
            if (view.getTop() < (floatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams())).topMargin) {
                floatingActionButton.i(null, false);
                return true;
            }
            floatingActionButton.m(null, false);
            return true;
        }

        public BaseBehavior() {
            this.f32657c = true;
        }
    }

    public void setRippleColor(int i2) {
        setRippleColor(ColorStateList.valueOf(i2));
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.floatingActionButtonStyle);
    }

    public FloatingActionButton(Context context) {
        this(context, null);
    }
}
