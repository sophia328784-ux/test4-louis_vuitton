package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.R$styleable;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.CollapsibleActionView;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.core.view.MenuHost;
import androidx.core.view.MenuHostHelper;
import androidx.core.view.MenuProvider;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import com.dynatrace.android.callback.Callback;
import com.vuitton.android.R;
import defpackage.f31;
import defpackage.s6;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class Toolbar extends ViewGroup implements MenuHost {
    public ColorStateList A;
    public ColorStateList B;
    public boolean C;
    public boolean D;
    public final ArrayList E;
    public final ArrayList F;
    public final int[] G;
    public final MenuHostHelper H;
    public ArrayList I;
    public OnMenuItemClickListener J;
    public final ActionMenuView.OnMenuItemClickListener K;
    public ToolbarWidgetWrapper L;
    public ActionMenuPresenter M;
    public ExpandedActionViewMenuPresenter N;
    public MenuPresenter.Callback O;
    public MenuBuilder.Callback P;
    public boolean Q;
    public OnBackInvokedCallback R;
    public OnBackInvokedDispatcher S;
    public boolean T;
    public final Runnable V;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ActionMenuView f1315b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AppCompatTextView f1316c;
    public AppCompatTextView d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public AppCompatImageButton f1317e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public AppCompatImageView f1318f;
    public final Drawable g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CharSequence f1319h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public AppCompatImageButton f1320i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public View f1321j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Context f1322k;
    public int l;
    public int m;
    public int n;
    public final int o;
    public final int p;
    public int q;
    public int r;
    public int s;
    public int t;
    public RtlSpacingHelper u;
    public int v;
    public int w;
    public final int x;
    public CharSequence y;
    public CharSequence z;

    public static class Api33Impl {
        public static OnBackInvokedDispatcher a(View view) {
            return view.findOnBackInvokedDispatcher();
        }

        public static OnBackInvokedCallback b(Runnable runnable) {
            Objects.requireNonNull(runnable);
            return new s6(runnable, 3);
        }

        public static void c(Object obj, Object obj2) {
            ((OnBackInvokedDispatcher) obj).registerOnBackInvokedCallback(1000000, (OnBackInvokedCallback) obj2);
        }

        public static void d(Object obj, Object obj2) {
            ((OnBackInvokedDispatcher) obj).unregisterOnBackInvokedCallback((OnBackInvokedCallback) obj2);
        }
    }

    public class ExpandedActionViewMenuPresenter implements MenuPresenter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public MenuBuilder f1326b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public MenuItemImpl f1327c;

        public ExpandedActionViewMenuPresenter() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public final void c(MenuBuilder menuBuilder, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public final boolean e(MenuItemImpl menuItemImpl) {
            Toolbar toolbar = Toolbar.this;
            KeyEvent.Callback callback = toolbar.f1321j;
            if (callback instanceof CollapsibleActionView) {
                ((CollapsibleActionView) callback).onActionViewCollapsed();
            }
            toolbar.removeView(toolbar.f1321j);
            toolbar.removeView(toolbar.f1320i);
            toolbar.f1321j = null;
            ArrayList arrayList = toolbar.F;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                toolbar.addView((View) arrayList.get(size));
            }
            arrayList.clear();
            this.f1327c = null;
            toolbar.requestLayout();
            menuItemImpl.C = false;
            menuItemImpl.n.p(false);
            toolbar.u();
            return true;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public final boolean f(SubMenuBuilder subMenuBuilder) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public final boolean g(MenuItemImpl menuItemImpl) {
            Toolbar toolbar = Toolbar.this;
            toolbar.c();
            ViewParent parent = toolbar.f1320i.getParent();
            if (parent != toolbar) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(toolbar.f1320i);
                }
                toolbar.addView(toolbar.f1320i);
            }
            View actionView = menuItemImpl.getActionView();
            toolbar.f1321j = actionView;
            this.f1327c = menuItemImpl;
            ViewParent parent2 = actionView.getParent();
            if (parent2 != toolbar) {
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(toolbar.f1321j);
                }
                LayoutParams layoutParamsH = Toolbar.h();
                layoutParamsH.f785a = (toolbar.o & 112) | 8388611;
                layoutParamsH.f1328b = 2;
                toolbar.f1321j.setLayoutParams(layoutParamsH);
                toolbar.addView(toolbar.f1321j);
            }
            for (int childCount = toolbar.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = toolbar.getChildAt(childCount);
                if (((LayoutParams) childAt.getLayoutParams()).f1328b != 2 && childAt != toolbar.f1315b) {
                    toolbar.removeViewAt(childCount);
                    toolbar.F.add(childAt);
                }
            }
            toolbar.requestLayout();
            menuItemImpl.C = true;
            menuItemImpl.n.p(false);
            KeyEvent.Callback callback = toolbar.f1321j;
            if (callback instanceof CollapsibleActionView) {
                ((CollapsibleActionView) callback).onActionViewExpanded();
            }
            toolbar.u();
            return true;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public final void h(boolean z) {
            if (this.f1327c != null) {
                MenuBuilder menuBuilder = this.f1326b;
                if (menuBuilder != null) {
                    int size = menuBuilder.f1008f.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        if (this.f1326b.getItem(i2) == this.f1327c) {
                            return;
                        }
                    }
                }
                e(this.f1327c);
            }
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public final boolean i() {
            return false;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public final void j(Context context, MenuBuilder menuBuilder) {
            MenuItemImpl menuItemImpl;
            MenuBuilder menuBuilder2 = this.f1326b;
            if (menuBuilder2 != null && (menuItemImpl = this.f1327c) != null) {
                menuBuilder2.d(menuItemImpl);
            }
            this.f1326b = menuBuilder;
        }
    }

    public interface OnMenuItemClickListener {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.x = 8388627;
        this.E = new ArrayList();
        this.F = new ArrayList();
        this.G = new int[2];
        this.H = new MenuHostHelper(new f31(this, 1));
        this.I = new ArrayList();
        this.K = new ActionMenuView.OnMenuItemClickListener() { // from class: androidx.appcompat.widget.Toolbar.1
            @Override // androidx.appcompat.widget.ActionMenuView.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                Toolbar toolbar = Toolbar.this;
                Iterator it = toolbar.H.f12171b.iterator();
                while (it.hasNext()) {
                    if (((MenuProvider) it.next()).c(menuItem)) {
                        return true;
                    }
                }
                OnMenuItemClickListener onMenuItemClickListener = toolbar.J;
                if (onMenuItemClickListener != null) {
                    return onMenuItemClickListener.onMenuItemClick(menuItem);
                }
                return false;
            }
        };
        this.V = new Runnable() { // from class: androidx.appcompat.widget.Toolbar.2
            @Override // java.lang.Runnable
            public void run() {
                ActionMenuPresenter actionMenuPresenter;
                ActionMenuView actionMenuView = Toolbar.this.f1315b;
                if (actionMenuView == null || (actionMenuPresenter = actionMenuView.u) == null) {
                    return;
                }
                actionMenuPresenter.o();
            }
        };
        Context context2 = getContext();
        int[] iArr = R$styleable.z;
        TintTypedArray tintTypedArrayE = TintTypedArray.e(i2, 0, context2, attributeSet, iArr);
        ViewCompat.s(this, context, iArr, attributeSet, tintTypedArrayE.f1313b, i2, 0);
        TypedArray typedArray = tintTypedArrayE.f1313b;
        this.m = typedArray.getResourceId(28, 0);
        this.n = typedArray.getResourceId(19, 0);
        this.x = typedArray.getInteger(0, 8388627);
        this.o = typedArray.getInteger(2, 48);
        int dimensionPixelOffset = typedArray.getDimensionPixelOffset(22, 0);
        dimensionPixelOffset = typedArray.hasValue(27) ? typedArray.getDimensionPixelOffset(27, dimensionPixelOffset) : dimensionPixelOffset;
        this.t = dimensionPixelOffset;
        this.s = dimensionPixelOffset;
        this.r = dimensionPixelOffset;
        this.q = dimensionPixelOffset;
        int dimensionPixelOffset2 = typedArray.getDimensionPixelOffset(25, -1);
        if (dimensionPixelOffset2 >= 0) {
            this.q = dimensionPixelOffset2;
        }
        int dimensionPixelOffset3 = typedArray.getDimensionPixelOffset(24, -1);
        if (dimensionPixelOffset3 >= 0) {
            this.r = dimensionPixelOffset3;
        }
        int dimensionPixelOffset4 = typedArray.getDimensionPixelOffset(26, -1);
        if (dimensionPixelOffset4 >= 0) {
            this.s = dimensionPixelOffset4;
        }
        int dimensionPixelOffset5 = typedArray.getDimensionPixelOffset(23, -1);
        if (dimensionPixelOffset5 >= 0) {
            this.t = dimensionPixelOffset5;
        }
        this.p = typedArray.getDimensionPixelSize(13, -1);
        int dimensionPixelOffset6 = typedArray.getDimensionPixelOffset(9, Integer.MIN_VALUE);
        int dimensionPixelOffset7 = typedArray.getDimensionPixelOffset(5, Integer.MIN_VALUE);
        int dimensionPixelSize = typedArray.getDimensionPixelSize(7, 0);
        int dimensionPixelSize2 = typedArray.getDimensionPixelSize(8, 0);
        d();
        RtlSpacingHelper rtlSpacingHelper = this.u;
        rtlSpacingHelper.f1266h = false;
        if (dimensionPixelSize != Integer.MIN_VALUE) {
            rtlSpacingHelper.f1264e = dimensionPixelSize;
            rtlSpacingHelper.f1261a = dimensionPixelSize;
        }
        if (dimensionPixelSize2 != Integer.MIN_VALUE) {
            rtlSpacingHelper.f1265f = dimensionPixelSize2;
            rtlSpacingHelper.f1262b = dimensionPixelSize2;
        }
        if (dimensionPixelOffset6 != Integer.MIN_VALUE || dimensionPixelOffset7 != Integer.MIN_VALUE) {
            rtlSpacingHelper.a(dimensionPixelOffset6, dimensionPixelOffset7);
        }
        this.v = typedArray.getDimensionPixelOffset(10, Integer.MIN_VALUE);
        this.w = typedArray.getDimensionPixelOffset(6, Integer.MIN_VALUE);
        this.g = tintTypedArrayE.b(4);
        this.f1319h = typedArray.getText(3);
        CharSequence text = typedArray.getText(21);
        if (!TextUtils.isEmpty(text)) {
            setTitle(text);
        }
        CharSequence text2 = typedArray.getText(18);
        if (!TextUtils.isEmpty(text2)) {
            setSubtitle(text2);
        }
        this.f1322k = getContext();
        setPopupTheme(typedArray.getResourceId(17, 0));
        Drawable drawableB = tintTypedArrayE.b(16);
        if (drawableB != null) {
            setNavigationIcon(drawableB);
        }
        CharSequence text3 = typedArray.getText(15);
        if (!TextUtils.isEmpty(text3)) {
            setNavigationContentDescription(text3);
        }
        Drawable drawableB2 = tintTypedArrayE.b(11);
        if (drawableB2 != null) {
            setLogo(drawableB2);
        }
        CharSequence text4 = typedArray.getText(12);
        if (!TextUtils.isEmpty(text4)) {
            setLogoDescription(text4);
        }
        if (typedArray.hasValue(29)) {
            setTitleTextColor(tintTypedArrayE.a(29));
        }
        if (typedArray.hasValue(20)) {
            setSubtitleTextColor(tintTypedArrayE.a(20));
        }
        if (typedArray.hasValue(14)) {
            m(typedArray.getResourceId(14, 0));
        }
        tintTypedArrayE.g();
    }

    private ArrayList<MenuItem> getCurrentMenuItems() {
        ArrayList<MenuItem> arrayList = new ArrayList<>();
        Menu menu = getMenu();
        for (int i2 = 0; i2 < menu.size(); i2++) {
            arrayList.add(menu.getItem(i2));
        }
        return arrayList;
    }

    private MenuInflater getMenuInflater() {
        return new SupportMenuInflater(getContext());
    }

    public static LayoutParams h() {
        return new LayoutParams(-2, -2);
    }

    public static LayoutParams i(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ActionBar.LayoutParams) {
            return new LayoutParams((ActionBar.LayoutParams) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    public static int k(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.getMarginEnd() + marginLayoutParams.getMarginStart();
    }

    public static int l(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    public final void a(int i2, ArrayList arrayList) {
        boolean z = getLayoutDirection() == 1;
        int childCount = getChildCount();
        int absoluteGravity = Gravity.getAbsoluteGravity(i2, getLayoutDirection());
        arrayList.clear();
        if (!z) {
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f1328b == 0 && t(childAt)) {
                    int i4 = layoutParams.f785a;
                    int layoutDirection = getLayoutDirection();
                    int absoluteGravity2 = Gravity.getAbsoluteGravity(i4, layoutDirection) & 7;
                    if (absoluteGravity2 != 1 && absoluteGravity2 != 3 && absoluteGravity2 != 5) {
                        absoluteGravity2 = layoutDirection == 1 ? 5 : 3;
                    }
                    if (absoluteGravity2 == absoluteGravity) {
                        arrayList.add(childAt);
                    }
                }
            }
            return;
        }
        for (int i5 = childCount - 1; i5 >= 0; i5--) {
            View childAt2 = getChildAt(i5);
            LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
            if (layoutParams2.f1328b == 0 && t(childAt2)) {
                int i6 = layoutParams2.f785a;
                int layoutDirection2 = getLayoutDirection();
                int absoluteGravity3 = Gravity.getAbsoluteGravity(i6, layoutDirection2) & 7;
                if (absoluteGravity3 != 1 && absoluteGravity3 != 3 && absoluteGravity3 != 5) {
                    absoluteGravity3 = layoutDirection2 == 1 ? 5 : 3;
                }
                if (absoluteGravity3 == absoluteGravity) {
                    arrayList.add(childAt2);
                }
            }
        }
    }

    @Override // androidx.core.view.MenuHost
    public final void addMenuProvider(MenuProvider menuProvider) {
        MenuHostHelper menuHostHelper = this.H;
        menuHostHelper.f12171b.add(menuProvider);
        menuHostHelper.f12170a.run();
    }

    public final void b(View view, boolean z) {
        LayoutParams layoutParamsI;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParamsI = h();
        } else {
            layoutParamsI = !checkLayoutParams(layoutParams) ? i(layoutParams) : (LayoutParams) layoutParams;
        }
        layoutParamsI.f1328b = 1;
        if (!z || this.f1321j == null) {
            addView(view, layoutParamsI);
        } else {
            view.setLayoutParams(layoutParamsI);
            this.F.add(view);
        }
    }

    public final void c() {
        if (this.f1320i == null) {
            AppCompatImageButton appCompatImageButton = new AppCompatImageButton(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            this.f1320i = appCompatImageButton;
            appCompatImageButton.setImageDrawable(this.g);
            this.f1320i.setContentDescription(this.f1319h);
            LayoutParams layoutParamsH = h();
            layoutParamsH.f785a = (this.o & 112) | 8388611;
            layoutParamsH.f1328b = 2;
            this.f1320i.setLayoutParams(layoutParamsH);
            this.f1320i.setOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.widget.Toolbar.4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    Callback.n(view);
                    try {
                        ExpandedActionViewMenuPresenter expandedActionViewMenuPresenter = Toolbar.this.N;
                        MenuItemImpl menuItemImpl = expandedActionViewMenuPresenter == null ? null : expandedActionViewMenuPresenter.f1327c;
                        if (menuItemImpl != null) {
                            menuItemImpl.collapseActionView();
                        }
                    } finally {
                        Callback.o();
                    }
                }
            });
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof LayoutParams);
    }

    public final void d() {
        if (this.u == null) {
            RtlSpacingHelper rtlSpacingHelper = new RtlSpacingHelper();
            rtlSpacingHelper.f1261a = 0;
            rtlSpacingHelper.f1262b = 0;
            rtlSpacingHelper.f1263c = Integer.MIN_VALUE;
            rtlSpacingHelper.d = Integer.MIN_VALUE;
            rtlSpacingHelper.f1264e = 0;
            rtlSpacingHelper.f1265f = 0;
            rtlSpacingHelper.g = false;
            rtlSpacingHelper.f1266h = false;
            this.u = rtlSpacingHelper;
        }
    }

    public final void e() {
        f();
        ActionMenuView actionMenuView = this.f1315b;
        if (actionMenuView.q == null) {
            MenuBuilder menuBuilder = (MenuBuilder) actionMenuView.getMenu();
            if (this.N == null) {
                this.N = new ExpandedActionViewMenuPresenter();
            }
            this.f1315b.setExpandedActionViewsExclusive(true);
            menuBuilder.b(this.N, this.f1322k);
            u();
        }
    }

    public final void f() {
        if (this.f1315b == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext());
            this.f1315b = actionMenuView;
            actionMenuView.setPopupTheme(this.l);
            this.f1315b.setOnMenuItemClickListener(this.K);
            ActionMenuView actionMenuView2 = this.f1315b;
            MenuPresenter.Callback callback = this.O;
            MenuBuilder.Callback callback2 = new MenuBuilder.Callback() { // from class: androidx.appcompat.widget.Toolbar.3
                @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
                public final boolean a(MenuBuilder menuBuilder, MenuItem menuItem) {
                    return false;
                }

                @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
                public final void b(MenuBuilder menuBuilder) {
                    Toolbar toolbar = Toolbar.this;
                    ActionMenuPresenter actionMenuPresenter = toolbar.f1315b.u;
                    if (actionMenuPresenter == null || !actionMenuPresenter.n()) {
                        Iterator it = toolbar.H.f12171b.iterator();
                        while (it.hasNext()) {
                            ((MenuProvider) it.next()).b(menuBuilder);
                        }
                    }
                    MenuBuilder.Callback callback3 = toolbar.P;
                    if (callback3 != null) {
                        callback3.b(menuBuilder);
                    }
                }
            };
            actionMenuView2.v = callback;
            actionMenuView2.w = callback2;
            LayoutParams layoutParamsH = h();
            layoutParamsH.f785a = (this.o & 112) | 8388613;
            this.f1315b.setLayoutParams(layoutParamsH);
            b(this.f1315b, false);
        }
    }

    public final void g() {
        if (this.f1317e == null) {
            this.f1317e = new AppCompatImageButton(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            LayoutParams layoutParamsH = h();
            layoutParamsH.f785a = (this.o & 112) | 8388611;
            this.f1317e.setLayoutParams(layoutParamsH);
        }
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return h();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public CharSequence getCollapseContentDescription() {
        AppCompatImageButton appCompatImageButton = this.f1320i;
        if (appCompatImageButton != null) {
            return appCompatImageButton.getContentDescription();
        }
        return null;
    }

    public Drawable getCollapseIcon() {
        AppCompatImageButton appCompatImageButton = this.f1320i;
        if (appCompatImageButton != null) {
            return appCompatImageButton.getDrawable();
        }
        return null;
    }

    public int getContentInsetEnd() {
        RtlSpacingHelper rtlSpacingHelper = this.u;
        if (rtlSpacingHelper != null) {
            return rtlSpacingHelper.g ? rtlSpacingHelper.f1261a : rtlSpacingHelper.f1262b;
        }
        return 0;
    }

    public int getContentInsetEndWithActions() {
        int i2 = this.w;
        return i2 != Integer.MIN_VALUE ? i2 : getContentInsetEnd();
    }

    public int getContentInsetLeft() {
        RtlSpacingHelper rtlSpacingHelper = this.u;
        if (rtlSpacingHelper != null) {
            return rtlSpacingHelper.f1261a;
        }
        return 0;
    }

    public int getContentInsetRight() {
        RtlSpacingHelper rtlSpacingHelper = this.u;
        if (rtlSpacingHelper != null) {
            return rtlSpacingHelper.f1262b;
        }
        return 0;
    }

    public int getContentInsetStart() {
        RtlSpacingHelper rtlSpacingHelper = this.u;
        if (rtlSpacingHelper != null) {
            return rtlSpacingHelper.g ? rtlSpacingHelper.f1262b : rtlSpacingHelper.f1261a;
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i2 = this.v;
        return i2 != Integer.MIN_VALUE ? i2 : getContentInsetStart();
    }

    public int getCurrentContentInsetEnd() {
        MenuBuilder menuBuilder;
        ActionMenuView actionMenuView = this.f1315b;
        return (actionMenuView == null || (menuBuilder = actionMenuView.q) == null || !menuBuilder.hasVisibleItems()) ? getContentInsetEnd() : Math.max(getContentInsetEnd(), Math.max(this.w, 0));
    }

    public int getCurrentContentInsetLeft() {
        return getLayoutDirection() == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        return getLayoutDirection() == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? Math.max(getContentInsetStart(), Math.max(this.v, 0)) : getContentInsetStart();
    }

    public Drawable getLogo() {
        AppCompatImageView appCompatImageView = this.f1318f;
        if (appCompatImageView != null) {
            return appCompatImageView.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        AppCompatImageView appCompatImageView = this.f1318f;
        if (appCompatImageView != null) {
            return appCompatImageView.getContentDescription();
        }
        return null;
    }

    public Menu getMenu() {
        e();
        return this.f1315b.getMenu();
    }

    public View getNavButtonView() {
        return this.f1317e;
    }

    public CharSequence getNavigationContentDescription() {
        AppCompatImageButton appCompatImageButton = this.f1317e;
        if (appCompatImageButton != null) {
            return appCompatImageButton.getContentDescription();
        }
        return null;
    }

    public Drawable getNavigationIcon() {
        AppCompatImageButton appCompatImageButton = this.f1317e;
        if (appCompatImageButton != null) {
            return appCompatImageButton.getDrawable();
        }
        return null;
    }

    public ActionMenuPresenter getOuterActionMenuPresenter() {
        return this.M;
    }

    public Drawable getOverflowIcon() {
        e();
        return this.f1315b.getOverflowIcon();
    }

    public Context getPopupContext() {
        return this.f1322k;
    }

    public int getPopupTheme() {
        return this.l;
    }

    public CharSequence getSubtitle() {
        return this.z;
    }

    public final TextView getSubtitleTextView() {
        return this.d;
    }

    public CharSequence getTitle() {
        return this.y;
    }

    public int getTitleMarginBottom() {
        return this.t;
    }

    public int getTitleMarginEnd() {
        return this.r;
    }

    public int getTitleMarginStart() {
        return this.q;
    }

    public int getTitleMarginTop() {
        return this.s;
    }

    public final TextView getTitleTextView() {
        return this.f1316c;
    }

    public DecorToolbar getWrapper() {
        if (this.L == null) {
            this.L = new ToolbarWidgetWrapper(this, true);
        }
        return this.L;
    }

    public final int j(int i2, View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i3 = i2 > 0 ? (measuredHeight - i2) / 2 : 0;
        int i4 = layoutParams.f785a & 112;
        if (i4 != 16 && i4 != 48 && i4 != 80) {
            i4 = this.x & 112;
        }
        if (i4 == 48) {
            return getPaddingTop() - i3;
        }
        if (i4 == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) - i3;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int iMax = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        int i5 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        if (iMax < i5) {
            iMax = i5;
        } else {
            int i6 = (((height - paddingBottom) - measuredHeight) - iMax) - paddingTop;
            int i7 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            if (i6 < i7) {
                iMax = Math.max(0, iMax - (i7 - i6));
            }
        }
        return paddingTop + iMax;
    }

    public void m(int i2) {
        getMenuInflater().inflate(i2, getMenu());
    }

    public final void n() {
        Iterator it = this.I.iterator();
        while (it.hasNext()) {
            getMenu().removeItem(((MenuItem) it.next()).getItemId());
        }
        Menu menu = getMenu();
        ArrayList<MenuItem> currentMenuItems = getCurrentMenuItems();
        MenuInflater menuInflater = getMenuInflater();
        Iterator it2 = this.H.f12171b.iterator();
        while (it2.hasNext()) {
            ((MenuProvider) it2.next()).d(menu, menuInflater);
        }
        ArrayList<MenuItem> currentMenuItems2 = getCurrentMenuItems();
        currentMenuItems2.removeAll(currentMenuItems);
        this.I = currentMenuItems2;
    }

    public final boolean o(View view) {
        return view.getParent() == this || this.F.contains(view);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        u();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.V);
        u();
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.D = false;
        }
        if (!this.D) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.D = true;
            }
        }
        if (actionMasked != 10 && actionMasked != 3) {
            return true;
        }
        this.D = false;
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x024b  */
    /* JADX WARN: Code duplicated, block: B:102:0x024e  */
    /* JADX WARN: Code duplicated, block: B:103:0x0270  */
    /* JADX WARN: Code duplicated, block: B:105:0x0273  */
    /* JADX WARN: Code duplicated, block: B:108:0x0285 A[LOOP:0: B:107:0x0283->B:108:0x0285, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:111:0x029d A[LOOP:1: B:110:0x029b->B:111:0x029d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:114:0x02bd A[LOOP:2: B:113:0x02bb->B:114:0x02bd, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:118:0x0303 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:119:0x0305  */
    /* JADX WARN: Code duplicated, block: B:120:0x0309  */
    /* JADX WARN: Code duplicated, block: B:123:0x0310 A[LOOP:3: B:122:0x030e->B:123:0x0310, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:20:0x0060  */
    /* JADX WARN: Code duplicated, block: B:22:0x0064  */
    /* JADX WARN: Code duplicated, block: B:23:0x0069  */
    /* JADX WARN: Code duplicated, block: B:26:0x0075  */
    /* JADX WARN: Code duplicated, block: B:28:0x0079  */
    /* JADX WARN: Code duplicated, block: B:29:0x007e  */
    /* JADX WARN: Code duplicated, block: B:32:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:34:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:35:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:38:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:40:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:41:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:44:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:45:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:47:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:48:0x0115  */
    /* JADX WARN: Code duplicated, block: B:51:0x011b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:52:0x011d  */
    /* JADX WARN: Code duplicated, block: B:53:0x0120  */
    /* JADX WARN: Code duplicated, block: B:55:0x0124  */
    /* JADX WARN: Code duplicated, block: B:56:0x0127  */
    /* JADX WARN: Code duplicated, block: B:59:0x0139  */
    /* JADX WARN: Code duplicated, block: B:61:0x0141 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:68:0x015a  */
    /* JADX WARN: Code duplicated, block: B:70:0x015e  */
    /* JADX WARN: Code duplicated, block: B:72:0x016f  */
    /* JADX WARN: Code duplicated, block: B:73:0x0171  */
    /* JADX WARN: Code duplicated, block: B:75:0x017d  */
    /* JADX WARN: Code duplicated, block: B:77:0x0189  */
    /* JADX WARN: Code duplicated, block: B:78:0x0193  */
    /* JADX WARN: Code duplicated, block: B:80:0x01a0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:81:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:82:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:85:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:86:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:88:0x01df  */
    /* JADX WARN: Code duplicated, block: B:89:0x0203  */
    /* JADX WARN: Code duplicated, block: B:91:0x0206  */
    /* JADX WARN: Code duplicated, block: B:93:0x020e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:94:0x0210  */
    /* JADX WARN: Code duplicated, block: B:96:0x0214  */
    /* JADX WARN: Code duplicated, block: B:99:0x0228  */
    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int iP;
        int iQ;
        int iMax;
        int iMin;
        boolean zT;
        boolean zT2;
        int measuredHeight;
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        LayoutParams layoutParams;
        LayoutParams layoutParams2;
        int i6;
        boolean z2;
        int i7;
        int i8;
        int paddingTop;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int iMax2;
        int i15;
        int i16;
        int i17;
        int i18;
        ArrayList arrayList;
        int size;
        int iP2;
        int i19;
        int size2;
        int i20;
        int i21;
        int size3;
        int i22;
        int i23;
        int measuredWidth;
        int i24;
        int i25;
        int i26;
        int size4;
        AppCompatImageView appCompatImageView;
        View view;
        ActionMenuView actionMenuView;
        AppCompatImageButton appCompatImageButton;
        boolean z3 = getLayoutDirection() == 1;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop2 = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i27 = width - paddingRight;
        int[] iArr = this.G;
        iArr[1] = 0;
        iArr[0] = 0;
        WeakHashMap weakHashMap = ViewCompat.f12200a;
        int minimumHeight = getMinimumHeight();
        int iMin2 = minimumHeight >= 0 ? Math.min(minimumHeight, i5 - i3) : 0;
        if (t(this.f1317e)) {
            AppCompatImageButton appCompatImageButton2 = this.f1317e;
            if (z3) {
                iQ = q(appCompatImageButton2, i27, iMin2, iArr);
                iP = paddingLeft;
            } else {
                iP = p(appCompatImageButton2, paddingLeft, iMin2, iArr);
            }
            if (t(this.f1320i)) {
                appCompatImageButton = this.f1320i;
                if (z3) {
                    iQ = q(appCompatImageButton, iQ, iMin2, iArr);
                } else {
                    iP = p(appCompatImageButton, iP, iMin2, iArr);
                }
            }
            if (t(this.f1315b)) {
                actionMenuView = this.f1315b;
                if (z3) {
                    iP = p(actionMenuView, iP, iMin2, iArr);
                } else {
                    iQ = q(actionMenuView, iQ, iMin2, iArr);
                }
            }
            int currentContentInsetLeft = getCurrentContentInsetLeft();
            int currentContentInsetRight = getCurrentContentInsetRight();
            iArr[0] = Math.max(0, currentContentInsetLeft - iP);
            iArr[1] = Math.max(0, currentContentInsetRight - (i27 - iQ));
            iMax = Math.max(iP, currentContentInsetLeft);
            iMin = Math.min(iQ, i27 - currentContentInsetRight);
            if (t(this.f1321j)) {
                view = this.f1321j;
                if (z3) {
                    iMin = q(view, iMin, iMin2, iArr);
                } else {
                    iMax = p(view, iMax, iMin2, iArr);
                }
            }
            if (t(this.f1318f)) {
                appCompatImageView = this.f1318f;
                if (z3) {
                    iMin = q(appCompatImageView, iMin, iMin2, iArr);
                } else {
                    iMax = p(appCompatImageView, iMax, iMin2, iArr);
                }
            }
            zT = t(this.f1316c);
            zT2 = t(this.d);
            if (zT) {
                LayoutParams layoutParams3 = (LayoutParams) this.f1316c.getLayoutParams();
                measuredHeight = this.f1316c.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams3).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams3).bottomMargin;
            } else {
                measuredHeight = 0;
            }
            if (zT2) {
                LayoutParams layoutParams4 = (LayoutParams) this.d.getLayoutParams();
                measuredHeight = this.d.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams4).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams4).bottomMargin + measuredHeight;
            }
            if (zT || zT2) {
                if (zT) {
                    appCompatTextView = this.f1316c;
                } else {
                    appCompatTextView = this.d;
                }
                if (zT2) {
                    appCompatTextView2 = this.d;
                } else {
                    appCompatTextView2 = this.f1316c;
                }
                layoutParams = (LayoutParams) appCompatTextView.getLayoutParams();
                layoutParams2 = (LayoutParams) appCompatTextView2.getLayoutParams();
                i6 = measuredHeight;
                z2 = (!zT && this.f1316c.getMeasuredWidth() > 0) || (zT2 && this.d.getMeasuredWidth() > 0);
                i7 = this.x & 112;
                i8 = iMax;
                if (i7 == 48) {
                    paddingTop = getPaddingTop() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + this.s;
                } else if (i7 != 80) {
                    iMax2 = (((height - paddingTop2) - paddingBottom) - i6) / 2;
                    i15 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + this.s;
                    if (iMax2 < i15) {
                        iMax2 = i15;
                    } else {
                        i16 = (((height - paddingBottom) - i6) - iMax2) - paddingTop2;
                        i17 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                        i18 = this.t;
                        if (i16 < i17 + i18) {
                            iMax2 = Math.max(0, iMax2 - ((((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin + i18) - i16));
                        }
                    }
                    paddingTop = paddingTop2 + iMax2;
                } else {
                    paddingTop = (((height - paddingBottom) - ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin) - this.t) - i6;
                }
                if (z3) {
                    if (z2) {
                        i12 = this.q;
                    } else {
                        i12 = 0;
                    }
                    int i28 = i12 - iArr[1];
                    iMin -= Math.max(0, i28);
                    iArr[1] = Math.max(0, -i28);
                    if (zT) {
                        LayoutParams layoutParams5 = (LayoutParams) this.f1316c.getLayoutParams();
                        int measuredWidth2 = iMin - this.f1316c.getMeasuredWidth();
                        int measuredHeight2 = this.f1316c.getMeasuredHeight() + paddingTop;
                        this.f1316c.layout(measuredWidth2, paddingTop, iMin, measuredHeight2);
                        i13 = measuredWidth2 - this.r;
                        paddingTop = measuredHeight2 + ((ViewGroup.MarginLayoutParams) layoutParams5).bottomMargin;
                    } else {
                        i13 = iMin;
                    }
                    if (zT2) {
                        int i29 = paddingTop + ((ViewGroup.MarginLayoutParams) ((LayoutParams) this.d.getLayoutParams())).topMargin;
                        this.d.layout(iMin - this.d.getMeasuredWidth(), i29, iMin, this.d.getMeasuredHeight() + i29);
                        i14 = iMin - this.r;
                    } else {
                        i14 = iMin;
                    }
                    if (z2) {
                        iMin = Math.min(i13, i14);
                    }
                    iMax = i8;
                } else {
                    if (z2) {
                        i9 = this.q;
                    } else {
                        i9 = 0;
                    }
                    int i30 = i9 - iArr[0];
                    iMax = Math.max(0, i30) + i8;
                    iArr[0] = Math.max(0, -i30);
                    if (zT) {
                        LayoutParams layoutParams6 = (LayoutParams) this.f1316c.getLayoutParams();
                        int measuredWidth3 = this.f1316c.getMeasuredWidth() + iMax;
                        int measuredHeight3 = this.f1316c.getMeasuredHeight() + paddingTop;
                        this.f1316c.layout(iMax, paddingTop, measuredWidth3, measuredHeight3);
                        i10 = measuredWidth3 + this.r;
                        paddingTop = measuredHeight3 + ((ViewGroup.MarginLayoutParams) layoutParams6).bottomMargin;
                    } else {
                        i10 = iMax;
                    }
                    if (zT2) {
                        int i31 = paddingTop + ((ViewGroup.MarginLayoutParams) ((LayoutParams) this.d.getLayoutParams())).topMargin;
                        int measuredWidth4 = this.d.getMeasuredWidth() + iMax;
                        this.d.layout(iMax, i31, measuredWidth4, this.d.getMeasuredHeight() + i31);
                        i11 = measuredWidth4 + this.r;
                    } else {
                        i11 = iMax;
                    }
                    if (z2) {
                        iMax = Math.max(i10, i11);
                    }
                }
            }
            arrayList = this.E;
            a(3, arrayList);
            size = arrayList.size();
            iP2 = iMax;
            for (i19 = 0; i19 < size; i19++) {
                iP2 = p((View) arrayList.get(i19), iP2, iMin2, iArr);
            }
            a(5, arrayList);
            size2 = arrayList.size();
            for (i20 = 0; i20 < size2; i20++) {
                iMin = q((View) arrayList.get(i20), iMin, iMin2, iArr);
            }
            a(1, arrayList);
            int i32 = iArr[0];
            i21 = iArr[1];
            size3 = arrayList.size();
            i22 = i32;
            i23 = 0;
            measuredWidth = 0;
            while (i23 < size3) {
                View view2 = (View) arrayList.get(i23);
                LayoutParams layoutParams7 = (LayoutParams) view2.getLayoutParams();
                int i33 = i21;
                int i34 = ((ViewGroup.MarginLayoutParams) layoutParams7).leftMargin - i22;
                int i35 = ((ViewGroup.MarginLayoutParams) layoutParams7).rightMargin - i33;
                int iMax3 = Math.max(0, i34);
                int iMax4 = Math.max(0, i35);
                int iMax5 = Math.max(0, -i34);
                int iMax6 = Math.max(0, -i35);
                measuredWidth += view2.getMeasuredWidth() + iMax3 + iMax4;
                i23++;
                i22 = iMax5;
                i21 = iMax6;
            }
            i25 = ((((width - paddingLeft) - paddingRight) / 2) + paddingLeft) - (measuredWidth / 2);
            i26 = measuredWidth + i25;
            if (i25 >= iP2) {
                if (i26 > iMin) {
                    iP2 = i25 - (i26 - iMin);
                } else {
                    iP2 = i25;
                }
            }
            size4 = arrayList.size();
            for (i24 = 0; i24 < size4; i24++) {
                iP2 = p((View) arrayList.get(i24), iP2, iMin2, iArr);
            }
            arrayList.clear();
        }
        iP = paddingLeft;
        iQ = i27;
        if (t(this.f1320i)) {
            appCompatImageButton = this.f1320i;
            if (z3) {
                iQ = q(appCompatImageButton, iQ, iMin2, iArr);
            } else {
                iP = p(appCompatImageButton, iP, iMin2, iArr);
            }
        }
        if (t(this.f1315b)) {
            actionMenuView = this.f1315b;
            if (z3) {
                iP = p(actionMenuView, iP, iMin2, iArr);
            } else {
                iQ = q(actionMenuView, iQ, iMin2, iArr);
            }
        }
        int currentContentInsetLeft2 = getCurrentContentInsetLeft();
        int currentContentInsetRight2 = getCurrentContentInsetRight();
        iArr[0] = Math.max(0, currentContentInsetLeft2 - iP);
        iArr[1] = Math.max(0, currentContentInsetRight2 - (i27 - iQ));
        iMax = Math.max(iP, currentContentInsetLeft2);
        iMin = Math.min(iQ, i27 - currentContentInsetRight2);
        if (t(this.f1321j)) {
            view = this.f1321j;
            if (z3) {
                iMin = q(view, iMin, iMin2, iArr);
            } else {
                iMax = p(view, iMax, iMin2, iArr);
            }
        }
        if (t(this.f1318f)) {
            appCompatImageView = this.f1318f;
            if (z3) {
                iMin = q(appCompatImageView, iMin, iMin2, iArr);
            } else {
                iMax = p(appCompatImageView, iMax, iMin2, iArr);
            }
        }
        zT = t(this.f1316c);
        zT2 = t(this.d);
        if (zT) {
            LayoutParams layoutParams8 = (LayoutParams) this.f1316c.getLayoutParams();
            measuredHeight = this.f1316c.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams8).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams8).bottomMargin;
        } else {
            measuredHeight = 0;
        }
        if (zT2) {
            LayoutParams layoutParams9 = (LayoutParams) this.d.getLayoutParams();
            measuredHeight = this.d.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams9).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams9).bottomMargin + measuredHeight;
        }
        if (zT) {
            if (zT) {
                appCompatTextView = this.f1316c;
            } else {
                appCompatTextView = this.d;
            }
            if (zT2) {
                appCompatTextView2 = this.d;
            } else {
                appCompatTextView2 = this.f1316c;
            }
            layoutParams = (LayoutParams) appCompatTextView.getLayoutParams();
            layoutParams2 = (LayoutParams) appCompatTextView2.getLayoutParams();
            i6 = measuredHeight;
            if (zT) {
            }
            i7 = this.x & 112;
            i8 = iMax;
            if (i7 == 48) {
                paddingTop = getPaddingTop() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + this.s;
            } else if (i7 != 80) {
                iMax2 = (((height - paddingTop2) - paddingBottom) - i6) / 2;
                i15 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + this.s;
                if (iMax2 < i15) {
                    iMax2 = i15;
                } else {
                    i16 = (((height - paddingBottom) - i6) - iMax2) - paddingTop2;
                    i17 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                    i18 = this.t;
                    if (i16 < i17 + i18) {
                        iMax2 = Math.max(0, iMax2 - ((((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin + i18) - i16));
                    }
                }
                paddingTop = paddingTop2 + iMax2;
            } else {
                paddingTop = (((height - paddingBottom) - ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin) - this.t) - i6;
            }
            if (z3) {
                if (z2) {
                    i12 = this.q;
                } else {
                    i12 = 0;
                }
                int i210 = i12 - iArr[1];
                iMin -= Math.max(0, i210);
                iArr[1] = Math.max(0, -i210);
                if (zT) {
                    LayoutParams layoutParams10 = (LayoutParams) this.f1316c.getLayoutParams();
                    int measuredWidth5 = iMin - this.f1316c.getMeasuredWidth();
                    int measuredHeight4 = this.f1316c.getMeasuredHeight() + paddingTop;
                    this.f1316c.layout(measuredWidth5, paddingTop, iMin, measuredHeight4);
                    i13 = measuredWidth5 - this.r;
                    paddingTop = measuredHeight4 + ((ViewGroup.MarginLayoutParams) layoutParams10).bottomMargin;
                } else {
                    i13 = iMin;
                }
                if (zT2) {
                    int i211 = paddingTop + ((ViewGroup.MarginLayoutParams) ((LayoutParams) this.d.getLayoutParams())).topMargin;
                    this.d.layout(iMin - this.d.getMeasuredWidth(), i211, iMin, this.d.getMeasuredHeight() + i211);
                    i14 = iMin - this.r;
                } else {
                    i14 = iMin;
                }
                if (z2) {
                    iMin = Math.min(i13, i14);
                }
                iMax = i8;
            } else {
                if (z2) {
                    i9 = this.q;
                } else {
                    i9 = 0;
                }
                int i36 = i9 - iArr[0];
                iMax = Math.max(0, i36) + i8;
                iArr[0] = Math.max(0, -i36);
                if (zT) {
                    LayoutParams layoutParams11 = (LayoutParams) this.f1316c.getLayoutParams();
                    int measuredWidth6 = this.f1316c.getMeasuredWidth() + iMax;
                    int measuredHeight5 = this.f1316c.getMeasuredHeight() + paddingTop;
                    this.f1316c.layout(iMax, paddingTop, measuredWidth6, measuredHeight5);
                    i10 = measuredWidth6 + this.r;
                    paddingTop = measuredHeight5 + ((ViewGroup.MarginLayoutParams) layoutParams11).bottomMargin;
                } else {
                    i10 = iMax;
                }
                if (zT2) {
                    int i37 = paddingTop + ((ViewGroup.MarginLayoutParams) ((LayoutParams) this.d.getLayoutParams())).topMargin;
                    int measuredWidth7 = this.d.getMeasuredWidth() + iMax;
                    this.d.layout(iMax, i37, measuredWidth7, this.d.getMeasuredHeight() + i37);
                    i11 = measuredWidth7 + this.r;
                } else {
                    i11 = iMax;
                }
                if (z2) {
                    iMax = Math.max(i10, i11);
                }
            }
        } else {
            if (zT) {
                appCompatTextView = this.f1316c;
            } else {
                appCompatTextView = this.d;
            }
            if (zT2) {
                appCompatTextView2 = this.d;
            } else {
                appCompatTextView2 = this.f1316c;
            }
            layoutParams = (LayoutParams) appCompatTextView.getLayoutParams();
            layoutParams2 = (LayoutParams) appCompatTextView2.getLayoutParams();
            i6 = measuredHeight;
            if (zT) {
            }
            i7 = this.x & 112;
            i8 = iMax;
            if (i7 == 48) {
                paddingTop = getPaddingTop() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + this.s;
            } else if (i7 != 80) {
                iMax2 = (((height - paddingTop2) - paddingBottom) - i6) / 2;
                i15 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + this.s;
                if (iMax2 < i15) {
                    iMax2 = i15;
                } else {
                    i16 = (((height - paddingBottom) - i6) - iMax2) - paddingTop2;
                    i17 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                    i18 = this.t;
                    if (i16 < i17 + i18) {
                        iMax2 = Math.max(0, iMax2 - ((((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin + i18) - i16));
                    }
                }
                paddingTop = paddingTop2 + iMax2;
            } else {
                paddingTop = (((height - paddingBottom) - ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin) - this.t) - i6;
            }
            if (z3) {
                if (z2) {
                    i12 = this.q;
                } else {
                    i12 = 0;
                }
                int i212 = i12 - iArr[1];
                iMin -= Math.max(0, i212);
                iArr[1] = Math.max(0, -i212);
                if (zT) {
                    LayoutParams layoutParams12 = (LayoutParams) this.f1316c.getLayoutParams();
                    int measuredWidth8 = iMin - this.f1316c.getMeasuredWidth();
                    int measuredHeight6 = this.f1316c.getMeasuredHeight() + paddingTop;
                    this.f1316c.layout(measuredWidth8, paddingTop, iMin, measuredHeight6);
                    i13 = measuredWidth8 - this.r;
                    paddingTop = measuredHeight6 + ((ViewGroup.MarginLayoutParams) layoutParams12).bottomMargin;
                } else {
                    i13 = iMin;
                }
                if (zT2) {
                    int i213 = paddingTop + ((ViewGroup.MarginLayoutParams) ((LayoutParams) this.d.getLayoutParams())).topMargin;
                    this.d.layout(iMin - this.d.getMeasuredWidth(), i213, iMin, this.d.getMeasuredHeight() + i213);
                    i14 = iMin - this.r;
                } else {
                    i14 = iMin;
                }
                if (z2) {
                    iMin = Math.min(i13, i14);
                }
                iMax = i8;
            } else {
                if (z2) {
                    i9 = this.q;
                } else {
                    i9 = 0;
                }
                int i38 = i9 - iArr[0];
                iMax = Math.max(0, i38) + i8;
                iArr[0] = Math.max(0, -i38);
                if (zT) {
                    LayoutParams layoutParams13 = (LayoutParams) this.f1316c.getLayoutParams();
                    int measuredWidth9 = this.f1316c.getMeasuredWidth() + iMax;
                    int measuredHeight7 = this.f1316c.getMeasuredHeight() + paddingTop;
                    this.f1316c.layout(iMax, paddingTop, measuredWidth9, measuredHeight7);
                    i10 = measuredWidth9 + this.r;
                    paddingTop = measuredHeight7 + ((ViewGroup.MarginLayoutParams) layoutParams13).bottomMargin;
                } else {
                    i10 = iMax;
                }
                if (zT2) {
                    int i39 = paddingTop + ((ViewGroup.MarginLayoutParams) ((LayoutParams) this.d.getLayoutParams())).topMargin;
                    int measuredWidth10 = this.d.getMeasuredWidth() + iMax;
                    this.d.layout(iMax, i39, measuredWidth10, this.d.getMeasuredHeight() + i39);
                    i11 = measuredWidth10 + this.r;
                } else {
                    i11 = iMax;
                }
                if (z2) {
                    iMax = Math.max(i10, i11);
                }
            }
        }
        arrayList = this.E;
        a(3, arrayList);
        size = arrayList.size();
        iP2 = iMax;
        while (i19 < size) {
            iP2 = p((View) arrayList.get(i19), iP2, iMin2, iArr);
        }
        a(5, arrayList);
        size2 = arrayList.size();
        while (i20 < size2) {
            iMin = q((View) arrayList.get(i20), iMin, iMin2, iArr);
        }
        a(1, arrayList);
        int i310 = iArr[0];
        i21 = iArr[1];
        size3 = arrayList.size();
        i22 = i310;
        i23 = 0;
        measuredWidth = 0;
        while (i23 < size3) {
            View view3 = (View) arrayList.get(i23);
            LayoutParams layoutParams14 = (LayoutParams) view3.getLayoutParams();
            int i311 = i21;
            int i312 = ((ViewGroup.MarginLayoutParams) layoutParams14).leftMargin - i22;
            int i313 = ((ViewGroup.MarginLayoutParams) layoutParams14).rightMargin - i311;
            int iMax7 = Math.max(0, i312);
            int iMax8 = Math.max(0, i313);
            int iMax9 = Math.max(0, -i312);
            int iMax10 = Math.max(0, -i313);
            measuredWidth += view3.getMeasuredWidth() + iMax7 + iMax8;
            i23++;
            i22 = iMax9;
            i21 = iMax10;
        }
        i25 = ((((width - paddingLeft) - paddingRight) / 2) + paddingLeft) - (measuredWidth / 2);
        i26 = measuredWidth + i25;
        if (i25 >= iP2) {
            if (i26 > iMin) {
                iP2 = i25 - (i26 - iMin);
            } else {
                iP2 = i25;
            }
        }
        size4 = arrayList.size();
        while (i24 < size4) {
            iP2 = p((View) arrayList.get(i24), iP2, iMin2, iArr);
        }
        arrayList.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        char c2;
        Object[] objArr;
        int iK;
        int iMax;
        int iCombineMeasuredStates;
        int iK2;
        int iL;
        int iCombineMeasuredStates2;
        int iMax2;
        int i4 = 0;
        if (getLayoutDirection() == 1) {
            objArr = true;
            c2 = 0;
        } else {
            c2 = 1;
            objArr = false;
        }
        if (t(this.f1317e)) {
            s(this.f1317e, i2, 0, i3, this.p);
            iK = k(this.f1317e) + this.f1317e.getMeasuredWidth();
            iMax = Math.max(0, l(this.f1317e) + this.f1317e.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(0, this.f1317e.getMeasuredState());
        } else {
            iK = 0;
            iMax = 0;
            iCombineMeasuredStates = 0;
        }
        if (t(this.f1320i)) {
            s(this.f1320i, i2, 0, i3, this.p);
            iK = k(this.f1320i) + this.f1320i.getMeasuredWidth();
            iMax = Math.max(iMax, l(this.f1320i) + this.f1320i.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f1320i.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int iMax3 = Math.max(currentContentInsetStart, iK);
        int iMax4 = Math.max(0, currentContentInsetStart - iK);
        Object[] objArr2 = objArr;
        int[] iArr = this.G;
        iArr[objArr2 == true ? 1 : 0] = iMax4;
        if (t(this.f1315b)) {
            s(this.f1315b, i2, iMax3, i3, this.p);
            iK2 = k(this.f1315b) + this.f1315b.getMeasuredWidth();
            iMax = Math.max(iMax, l(this.f1315b) + this.f1315b.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f1315b.getMeasuredState());
        } else {
            iK2 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int iMax5 = iMax3 + Math.max(currentContentInsetEnd, iK2);
        iArr[c2] = Math.max(0, currentContentInsetEnd - iK2);
        if (t(this.f1321j)) {
            iMax5 += r(this.f1321j, i2, iMax5, i3, 0, iArr);
            iMax = Math.max(iMax, l(this.f1321j) + this.f1321j.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f1321j.getMeasuredState());
        }
        if (t(this.f1318f)) {
            iMax5 += r(this.f1318f, i2, iMax5, i3, 0, iArr);
            iMax = Math.max(iMax, l(this.f1318f) + this.f1318f.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f1318f.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (((LayoutParams) childAt.getLayoutParams()).f1328b == 0 && t(childAt)) {
                iMax5 += r(childAt, i2, iMax5, i3, 0, iArr);
                int iMax6 = Math.max(iMax, l(childAt) + childAt.getMeasuredHeight());
                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, childAt.getMeasuredState());
                iMax = iMax6;
            } else {
                iMax5 = iMax5;
            }
        }
        int i6 = iMax5;
        int i7 = this.s + this.t;
        int i8 = this.q + this.r;
        if (t(this.f1316c)) {
            r(this.f1316c, i2, i6 + i8, i3, i7, iArr);
            int iK3 = k(this.f1316c) + this.f1316c.getMeasuredWidth();
            iL = l(this.f1316c) + this.f1316c.getMeasuredHeight();
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.f1316c.getMeasuredState());
            iMax2 = iK3;
        } else {
            iL = 0;
            iCombineMeasuredStates2 = iCombineMeasuredStates;
            iMax2 = 0;
        }
        if (t(this.d)) {
            iMax2 = Math.max(iMax2, r(this.d, i2, i6 + i8, i3, i7 + iL, iArr));
            iL += l(this.d) + this.d.getMeasuredHeight();
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, this.d.getMeasuredState());
        }
        int iMax7 = Math.max(iMax, iL);
        int paddingRight = getPaddingRight() + getPaddingLeft() + i6 + iMax2;
        int paddingBottom = getPaddingBottom() + getPaddingTop() + iMax7;
        int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingRight, getSuggestedMinimumWidth()), i2, (-16777216) & iCombineMeasuredStates2);
        int iResolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i3, iCombineMeasuredStates2 << 16);
        if (!this.Q) {
            i4 = iResolveSizeAndState2;
            break;
        }
        int childCount2 = getChildCount();
        for (int i9 = 0; i9 < childCount2; i9++) {
            View childAt2 = getChildAt(i9);
            if (t(childAt2) && childAt2.getMeasuredWidth() > 0 && childAt2.getMeasuredHeight() > 0) {
                i4 = iResolveSizeAndState2;
                break;
            }
        }
        setMeasuredDimension(iResolveSizeAndState, i4);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem menuItemFindItem;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.f12555b);
        ActionMenuView actionMenuView = this.f1315b;
        MenuBuilder menuBuilder = actionMenuView != null ? actionMenuView.q : null;
        int i2 = savedState.d;
        if (i2 != 0 && this.N != null && menuBuilder != null && (menuItemFindItem = menuBuilder.findItem(i2)) != null) {
            menuItemFindItem.expandActionView();
        }
        if (savedState.f1329e) {
            Runnable runnable = this.V;
            removeCallbacks(runnable);
            post(runnable);
        }
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i2) {
        super.onRtlPropertiesChanged(i2);
        d();
        RtlSpacingHelper rtlSpacingHelper = this.u;
        boolean z = i2 == 1;
        if (z == rtlSpacingHelper.g) {
            return;
        }
        rtlSpacingHelper.g = z;
        if (!rtlSpacingHelper.f1266h) {
            rtlSpacingHelper.f1261a = rtlSpacingHelper.f1264e;
            rtlSpacingHelper.f1262b = rtlSpacingHelper.f1265f;
            return;
        }
        if (z) {
            int i3 = rtlSpacingHelper.d;
            if (i3 == Integer.MIN_VALUE) {
                i3 = rtlSpacingHelper.f1264e;
            }
            rtlSpacingHelper.f1261a = i3;
            int i4 = rtlSpacingHelper.f1263c;
            if (i4 == Integer.MIN_VALUE) {
                i4 = rtlSpacingHelper.f1265f;
            }
            rtlSpacingHelper.f1262b = i4;
            return;
        }
        int i5 = rtlSpacingHelper.f1263c;
        if (i5 == Integer.MIN_VALUE) {
            i5 = rtlSpacingHelper.f1264e;
        }
        rtlSpacingHelper.f1261a = i5;
        int i6 = rtlSpacingHelper.d;
        if (i6 == Integer.MIN_VALUE) {
            i6 = rtlSpacingHelper.f1265f;
        }
        rtlSpacingHelper.f1262b = i6;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        ActionMenuPresenter actionMenuPresenter;
        MenuItemImpl menuItemImpl;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        ExpandedActionViewMenuPresenter expandedActionViewMenuPresenter = this.N;
        if (expandedActionViewMenuPresenter != null && (menuItemImpl = expandedActionViewMenuPresenter.f1327c) != null) {
            savedState.d = menuItemImpl.f1015a;
        }
        ActionMenuView actionMenuView = this.f1315b;
        savedState.f1329e = (actionMenuView == null || (actionMenuPresenter = actionMenuView.u) == null || !actionMenuPresenter.n()) ? false : true;
        return savedState;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.C = false;
        }
        if (!this.C) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.C = true;
            }
        }
        if (actionMasked != 1 && actionMasked != 3) {
            return true;
        }
        this.C = false;
        return true;
    }

    public final int p(View view, int i2, int i3, int[] iArr) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i4 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin - iArr[0];
        int iMax = Math.max(0, i4) + i2;
        iArr[0] = Math.max(0, -i4);
        int iJ = j(i3, view);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax, iJ, iMax + measuredWidth, view.getMeasuredHeight() + iJ);
        return measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + iMax;
    }

    public final int q(View view, int i2, int i3, int[] iArr) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i4 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin - iArr[1];
        int iMax = i2 - Math.max(0, i4);
        iArr[1] = Math.max(0, -i4);
        int iJ = j(i3, view);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax - measuredWidth, iJ, iMax, view.getMeasuredHeight() + iJ);
        return iMax - (measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin);
    }

    public final int r(View view, int i2, int i3, int i4, int i5, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i6 = marginLayoutParams.leftMargin - iArr[0];
        int i7 = marginLayoutParams.rightMargin - iArr[1];
        int iMax = Math.max(0, i7) + Math.max(0, i6);
        iArr[0] = Math.max(0, -i6);
        iArr[1] = Math.max(0, -i7);
        view.measure(ViewGroup.getChildMeasureSpec(i2, getPaddingRight() + getPaddingLeft() + iMax + i3, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i4, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i5, marginLayoutParams.height));
        return view.getMeasuredWidth() + iMax;
    }

    @Override // androidx.core.view.MenuHost
    public final void removeMenuProvider(MenuProvider menuProvider) {
        this.H.c(menuProvider);
    }

    public final void s(View view, int i2, int i3, int i4, int i5) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i3, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i4, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i5 >= 0) {
            if (mode != 0) {
                i5 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i5);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i5, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    public void setBackInvokedCallbackEnabled(boolean z) {
        if (this.T != z) {
            this.T = z;
            u();
        }
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            c();
        }
        AppCompatImageButton appCompatImageButton = this.f1320i;
        if (appCompatImageButton != null) {
            appCompatImageButton.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            c();
            this.f1320i.setImageDrawable(drawable);
        } else {
            AppCompatImageButton appCompatImageButton = this.f1320i;
            if (appCompatImageButton != null) {
                appCompatImageButton.setImageDrawable(this.g);
            }
        }
    }

    public void setCollapsible(boolean z) {
        this.Q = z;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i2) {
        if (i2 < 0) {
            i2 = Integer.MIN_VALUE;
        }
        if (i2 != this.w) {
            this.w = i2;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i2) {
        if (i2 < 0) {
            i2 = Integer.MIN_VALUE;
        }
        if (i2 != this.v) {
            this.v = i2;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setLogo(Drawable drawable) {
        AppCompatImageView appCompatImageView = this.f1318f;
        if (drawable != null) {
            if (appCompatImageView == null) {
                this.f1318f = new AppCompatImageView(getContext());
            }
            if (!o(this.f1318f)) {
                b(this.f1318f, true);
            }
        } else if (appCompatImageView != null && o(appCompatImageView)) {
            removeView(this.f1318f);
            this.F.remove(this.f1318f);
        }
        AppCompatImageView appCompatImageView2 = this.f1318f;
        if (appCompatImageView2 != null) {
            appCompatImageView2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence) && this.f1318f == null) {
            this.f1318f = new AppCompatImageView(getContext());
        }
        AppCompatImageView appCompatImageView = this.f1318f;
        if (appCompatImageView != null) {
            appCompatImageView.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            g();
        }
        AppCompatImageButton appCompatImageButton = this.f1317e;
        if (appCompatImageButton != null) {
            appCompatImageButton.setContentDescription(charSequence);
            TooltipCompat.Api26Impl.a(this.f1317e, charSequence);
        }
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            g();
            if (!o(this.f1317e)) {
                b(this.f1317e, true);
            }
        } else {
            AppCompatImageButton appCompatImageButton = this.f1317e;
            if (appCompatImageButton != null && o(appCompatImageButton)) {
                removeView(this.f1317e);
                this.F.remove(this.f1317e);
            }
        }
        AppCompatImageButton appCompatImageButton2 = this.f1317e;
        if (appCompatImageButton2 != null) {
            appCompatImageButton2.setImageDrawable(drawable);
        }
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        g();
        this.f1317e.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(OnMenuItemClickListener onMenuItemClickListener) {
        this.J = onMenuItemClickListener;
    }

    public void setOverflowIcon(Drawable drawable) {
        e();
        this.f1315b.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i2) {
        if (this.l != i2) {
            this.l = i2;
            if (i2 == 0) {
                this.f1322k = getContext();
            } else {
                this.f1322k = new ContextThemeWrapper(getContext(), i2);
            }
        }
    }

    public void setSubtitle(CharSequence charSequence) {
        boolean zIsEmpty = TextUtils.isEmpty(charSequence);
        AppCompatTextView appCompatTextView = this.d;
        if (!zIsEmpty) {
            if (appCompatTextView == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView2 = new AppCompatTextView(context);
                this.d = appCompatTextView2;
                appCompatTextView2.setSingleLine();
                this.d.setEllipsize(TextUtils.TruncateAt.END);
                int i2 = this.n;
                if (i2 != 0) {
                    this.d.setTextAppearance(context, i2);
                }
                ColorStateList colorStateList = this.B;
                if (colorStateList != null) {
                    this.d.setTextColor(colorStateList);
                }
            }
            if (!o(this.d)) {
                b(this.d, true);
            }
        } else if (appCompatTextView != null && o(appCompatTextView)) {
            removeView(this.d);
            this.F.remove(this.d);
        }
        AppCompatTextView appCompatTextView3 = this.d;
        if (appCompatTextView3 != null) {
            appCompatTextView3.setText(charSequence);
        }
        this.z = charSequence;
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.B = colorStateList;
        AppCompatTextView appCompatTextView = this.d;
        if (appCompatTextView != null) {
            appCompatTextView.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        boolean zIsEmpty = TextUtils.isEmpty(charSequence);
        AppCompatTextView appCompatTextView = this.f1316c;
        if (!zIsEmpty) {
            if (appCompatTextView == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView2 = new AppCompatTextView(context);
                this.f1316c = appCompatTextView2;
                appCompatTextView2.setSingleLine();
                this.f1316c.setEllipsize(TextUtils.TruncateAt.END);
                int i2 = this.m;
                if (i2 != 0) {
                    this.f1316c.setTextAppearance(context, i2);
                }
                ColorStateList colorStateList = this.A;
                if (colorStateList != null) {
                    this.f1316c.setTextColor(colorStateList);
                }
            }
            if (!o(this.f1316c)) {
                b(this.f1316c, true);
            }
        } else if (appCompatTextView != null && o(appCompatTextView)) {
            removeView(this.f1316c);
            this.F.remove(this.f1316c);
        }
        AppCompatTextView appCompatTextView3 = this.f1316c;
        if (appCompatTextView3 != null) {
            appCompatTextView3.setText(charSequence);
        }
        this.y = charSequence;
    }

    public void setTitleMarginBottom(int i2) {
        this.t = i2;
        requestLayout();
    }

    public void setTitleMarginEnd(int i2) {
        this.r = i2;
        requestLayout();
    }

    public void setTitleMarginStart(int i2) {
        this.q = i2;
        requestLayout();
    }

    public void setTitleMarginTop(int i2) {
        this.s = i2;
        requestLayout();
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.A = colorStateList;
        AppCompatTextView appCompatTextView = this.f1316c;
        if (appCompatTextView != null) {
            appCompatTextView.setTextColor(colorStateList);
        }
    }

    public final boolean t(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    public final void u() {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        if (Build.VERSION.SDK_INT >= 33) {
            OnBackInvokedDispatcher onBackInvokedDispatcherA = Api33Impl.a(this);
            ExpandedActionViewMenuPresenter expandedActionViewMenuPresenter = this.N;
            boolean z = (expandedActionViewMenuPresenter == null || expandedActionViewMenuPresenter.f1327c == null || onBackInvokedDispatcherA == null || !isAttachedToWindow() || !this.T) ? false : true;
            if (z && this.S == null) {
                if (this.R == null) {
                    this.R = Api33Impl.b(new Runnable() { // from class: androidx.appcompat.widget.a
                        @Override // java.lang.Runnable
                        public final void run() {
                            Toolbar.ExpandedActionViewMenuPresenter expandedActionViewMenuPresenter2 = this.f1350b.N;
                            MenuItemImpl menuItemImpl = expandedActionViewMenuPresenter2 == null ? null : expandedActionViewMenuPresenter2.f1327c;
                            if (menuItemImpl != null) {
                                menuItemImpl.collapseActionView();
                            }
                        }
                    });
                }
                Api33Impl.c(onBackInvokedDispatcherA, this.R);
                this.S = onBackInvokedDispatcherA;
                return;
            }
            if (z || (onBackInvokedDispatcher = this.S) == null) {
                return;
            }
            Api33Impl.d(onBackInvokedDispatcher, this.R);
            this.S = null;
        }
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new AnonymousClass1();
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f1329e;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.d = parcel.readInt();
            this.f1329e = parcel.readInt() != 0;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.d);
            parcel.writeInt(this.f1329e ? 1 : 0);
        }

        /* JADX INFO: renamed from: androidx.appcompat.widget.Toolbar$SavedState$1, reason: invalid class name */
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

        public SavedState(Parcel parcel) {
            this(parcel, null);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return i(layoutParams);
    }

    public void setSubtitleTextColor(int i2) {
        setSubtitleTextColor(ColorStateList.valueOf(i2));
    }

    public void setTitleTextColor(int i2) {
        setTitleTextColor(ColorStateList.valueOf(i2));
    }

    public void setCollapseContentDescription(int i2) {
        setCollapseContentDescription(i2 != 0 ? getContext().getText(i2) : null);
    }

    public void setCollapseIcon(int i2) {
        setCollapseIcon(AppCompatResources.a(getContext(), i2));
    }

    public static class LayoutParams extends ActionBar.LayoutParams {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1328b;

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1328b = 0;
            ((ViewGroup.MarginLayoutParams) this).leftMargin = marginLayoutParams.leftMargin;
            ((ViewGroup.MarginLayoutParams) this).topMargin = marginLayoutParams.topMargin;
            ((ViewGroup.MarginLayoutParams) this).rightMargin = marginLayoutParams.rightMargin;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = marginLayoutParams.bottomMargin;
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
            this.f1328b = 0;
            this.f785a = 8388627;
        }

        public LayoutParams(int i2, int i3, int i4) {
            super(i2, i3);
            this.f1328b = 0;
            this.f785a = i4;
        }

        public LayoutParams(int i2) {
            this(-2, -1, i2);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ActionBar.LayoutParams) layoutParams);
            this.f1328b = 0;
            this.f1328b = layoutParams.f1328b;
        }

        public LayoutParams(ActionBar.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1328b = 0;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1328b = 0;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1328b = 0;
        }
    }

    public void setNavigationContentDescription(int i2) {
        setNavigationContentDescription(i2 != 0 ? getContext().getText(i2) : null);
    }

    public void setLogoDescription(int i2) {
        setLogoDescription(getContext().getText(i2));
    }

    public void setNavigationIcon(int i2) {
        setNavigationIcon(AppCompatResources.a(getContext(), i2));
    }

    public void setLogo(int i2) {
        setLogo(AppCompatResources.a(getContext(), i2));
    }

    public void setSubtitle(int i2) {
        setSubtitle(getContext().getText(i2));
    }

    public void setTitle(int i2) {
        setTitle(getContext().getText(i2));
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.toolbarStyle);
    }

    public Toolbar(Context context) {
        this(context, null);
    }
}
