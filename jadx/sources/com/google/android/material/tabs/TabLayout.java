package com.google.android.material.tabs;

import android.R;
import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.StateSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.content.ContextCompat;
import androidx.core.util.Pools$SimplePool;
import androidx.core.util.Pools$SynchronizedPool;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.dynatrace.android.callback.Callback;
import com.google.android.material.R$styleable;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.badge.BadgeState;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import defpackage.cj;
import defpackage.md;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
@ViewPager.DecorView
public class TabLayout extends HorizontalScrollView {
    public static final Pools$SynchronizedPool b1 = new Pools$SynchronizedPool(16);
    public final int A;
    public int B;
    public final int C;
    public int D;
    public int E;
    public boolean F;
    public boolean G;
    public int H;
    public int I;
    public boolean J;
    public TabIndicatorInterpolator K;
    public final TimeInterpolator L;
    public BaseOnTabSelectedListener M;
    public final ArrayList N;
    public ViewPagerOnTabSelectedListener O;
    public ValueAnimator P;
    public ViewPager Q;
    public PagerAdapter R;
    public DataSetObserver S;
    public TabLayoutOnPageChangeListener T;
    public AdapterChangeListener V;
    public boolean W;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f33110b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f33111c;
    public Tab d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SlidingTabIndicator f33112e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f33113f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f33114h;
    public int h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f33115i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f33116j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f33117k;
    public final int l;
    public ColorStateList m;
    public ColorStateList n;
    public ColorStateList o;
    public Drawable p;
    public int q;
    public final PorterDuff.Mode r;
    public final float s;
    public final float t;
    public final Pools$SimplePool t0;
    public final float u;
    public final int v;
    public int w;
    public final int x;
    public final int y;
    public final int z;

    public class AdapterChangeListener implements ViewPager.OnAdapterChangeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f33119a;

        public AdapterChangeListener() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnAdapterChangeListener
        public final void a(ViewPager viewPager, PagerAdapter pagerAdapter) {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.Q == viewPager) {
                tabLayout.l(pagerAdapter, this.f33119a);
            }
        }
    }

    @Deprecated
    public interface BaseOnTabSelectedListener<T extends Tab> {
        void a(Tab tab);

        void b(Tab tab);

        void c(Tab tab);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface LabelVisibility {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Mode {
    }

    public interface OnTabSelectedListener extends BaseOnTabSelectedListener<Tab> {
    }

    public class PagerAdapterObserver extends DataSetObserver {
        public PagerAdapterObserver() {
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            TabLayout.this.j();
        }

        @Override // android.database.DataSetObserver
        public final void onInvalidated() {
            TabLayout.this.j();
        }
    }

    public class SlidingTabIndicator extends LinearLayout {
        public static final /* synthetic */ int d = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ValueAnimator f33122b;

        public SlidingTabIndicator(Context context) {
            super(context);
            setWillNotDraw(false);
        }

        public final void a(int i2) {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.h0 == 0 || (tabLayout.getTabSelectedIndicator().getBounds().left == -1 && tabLayout.getTabSelectedIndicator().getBounds().right == -1)) {
                View childAt = getChildAt(i2);
                TabIndicatorInterpolator tabIndicatorInterpolator = tabLayout.K;
                Drawable drawable = tabLayout.p;
                tabIndicatorInterpolator.getClass();
                RectF rectFA = TabIndicatorInterpolator.a(tabLayout, childAt);
                drawable.setBounds((int) rectFA.left, drawable.getBounds().top, (int) rectFA.right, drawable.getBounds().bottom);
                tabLayout.f33110b = i2;
            }
        }

        public final void b(int i2) {
            TabLayout tabLayout = TabLayout.this;
            Rect bounds = tabLayout.p.getBounds();
            tabLayout.p.setBounds(bounds.left, 0, bounds.right, i2);
            requestLayout();
        }

        public final void c(View view, View view2, float f2) {
            TabLayout tabLayout = TabLayout.this;
            if (view == null || view.getWidth() <= 0) {
                Drawable drawable = tabLayout.p;
                drawable.setBounds(-1, drawable.getBounds().top, -1, tabLayout.p.getBounds().bottom);
            } else {
                tabLayout.K.b(tabLayout, view, view2, f2, tabLayout.p);
            }
            postInvalidateOnAnimation();
        }

        public final void d(int i2, int i3, boolean z) {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.f33110b == i2) {
                return;
            }
            final View childAt = getChildAt(tabLayout.getSelectedTabPosition());
            final View childAt2 = getChildAt(i2);
            if (childAt2 == null) {
                a(tabLayout.getSelectedTabPosition());
                return;
            }
            tabLayout.f33110b = i2;
            ValueAnimator.AnimatorUpdateListener animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.tabs.TabLayout.SlidingTabIndicator.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    float animatedFraction = valueAnimator.getAnimatedFraction();
                    int i4 = SlidingTabIndicator.d;
                    SlidingTabIndicator.this.c(childAt, childAt2, animatedFraction);
                }
            };
            if (!z) {
                this.f33122b.removeAllUpdateListeners();
                this.f33122b.addUpdateListener(animatorUpdateListener);
                return;
            }
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f33122b = valueAnimator;
            valueAnimator.setInterpolator(tabLayout.L);
            valueAnimator.setDuration(i3);
            valueAnimator.setFloatValues(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
            valueAnimator.addUpdateListener(animatorUpdateListener);
            valueAnimator.start();
        }

        @Override // android.view.View
        public final void draw(Canvas canvas) {
            int height;
            TabLayout tabLayout = TabLayout.this;
            int iHeight = tabLayout.p.getBounds().height();
            if (iHeight < 0) {
                iHeight = tabLayout.p.getIntrinsicHeight();
            }
            int i2 = tabLayout.D;
            if (i2 == 0) {
                height = getHeight() - iHeight;
                iHeight = getHeight();
            } else if (i2 != 1) {
                height = 0;
                if (i2 != 2) {
                    iHeight = i2 != 3 ? 0 : getHeight();
                }
            } else {
                height = (getHeight() - iHeight) / 2;
                iHeight = (getHeight() + iHeight) / 2;
            }
            if (tabLayout.p.getBounds().width() > 0) {
                Rect bounds = tabLayout.p.getBounds();
                tabLayout.p.setBounds(bounds.left, height, bounds.right, iHeight);
                tabLayout.p.draw(canvas);
            }
            super.draw(canvas);
        }

        @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
        public final void onLayout(boolean z, int i2, int i3, int i4, int i5) {
            super.onLayout(z, i2, i3, i4, i5);
            ValueAnimator valueAnimator = this.f33122b;
            TabLayout tabLayout = TabLayout.this;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                d(tabLayout.getSelectedTabPosition(), -1, false);
                return;
            }
            if (tabLayout.f33110b == -1) {
                tabLayout.f33110b = tabLayout.getSelectedTabPosition();
            }
            a(tabLayout.f33110b);
        }

        @Override // android.widget.LinearLayout, android.view.View
        public final void onMeasure(int i2, int i3) {
            super.onMeasure(i2, i3);
            if (View.MeasureSpec.getMode(i2) != 1073741824) {
                return;
            }
            TabLayout tabLayout = TabLayout.this;
            boolean z = true;
            if (tabLayout.B == 1 || tabLayout.E == 2) {
                int childCount = getChildCount();
                int iMax = 0;
                for (int i4 = 0; i4 < childCount; i4++) {
                    View childAt = getChildAt(i4);
                    if (childAt.getVisibility() == 0) {
                        iMax = Math.max(iMax, childAt.getMeasuredWidth());
                    }
                }
                if (iMax <= 0) {
                    return;
                }
                if (iMax * childCount <= getMeasuredWidth() - (((int) ViewUtils.d(16, getContext())) * 2)) {
                    boolean z2 = false;
                    for (int i5 = 0; i5 < childCount; i5++) {
                        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i5).getLayoutParams();
                        if (layoutParams.width != iMax || layoutParams.weight != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            layoutParams.width = iMax;
                            layoutParams.weight = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                            z2 = true;
                        }
                    }
                    z = z2;
                } else {
                    tabLayout.B = 0;
                    tabLayout.o(false);
                }
                if (z) {
                    super.onMeasure(i2, i3);
                }
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TabGravity {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TabIndicatorAnimationMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TabIndicatorGravity {
    }

    public static class TabLayoutOnPageChangeListener implements ViewPager.OnPageChangeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final WeakReference f33127a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f33128b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f33129c;

        public TabLayoutOnPageChangeListener(TabLayout tabLayout) {
            this.f33127a = new WeakReference(tabLayout);
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public final void a(float f2, int i2) {
            TabLayout tabLayout = (TabLayout) this.f33127a.get();
            if (tabLayout != null) {
                int i3 = this.f33129c;
                boolean z = true;
                if (i3 == 2 && this.f33128b != 1) {
                    z = false;
                }
                if (i3 == 2 && this.f33128b == 0) {
                    z = false;
                }
                tabLayout.m(i2, f2, z, z, false);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public final void b(int i2) {
            this.f33128b = this.f33129c;
            this.f33129c = i2;
            TabLayout tabLayout = (TabLayout) this.f33127a.get();
            if (tabLayout != null) {
                tabLayout.h0 = this.f33129c;
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public final void c(int i2) {
            Callback.y();
            try {
                TabLayout tabLayout = (TabLayout) this.f33127a.get();
                if (tabLayout != null && tabLayout.getSelectedTabPosition() != i2 && i2 < tabLayout.getTabCount()) {
                    int i3 = this.f33129c;
                    tabLayout.k(tabLayout.h(i2), i3 == 0 || (i3 == 2 && this.f33128b == 0));
                }
            } finally {
                Callback.z();
            }
        }
    }

    public final class TabView extends LinearLayout {
        public static final /* synthetic */ int m = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Tab f33130b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f33131c;
        public ImageView d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public View f33132e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public BadgeDrawable f33133f;
        public View g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public TextView f33134h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public ImageView f33135i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public Drawable f33136j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f33137k;

        public TabView(Context context) {
            super(context);
            this.f33137k = 2;
            g(context);
            setPaddingRelative(TabLayout.this.f33113f, TabLayout.this.g, TabLayout.this.f33114h, TabLayout.this.f33115i);
            setGravity(17);
            setOrientation(!TabLayout.this.F ? 1 : 0);
            setClickable(true);
            ViewCompat.y(this, new PointerIconCompat(PointerIcon.getSystemIcon(getContext(), 1002)));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public BadgeDrawable getBadge() {
            return this.f33133f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public BadgeDrawable getOrCreateBadge() {
            if (this.f33133f == null) {
                this.f33133f = new BadgeDrawable(getContext());
            }
            e();
            BadgeDrawable badgeDrawable = this.f33133f;
            if (badgeDrawable != null) {
                return badgeDrawable;
            }
            md.k("Unable to create badge");
            return null;
        }

        public final void c(View view) {
            if (this.f33133f == null || view == null) {
                return;
            }
            setClipChildren(false);
            setClipToPadding(false);
            ViewGroup viewGroup = (ViewGroup) getParent();
            if (viewGroup != null) {
                viewGroup.setClipChildren(false);
                viewGroup.setClipToPadding(false);
            }
            BadgeDrawable badgeDrawable = this.f33133f;
            Rect rect = new Rect();
            view.getDrawingRect(rect);
            badgeDrawable.setBounds(rect);
            badgeDrawable.i(view, null);
            if (badgeDrawable.d() != null) {
                badgeDrawable.d().setForeground(badgeDrawable);
            } else {
                view.getOverlay().add(badgeDrawable);
            }
            this.f33132e = view;
        }

        public final void d() {
            if (this.f33133f != null) {
                setClipChildren(true);
                setClipToPadding(true);
                ViewGroup viewGroup = (ViewGroup) getParent();
                if (viewGroup != null) {
                    viewGroup.setClipChildren(true);
                    viewGroup.setClipToPadding(true);
                }
                View view = this.f33132e;
                if (view != null) {
                    BadgeDrawable badgeDrawable = this.f33133f;
                    if (badgeDrawable != null) {
                        if (badgeDrawable.d() != null) {
                            badgeDrawable.d().setForeground(null);
                        } else {
                            view.getOverlay().remove(badgeDrawable);
                        }
                    }
                    this.f33132e = null;
                }
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public final void drawableStateChanged() {
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            Drawable drawable = this.f33136j;
            if ((drawable == null || !drawable.isStateful()) ? false : this.f33136j.setState(drawableState)) {
                invalidate();
                TabLayout.this.invalidate();
            }
        }

        public final void e() {
            Tab tab;
            Tab tab2;
            if (this.f33133f != null) {
                if (this.g != null) {
                    d();
                    return;
                }
                if (this.d != null && (tab2 = this.f33130b) != null && tab2.getIcon() != null) {
                    View view = this.f33132e;
                    ImageView imageView = this.d;
                    if (view == imageView) {
                        f(imageView);
                        return;
                    } else {
                        d();
                        c(this.d);
                        return;
                    }
                }
                if (this.f33131c == null || (tab = this.f33130b) == null || tab.getTabLabelVisibility() != 1) {
                    d();
                    return;
                }
                View view2 = this.f33132e;
                TextView textView = this.f33131c;
                if (view2 == textView) {
                    f(textView);
                } else {
                    d();
                    c(this.f33131c);
                }
            }
        }

        public final void f(View view) {
            BadgeDrawable badgeDrawable = this.f33133f;
            if (badgeDrawable == null || view != this.f33132e) {
                return;
            }
            Rect rect = new Rect();
            view.getDrawingRect(rect);
            badgeDrawable.setBounds(rect);
            badgeDrawable.i(view, null);
        }

        public final void g(Context context) {
            GradientDrawable gradientDrawable;
            TabLayout tabLayout = TabLayout.this;
            int i2 = tabLayout.v;
            if (i2 != 0) {
                Drawable drawableA = AppCompatResources.a(context, i2);
                this.f33136j = drawableA;
                if (drawableA != null && drawableA.isStateful()) {
                    this.f33136j.setState(getDrawableState());
                }
            } else {
                this.f33136j = null;
            }
            GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setColor(0);
            Drawable rippleDrawable = gradientDrawable2;
            if (tabLayout.o != null) {
                GradientDrawable gradientDrawable3 = new GradientDrawable();
                gradientDrawable3.setCornerRadius(1.0E-5f);
                gradientDrawable3.setColor(-1);
                ColorStateList colorStateList = tabLayout.o;
                int iA = RippleUtils.a(colorStateList, RippleUtils.f32884c);
                int[] iArr = RippleUtils.f32883b;
                ColorStateList colorStateList2 = new ColorStateList(new int[][]{RippleUtils.d, iArr, StateSet.NOTHING}, new int[]{iA, RippleUtils.a(colorStateList, iArr), RippleUtils.a(colorStateList, RippleUtils.f32882a)});
                boolean z = tabLayout.J;
                if (z) {
                    gradientDrawable = gradientDrawable2;
                    gradientDrawable = null;
                }
                rippleDrawable = new RippleDrawable(colorStateList2, gradientDrawable, z ? null : gradientDrawable3);
            }
            setBackground(rippleDrawable);
            tabLayout.invalidate();
        }

        public int getContentHeight() {
            View[] viewArr = {this.f33131c, this.d, this.g};
            int iMax = 0;
            int iMin = 0;
            boolean z = false;
            for (int i2 = 0; i2 < 3; i2++) {
                View view = viewArr[i2];
                if (view != null && view.getVisibility() == 0) {
                    iMin = z ? Math.min(iMin, view.getTop()) : view.getTop();
                    iMax = z ? Math.max(iMax, view.getBottom()) : view.getBottom();
                    z = true;
                }
            }
            return iMax - iMin;
        }

        public int getContentWidth() {
            View[] viewArr = {this.f33131c, this.d, this.g};
            int iMax = 0;
            int iMin = 0;
            boolean z = false;
            for (int i2 = 0; i2 < 3; i2++) {
                View view = viewArr[i2];
                if (view != null && view.getVisibility() == 0) {
                    iMin = z ? Math.min(iMin, view.getLeft()) : view.getLeft();
                    iMax = z ? Math.max(iMax, view.getRight()) : view.getRight();
                    z = true;
                }
            }
            return iMax - iMin;
        }

        public Tab getTab() {
            return this.f33130b;
        }

        public final void h() {
            int i2;
            ViewParent parent;
            Tab tab = this.f33130b;
            View customView = tab != null ? tab.getCustomView() : null;
            if (customView != null) {
                ViewParent parent2 = customView.getParent();
                if (parent2 != this) {
                    if (parent2 != null) {
                        ((ViewGroup) parent2).removeView(customView);
                    }
                    View view = this.g;
                    if (view != null && (parent = view.getParent()) != null) {
                        ((ViewGroup) parent).removeView(this.g);
                    }
                    addView(customView);
                }
                this.g = customView;
                TextView textView = this.f33131c;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.d;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.d.setImageDrawable(null);
                }
                TextView textView2 = (TextView) customView.findViewById(R.id.text1);
                this.f33134h = textView2;
                if (textView2 != null) {
                    this.f33137k = textView2.getMaxLines();
                }
                this.f33135i = (ImageView) customView.findViewById(R.id.icon);
            } else {
                View view2 = this.g;
                if (view2 != null) {
                    removeView(view2);
                    this.g = null;
                }
                this.f33134h = null;
                this.f33135i = null;
            }
            if (this.g == null) {
                if (this.d == null) {
                    ImageView imageView2 = (ImageView) LayoutInflater.from(getContext()).inflate(com.vuitton.android.R.layout.design_layout_tab_icon, (ViewGroup) this, false);
                    this.d = imageView2;
                    addView(imageView2, 0);
                }
                if (this.f33131c == null) {
                    TextView textView3 = (TextView) LayoutInflater.from(getContext()).inflate(com.vuitton.android.R.layout.design_layout_tab_text, (ViewGroup) this, false);
                    this.f33131c = textView3;
                    addView(textView3);
                    this.f33137k = this.f33131c.getMaxLines();
                }
                TextView textView4 = this.f33131c;
                TabLayout tabLayout = TabLayout.this;
                textView4.setTextAppearance(tabLayout.f33116j);
                if (!isSelected() || (i2 = tabLayout.l) == -1) {
                    this.f33131c.setTextAppearance(tabLayout.f33117k);
                } else {
                    this.f33131c.setTextAppearance(i2);
                }
                ColorStateList colorStateList = tabLayout.m;
                if (colorStateList != null) {
                    this.f33131c.setTextColor(colorStateList);
                }
                i(this.f33131c, this.d, true);
                e();
                final ImageView imageView3 = this.d;
                if (imageView3 != null) {
                    imageView3.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.google.android.material.tabs.TabLayout.TabView.1
                        @Override // android.view.View.OnLayoutChangeListener
                        public final void onLayoutChange(View view3, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
                            View view4 = imageView3;
                            if (view4.getVisibility() == 0) {
                                int i11 = TabView.m;
                                TabView.this.f(view4);
                            }
                        }
                    });
                }
                final TextView textView5 = this.f33131c;
                if (textView5 != null) {
                    textView5.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.google.android.material.tabs.TabLayout.TabView.1
                        @Override // android.view.View.OnLayoutChangeListener
                        public final void onLayoutChange(View view3, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
                            View view4 = textView5;
                            if (view4.getVisibility() == 0) {
                                int i11 = TabView.m;
                                TabView.this.f(view4);
                            }
                        }
                    });
                }
            } else {
                TextView textView6 = this.f33134h;
                if (textView6 != null || this.f33135i != null) {
                    i(textView6, this.f33135i, false);
                }
            }
            if (tab == null || TextUtils.isEmpty(tab.contentDesc)) {
                return;
            }
            setContentDescription(tab.contentDesc);
        }

        /* JADX WARN: Code duplicated, block: B:28:0x005a  */
        public final void i(TextView textView, ImageView imageView, boolean z) {
            boolean z2;
            Tab tab = this.f33130b;
            Drawable drawableMutate = (tab == null || tab.getIcon() == null) ? null : this.f33130b.getIcon().mutate();
            TabLayout tabLayout = TabLayout.this;
            if (drawableMutate != null) {
                drawableMutate.setTintList(tabLayout.n);
                PorterDuff.Mode mode = tabLayout.r;
                if (mode != null) {
                    drawableMutate.setTintMode(mode);
                }
            }
            Tab tab2 = this.f33130b;
            CharSequence text = tab2 != null ? tab2.getText() : null;
            if (imageView != null) {
                if (drawableMutate != null) {
                    imageView.setImageDrawable(drawableMutate);
                    imageView.setVisibility(0);
                    setVisibility(0);
                } else {
                    imageView.setVisibility(8);
                    imageView.setImageDrawable(null);
                }
            }
            boolean zIsEmpty = TextUtils.isEmpty(text);
            if (textView != null) {
                if (!zIsEmpty) {
                    z2 = this.f33130b.labelVisibilityMode == 1;
                }
                textView.setText(!zIsEmpty ? text : null);
                textView.setVisibility(z2 ? 0 : 8);
                if (!zIsEmpty) {
                    setVisibility(0);
                }
            } else {
                z2 = false;
            }
            if (z && imageView != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
                int iD = (z2 && imageView.getVisibility() == 0) ? (int) ViewUtils.d(8, getContext()) : 0;
                if (tabLayout.F) {
                    if (iD != marginLayoutParams.getMarginEnd()) {
                        marginLayoutParams.setMarginEnd(iD);
                        marginLayoutParams.bottomMargin = 0;
                        imageView.setLayoutParams(marginLayoutParams);
                        imageView.requestLayout();
                    }
                } else if (iD != marginLayoutParams.bottomMargin) {
                    marginLayoutParams.bottomMargin = iD;
                    marginLayoutParams.setMarginEnd(0);
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                }
            }
            Tab tab3 = this.f33130b;
            CharSequence charSequence = tab3 != null ? tab3.contentDesc : null;
            if (zIsEmpty) {
                text = charSequence;
            }
            TooltipCompat.a(this, text);
        }

        /* JADX WARN: Code duplicated, block: B:31:0x006a  */
        @Override // android.view.View
        public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            Context context;
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = new AccessibilityNodeInfoCompat(accessibilityNodeInfo);
            BadgeDrawable badgeDrawable = this.f33133f;
            if (badgeDrawable != null && badgeDrawable.isVisible()) {
                BadgeDrawable badgeDrawable2 = this.f33133f;
                BadgeState badgeState = badgeDrawable2.f32286f;
                CharSequence quantityString = null;
                if (badgeDrawable2.isVisible()) {
                    BadgeState.State state = badgeState.f32292b;
                    if (state.f32307k != null) {
                        quantityString = state.p;
                        if (quantityString == null) {
                            quantityString = badgeDrawable2.f32286f.f32292b.f32307k;
                        }
                    } else if (!badgeDrawable2.g()) {
                        quantityString = state.q;
                    } else if (state.r != 0 && (context = (Context) badgeDrawable2.f32283b.get()) != null) {
                        if (badgeDrawable2.f32288i != -2) {
                            int iE = badgeDrawable2.e();
                            int i2 = badgeDrawable2.f32288i;
                            if (iE <= i2) {
                                quantityString = context.getResources().getQuantityString(state.r, badgeDrawable2.e(), Integer.valueOf(badgeDrawable2.e()));
                            } else {
                                quantityString = context.getString(state.s, Integer.valueOf(i2));
                            }
                        } else {
                            quantityString = context.getResources().getQuantityString(state.r, badgeDrawable2.e(), Integer.valueOf(badgeDrawable2.e()));
                        }
                    }
                }
                accessibilityNodeInfoCompat.l(quantityString);
            }
            accessibilityNodeInfoCompat.k(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.a(0, 1, isSelected(), this.f33130b.getPosition(), 1));
            if (isSelected()) {
                accessibilityNodeInfo.setClickable(false);
                accessibilityNodeInfo.removeAction((AccessibilityNodeInfo.AccessibilityAction) AccessibilityNodeInfoCompat.AccessibilityActionCompat.f12270e.f12276a);
            }
            accessibilityNodeInfo.getExtras().putCharSequence("AccessibilityNodeInfo.roleDescription", getResources().getString(com.vuitton.android.R.string.item_view_role_description));
        }

        @Override // android.widget.LinearLayout, android.view.View
        public final void onMeasure(int i2, int i3) {
            int size = View.MeasureSpec.getSize(i2);
            int mode = View.MeasureSpec.getMode(i2);
            TabLayout tabLayout = TabLayout.this;
            int tabMaxWidth = tabLayout.getTabMaxWidth();
            if (tabMaxWidth > 0 && (mode == 0 || size > tabMaxWidth)) {
                i2 = View.MeasureSpec.makeMeasureSpec(tabLayout.w, Integer.MIN_VALUE);
            }
            super.onMeasure(i2, i3);
            if (this.f33131c != null) {
                float f2 = tabLayout.s;
                if (isSelected() && tabLayout.l != -1) {
                    f2 = tabLayout.t;
                }
                int i4 = this.f33137k;
                ImageView imageView = this.d;
                if (imageView == null || imageView.getVisibility() != 0) {
                    TextView textView = this.f33131c;
                    if (textView != null && textView.getLineCount() > 1) {
                        f2 = tabLayout.u;
                    }
                } else {
                    i4 = 1;
                }
                float textSize = this.f33131c.getTextSize();
                int lineCount = this.f33131c.getLineCount();
                int maxLines = this.f33131c.getMaxLines();
                if (f2 != textSize || (maxLines >= 0 && i4 != maxLines)) {
                    if (tabLayout.E == 1 && f2 > textSize && lineCount == 1) {
                        Layout layout = this.f33131c.getLayout();
                        if (layout == null) {
                            return;
                        }
                        if ((f2 / layout.getPaint().getTextSize()) * layout.getLineWidth(0) > (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight()) {
                            return;
                        }
                    }
                    this.f33131c.setTextSize(0, f2);
                    this.f33131c.setMaxLines(i4);
                    super.onMeasure(i2, i3);
                }
            }
        }

        @Override // android.view.View
        public final boolean performClick() {
            boolean zPerformClick = super.performClick();
            if (this.f33130b == null) {
                return zPerformClick;
            }
            if (!zPerformClick) {
                playSoundEffect(0);
            }
            this.f33130b.select();
            return true;
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            isSelected();
            super.setSelected(z);
            TextView textView = this.f33131c;
            if (textView != null) {
                textView.setSelected(z);
            }
            ImageView imageView = this.d;
            if (imageView != null) {
                imageView.setSelected(z);
            }
            View view = this.g;
            if (view != null) {
                view.setSelected(z);
            }
        }

        public void setTab(Tab tab) {
            if (tab != this.f33130b) {
                this.f33130b = tab;
                h();
                Tab tab2 = this.f33130b;
                setSelected(tab2 != null && tab2.isSelected());
            }
        }
    }

    public static class ViewPagerOnTabSelectedListener implements OnTabSelectedListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ViewPager f33140a;

        public ViewPagerOnTabSelectedListener(ViewPager viewPager) {
            this.f33140a = viewPager;
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public final void a(Tab tab) {
            this.f33140a.setCurrentItem(tab.getPosition());
            SensorsDataAutoTrackHelper.trackTabLayoutSelected(this, tab);
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public final void b(Tab tab) {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public final void c(Tab tab) {
        }
    }

    public TabLayout(Context context, AttributeSet attributeSet, int i2) {
        super(MaterialThemeOverlay.b(context, attributeSet, i2, com.vuitton.android.R.style.Widget_Design_TabLayout), attributeSet, i2);
        this.f33110b = -1;
        this.f33111c = new ArrayList();
        this.l = -1;
        this.q = 0;
        this.w = Integer.MAX_VALUE;
        this.H = -1;
        this.N = new ArrayList();
        this.t0 = new Pools$SimplePool(12);
        Context context2 = getContext();
        setHorizontalScrollBarEnabled(false);
        SlidingTabIndicator slidingTabIndicator = new SlidingTabIndicator(context2);
        this.f33112e = slidingTabIndicator;
        super.addView(slidingTabIndicator, 0, new FrameLayout.LayoutParams(-2, -1));
        TypedArray typedArrayD = ThemeEnforcement.d(context2, attributeSet, R$styleable.W, i2, com.vuitton.android.R.style.Widget_Design_TabLayout, 24);
        ColorStateList colorStateListD = DrawableUtils.d(getBackground());
        if (colorStateListD != null) {
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
            materialShapeDrawable.r(colorStateListD);
            materialShapeDrawable.n(context2);
            materialShapeDrawable.q(getElevation());
            setBackground(materialShapeDrawable);
        }
        setSelectedTabIndicator(MaterialResources.d(context2, typedArrayD, 5));
        setSelectedTabIndicatorColor(typedArrayD.getColor(8, 0));
        slidingTabIndicator.b(typedArrayD.getDimensionPixelSize(11, -1));
        setSelectedTabIndicatorGravity(typedArrayD.getInt(10, 0));
        setTabIndicatorAnimationMode(typedArrayD.getInt(7, 0));
        setTabIndicatorFullWidth(typedArrayD.getBoolean(9, true));
        int dimensionPixelSize = typedArrayD.getDimensionPixelSize(16, 0);
        this.f33115i = dimensionPixelSize;
        this.f33114h = dimensionPixelSize;
        this.g = dimensionPixelSize;
        this.f33113f = dimensionPixelSize;
        this.f33113f = typedArrayD.getDimensionPixelSize(19, dimensionPixelSize);
        this.g = typedArrayD.getDimensionPixelSize(20, dimensionPixelSize);
        this.f33114h = typedArrayD.getDimensionPixelSize(18, dimensionPixelSize);
        this.f33115i = typedArrayD.getDimensionPixelSize(17, dimensionPixelSize);
        if (MaterialAttributes.b(context2, com.vuitton.android.R.attr.isMaterial3Theme, false)) {
            this.f33116j = com.vuitton.android.R.attr.textAppearanceTitleSmall;
        } else {
            this.f33116j = com.vuitton.android.R.attr.textAppearanceButton;
        }
        int resourceId = typedArrayD.getResourceId(24, com.vuitton.android.R.style.TextAppearance_Design_Tab);
        this.f33117k = resourceId;
        int[] iArr = androidx.appcompat.R$styleable.y;
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(resourceId, iArr);
        try {
            float dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
            this.s = dimensionPixelSize2;
            this.m = MaterialResources.a(context2, typedArrayObtainStyledAttributes, 3);
            typedArrayObtainStyledAttributes.recycle();
            if (typedArrayD.hasValue(22)) {
                this.l = typedArrayD.getResourceId(22, resourceId);
            }
            int i3 = this.l;
            int[] iArr2 = HorizontalScrollView.EMPTY_STATE_SET;
            int[] iArr3 = HorizontalScrollView.SELECTED_STATE_SET;
            if (i3 != -1) {
                TypedArray typedArrayObtainStyledAttributes2 = context2.obtainStyledAttributes(i3, iArr);
                try {
                    this.t = typedArrayObtainStyledAttributes2.getDimensionPixelSize(0, (int) dimensionPixelSize2);
                    ColorStateList colorStateListA = MaterialResources.a(context2, typedArrayObtainStyledAttributes2, 3);
                    if (colorStateListA != null) {
                        this.m = new ColorStateList(new int[][]{iArr3, iArr2}, new int[]{colorStateListA.getColorForState(new int[]{R.attr.state_selected}, colorStateListA.getDefaultColor()), this.m.getDefaultColor()});
                    }
                    typedArrayObtainStyledAttributes2.recycle();
                } catch (Throwable th) {
                    typedArrayObtainStyledAttributes2.recycle();
                    throw th;
                }
            }
            if (typedArrayD.hasValue(25)) {
                this.m = MaterialResources.a(context2, typedArrayD, 25);
            }
            if (typedArrayD.hasValue(23)) {
                this.m = new ColorStateList(new int[][]{iArr3, iArr2}, new int[]{typedArrayD.getColor(23, 0), this.m.getDefaultColor()});
            }
            this.n = MaterialResources.a(context2, typedArrayD, 3);
            this.r = ViewUtils.f(typedArrayD.getInt(4, -1), null);
            this.o = MaterialResources.a(context2, typedArrayD, 21);
            this.C = typedArrayD.getInt(6, 300);
            this.L = MotionUtils.d(context2, com.vuitton.android.R.attr.motionEasingEmphasizedInterpolator, AnimationUtils.f32228b);
            this.x = typedArrayD.getDimensionPixelSize(14, -1);
            this.y = typedArrayD.getDimensionPixelSize(13, -1);
            this.v = typedArrayD.getResourceId(0, 0);
            this.A = typedArrayD.getDimensionPixelSize(1, 0);
            this.E = typedArrayD.getInt(15, 1);
            this.B = typedArrayD.getInt(2, 0);
            this.F = typedArrayD.getBoolean(12, false);
            this.J = typedArrayD.getBoolean(26, false);
            typedArrayD.recycle();
            Resources resources = getResources();
            this.u = resources.getDimensionPixelSize(com.vuitton.android.R.dimen.design_tab_text_size_2line);
            this.z = resources.getDimensionPixelSize(com.vuitton.android.R.dimen.design_tab_scrollable_min_width);
            e();
        } catch (Throwable th2) {
            typedArrayObtainStyledAttributes.recycle();
            throw th2;
        }
    }

    private int getDefaultHeight() {
        ArrayList arrayList = this.f33111c;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            Tab tab = (Tab) arrayList.get(i2);
            if (tab != null && tab.getIcon() != null && !TextUtils.isEmpty(tab.getText())) {
                return !this.F ? 72 : 48;
            }
        }
        return 48;
    }

    private int getTabMinWidth() {
        int i2 = this.x;
        if (i2 != -1) {
            return i2;
        }
        int i3 = this.E;
        if (i3 == 0 || i3 == 2) {
            return this.z;
        }
        return 0;
    }

    private int getTabScrollRange() {
        return Math.max(0, ((this.f33112e.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    private void setSelectedTabView(int i2) {
        SlidingTabIndicator slidingTabIndicator = this.f33112e;
        int childCount = slidingTabIndicator.getChildCount();
        if (i2 < childCount) {
            int i3 = 0;
            while (i3 < childCount) {
                View childAt = slidingTabIndicator.getChildAt(i3);
                if ((i3 != i2 || childAt.isSelected()) && (i3 == i2 || !childAt.isSelected())) {
                    childAt.setSelected(i3 == i2);
                    childAt.setActivated(i3 == i2);
                } else {
                    childAt.setSelected(i3 == i2);
                    childAt.setActivated(i3 == i2);
                    if (childAt instanceof TabView) {
                        ((TabView) childAt).h();
                    }
                }
                i3++;
            }
        }
    }

    public final void a(BaseOnTabSelectedListener baseOnTabSelectedListener) {
        ArrayList arrayList = this.N;
        if (arrayList.contains(baseOnTabSelectedListener)) {
            return;
        }
        arrayList.add(baseOnTabSelectedListener);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view) {
        c(view);
    }

    public final void b(Tab tab, boolean z) {
        ArrayList arrayList = this.f33111c;
        int size = arrayList.size();
        if (tab.parent != this) {
            md.n("Tab belongs to a different TabLayout.");
            return;
        }
        tab.setPosition(size);
        arrayList.add(size, tab);
        int size2 = arrayList.size();
        int i2 = -1;
        for (int i3 = size + 1; i3 < size2; i3++) {
            if (((Tab) arrayList.get(i3)).getPosition() == this.f33110b) {
                i2 = i3;
            }
            ((Tab) arrayList.get(i3)).setPosition(i3);
        }
        this.f33110b = i2;
        TabView tabView = tab.view;
        tabView.setSelected(false);
        tabView.setActivated(false);
        int position = tab.getPosition();
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        if (this.E == 1 && this.B == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
        } else {
            layoutParams.width = -2;
            layoutParams.weight = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        this.f33112e.addView(tabView, position, layoutParams);
        if (z) {
            tab.select();
        }
    }

    public final void c(View view) {
        if (!(view instanceof TabItem)) {
            md.n("Only TabItem instances can be added to TabLayout");
            return;
        }
        TabItem tabItem = (TabItem) view;
        Tab tabI = i();
        CharSequence charSequence = tabItem.f33108b;
        if (charSequence != null) {
            tabI.setText(charSequence);
        }
        Drawable drawable = tabItem.f33109c;
        if (drawable != null) {
            tabI.setIcon(drawable);
        }
        int i2 = tabItem.d;
        if (i2 != 0) {
            tabI.setCustomView(i2);
        }
        if (!TextUtils.isEmpty(tabItem.getContentDescription())) {
            tabI.setContentDescription(tabItem.getContentDescription());
        }
        b(tabI, this.f33111c.isEmpty());
    }

    public final void d(int i2) {
        if (i2 == -1) {
            return;
        }
        if (getWindowToken() != null && isLaidOut()) {
            SlidingTabIndicator slidingTabIndicator = this.f33112e;
            int childCount = slidingTabIndicator.getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                if (slidingTabIndicator.getChildAt(i3).getWidth() > 0) {
                }
            }
            int scrollX = getScrollX();
            int iF = f(Call.Parameters.DEFAULT_CAMERA_ZOOM, i2);
            if (scrollX != iF) {
                g();
                this.P.setIntValues(scrollX, iF);
                this.P.start();
            }
            ValueAnimator valueAnimator = slidingTabIndicator.f33122b;
            if (valueAnimator != null && valueAnimator.isRunning() && TabLayout.this.f33110b != i2) {
                slidingTabIndicator.f33122b.cancel();
            }
            slidingTabIndicator.d(i2, this.C, true);
            return;
        }
        m(i2, Call.Parameters.DEFAULT_CAMERA_ZOOM, true, true, true);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0034  */
    public final void e() {
        int i2 = this.E;
        int iMax = (i2 == 0 || i2 == 2) ? Math.max(0, this.A - this.f33113f) : 0;
        SlidingTabIndicator slidingTabIndicator = this.f33112e;
        slidingTabIndicator.setPaddingRelative(iMax, 0, 0, 0);
        int i3 = this.E;
        if (i3 == 0) {
            int i4 = this.B;
            if (i4 == 0) {
                slidingTabIndicator.setGravity(8388611);
            } else if (i4 == 1) {
                slidingTabIndicator.setGravity(1);
            } else if (i4 == 2) {
                slidingTabIndicator.setGravity(8388611);
            }
        } else if (i3 == 1 || i3 == 2) {
            slidingTabIndicator.setGravity(1);
        }
        o(true);
    }

    public final int f(float f2, int i2) {
        SlidingTabIndicator slidingTabIndicator;
        View childAt;
        int i3 = this.E;
        if ((i3 != 0 && i3 != 2) || (childAt = (slidingTabIndicator = this.f33112e).getChildAt(i2)) == null) {
            return 0;
        }
        int i4 = i2 + 1;
        View childAt2 = i4 < slidingTabIndicator.getChildCount() ? slidingTabIndicator.getChildAt(i4) : null;
        int width = childAt.getWidth();
        int width2 = childAt2 != null ? childAt2.getWidth() : 0;
        int left = ((width / 2) + childAt.getLeft()) - (getWidth() / 2);
        int i5 = (int) ((width + width2) * 0.5f * f2);
        return getLayoutDirection() == 0 ? left + i5 : left - i5;
    }

    public final void g() {
        if (this.P == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.P = valueAnimator;
            valueAnimator.setInterpolator(this.L);
            this.P.setDuration(this.C);
            this.P.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.tabs.TabLayout.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    TabLayout.this.scrollTo(((Integer) valueAnimator2.getAnimatedValue()).intValue(), 0);
                }
            });
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    public int getSelectedTabPosition() {
        Tab tab = this.d;
        if (tab != null) {
            return tab.getPosition();
        }
        return -1;
    }

    public int getTabCount() {
        return this.f33111c.size();
    }

    public int getTabGravity() {
        return this.B;
    }

    public ColorStateList getTabIconTint() {
        return this.n;
    }

    public int getTabIndicatorAnimationMode() {
        return this.I;
    }

    public int getTabIndicatorGravity() {
        return this.D;
    }

    public int getTabMaxWidth() {
        return this.w;
    }

    public int getTabMode() {
        return this.E;
    }

    public ColorStateList getTabRippleColor() {
        return this.o;
    }

    public Drawable getTabSelectedIndicator() {
        return this.p;
    }

    public ColorStateList getTabTextColors() {
        return this.m;
    }

    public final Tab h(int i2) {
        if (i2 < 0 || i2 >= getTabCount()) {
            return null;
        }
        return (Tab) this.f33111c.get(i2);
    }

    public final Tab i() {
        Tab tab = (Tab) b1.acquire();
        if (tab == null) {
            tab = new Tab();
        }
        tab.parent = this;
        Pools$SimplePool pools$SimplePool = this.t0;
        TabView tabView = pools$SimplePool != null ? (TabView) pools$SimplePool.acquire() : null;
        if (tabView == null) {
            tabView = new TabView(getContext());
        }
        tabView.setTab(tab);
        tabView.setFocusable(true);
        tabView.setMinimumWidth(getTabMinWidth());
        if (TextUtils.isEmpty(tab.contentDesc)) {
            tabView.setContentDescription(tab.text);
        } else {
            tabView.setContentDescription(tab.contentDesc);
        }
        tab.view = tabView;
        if (tab.id != -1) {
            tab.view.setId(tab.id);
        }
        return tab;
    }

    public final void j() {
        int currentItem;
        SlidingTabIndicator slidingTabIndicator = this.f33112e;
        for (int childCount = slidingTabIndicator.getChildCount() - 1; childCount >= 0; childCount--) {
            TabView tabView = (TabView) slidingTabIndicator.getChildAt(childCount);
            slidingTabIndicator.removeViewAt(childCount);
            if (tabView != null) {
                tabView.setTab(null);
                tabView.setSelected(false);
                this.t0.release(tabView);
            }
            requestLayout();
        }
        Iterator it = this.f33111c.iterator();
        while (it.hasNext()) {
            Tab tab = (Tab) it.next();
            it.remove();
            tab.reset();
            b1.release(tab);
        }
        this.d = null;
        if (this.R != null) {
            for (int i2 = 0; i2 < 2; i2++) {
                b(i().setText(this.R.c(i2)), false);
            }
            ViewPager viewPager = this.Q;
            if (viewPager == null || (currentItem = viewPager.getCurrentItem()) == getSelectedTabPosition() || currentItem >= getTabCount()) {
                return;
            }
            k(h(currentItem), true);
        }
    }

    public final void k(Tab tab, boolean z) {
        TabLayout tabLayout;
        Tab tab2 = this.d;
        ArrayList arrayList = this.N;
        if (tab2 == tab) {
            if (tab2 != null) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    ((BaseOnTabSelectedListener) arrayList.get(size)).c(tab);
                }
                d(tab.getPosition());
                return;
            }
            return;
        }
        int position = tab != null ? tab.getPosition() : -1;
        if (z) {
            if ((tab2 == null || tab2.getPosition() == -1) && position != -1) {
                tabLayout = this;
                tabLayout.m(position, Call.Parameters.DEFAULT_CAMERA_ZOOM, true, true, true);
            } else {
                tabLayout = this;
                tabLayout.d(position);
            }
            if (position != -1) {
                tabLayout.setSelectedTabView(position);
            }
        } else {
            tabLayout = this;
        }
        tabLayout.d = tab;
        if (tab2 != null && tab2.parent != null) {
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                ((BaseOnTabSelectedListener) arrayList.get(size2)).b(tab2);
            }
        }
        if (tab != null) {
            for (int size3 = arrayList.size() - 1; size3 >= 0; size3--) {
                ((BaseOnTabSelectedListener) arrayList.get(size3)).a(tab);
            }
        }
    }

    public final void l(PagerAdapter pagerAdapter, boolean z) {
        DataSetObserver dataSetObserver;
        PagerAdapter pagerAdapter2 = this.R;
        if (pagerAdapter2 != null && (dataSetObserver = this.S) != null) {
            pagerAdapter2.f20127a.unregisterObserver(dataSetObserver);
        }
        this.R = pagerAdapter;
        if (z && pagerAdapter != null) {
            if (this.S == null) {
                this.S = new PagerAdapterObserver();
            }
            pagerAdapter.f20127a.registerObserver(this.S);
        }
        j();
    }

    public final void m(int i2, float f2, boolean z, boolean z2, boolean z3) {
        float f3 = i2 + f2;
        int iRound = Math.round(f3);
        if (iRound >= 0) {
            SlidingTabIndicator slidingTabIndicator = this.f33112e;
            if (iRound >= slidingTabIndicator.getChildCount()) {
                return;
            }
            if (z2) {
                TabLayout.this.f33110b = Math.round(f3);
                ValueAnimator valueAnimator = slidingTabIndicator.f33122b;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    slidingTabIndicator.f33122b.cancel();
                }
                slidingTabIndicator.c(slidingTabIndicator.getChildAt(i2), slidingTabIndicator.getChildAt(i2 + 1), f2);
            }
            ValueAnimator valueAnimator2 = this.P;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.P.cancel();
            }
            int iF = f(f2, i2);
            int scrollX = getScrollX();
            boolean z4 = (i2 < getSelectedTabPosition() && iF >= scrollX) || (i2 > getSelectedTabPosition() && iF <= scrollX) || i2 == getSelectedTabPosition();
            if (getLayoutDirection() == 1) {
                z4 = (i2 < getSelectedTabPosition() && iF <= scrollX) || (i2 > getSelectedTabPosition() && iF >= scrollX) || i2 == getSelectedTabPosition();
            }
            if (z4 || this.h0 == 1 || z3) {
                if (i2 < 0) {
                    iF = 0;
                }
                scrollTo(iF, 0);
            }
            if (z) {
                setSelectedTabView(iRound);
            }
        }
    }

    public final void n(ViewPager viewPager, boolean z) {
        TabLayout tabLayout;
        ArrayList arrayList;
        ArrayList arrayList2;
        ViewPager viewPager2 = this.Q;
        if (viewPager2 != null) {
            TabLayoutOnPageChangeListener tabLayoutOnPageChangeListener = this.T;
            if (tabLayoutOnPageChangeListener != null && (arrayList2 = viewPager2.S) != null) {
                arrayList2.remove(tabLayoutOnPageChangeListener);
            }
            AdapterChangeListener adapterChangeListener = this.V;
            if (adapterChangeListener != null && (arrayList = this.Q.V) != null) {
                arrayList.remove(adapterChangeListener);
            }
        }
        ViewPagerOnTabSelectedListener viewPagerOnTabSelectedListener = this.O;
        if (viewPagerOnTabSelectedListener != null) {
            this.N.remove(viewPagerOnTabSelectedListener);
            this.O = null;
        }
        if (viewPager != null) {
            this.Q = viewPager;
            if (this.T == null) {
                this.T = new TabLayoutOnPageChangeListener(this);
            }
            TabLayoutOnPageChangeListener tabLayoutOnPageChangeListener2 = this.T;
            tabLayoutOnPageChangeListener2.f33129c = 0;
            tabLayoutOnPageChangeListener2.f33128b = 0;
            if (viewPager.S == null) {
                viewPager.S = new ArrayList();
            }
            viewPager.S.add(tabLayoutOnPageChangeListener2);
            ViewPagerOnTabSelectedListener viewPagerOnTabSelectedListener2 = new ViewPagerOnTabSelectedListener(viewPager);
            this.O = viewPagerOnTabSelectedListener2;
            a(viewPagerOnTabSelectedListener2);
            PagerAdapter adapter = viewPager.getAdapter();
            if (adapter != null) {
                l(adapter, true);
            }
            if (this.V == null) {
                this.V = new AdapterChangeListener();
            }
            AdapterChangeListener adapterChangeListener2 = this.V;
            adapterChangeListener2.f33119a = true;
            if (viewPager.V == null) {
                viewPager.V = new ArrayList();
            }
            viewPager.V.add(adapterChangeListener2);
            tabLayout = this;
            tabLayout.m(viewPager.getCurrentItem(), Call.Parameters.DEFAULT_CAMERA_ZOOM, true, true, true);
        } else {
            tabLayout = this;
            tabLayout.Q = null;
            tabLayout.l(null, false);
        }
        tabLayout.W = z;
    }

    public final void o(boolean z) {
        int i2 = 0;
        while (true) {
            SlidingTabIndicator slidingTabIndicator = this.f33112e;
            if (i2 >= slidingTabIndicator.getChildCount()) {
                return;
            }
            View childAt = slidingTabIndicator.getChildAt(i2);
            childAt.setMinimumWidth(getTabMinWidth());
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            if (this.E == 1 && this.B == 0) {
                layoutParams.width = 0;
                layoutParams.weight = 1.0f;
            } else {
                layoutParams.width = -2;
                layoutParams.weight = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
            if (z) {
                childAt.requestLayout();
            }
            i2++;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.c(this);
        if (this.Q == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewPager) {
                n((ViewPager) parent, true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.W) {
            setupWithViewPager(null);
            this.W = false;
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        TabView tabView;
        Drawable drawable;
        int i2 = 0;
        while (true) {
            SlidingTabIndicator slidingTabIndicator = this.f33112e;
            if (i2 >= slidingTabIndicator.getChildCount()) {
                super.onDraw(canvas);
                return;
            }
            View childAt = slidingTabIndicator.getChildAt(i2);
            if ((childAt instanceof TabView) && (drawable = (tabView = (TabView) childAt).f33136j) != null) {
                drawable.setBounds(tabView.getLeft(), tabView.getTop(), tabView.getRight(), tabView.getBottom());
                tabView.f33136j.draw(canvas);
            }
            i2++;
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        new AccessibilityNodeInfoCompat(accessibilityNodeInfo).j(AccessibilityNodeInfoCompat.CollectionInfoCompat.a(1, getTabCount(), 1));
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return (getTabMode() == 0 || getTabMode() == 2) && super.onInterceptTouchEvent(motionEvent);
    }

    /* JADX WARN: Code duplicated, block: B:36:? A[RETURN, SYNTHETIC] */
    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i2, int i3) {
        int iRound = Math.round(ViewUtils.d(getDefaultHeight(), getContext()));
        int mode = View.MeasureSpec.getMode(i3);
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                i3 = View.MeasureSpec.makeMeasureSpec(getPaddingBottom() + getPaddingTop() + iRound, 1073741824);
            }
        } else if (getChildCount() == 1 && View.MeasureSpec.getSize(i3) >= iRound) {
            getChildAt(0).setMinimumHeight(iRound);
        }
        int size = View.MeasureSpec.getSize(i2);
        if (View.MeasureSpec.getMode(i2) != 0) {
            int iD = this.y;
            if (iD <= 0) {
                iD = (int) (size - ViewUtils.d(56, getContext()));
            }
            this.w = iD;
        }
        super.onMeasure(i2, i3);
        if (getChildCount() == 1) {
            View childAt = getChildAt(0);
            int i4 = this.E;
            if (i4 == 0) {
                if (childAt.getMeasuredWidth() >= getMeasuredWidth()) {
                    return;
                }
            } else if (i4 != 1) {
                if (i4 != 2) {
                    return;
                }
                if (childAt.getMeasuredWidth() >= getMeasuredWidth()) {
                    return;
                }
            } else if (childAt.getMeasuredWidth() == getMeasuredWidth()) {
                return;
            }
            childAt.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), ViewGroup.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop(), childAt.getLayoutParams().height));
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() != 8 || getTabMode() == 0 || getTabMode() == 2) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // android.view.View
    public void setElevation(float f2) {
        super.setElevation(f2);
        Drawable background = getBackground();
        if (background instanceof MaterialShapeDrawable) {
            ((MaterialShapeDrawable) background).q(f2);
        }
    }

    public void setInlineLabel(boolean z) {
        if (this.F == z) {
            return;
        }
        this.F = z;
        int i2 = 0;
        while (true) {
            SlidingTabIndicator slidingTabIndicator = this.f33112e;
            if (i2 >= slidingTabIndicator.getChildCount()) {
                e();
                return;
            }
            View childAt = slidingTabIndicator.getChildAt(i2);
            if (childAt instanceof TabView) {
                TabView tabView = (TabView) childAt;
                tabView.setOrientation(!TabLayout.this.F ? 1 : 0);
                TextView textView = tabView.f33134h;
                if (textView == null && tabView.f33135i == null) {
                    tabView.i(tabView.f33131c, tabView.d, true);
                } else {
                    tabView.i(textView, tabView.f33135i, false);
                }
            }
            i2++;
        }
    }

    public void setInlineLabelResource(int i2) {
        setInlineLabel(getResources().getBoolean(i2));
    }

    @Deprecated
    public void setOnTabSelectedListener(BaseOnTabSelectedListener baseOnTabSelectedListener) {
        BaseOnTabSelectedListener baseOnTabSelectedListener2 = this.M;
        if (baseOnTabSelectedListener2 != null) {
            this.N.remove(baseOnTabSelectedListener2);
        }
        this.M = baseOnTabSelectedListener;
        if (baseOnTabSelectedListener != null) {
            a(baseOnTabSelectedListener);
        }
    }

    public void setScrollAnimatorListener(Animator.AnimatorListener animatorListener) {
        g();
        this.P.addListener(animatorListener);
    }

    public void setSelectedTabIndicator(Drawable drawable) {
        if (drawable == null) {
            drawable = new GradientDrawable();
        }
        Drawable drawableMutate = drawable.mutate();
        this.p = drawableMutate;
        int i2 = this.q;
        if (i2 != 0) {
            drawableMutate.setTint(i2);
        } else {
            drawableMutate.setTintList(null);
        }
        int intrinsicHeight = this.H;
        if (intrinsicHeight == -1) {
            intrinsicHeight = this.p.getIntrinsicHeight();
        }
        this.f33112e.b(intrinsicHeight);
    }

    public void setSelectedTabIndicatorColor(int i2) {
        this.q = i2;
        Drawable drawable = this.p;
        if (i2 != 0) {
            drawable.setTint(i2);
        } else {
            drawable.setTintList(null);
        }
        o(false);
    }

    public void setSelectedTabIndicatorGravity(int i2) {
        if (this.D != i2) {
            this.D = i2;
            this.f33112e.postInvalidateOnAnimation();
        }
    }

    @Deprecated
    public void setSelectedTabIndicatorHeight(int i2) {
        this.H = i2;
        this.f33112e.b(i2);
    }

    public void setTabGravity(int i2) {
        if (this.B != i2) {
            this.B = i2;
            e();
        }
    }

    public void setTabIconTint(ColorStateList colorStateList) {
        if (this.n != colorStateList) {
            this.n = colorStateList;
            ArrayList arrayList = this.f33111c;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((Tab) arrayList.get(i2)).updateView();
            }
        }
    }

    public void setTabIconTintResource(int i2) {
        setTabIconTint(ContextCompat.getColorStateList(getContext(), i2));
    }

    public void setTabIndicatorAnimationMode(int i2) {
        this.I = i2;
        if (i2 == 0) {
            this.K = new TabIndicatorInterpolator();
            return;
        }
        if (i2 == 1) {
            this.K = new ElasticTabIndicatorInterpolator();
        } else if (i2 == 2) {
            this.K = new FadeTabIndicatorInterpolator();
        } else {
            md.n(cj.d(i2, " is not a valid TabIndicatorAnimationMode"));
        }
    }

    public void setTabIndicatorFullWidth(boolean z) {
        this.G = z;
        int i2 = SlidingTabIndicator.d;
        SlidingTabIndicator slidingTabIndicator = this.f33112e;
        slidingTabIndicator.a(TabLayout.this.getSelectedTabPosition());
        slidingTabIndicator.postInvalidateOnAnimation();
    }

    public void setTabMode(int i2) {
        if (i2 != this.E) {
            this.E = i2;
            e();
        }
    }

    public void setTabRippleColor(ColorStateList colorStateList) {
        if (this.o == colorStateList) {
            return;
        }
        this.o = colorStateList;
        int i2 = 0;
        while (true) {
            SlidingTabIndicator slidingTabIndicator = this.f33112e;
            if (i2 >= slidingTabIndicator.getChildCount()) {
                return;
            }
            View childAt = slidingTabIndicator.getChildAt(i2);
            if (childAt instanceof TabView) {
                Context context = getContext();
                int i3 = TabView.m;
                ((TabView) childAt).g(context);
            }
            i2++;
        }
    }

    public void setTabRippleColorResource(int i2) {
        setTabRippleColor(ContextCompat.getColorStateList(getContext(), i2));
    }

    public void setTabTextColors(ColorStateList colorStateList) {
        if (this.m != colorStateList) {
            this.m = colorStateList;
            ArrayList arrayList = this.f33111c;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((Tab) arrayList.get(i2)).updateView();
            }
        }
    }

    @Deprecated
    public void setTabsFromPagerAdapter(PagerAdapter pagerAdapter) {
        l(pagerAdapter, false);
    }

    public void setUnboundedRipple(boolean z) {
        if (this.J == z) {
            return;
        }
        this.J = z;
        int i2 = 0;
        while (true) {
            SlidingTabIndicator slidingTabIndicator = this.f33112e;
            if (i2 >= slidingTabIndicator.getChildCount()) {
                return;
            }
            View childAt = slidingTabIndicator.getChildAt(i2);
            if (childAt instanceof TabView) {
                Context context = getContext();
                int i3 = TabView.m;
                ((TabView) childAt).g(context);
            }
            i2++;
        }
    }

    public void setUnboundedRippleResource(int i2) {
        setUnboundedRipple(getResources().getBoolean(i2));
    }

    public void setupWithViewPager(ViewPager viewPager) {
        n(viewPager, false);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return getTabScrollRange() > 0;
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view, int i2) {
        c(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        c(view);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        c(view);
    }

    @Deprecated
    public void setOnTabSelectedListener(OnTabSelectedListener onTabSelectedListener) {
        setOnTabSelectedListener((BaseOnTabSelectedListener) onTabSelectedListener);
    }

    public static class Tab {
        public static final int INVALID_POSITION = -1;
        private CharSequence contentDesc;
        private View customView;
        private Drawable icon;
        public TabLayout parent;
        private Object tag;
        private CharSequence text;
        public TabView view;
        private int position = -1;
        private int labelVisibilityMode = 1;
        private int id = -1;

        public BadgeDrawable getBadge() {
            return this.view.getBadge();
        }

        public CharSequence getContentDescription() {
            TabView tabView = this.view;
            if (tabView == null) {
                return null;
            }
            return tabView.getContentDescription();
        }

        public View getCustomView() {
            return this.customView;
        }

        public Drawable getIcon() {
            return this.icon;
        }

        public int getId() {
            return this.id;
        }

        public BadgeDrawable getOrCreateBadge() {
            return this.view.getOrCreateBadge();
        }

        public int getPosition() {
            return this.position;
        }

        public int getTabLabelVisibility() {
            return this.labelVisibilityMode;
        }

        public Object getTag() {
            return this.tag;
        }

        public CharSequence getText() {
            return this.text;
        }

        public boolean isSelected() {
            TabLayout tabLayout = this.parent;
            if (tabLayout != null) {
                int selectedTabPosition = tabLayout.getSelectedTabPosition();
                return selectedTabPosition != -1 && selectedTabPosition == this.position;
            }
            md.n("Tab not attached to a TabLayout");
            return false;
        }

        public void removeBadge() {
            TabView tabView = this.view;
            if (tabView.f33132e != null) {
                tabView.d();
            }
            tabView.f33133f = null;
        }

        public void reset() {
            this.parent = null;
            this.view = null;
            this.tag = null;
            this.icon = null;
            this.id = -1;
            this.text = null;
            this.contentDesc = null;
            this.position = -1;
            this.customView = null;
        }

        public void select() {
            TabLayout tabLayout = this.parent;
            if (tabLayout != null) {
                tabLayout.k(this, true);
            } else {
                md.n("Tab not attached to a TabLayout");
            }
        }

        public Tab setContentDescription(int i2) {
            TabLayout tabLayout = this.parent;
            if (tabLayout != null) {
                return setContentDescription(tabLayout.getResources().getText(i2));
            }
            md.n("Tab not attached to a TabLayout");
            return null;
        }

        public Tab setCustomView(int i2) {
            return setCustomView(LayoutInflater.from(this.view.getContext()).inflate(i2, (ViewGroup) this.view, false));
        }

        public Tab setIcon(int i2) {
            TabLayout tabLayout = this.parent;
            if (tabLayout != null) {
                return setIcon(AppCompatResources.a(tabLayout.getContext(), i2));
            }
            md.n("Tab not attached to a TabLayout");
            return null;
        }

        public Tab setId(int i2) {
            this.id = i2;
            TabView tabView = this.view;
            if (tabView != null) {
                tabView.setId(i2);
            }
            return this;
        }

        public void setPosition(int i2) {
            this.position = i2;
        }

        public Tab setTabLabelVisibility(int i2) {
            this.labelVisibilityMode = i2;
            TabLayout tabLayout = this.parent;
            if (tabLayout.B == 1 || tabLayout.E == 2) {
                tabLayout.o(true);
            }
            updateView();
            return this;
        }

        public Tab setTag(Object obj) {
            this.tag = obj;
            return this;
        }

        public Tab setText(CharSequence charSequence) {
            if (TextUtils.isEmpty(this.contentDesc) && !TextUtils.isEmpty(charSequence)) {
                this.view.setContentDescription(charSequence);
            }
            this.text = charSequence;
            updateView();
            return this;
        }

        public void updateView() {
            TabView tabView = this.view;
            if (tabView != null) {
                tabView.h();
                Tab tab = tabView.f33130b;
                tabView.setSelected(tab != null && tab.isSelected());
            }
        }

        public Tab setCustomView(View view) {
            this.customView = view;
            updateView();
            return this;
        }

        public Tab setContentDescription(CharSequence charSequence) {
            this.contentDesc = charSequence;
            updateView();
            return this;
        }

        public Tab setIcon(Drawable drawable) {
            this.icon = drawable;
            TabLayout tabLayout = this.parent;
            if (tabLayout.B == 1 || tabLayout.E == 2) {
                tabLayout.o(true);
            }
            updateView();
            return this;
        }

        public Tab setText(int i2) {
            TabLayout tabLayout = this.parent;
            if (tabLayout != null) {
                return setText(tabLayout.getResources().getText(i2));
            }
            md.n("Tab not attached to a TabLayout");
            return null;
        }
    }

    public void setSelectedTabIndicator(int i2) {
        if (i2 != 0) {
            setSelectedTabIndicator(AppCompatResources.a(getContext(), i2));
        } else {
            setSelectedTabIndicator((Drawable) null);
        }
    }

    public TabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.vuitton.android.R.attr.tabStyle);
    }

    public TabLayout(Context context) {
        this(context, null);
    }
}
