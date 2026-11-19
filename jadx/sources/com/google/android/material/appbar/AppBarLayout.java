package com.google.android.material.appbar;

import android.animation.AnimatorInflater;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R$styleable;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import com.vuitton.android.R;
import defpackage.b7;
import defpackage.md;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class AppBarLayout extends LinearLayout implements CoordinatorLayout.AttachedBehavior {
    public static final /* synthetic */ int B = 0;
    public Behavior A;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f32247b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f32248c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f32249e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f32250f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public WindowInsetsCompat f32251h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f32252i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f32253j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f32254k;
    public boolean l;
    public ColorStateList m;
    public int n;
    public WeakReference o;
    public ValueAnimator p;
    public ValueAnimator.AnimatorUpdateListener q;
    public final ArrayList r;
    public final LinkedHashSet s;
    public final long t;
    public final TimeInterpolator u;
    public int[] v;
    public int w;
    public Drawable x;
    public Integer y;
    public final float z;

    public interface BaseOnOffsetChangedListener<T extends AppBarLayout> {
    }

    public static abstract class ChildScrollEffect {
    }

    public static class CompressChildScrollEffect extends ChildScrollEffect {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Rect f32265a = new Rect();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Rect f32266b = new Rect();
    }

    @Deprecated
    public interface LiftOnScrollListener {
        void a();
    }

    public static abstract class LiftOnScrollProgressListener {
        public abstract void a(float f2);
    }

    public interface OnOffsetChangedListener extends BaseOnOffsetChangedListener<AppBarLayout> {
    }

    public AppBarLayout(Context context, AttributeSet attributeSet, int i2) {
        super(MaterialThemeOverlay.b(context, attributeSet, i2, R.style.Widget_Design_AppBarLayout), attributeSet, i2);
        this.f32248c = -1;
        this.d = -1;
        this.f32249e = -1;
        this.g = 0;
        this.r = new ArrayList();
        this.s = new LinkedHashSet();
        Context context2 = getContext();
        setOrientation(1);
        if (getOutlineProvider() == ViewOutlineProvider.BACKGROUND) {
            setOutlineProvider(ViewOutlineProvider.BOUNDS);
        }
        Context context3 = getContext();
        TypedArray typedArrayD = ThemeEnforcement.d(context3, attributeSet, ViewUtilsLollipop.f32282a, i2, R.style.Widget_Design_AppBarLayout, new int[0]);
        try {
            if (typedArrayD.hasValue(0)) {
                setStateListAnimator(AnimatorInflater.loadStateListAnimator(context3, typedArrayD.getResourceId(0, 0)));
            }
            typedArrayD.recycle();
            TypedArray typedArrayD2 = ThemeEnforcement.d(context2, attributeSet, R$styleable.f32218a, i2, R.style.Widget_Design_AppBarLayout, new int[0]);
            this.m = MaterialResources.a(context2, typedArrayD2, 6);
            this.t = MotionUtils.c(context2, R.attr.motionDurationMedium2, getResources().getInteger(R.integer.app_bar_elevation_anim_duration));
            this.u = MotionUtils.d(context2, R.attr.motionEasingStandardInterpolator, AnimationUtils.f32227a);
            if (typedArrayD2.hasValue(4)) {
                c(typedArrayD2.getBoolean(4, false), false, false);
            }
            if (typedArrayD2.hasValue(3)) {
                ViewUtilsLollipop.a(this, typedArrayD2.getDimensionPixelSize(3, 0));
            }
            setBackground(typedArrayD2.getDrawable(0));
            if (typedArrayD2.hasValue(2)) {
                setKeyboardNavigationCluster(typedArrayD2.getBoolean(2, false));
            }
            if (typedArrayD2.hasValue(1)) {
                setTouchscreenBlocksFocus(typedArrayD2.getBoolean(1, false));
            }
            this.z = getResources().getDimension(R.dimen.design_appbar_elevation);
            this.l = typedArrayD2.getBoolean(5, false);
            this.n = typedArrayD2.getResourceId(7, -1);
            setStatusBarForeground(typedArrayD2.getDrawable(8));
            typedArrayD2.recycle();
            ViewCompat.x(this, new OnApplyWindowInsetsListener() { // from class: com.google.android.material.appbar.AppBarLayout.1
                @Override // androidx.core.view.OnApplyWindowInsetsListener
                public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                    AppBarLayout appBarLayout = AppBarLayout.this;
                    WindowInsetsCompat windowInsetsCompat2 = appBarLayout.getFitsSystemWindows() ? windowInsetsCompat : null;
                    if (!Objects.equals(appBarLayout.f32251h, windowInsetsCompat2)) {
                        appBarLayout.f32251h = windowInsetsCompat2;
                        appBarLayout.setWillNotDraw(!(appBarLayout.x != null && appBarLayout.getTopInset() > 0));
                        appBarLayout.requestLayout();
                    }
                    return windowInsetsCompat;
                }
            });
        } catch (Throwable th) {
            typedArrayD.recycle();
            throw th;
        }
    }

    public static LayoutParams a(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            return new LayoutParams((LinearLayout.LayoutParams) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    public final void b() {
        Behavior behavior = this.A;
        BaseBehavior.SavedState savedStateK = (behavior == null || this.f32248c == -1 || this.g != 0) ? null : behavior.K(AbsSavedState.f12554c, this);
        this.f32248c = -1;
        this.d = -1;
        this.f32249e = -1;
        if (savedStateK != null) {
            Behavior behavior2 = this.A;
            if (behavior2.n != null) {
                return;
            }
            behavior2.n = savedStateK;
        }
    }

    public final void c(boolean z, boolean z2, boolean z3) {
        this.g = (z ? 1 : 2) | (z2 ? 4 : 0) | (z3 ? 8 : 0);
        requestLayout();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public final boolean d(boolean z) {
        if (this.f32252i || this.f32254k == z) {
            return false;
        }
        this.f32254k = z;
        refreshDrawableState();
        if (!(getBackground() instanceof MaterialShapeDrawable)) {
            return true;
        }
        ColorStateList colorStateList = this.m;
        float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        if (colorStateList != null) {
            float f3 = z ? 0.0f : 1.0f;
            if (z) {
                f2 = 1.0f;
            }
            f(f3, f2);
            return true;
        }
        if (!this.l) {
            return true;
        }
        float f4 = this.z;
        float f5 = z ? 0.0f : f4;
        if (z) {
            f2 = f4;
        }
        f(f5, f2);
        return true;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.x == null || getTopInset() <= 0) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(Call.Parameters.DEFAULT_CAMERA_ZOOM, -this.f32247b);
        this.x.draw(canvas);
        canvas.restoreToCount(iSave);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.x;
        if (drawable != null && drawable.isStateful() && drawable.setState(drawableState)) {
            invalidateDrawable(drawable);
        }
    }

    public final boolean e(View view) {
        int i2;
        if (this.o == null && (i2 = this.n) != -1) {
            View viewFindViewById = view != null ? view.findViewById(i2) : null;
            if (viewFindViewById == null && (getParent() instanceof ViewGroup)) {
                viewFindViewById = ((ViewGroup) getParent()).findViewById(this.n);
            }
            if (viewFindViewById != null) {
                this.o = new WeakReference(viewFindViewById);
            }
        }
        WeakReference weakReference = this.o;
        View view2 = weakReference != null ? (View) weakReference.get() : null;
        if (view2 != null) {
            view = view2;
        }
        if (view != null) {
            return view.canScrollVertically(-1) || view.getScrollY() > 0;
        }
        return false;
    }

    public final void f(float f2, float f3) {
        ValueAnimator valueAnimator = this.p;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f2, f3);
        this.p = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(this.t);
        this.p.setInterpolator(this.u);
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = this.q;
        if (animatorUpdateListener != null) {
            this.p.addUpdateListener(animatorUpdateListener);
        }
        this.p.start();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -2);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    public CoordinatorLayout.Behavior<AppBarLayout> getBehavior() {
        Behavior behavior = new Behavior();
        this.A = behavior;
        return behavior;
    }

    public int getDownNestedPreScrollRange() {
        int iMin;
        int minimumHeight;
        int i2 = this.d;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredHeight = childAt.getMeasuredHeight();
                int i4 = layoutParams.f32267a;
                if ((i4 & 5) != 5) {
                    if (i3 > 0) {
                        break;
                    }
                } else {
                    int i5 = ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                    if ((i4 & 8) != 0) {
                        minimumHeight = childAt.getMinimumHeight();
                    } else {
                        if ((i4 & 2) != 0) {
                            minimumHeight = measuredHeight - childAt.getMinimumHeight();
                        } else {
                            iMin = i5 + measuredHeight;
                        }
                        if (childCount == 0 && childAt.getFitsSystemWindows()) {
                            iMin = Math.min(iMin, measuredHeight - getTopInset());
                        }
                        i3 += iMin;
                    }
                    iMin = minimumHeight + i5;
                    if (childCount == 0) {
                        iMin = Math.min(iMin, measuredHeight - getTopInset());
                    }
                    i3 += iMin;
                }
            }
        }
        int iMax = Math.max(0, i3);
        this.d = iMax;
        return iMax;
    }

    public int getDownNestedScrollRange() {
        int i2 = this.f32249e;
        if (i2 != -1) {
            return i2;
        }
        int childCount = getChildCount();
        int minimumHeight = 0;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredHeight = ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin + childAt.getMeasuredHeight();
                int i4 = layoutParams.f32267a;
                if ((i4 & 1) == 0) {
                    break;
                }
                minimumHeight += measuredHeight;
                if ((i4 & 2) != 0) {
                    minimumHeight -= childAt.getMinimumHeight();
                    break;
                }
            }
        }
        int iMax = Math.max(0, minimumHeight);
        this.f32249e = iMax;
        return iMax;
    }

    public int getLiftOnScrollTargetViewId() {
        return this.n;
    }

    public MaterialShapeDrawable getMaterialShapeBackground() {
        Drawable background = getBackground();
        if (background instanceof MaterialShapeDrawable) {
            return (MaterialShapeDrawable) background;
        }
        return null;
    }

    public final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        int minimumHeight = getMinimumHeight();
        if (minimumHeight != 0) {
            int i2 = (minimumHeight * 2) + topInset;
            return i2 < getHeight() ? i2 : minimumHeight + topInset;
        }
        int childCount = getChildCount();
        int minimumHeight2 = childCount >= 1 ? getChildAt(childCount - 1).getMinimumHeight() : 0;
        if (minimumHeight2 == 0) {
            return getHeight() / 3;
        }
        int i3 = (minimumHeight2 * 2) + topInset;
        return i3 < getHeight() ? i3 : minimumHeight2 + topInset;
    }

    public int getPendingAction() {
        return this.g;
    }

    public Drawable getStatusBarForeground() {
        return this.x;
    }

    @Deprecated
    public float getTargetElevation() {
        return Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public final int getTopInset() {
        WindowInsetsCompat windowInsetsCompat = this.f32251h;
        if (windowInsetsCompat != null) {
            return windowInsetsCompat.j();
        }
        return 0;
    }

    public final int getTotalScrollRange() {
        int i2 = this.f32248c;
        if (i2 != -1) {
            return i2;
        }
        int childCount = getChildCount();
        int minimumHeight = 0;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredHeight = childAt.getMeasuredHeight();
                int i4 = layoutParams.f32267a;
                if ((i4 & 1) == 0) {
                    break;
                }
                int topInset = measuredHeight + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin + minimumHeight;
                if (i3 == 0 && childAt.getFitsSystemWindows()) {
                    topInset -= getTopInset();
                }
                minimumHeight = topInset;
                if ((i4 & 2) != 0) {
                    minimumHeight -= childAt.getMinimumHeight();
                    break;
                }
            }
        }
        int iMax = Math.max(0, minimumHeight);
        this.f32248c = iMax;
        return iMax;
    }

    public int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.c(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i2) {
        if (this.v == null) {
            this.v = new int[4];
        }
        int[] iArr = this.v;
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i2 + iArr.length);
        boolean z = this.f32253j;
        int i3 = R.attr.state_liftable;
        if (!z) {
            i3 = -R.attr.state_liftable;
        }
        iArr[0] = i3;
        int i4 = R.attr.state_lifted;
        if (!z || !this.f32254k) {
            i4 = -R.attr.state_lifted;
        }
        iArr[1] = i4;
        int i5 = R.attr.state_collapsible;
        if (!z) {
            i5 = -R.attr.state_collapsible;
        }
        iArr[2] = i5;
        int i6 = R.attr.state_collapsed;
        if (!z || !this.f32254k) {
            i6 = -R.attr.state_collapsed;
        }
        iArr[3] = i6;
        return View.mergeDrawableStates(iArrOnCreateDrawableState, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        WeakReference weakReference = this.o;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.o = null;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        boolean z2 = true;
        if (getFitsSystemWindows() && getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (childAt.getVisibility() != 8 && !childAt.getFitsSystemWindows()) {
                int topInset = getTopInset();
                for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                    View childAt2 = getChildAt(childCount);
                    WeakHashMap weakHashMap = ViewCompat.f12200a;
                    childAt2.offsetTopAndBottom(topInset);
                }
            }
        }
        b();
        this.f32250f = false;
        int childCount2 = getChildCount();
        for (int i6 = 0; i6 < childCount2; i6++) {
            if (((LayoutParams) getChildAt(i6).getLayoutParams()).f32269c != null) {
                this.f32250f = true;
                break;
            }
        }
        Drawable drawable = this.x;
        if (drawable != null) {
            drawable.setBounds(0, 0, getWidth(), getTopInset());
        }
        if (this.f32252i) {
            return;
        }
        if (!this.l) {
            int childCount3 = getChildCount();
            int i7 = 0;
            while (true) {
                if (i7 >= childCount3) {
                    z2 = false;
                    break;
                }
                int i8 = ((LayoutParams) getChildAt(i7).getLayoutParams()).f32267a;
                if ((i8 & 1) == 1 && (i8 & 10) != 0) {
                    break;
                } else {
                    i7++;
                }
            }
        }
        if (this.f32253j != z2) {
            this.f32253j = z2;
            refreshDrawableState();
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        int mode = View.MeasureSpec.getMode(i3);
        if (mode != 1073741824 && getFitsSystemWindows() && getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (childAt.getVisibility() != 8 && !childAt.getFitsSystemWindows()) {
                int measuredHeight = getMeasuredHeight();
                if (mode == Integer.MIN_VALUE) {
                    measuredHeight = MathUtils.b(getTopInset() + getMeasuredHeight(), 0, View.MeasureSpec.getSize(i3));
                } else if (mode == 0) {
                    measuredHeight += getTopInset();
                }
                setMeasuredDimension(getMeasuredWidth(), measuredHeight);
            }
        }
        b();
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        final MaterialShapeDrawable materialShapeDrawable;
        ColorStateList colorStateList;
        Context context = getContext();
        if (drawable instanceof MaterialShapeDrawable) {
            materialShapeDrawable = (MaterialShapeDrawable) drawable;
        } else {
            ColorStateList colorStateListD = DrawableUtils.d(drawable);
            if (colorStateListD == null) {
                materialShapeDrawable = null;
            } else {
                MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable();
                materialShapeDrawable2.r(colorStateListD);
                materialShapeDrawable = materialShapeDrawable2;
            }
        }
        if (materialShapeDrawable != null && (colorStateList = materialShapeDrawable.f32936c.d) != null) {
            this.w = colorStateList.getDefaultColor();
            final ColorStateList colorStateList2 = this.m;
            if (colorStateList2 != null) {
                final Integer numE = MaterialColors.e(R.attr.colorSurface, getContext());
                this.q = new ValueAnimator.AnimatorUpdateListener() { // from class: a7
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        Integer num;
                        AppBarLayout appBarLayout = this.f427a;
                        LinkedHashSet linkedHashSet = appBarLayout.s;
                        ArrayList<AppBarLayout.LiftOnScrollListener> arrayList = appBarLayout.r;
                        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        int iG = MaterialColors.g(appBarLayout.w, colorStateList2.getDefaultColor(), fFloatValue);
                        ColorStateList colorStateListValueOf = ColorStateList.valueOf(iG);
                        MaterialShapeDrawable materialShapeDrawable3 = materialShapeDrawable;
                        materialShapeDrawable3.r(colorStateListValueOf);
                        if (appBarLayout.x != null && (num = appBarLayout.y) != null && num.equals(numE)) {
                            appBarLayout.x.setTint(iG);
                        }
                        if (!arrayList.isEmpty()) {
                            for (AppBarLayout.LiftOnScrollListener liftOnScrollListener : arrayList) {
                                if (materialShapeDrawable3.f32936c.d != null) {
                                    liftOnScrollListener.a();
                                }
                            }
                        }
                        if (linkedHashSet.isEmpty()) {
                            return;
                        }
                        Iterator it = linkedHashSet.iterator();
                        while (it.hasNext()) {
                            ((AppBarLayout.LiftOnScrollProgressListener) it.next()).a(fFloatValue);
                        }
                    }
                };
            } else {
                materialShapeDrawable.n(context);
                this.q = new b7(this, materialShapeDrawable, 0);
            }
            drawable = materialShapeDrawable;
        }
        super.setBackground(drawable);
    }

    @Override // android.view.View
    public void setElevation(float f2) {
        super.setElevation(f2);
        Drawable background = getBackground();
        if (background instanceof MaterialShapeDrawable) {
            ((MaterialShapeDrawable) background).q(f2);
        }
    }

    public void setExpanded(boolean z) {
        c(z, isLaidOut(), true);
    }

    public void setLiftOnScroll(boolean z) {
        this.l = z;
    }

    public void setLiftOnScrollColor(ColorStateList colorStateList) {
        if (this.m != colorStateList) {
            this.m = colorStateList;
            setBackground(getBackground());
        }
    }

    public void setLiftOnScrollTargetView(View view) {
        this.n = -1;
        if (view != null) {
            this.o = new WeakReference(view);
            return;
        }
        WeakReference weakReference = this.o;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.o = null;
    }

    public void setLiftOnScrollTargetViewId(int i2) {
        this.n = i2;
        WeakReference weakReference = this.o;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.o = null;
    }

    public void setLiftableOverrideEnabled(boolean z) {
        this.f32252i = z;
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i2) {
        if (i2 == 1) {
            super.setOrientation(i2);
        } else {
            md.n("AppBarLayout is always vertical and does not support horizontal orientation");
        }
    }

    public void setPendingAction(int i2) {
        this.g = i2;
    }

    public void setStatusBarForeground(Drawable drawable) {
        Drawable drawable2 = this.x;
        if (drawable2 != drawable) {
            Integer numValueOf = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.x = drawableMutate;
            if (drawableMutate instanceof MaterialShapeDrawable) {
                numValueOf = Integer.valueOf(((MaterialShapeDrawable) drawableMutate).w);
            } else {
                ColorStateList colorStateListD = DrawableUtils.d(drawableMutate);
                if (colorStateListD != null) {
                    numValueOf = Integer.valueOf(colorStateListD.getDefaultColor());
                }
            }
            this.y = numValueOf;
            Drawable drawable3 = this.x;
            boolean z = false;
            if (drawable3 != null) {
                if (drawable3.isStateful()) {
                    this.x.setState(getDrawableState());
                }
                this.x.setLayoutDirection(getLayoutDirection());
                this.x.setVisible(getVisibility() == 0, false);
                this.x.setCallback(this);
            }
            if (this.x != null && getTopInset() > 0) {
                z = true;
            }
            setWillNotDraw(!z);
            postInvalidateOnAnimation();
        }
    }

    public void setStatusBarForegroundColor(int i2) {
        setStatusBarForeground(new ColorDrawable(i2));
    }

    public void setStatusBarForegroundResource(int i2) {
        setStatusBarForeground(AppCompatResources.a(getContext(), i2));
    }

    @Deprecated
    public void setTargetElevation(float f2) {
        ViewUtilsLollipop.a(this, f2);
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        boolean z = i2 == 0;
        Drawable drawable = this.x;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.x;
    }

    public static class BaseBehavior<T extends AppBarLayout> extends HeaderBehavior<T> {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f32256k;
        public int l;
        public ValueAnimator m;
        public SavedState n;
        public WeakReference o;

        /* JADX INFO: renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$2, reason: invalid class name */
        class AnonymousClass2 extends AccessibilityDelegateCompat {

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final /* synthetic */ AppBarLayout f32260e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public final /* synthetic */ CoordinatorLayout f32261f;
            public final /* synthetic */ BaseBehavior g;

            public AnonymousClass2(CoordinatorLayout coordinatorLayout, BaseBehavior baseBehavior, AppBarLayout appBarLayout) {
                this.g = baseBehavior;
                this.f32260e = appBarLayout;
                this.f32261f = coordinatorLayout;
            }

            @Override // androidx.core.view.AccessibilityDelegateCompat
            public final void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                this.f12143b.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat.f12267a);
                accessibilityNodeInfoCompat.i(ScrollView.class.getName());
                AppBarLayout appBarLayout = this.f32260e;
                if (appBarLayout.getTotalScrollRange() == 0) {
                    return;
                }
                CoordinatorLayout coordinatorLayout = this.f32261f;
                BaseBehavior baseBehavior = this.g;
                View viewG = BaseBehavior.G(baseBehavior, coordinatorLayout);
                if (viewG == null) {
                    return;
                }
                int childCount = appBarLayout.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    if (((LayoutParams) appBarLayout.getChildAt(i2).getLayoutParams()).f32267a != 0) {
                        if (baseBehavior.x() != (-appBarLayout.getTotalScrollRange())) {
                            accessibilityNodeInfoCompat.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f12272h);
                            accessibilityNodeInfoCompat.m(true);
                        }
                        if (baseBehavior.x() != 0) {
                            if (!viewG.canScrollVertically(-1)) {
                                accessibilityNodeInfoCompat.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f12273i);
                                accessibilityNodeInfoCompat.m(true);
                                return;
                            } else {
                                if ((-appBarLayout.getDownNestedPreScrollRange()) != 0) {
                                    accessibilityNodeInfoCompat.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f12273i);
                                    accessibilityNodeInfoCompat.m(true);
                                    return;
                                }
                                return;
                            }
                        }
                        return;
                    }
                }
            }

            @Override // androidx.core.view.AccessibilityDelegateCompat
            public final boolean g(View view, int i2, Bundle bundle) {
                AppBarLayout appBarLayout = this.f32260e;
                if (i2 == 4096) {
                    appBarLayout.setExpanded(false);
                    return true;
                }
                if (i2 != 8192) {
                    return super.g(view, i2, bundle);
                }
                BaseBehavior baseBehavior = this.g;
                if (baseBehavior.x() != 0) {
                    View viewG = BaseBehavior.G(baseBehavior, this.f32261f);
                    if (!viewG.canScrollVertically(-1)) {
                        appBarLayout.setExpanded(true);
                        return true;
                    }
                    int i3 = -appBarLayout.getDownNestedPreScrollRange();
                    if (i3 != 0) {
                        baseBehavior.J(this.f32261f, this.f32260e, viewG, i3, new int[]{0, 0});
                        return true;
                    }
                }
                return false;
            }
        }

        public BaseBehavior() {
        }

        public static View G(BaseBehavior baseBehavior, CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = coordinatorLayout.getChildAt(i2);
                if (((CoordinatorLayout.LayoutParams) childAt.getLayoutParams()).f11851a instanceof ScrollingViewBehavior) {
                    return childAt;
                }
            }
            return null;
        }

        public static View I(CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = coordinatorLayout.getChildAt(i2);
                if ((childAt instanceof NestedScrollingChild) || (childAt instanceof AbsListView) || (childAt instanceof ScrollView)) {
                    return childAt;
                }
            }
            return null;
        }

        /* JADX WARN: Code duplicated, block: B:27:0x005b  */
        public static void M(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i2, int i3, boolean z) {
            View childAt;
            boolean zE;
            int iAbs = Math.abs(i2);
            int childCount = appBarLayout.getChildCount();
            int i4 = 0;
            while (true) {
                if (i4 >= childCount) {
                    childAt = null;
                    break;
                }
                childAt = appBarLayout.getChildAt(i4);
                if (iAbs >= childAt.getTop() && iAbs <= childAt.getBottom()) {
                    break;
                } else {
                    i4++;
                }
            }
            if (childAt != null) {
                int i5 = ((LayoutParams) childAt.getLayoutParams()).f32267a;
                if ((i5 & 1) != 0) {
                    int minimumHeight = childAt.getMinimumHeight();
                    zE = true;
                    if (i3 <= 0 || (i5 & 12) == 0 ? (i5 & 2) == 0 || (-i2) < (childAt.getBottom() - minimumHeight) - appBarLayout.getTopInset() : (-i2) < (childAt.getBottom() - minimumHeight) - appBarLayout.getTopInset()) {
                        zE = false;
                    }
                } else {
                    zE = false;
                }
            } else {
                zE = false;
            }
            if (appBarLayout.l) {
                zE = appBarLayout.e(I(coordinatorLayout));
            }
            boolean zD = appBarLayout.d(zE);
            if (!z) {
                if (zD) {
                    ArrayList arrayList = (ArrayList) coordinatorLayout.f11842c.f11862b.get(appBarLayout);
                    List arrayList2 = arrayList != null ? new ArrayList(arrayList) : null;
                    if (arrayList2 == null) {
                        arrayList2 = Collections.EMPTY_LIST;
                    }
                    int size = arrayList2.size();
                    for (int i6 = 0; i6 < size; i6++) {
                        CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) ((View) arrayList2.get(i6)).getLayoutParams()).f11851a;
                        if (behavior instanceof ScrollingViewBehavior) {
                            if (((ScrollingViewBehavior) behavior).g == 0) {
                                return;
                            }
                        }
                    }
                    return;
                }
                return;
            }
            if (appBarLayout.getBackground() != null) {
                appBarLayout.getBackground().jumpToCurrentState();
            }
            if (appBarLayout.getForeground() != null) {
                appBarLayout.getForeground().jumpToCurrentState();
            }
            if (appBarLayout.getStateListAnimator() != null) {
                appBarLayout.getStateListAnimator().jumpToCurrentState();
            }
        }

        @Override // com.google.android.material.appbar.HeaderBehavior
        public final boolean A(View view) {
            WeakReference weakReference = this.o;
            if (weakReference == null) {
                return true;
            }
            View view2 = (View) weakReference.get();
            return (view2 == null || !view2.isShown() || view2.canScrollVertically(-1)) ? false : true;
        }

        @Override // com.google.android.material.appbar.HeaderBehavior
        public final int B(View view) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            return appBarLayout.getTopInset() + (-appBarLayout.getDownNestedScrollRange());
        }

        @Override // com.google.android.material.appbar.HeaderBehavior
        public final int C(View view) {
            return ((AppBarLayout) view).getTotalScrollRange();
        }

        @Override // com.google.android.material.appbar.HeaderBehavior
        public final void D(CoordinatorLayout coordinatorLayout, View view) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            L(coordinatorLayout, appBarLayout);
            if (appBarLayout.l) {
                appBarLayout.d(appBarLayout.e(I(coordinatorLayout)));
            }
        }

        @Override // com.google.android.material.appbar.HeaderBehavior
        public final int E(CoordinatorLayout coordinatorLayout, View view, int i2, int i3, int i4) {
            int top;
            int topInset;
            AppBarLayout appBarLayout = (AppBarLayout) view;
            int iX = x();
            int i5 = 0;
            if (i3 == 0 || iX < i3 || iX > i4) {
                this.f32256k = 0;
            } else {
                int iB = MathUtils.b(i2, i3, i4);
                if (iX != iB) {
                    if (!appBarLayout.f32250f) {
                        top = iB;
                        break;
                    }
                    int iAbs = Math.abs(iB);
                    int childCount = appBarLayout.getChildCount();
                    int i6 = 0;
                    while (true) {
                        if (i6 < childCount) {
                            View childAt = appBarLayout.getChildAt(i6);
                            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                            Interpolator interpolator = layoutParams.f32269c;
                            if (iAbs >= childAt.getTop() && iAbs <= childAt.getBottom()) {
                                if (interpolator != null) {
                                    int i7 = layoutParams.f32267a;
                                    if ((i7 & 1) != 0) {
                                        topInset = childAt.getHeight() + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                                        if ((i7 & 2) != 0) {
                                            topInset -= childAt.getMinimumHeight();
                                        }
                                    } else {
                                        topInset = 0;
                                    }
                                    if (childAt.getFitsSystemWindows()) {
                                        topInset -= appBarLayout.getTopInset();
                                    }
                                    if (topInset > 0) {
                                        float f2 = topInset;
                                        top = (childAt.getTop() + Math.round(interpolator.getInterpolation((iAbs - childAt.getTop()) / f2) * f2)) * Integer.signum(iB);
                                        break;
                                    }
                                }
                            } else {
                                i6++;
                            }
                        }
                        top = iB;
                        break;
                    }
                    boolean z = z(top);
                    int i8 = iX - iB;
                    this.f32256k = iB - top;
                    int i9 = 1;
                    if (z) {
                        int i10 = 0;
                        while (i10 < appBarLayout.getChildCount()) {
                            LayoutParams layoutParams2 = (LayoutParams) appBarLayout.getChildAt(i10).getLayoutParams();
                            CompressChildScrollEffect compressChildScrollEffect = layoutParams2.f32268b;
                            if (compressChildScrollEffect != null && (layoutParams2.f32267a & i9) != 0) {
                                View childAt2 = appBarLayout.getChildAt(i10);
                                float fW = w();
                                Rect rect = compressChildScrollEffect.f32266b;
                                Rect rect2 = compressChildScrollEffect.f32265a;
                                childAt2.getDrawingRect(rect2);
                                appBarLayout.offsetDescendantRectToMyCoords(childAt2, rect2);
                                rect2.offset(0, -appBarLayout.getTopInset());
                                float fAbs = rect2.top - Math.abs(fW);
                                if (fAbs <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                    float fA = 1.0f - MathUtils.a(Math.abs(fAbs / rect2.height()), Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
                                    float fHeight = (-fAbs) - ((rect2.height() * 0.3f) * (1.0f - (fA * fA)));
                                    childAt2.setTranslationY(fHeight);
                                    childAt2.getDrawingRect(rect);
                                    rect.offset(0, (int) (-fHeight));
                                    if (fHeight >= rect.height()) {
                                        childAt2.setAlpha(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                    } else {
                                        childAt2.setAlpha(1.0f);
                                    }
                                    childAt2.setClipBounds(rect);
                                } else {
                                    childAt2.setClipBounds(null);
                                    childAt2.setTranslationY(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                    childAt2.setAlpha(1.0f);
                                }
                            }
                            i10++;
                            i9 = 1;
                        }
                    }
                    if (!z && appBarLayout.f32250f) {
                        coordinatorLayout.c(appBarLayout);
                    }
                    appBarLayout.f32247b = w();
                    if (!appBarLayout.willNotDraw()) {
                        appBarLayout.postInvalidateOnAnimation();
                    }
                    M(coordinatorLayout, appBarLayout, iB, iB < iX ? -1 : 1, false);
                    i5 = i8;
                }
            }
            if (!ViewCompat.m(coordinatorLayout)) {
                ViewCompat.t(coordinatorLayout, new AnonymousClass2(coordinatorLayout, this, appBarLayout));
            }
            return i5;
        }

        public final void H(final CoordinatorLayout coordinatorLayout, final AppBarLayout appBarLayout, int i2) {
            int iAbs = Math.abs(x() - i2);
            float fAbs = Math.abs(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            int iRound = fAbs > Call.Parameters.DEFAULT_CAMERA_ZOOM ? Math.round((iAbs / fAbs) * 1000.0f) * 3 : (int) (((iAbs / appBarLayout.getHeight()) + 1.0f) * 150.0f);
            int iX = x();
            ValueAnimator valueAnimator = this.m;
            if (iX == i2) {
                if (valueAnimator == null || !valueAnimator.isRunning()) {
                    return;
                }
                this.m.cancel();
                return;
            }
            if (valueAnimator == null) {
                ValueAnimator valueAnimator2 = new ValueAnimator();
                this.m = valueAnimator2;
                valueAnimator2.setInterpolator(AnimationUtils.f32230e);
                this.m.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.appbar.AppBarLayout.BaseBehavior.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                        this.F(coordinatorLayout, appBarLayout, ((Integer) valueAnimator3.getAnimatedValue()).intValue());
                    }
                });
            } else {
                valueAnimator.cancel();
            }
            this.m.setDuration(Math.min(iRound, 600));
            this.m.setIntValues(iX, i2);
            this.m.start();
        }

        /* JADX WARN: Code duplicated, block: B:9:0x002b  */
        public final void J(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i2, int[] iArr) {
            AppBarLayout appBarLayout2;
            int i3;
            int downNestedPreScrollRange;
            if (i2 == 0) {
                appBarLayout2 = appBarLayout;
            } else {
                if (i2 < 0) {
                    i3 = -appBarLayout.getTotalScrollRange();
                    downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange() + i3;
                } else {
                    i3 = -appBarLayout.getUpNestedPreScrollRange();
                    downNestedPreScrollRange = 0;
                }
                int i4 = i3;
                int i5 = downNestedPreScrollRange;
                if (i4 != i5) {
                    appBarLayout2 = appBarLayout;
                    iArr[1] = E(coordinatorLayout, appBarLayout2, x() - i2, i4, i5);
                } else {
                    appBarLayout2 = appBarLayout;
                }
            }
            if (appBarLayout2.l) {
                appBarLayout2.d(appBarLayout2.e(view));
            }
        }

        public final SavedState K(Parcelable parcelable, AppBarLayout appBarLayout) {
            int iW = w();
            int childCount = appBarLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = appBarLayout.getChildAt(i2);
                int bottom = childAt.getBottom() + iW;
                if (childAt.getTop() + iW <= 0 && bottom >= 0) {
                    if (parcelable == null) {
                        parcelable = AbsSavedState.f12554c;
                    }
                    SavedState savedState = new SavedState(parcelable);
                    boolean z = iW == 0;
                    savedState.f32262e = z;
                    savedState.d = !z && (-iW) >= appBarLayout.getTotalScrollRange();
                    savedState.f32263f = i2;
                    savedState.f32264h = bottom == appBarLayout.getTopInset() + childAt.getMinimumHeight();
                    savedState.g = bottom / childAt.getHeight();
                    return savedState;
                }
            }
            return null;
        }

        public final void L(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            int paddingTop = appBarLayout.getPaddingTop() + appBarLayout.getTopInset();
            int iX = x() - paddingTop;
            int childCount = appBarLayout.getChildCount();
            int i2 = 0;
            while (true) {
                if (i2 >= childCount) {
                    i2 = -1;
                    break;
                }
                View childAt = appBarLayout.getChildAt(i2);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if ((layoutParams.f32267a & 32) == 32) {
                    top -= ((LinearLayout.LayoutParams) layoutParams).topMargin;
                    bottom += ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                }
                int i3 = -iX;
                if (top <= i3 && bottom >= i3) {
                    break;
                } else {
                    i2++;
                }
            }
            if (i2 >= 0) {
                View childAt2 = appBarLayout.getChildAt(i2);
                LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                int i4 = layoutParams2.f32267a;
                if ((i4 & 17) == 17) {
                    int topInset = -childAt2.getTop();
                    int minimumHeight = -childAt2.getBottom();
                    if (i2 == 0 && appBarLayout.getFitsSystemWindows() && childAt2.getFitsSystemWindows()) {
                        topInset -= appBarLayout.getTopInset();
                    }
                    if ((i4 & 2) == 2) {
                        minimumHeight += childAt2.getMinimumHeight();
                    } else if ((i4 & 5) == 5) {
                        int minimumHeight2 = childAt2.getMinimumHeight() + minimumHeight;
                        if (iX < minimumHeight2) {
                            topInset = minimumHeight2;
                        } else {
                            minimumHeight = minimumHeight2;
                        }
                    }
                    if ((i4 & 32) == 32) {
                        topInset += ((LinearLayout.LayoutParams) layoutParams2).topMargin;
                        minimumHeight -= ((LinearLayout.LayoutParams) layoutParams2).bottomMargin;
                    }
                    if (iX < (minimumHeight + topInset) / 2) {
                        topInset = minimumHeight;
                    }
                    H(coordinatorLayout, appBarLayout, MathUtils.b(topInset + paddingTop, -appBarLayout.getTotalScrollRange(), 0));
                }
            }
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean l(CoordinatorLayout coordinatorLayout, View view, int i2) {
            int iRound;
            AppBarLayout appBarLayout = (AppBarLayout) view;
            super.l(coordinatorLayout, appBarLayout, i2);
            int pendingAction = appBarLayout.getPendingAction();
            SavedState savedState = this.n;
            if (savedState == null || (pendingAction & 8) != 0) {
                if (pendingAction != 0) {
                    boolean z = (pendingAction & 4) != 0;
                    if ((pendingAction & 2) != 0) {
                        int i3 = -appBarLayout.getUpNestedPreScrollRange();
                        if (z) {
                            H(coordinatorLayout, appBarLayout, i3);
                        } else {
                            F(coordinatorLayout, appBarLayout, i3);
                        }
                    } else if ((pendingAction & 1) != 0) {
                        if (z) {
                            H(coordinatorLayout, appBarLayout, 0);
                        } else {
                            F(coordinatorLayout, appBarLayout, 0);
                        }
                    }
                }
            } else if (savedState.d) {
                F(coordinatorLayout, appBarLayout, -appBarLayout.getTotalScrollRange());
            } else if (savedState.f32262e) {
                F(coordinatorLayout, appBarLayout, 0);
            } else {
                View childAt = appBarLayout.getChildAt(savedState.f32263f);
                int i4 = -childAt.getBottom();
                if (this.n.f32264h) {
                    iRound = appBarLayout.getTopInset() + childAt.getMinimumHeight() + i4;
                } else {
                    iRound = Math.round(childAt.getHeight() * this.n.g) + i4;
                }
                F(coordinatorLayout, appBarLayout, iRound);
            }
            appBarLayout.g = 0;
            this.n = null;
            z(MathUtils.b(w(), -appBarLayout.getTotalScrollRange(), 0));
            M(coordinatorLayout, appBarLayout, w(), 0, true);
            appBarLayout.f32247b = w();
            if (!appBarLayout.willNotDraw()) {
                appBarLayout.postInvalidateOnAnimation();
            }
            if (!ViewCompat.m(coordinatorLayout)) {
                ViewCompat.t(coordinatorLayout, new AnonymousClass2(coordinatorLayout, this, appBarLayout));
            }
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean m(CoordinatorLayout coordinatorLayout, View view, int i2, int i3, int i4) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) appBarLayout.getLayoutParams())).height != -2) {
                return false;
            }
            coordinatorLayout.s(appBarLayout, i2, i3, View.MeasureSpec.makeMeasureSpec(0, 0));
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final /* bridge */ /* synthetic */ void o(CoordinatorLayout coordinatorLayout, View view, View view2, int i2, int i3, int[] iArr, int i4) {
            J(coordinatorLayout, (AppBarLayout) view, view2, i3, iArr);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final void p(CoordinatorLayout coordinatorLayout, View view, int i2, int i3, int i4, int[] iArr) {
            BaseBehavior<T> baseBehavior;
            CoordinatorLayout coordinatorLayout2;
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (i4 < 0) {
                baseBehavior = this;
                coordinatorLayout2 = coordinatorLayout;
                iArr[1] = baseBehavior.E(coordinatorLayout2, appBarLayout, x() - i4, -appBarLayout.getDownNestedScrollRange(), 0);
            } else {
                baseBehavior = this;
                coordinatorLayout2 = coordinatorLayout;
            }
            if (i4 != 0 || ViewCompat.m(coordinatorLayout2)) {
                return;
            }
            ViewCompat.t(coordinatorLayout2, new AnonymousClass2(coordinatorLayout2, baseBehavior, appBarLayout));
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final void r(View view, Parcelable parcelable) {
            if (parcelable instanceof SavedState) {
                this.n = (SavedState) parcelable;
            } else {
                this.n = null;
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final Parcelable s(View view) {
            android.view.AbsSavedState absSavedState = View.BaseSavedState.EMPTY_STATE;
            SavedState savedStateK = K(absSavedState, (AppBarLayout) view);
            return savedStateK == null ? absSavedState : savedStateK;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean t(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i2, int i3) {
            ValueAnimator valueAnimator;
            AppBarLayout appBarLayout = (AppBarLayout) view;
            boolean z = (i2 & 2) != 0 && (appBarLayout.l || appBarLayout.f32254k || (appBarLayout.getTotalScrollRange() != 0 && coordinatorLayout.getHeight() - view2.getHeight() <= appBarLayout.getHeight()));
            if (z && (valueAnimator = this.m) != null) {
                valueAnimator.cancel();
            }
            this.o = null;
            this.l = i3;
            return z;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final void u(CoordinatorLayout coordinatorLayout, View view, View view2, int i2) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (this.l == 0 || i2 == 1) {
                L(coordinatorLayout, appBarLayout);
                if (appBarLayout.l) {
                    appBarLayout.d(appBarLayout.e(view2));
                }
            }
            this.o = new WeakReference(view2);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public final int x() {
            return w() + this.f32256k;
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public static class SavedState extends AbsSavedState {
            public static final Parcelable.Creator<SavedState> CREATOR = new AnonymousClass1();
            public boolean d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public boolean f32262e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int f32263f;
            public float g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public boolean f32264h;

            public SavedState(Parcel parcel, ClassLoader classLoader) {
                super(parcel, classLoader);
                this.d = parcel.readByte() != 0;
                this.f32262e = parcel.readByte() != 0;
                this.f32263f = parcel.readInt();
                this.g = parcel.readFloat();
                this.f32264h = parcel.readByte() != 0;
            }

            @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i2) {
                super.writeToParcel(parcel, i2);
                parcel.writeByte(this.d ? (byte) 1 : (byte) 0);
                parcel.writeByte(this.f32262e ? (byte) 1 : (byte) 0);
                parcel.writeInt(this.f32263f);
                parcel.writeFloat(this.g);
                parcel.writeByte(this.f32264h ? (byte) 1 : (byte) 0);
            }

            /* JADX INFO: renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$SavedState$1, reason: invalid class name */
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
    }

    public static class Behavior extends BaseBehavior<AppBarLayout> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final LinearLayout.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -2);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ LinearLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return a(layoutParams);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return a(layoutParams);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final LinearLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public static class ScrollingViewBehavior extends HeaderScrollingViewBehavior {
        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.M);
            this.g = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        public final AppBarLayout A(List list) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = (View) list.get(i2);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        public final float B(View view) {
            int i2;
            if (view instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view;
                int totalScrollRange = appBarLayout.getTotalScrollRange();
                int downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange();
                CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) appBarLayout.getLayoutParams()).f11851a;
                int iX = behavior instanceof BaseBehavior ? ((BaseBehavior) behavior).x() : 0;
                if ((downNestedPreScrollRange == 0 || totalScrollRange + iX > downNestedPreScrollRange) && (i2 = totalScrollRange - downNestedPreScrollRange) != 0) {
                    return (iX / i2) + 1.0f;
                }
            }
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        public final int C(View view) {
            return view instanceof AppBarLayout ? ((AppBarLayout) view).getTotalScrollRange() : view.getMeasuredHeight();
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean f(View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean h(CoordinatorLayout coordinatorLayout, View view, View view2) {
            int iB;
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) view2.getLayoutParams()).f11851a;
            if (behavior instanceof BaseBehavior) {
                int bottom = (view2.getBottom() - view.getTop()) + ((BaseBehavior) behavior).f32256k + this.f32276f;
                if (this.g == 0) {
                    iB = 0;
                } else {
                    float fB = B(view2);
                    int i2 = this.g;
                    iB = MathUtils.b((int) (fB * i2), 0, i2);
                }
                int i3 = bottom - iB;
                WeakHashMap weakHashMap = ViewCompat.f12200a;
                view.offsetTopAndBottom(i3);
            }
            if (view2 instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                if (appBarLayout.l) {
                    appBarLayout.d(appBarLayout.e(view));
                }
            }
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final void i(CoordinatorLayout coordinatorLayout, View view) {
            if (view instanceof AppBarLayout) {
                ViewCompat.t(coordinatorLayout, null);
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean q(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z) {
            AppBarLayout appBarLayout;
            List listE = coordinatorLayout.e(view);
            int size = listE.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    appBarLayout = null;
                    break;
                }
                View view2 = (View) listE.get(i2);
                if (view2 instanceof AppBarLayout) {
                    appBarLayout = (AppBarLayout) view2;
                    break;
                }
                i2++;
            }
            if (appBarLayout != null) {
                Rect rect2 = new Rect(rect);
                rect2.offset(view.getLeft(), view.getTop());
                int width = coordinatorLayout.getWidth();
                int height = coordinatorLayout.getHeight();
                Rect rect3 = this.d;
                rect3.set(0, 0, width, height);
                if (!rect3.contains(rect2)) {
                    appBarLayout.c(false, !z, true);
                    return true;
                }
            }
            return false;
        }

        public ScrollingViewBehavior() {
        }
    }

    public static class LayoutParams extends LinearLayout.LayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f32267a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final CompressChildScrollEffect f32268b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Interpolator f32269c;

        @Retention(RetentionPolicy.SOURCE)
        public @interface ScrollEffect {
        }

        @Retention(RetentionPolicy.SOURCE)
        public @interface ScrollFlags {
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f32267a = 1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.f32219b);
            this.f32267a = typedArrayObtainStyledAttributes.getInt(1, 0);
            this.f32268b = typedArrayObtainStyledAttributes.getInt(0, 0) != 1 ? null : new CompressChildScrollEffect();
            if (typedArrayObtainStyledAttributes.hasValue(2)) {
                this.f32269c = android.view.animation.AnimationUtils.loadInterpolator(context, typedArrayObtainStyledAttributes.getResourceId(2, 0));
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
            this.f32267a = 1;
        }

        public LayoutParams(int i2, int i3, float f2) {
            super(i2, i3, f2);
            this.f32267a = 1;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f32267a = 1;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f32267a = 1;
        }

        public LayoutParams(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.f32267a = 1;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((LinearLayout.LayoutParams) layoutParams);
            this.f32267a = 1;
            this.f32267a = layoutParams.f32267a;
            this.f32268b = layoutParams.f32268b;
            this.f32269c = layoutParams.f32269c;
        }
    }

    public AppBarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.appBarLayoutStyle);
    }

    public AppBarLayout(Context context) {
        this(context, null);
    }
}
