package androidx.appcompat.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.OverScroller;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.core.graphics.Insets;
import androidx.core.view.NestedScrollingParent;
import androidx.core.view.NestedScrollingParent2;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.vuitton.android.R;
import defpackage.md;
import java.util.WeakHashMap;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class ActionBarOverlayLayout extends ViewGroup implements DecorContentParent, NestedScrollingParent, NestedScrollingParent2, NestedScrollingParent3 {
    public static final int[] D = {R.attr.actionBarSize, android.R.attr.windowContentOverlay};
    public static final WindowInsetsCompat E;
    public static final Rect F;
    public final Runnable A;
    public final NestedScrollingParentHelper B;
    public final NoSystemUiLayoutFlagView C;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1075b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1076c;
    public ContentFrameLayout d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ActionBarContainer f1077e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public DecorToolbar f1078f;
    public Drawable g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1079h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f1080i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f1081j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f1082k;
    public int l;
    public int m;
    public final Rect n;
    public final Rect o;
    public final Rect p;
    public final Rect q;
    public WindowInsetsCompat r;
    public WindowInsetsCompat s;
    public WindowInsetsCompat t;
    public WindowInsetsCompat u;
    public ActionBarVisibilityCallback v;
    public OverScroller w;
    public ViewPropertyAnimator x;
    public final AnimatorListenerAdapter y;
    public final Runnable z;

    public interface ActionBarVisibilityCallback {
        void enableContentAnimations(boolean z);

        void hideForSystem();

        void onContentScrollStarted();

        void onContentScrollStopped();

        void onWindowVisibilityChanged(int i2);

        void showForSystem();
    }

    public static final class NoSystemUiLayoutFlagView extends View {
        @Override // android.view.View
        public final int getWindowSystemUiVisibility() {
            return 0;
        }
    }

    static {
        WindowInsetsCompat.Builder builder = new WindowInsetsCompat.Builder();
        builder.c(Insets.c(0, 1, 0, 1));
        E = builder.a();
        F = new Rect();
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1076c = 0;
        this.n = new Rect();
        this.o = new Rect();
        this.p = new Rect();
        this.q = new Rect();
        new Rect();
        new Rect();
        new Rect();
        new Rect();
        WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.f12243b;
        this.r = windowInsetsCompat;
        this.s = windowInsetsCompat;
        this.t = windowInsetsCompat;
        this.u = windowInsetsCompat;
        this.y = new AnimatorListenerAdapter() { // from class: androidx.appcompat.widget.ActionBarOverlayLayout.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
                actionBarOverlayLayout.x = null;
                actionBarOverlayLayout.f1082k = false;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
                actionBarOverlayLayout.x = null;
                actionBarOverlayLayout.f1082k = false;
            }
        };
        this.z = new Runnable() { // from class: androidx.appcompat.widget.ActionBarOverlayLayout.2
            @Override // java.lang.Runnable
            public void run() {
                ActionBarOverlayLayout.this.q();
                ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
                actionBarOverlayLayout.x = actionBarOverlayLayout.f1077e.animate().translationY(Call.Parameters.DEFAULT_CAMERA_ZOOM).setListener(ActionBarOverlayLayout.this.y);
            }
        };
        this.A = new Runnable() { // from class: androidx.appcompat.widget.ActionBarOverlayLayout.3
            @Override // java.lang.Runnable
            public void run() {
                ActionBarOverlayLayout.this.q();
                ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
                actionBarOverlayLayout.x = actionBarOverlayLayout.f1077e.animate().translationY(-ActionBarOverlayLayout.this.f1077e.getHeight()).setListener(ActionBarOverlayLayout.this.y);
            }
        };
        r(context);
        this.B = new NestedScrollingParentHelper(this);
        NoSystemUiLayoutFlagView noSystemUiLayoutFlagView = new NoSystemUiLayoutFlagView(context);
        noSystemUiLayoutFlagView.setWillNotDraw(true);
        this.C = noSystemUiLayoutFlagView;
        addView(noSystemUiLayoutFlagView);
    }

    public static boolean p(View view, Rect rect, boolean z) {
        boolean z2;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i2 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
        int i3 = rect.left;
        if (i2 != i3) {
            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = i3;
            z2 = true;
        } else {
            z2 = false;
        }
        int i4 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        int i5 = rect.top;
        if (i4 != i5) {
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = i5;
            z2 = true;
        }
        int i6 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        int i7 = rect.right;
        if (i6 != i7) {
            ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = i7;
            z2 = true;
        }
        if (z) {
            int i8 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            int i9 = rect.bottom;
            if (i8 != i9) {
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = i9;
                return true;
            }
        }
        return z2;
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public final boolean a() {
        s();
        return this.f1078f.a();
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public final boolean b() {
        s();
        return this.f1078f.b();
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public final boolean c() {
        s();
        return this.f1078f.c();
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public final void d(Menu menu, MenuPresenter.Callback callback) {
        s();
        this.f1078f.d(menu, callback);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int translationY;
        super.draw(canvas);
        if (this.g != null) {
            if (this.f1077e.getVisibility() == 0) {
                translationY = (int) (this.f1077e.getTranslationY() + this.f1077e.getBottom() + 0.5f);
            } else {
                translationY = 0;
            }
            this.g.setBounds(0, translationY, getWidth(), this.g.getIntrinsicHeight() + translationY);
            this.g.draw(canvas);
        }
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public final boolean e() {
        s();
        return this.f1078f.e();
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public final void f() {
        s();
        this.f1078f.f();
    }

    @Override // android.view.View
    public final boolean fitSystemWindows(Rect rect) {
        return super.fitSystemWindows(rect);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void g(int i2, View view) {
        if (i2 == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.f1077e;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        NestedScrollingParentHelper nestedScrollingParentHelper = this.B;
        return nestedScrollingParentHelper.f12180b | nestedScrollingParentHelper.f12179a;
    }

    public CharSequence getTitle() {
        s();
        return this.f1078f.getTitle();
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public final boolean h() {
        s();
        return this.f1078f.h();
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public final void i(int i2) {
        s();
        if (i2 == 2) {
            this.f1078f.getClass();
        } else if (i2 == 5) {
            this.f1078f.getClass();
        } else {
            if (i2 != 109) {
                return;
            }
            setOverlayMode(true);
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void j(View view, View view2, int i2, int i3) {
        if (i3 == 0) {
            onNestedScrollAccepted(view, view2, i2);
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void k(View view, int i2, int i3, int[] iArr, int i4) {
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public final void l() {
        s();
        this.f1078f.y();
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public final void m(View view, int i2, int i3, int i4, int i5, int i6, int[] iArr) {
        n(view, i2, i3, i4, i5, i6);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void n(View view, int i2, int i3, int i4, int i5, int i6) {
        if (i6 == 0) {
            onNestedScroll(view, i2, i3, i4, i5);
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final boolean o(View view, View view2, int i2, int i3) {
        return i3 == 0 && onStartNestedScroll(view, view2, i2);
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        s();
        WindowInsetsCompat windowInsetsCompatR = WindowInsetsCompat.r(windowInsets, this);
        boolean zP = p(this.f1077e, new Rect(windowInsetsCompatR.h(), windowInsetsCompatR.j(), windowInsetsCompatR.i(), windowInsetsCompatR.g()), false);
        Rect rect = this.n;
        ViewCompat.c(this, windowInsetsCompatR, rect);
        WindowInsetsCompat windowInsetsCompatL = windowInsetsCompatR.l(rect.left, rect.top, rect.right, rect.bottom);
        this.r = windowInsetsCompatL;
        boolean z = true;
        if (!this.s.equals(windowInsetsCompatL)) {
            this.s = this.r;
            zP = true;
        }
        Rect rect2 = this.o;
        if (rect2.equals(rect)) {
            z = zP;
        } else {
            rect2.set(rect);
        }
        if (z) {
            requestLayout();
        }
        return windowInsetsCompatR.a().c().b().q();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        r(getContext());
        WeakHashMap weakHashMap = ViewCompat.f12200a;
        requestApplyInsets();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        q();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i7 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + paddingLeft;
                int i8 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + paddingTop;
                childAt.layout(i7, i8, measuredWidth + i7, measuredHeight + i8);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x00a8  */
    @Override // android.view.View
    public final void onMeasure(int i2, int i3) {
        int measuredHeight;
        s();
        measureChildWithMargins(this.f1077e, i2, 0, i3, 0);
        LayoutParams layoutParams = (LayoutParams) this.f1077e.getLayoutParams();
        int iMax = Math.max(0, this.f1077e.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin);
        int iMax2 = Math.max(0, this.f1077e.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        int iCombineMeasuredStates = View.combineMeasuredStates(0, this.f1077e.getMeasuredState());
        WeakHashMap weakHashMap = ViewCompat.f12200a;
        boolean z = (getWindowSystemUiVisibility() & 256) != 0;
        if (z) {
            measuredHeight = this.f1075b;
            if (this.f1080i && this.f1077e.getTabContainer() != null) {
                measuredHeight += this.f1075b;
            }
        } else {
            measuredHeight = this.f1077e.getVisibility() != 8 ? this.f1077e.getMeasuredHeight() : 0;
        }
        Rect rect = this.n;
        Rect rect2 = this.p;
        rect2.set(rect);
        this.t = this.r;
        if (this.f1079h || z) {
            Insets insetsC = Insets.c(this.t.h(), this.t.j() + measuredHeight, this.t.i(), this.t.g());
            WindowInsetsCompat.Builder builder = new WindowInsetsCompat.Builder(this.t);
            builder.c(insetsC);
            this.t = builder.a();
        } else {
            NoSystemUiLayoutFlagView noSystemUiLayoutFlagView = this.C;
            WindowInsetsCompat windowInsetsCompat = E;
            Rect rect3 = this.q;
            ViewCompat.c(noSystemUiLayoutFlagView, windowInsetsCompat, rect3);
            if (rect3.equals(F)) {
                Insets insetsC2 = Insets.c(this.t.h(), this.t.j() + measuredHeight, this.t.i(), this.t.g());
                WindowInsetsCompat.Builder builder2 = new WindowInsetsCompat.Builder(this.t);
                builder2.c(insetsC2);
                this.t = builder2.a();
            } else {
                rect2.top += measuredHeight;
                rect2.bottom = rect2.bottom;
                this.t = this.t.l(0, measuredHeight, 0, 0);
            }
        }
        p(this.d, rect2, true);
        if (!this.u.equals(this.t)) {
            WindowInsetsCompat windowInsetsCompat2 = this.t;
            this.u = windowInsetsCompat2;
            ViewCompat.d(this.d, windowInsetsCompat2);
        }
        measureChildWithMargins(this.d, i2, 0, i3, 0);
        LayoutParams layoutParams2 = (LayoutParams) this.d.getLayoutParams();
        int iMax3 = Math.max(iMax, this.d.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin);
        int iMax4 = Math.max(iMax2, this.d.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin);
        int iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.d.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(getPaddingRight() + getPaddingLeft() + iMax3, getSuggestedMinimumWidth()), i2, iCombineMeasuredStates2), View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + iMax4, getSuggestedMinimumHeight()), i3, iCombineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f2, float f3, boolean z) {
        if (!this.f1081j || !z) {
            return false;
        }
        this.w.fling(0, 0, 0, (int) f3, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
        if (this.w.getFinalY() > this.f1077e.getHeight()) {
            q();
            this.A.run();
        } else {
            q();
            this.z.run();
        }
        this.f1082k = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f2, float f3) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i2, int i3, int[] iArr) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i2, int i3, int i4, int i5) {
        int i6 = this.l + i3;
        this.l = i6;
        setActionBarHideOffset(i6);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i2) {
        this.B.f12179a = i2;
        this.l = getActionBarHideOffset();
        q();
        ActionBarVisibilityCallback actionBarVisibilityCallback = this.v;
        if (actionBarVisibilityCallback != null) {
            actionBarVisibilityCallback.onContentScrollStarted();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i2) {
        if ((i2 & 2) == 0 || this.f1077e.getVisibility() != 0) {
            return false;
        }
        return this.f1081j;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        if (this.f1081j && !this.f1082k) {
            if (this.l <= this.f1077e.getHeight()) {
                q();
                postDelayed(this.z, 600L);
            } else {
                q();
                postDelayed(this.A, 600L);
            }
        }
        ActionBarVisibilityCallback actionBarVisibilityCallback = this.v;
        if (actionBarVisibilityCallback != null) {
            actionBarVisibilityCallback.onContentScrollStopped();
        }
    }

    @Override // android.view.View
    public final void onWindowSystemUiVisibilityChanged(int i2) {
        super.onWindowSystemUiVisibilityChanged(i2);
        s();
        int i3 = this.m ^ i2;
        this.m = i2;
        boolean z = (i2 & 4) == 0;
        boolean z2 = (i2 & 256) != 0;
        ActionBarVisibilityCallback actionBarVisibilityCallback = this.v;
        if (actionBarVisibilityCallback != null) {
            actionBarVisibilityCallback.enableContentAnimations(!z2);
            if (z || !z2) {
                this.v.showForSystem();
            } else {
                this.v.hideForSystem();
            }
        }
        if ((i3 & 256) == 0 || this.v == null) {
            return;
        }
        WeakHashMap weakHashMap = ViewCompat.f12200a;
        requestApplyInsets();
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        this.f1076c = i2;
        ActionBarVisibilityCallback actionBarVisibilityCallback = this.v;
        if (actionBarVisibilityCallback != null) {
            actionBarVisibilityCallback.onWindowVisibilityChanged(i2);
        }
    }

    public final void q() {
        removeCallbacks(this.z);
        removeCallbacks(this.A);
        ViewPropertyAnimator viewPropertyAnimator = this.x;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    public final void r(Context context) {
        TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(D);
        this.f1075b = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(1);
        this.g = drawable;
        setWillNotDraw(drawable == null);
        typedArrayObtainStyledAttributes.recycle();
        this.w = new OverScroller(context);
    }

    public final void s() {
        DecorToolbar wrapper;
        if (this.d == null) {
            this.d = (ContentFrameLayout) findViewById(R.id.action_bar_activity_content);
            this.f1077e = (ActionBarContainer) findViewById(R.id.action_bar_container);
            KeyEvent.Callback callbackFindViewById = findViewById(R.id.action_bar);
            if (callbackFindViewById instanceof DecorToolbar) {
                wrapper = (DecorToolbar) callbackFindViewById;
            } else {
                if (!(callbackFindViewById instanceof Toolbar)) {
                    md.k("Can't make a decor toolbar out of ".concat(callbackFindViewById.getClass().getSimpleName()));
                    return;
                }
                wrapper = ((Toolbar) callbackFindViewById).getWrapper();
            }
            this.f1078f = wrapper;
        }
    }

    public void setActionBarHideOffset(int i2) {
        q();
        this.f1077e.setTranslationY(-Math.max(0, Math.min(i2, this.f1077e.getHeight())));
    }

    public void setActionBarVisibilityCallback(ActionBarVisibilityCallback actionBarVisibilityCallback) {
        this.v = actionBarVisibilityCallback;
        if (getWindowToken() != null) {
            this.v.onWindowVisibilityChanged(this.f1076c);
            int i2 = this.m;
            if (i2 != 0) {
                onWindowSystemUiVisibilityChanged(i2);
                WeakHashMap weakHashMap = ViewCompat.f12200a;
                requestApplyInsets();
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z) {
        this.f1080i = z;
    }

    public void setHideOnContentScrollEnabled(boolean z) {
        if (z != this.f1081j) {
            this.f1081j = z;
            if (z) {
                return;
            }
            q();
            setActionBarHideOffset(0);
        }
    }

    public void setIcon(int i2) {
        s();
        this.f1078f.setIcon(i2);
    }

    public void setLogo(int i2) {
        s();
        this.f1078f.C(i2);
    }

    public void setOverlayMode(boolean z) {
        this.f1079h = z;
    }

    public void setShowingForActionMode(boolean z) {
    }

    public void setUiOptions(int i2) {
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public void setWindowCallback(Window.Callback callback) {
        s();
        this.f1078f.setWindowCallback(callback);
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public void setWindowTitle(CharSequence charSequence) {
        s();
        this.f1078f.setWindowTitle(charSequence);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    public void setIcon(Drawable drawable) {
        s();
        this.f1078f.setIcon(drawable);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public ActionBarOverlayLayout(Context context) {
        this(context, null);
    }
}
