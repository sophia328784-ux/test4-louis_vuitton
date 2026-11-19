package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.SpinnerAdapter;
import androidx.appcompat.R$styleable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.menu.ActionMenuItem;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.widget.Toolbar.ExpandedActionViewMenuPresenter;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import com.dynatrace.android.callback.Callback;
import com.vuitton.android.R;
import defpackage.md;
import defpackage.pq0;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class ToolbarWidgetWrapper implements DecorToolbar {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Toolbar f1330a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1331b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ScrollingTabContainerView f1332c;
    public AppCompatSpinner d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public View f1333e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Drawable f1334f;
    public Drawable g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Drawable f1335h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f1336i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CharSequence f1337j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public CharSequence f1338k;
    public CharSequence l;
    public Window.Callback m;
    public boolean n;
    public ActionMenuPresenter o;
    public int p;
    public final int q;
    public final Drawable r;

    public ToolbarWidgetWrapper(Toolbar toolbar, boolean z, int i2, int i3) {
        Drawable drawable;
        this.p = 0;
        this.q = 0;
        this.f1330a = toolbar;
        this.f1337j = toolbar.getTitle();
        this.f1338k = toolbar.getSubtitle();
        this.f1336i = this.f1337j != null;
        this.f1335h = toolbar.getNavigationIcon();
        TintTypedArray tintTypedArrayE = TintTypedArray.e(R.attr.actionBarStyle, 0, toolbar.getContext(), null, R$styleable.f776a);
        TypedArray typedArray = tintTypedArrayE.f1313b;
        int i4 = 15;
        this.r = tintTypedArrayE.b(15);
        if (z) {
            CharSequence text = typedArray.getText(27);
            if (!TextUtils.isEmpty(text)) {
                setTitle(text);
            }
            CharSequence text2 = typedArray.getText(25);
            if (!TextUtils.isEmpty(text2)) {
                m(text2);
            }
            Drawable drawableB = tintTypedArrayE.b(20);
            if (drawableB != null) {
                B(drawableB);
            }
            Drawable drawableB2 = tintTypedArrayE.b(17);
            if (drawableB2 != null) {
                setIcon(drawableB2);
            }
            if (this.f1335h == null && (drawable = this.r) != null) {
                K(drawable);
            }
            k(typedArray.getInt(10, 0));
            int resourceId = typedArray.getResourceId(9, 0);
            if (resourceId != 0) {
                J(LayoutInflater.from(toolbar.getContext()).inflate(resourceId, (ViewGroup) toolbar, false));
                k(this.f1331b | 16);
            }
            int layoutDimension = typedArray.getLayoutDimension(13, 0);
            if (layoutDimension > 0) {
                ViewGroup.LayoutParams layoutParams = toolbar.getLayoutParams();
                layoutParams.height = layoutDimension;
                toolbar.setLayoutParams(layoutParams);
            }
            int dimensionPixelOffset = typedArray.getDimensionPixelOffset(7, -1);
            int dimensionPixelOffset2 = typedArray.getDimensionPixelOffset(3, -1);
            if (dimensionPixelOffset >= 0 || dimensionPixelOffset2 >= 0) {
                int iMax = Math.max(dimensionPixelOffset, 0);
                int iMax2 = Math.max(dimensionPixelOffset2, 0);
                toolbar.d();
                toolbar.u.a(iMax, iMax2);
            }
            int resourceId2 = typedArray.getResourceId(28, 0);
            if (resourceId2 != 0) {
                Context context = toolbar.getContext();
                toolbar.m = resourceId2;
                AppCompatTextView appCompatTextView = toolbar.f1316c;
                if (appCompatTextView != null) {
                    appCompatTextView.setTextAppearance(context, resourceId2);
                }
            }
            int resourceId3 = typedArray.getResourceId(26, 0);
            if (resourceId3 != 0) {
                Context context2 = toolbar.getContext();
                toolbar.n = resourceId3;
                AppCompatTextView appCompatTextView2 = toolbar.d;
                if (appCompatTextView2 != null) {
                    appCompatTextView2.setTextAppearance(context2, resourceId3);
                }
            }
            int resourceId4 = typedArray.getResourceId(22, 0);
            if (resourceId4 != 0) {
                toolbar.setPopupTheme(resourceId4);
            }
        } else {
            if (toolbar.getNavigationIcon() != null) {
                this.r = toolbar.getNavigationIcon();
            } else {
                i4 = 11;
            }
            this.f1331b = i4;
        }
        tintTypedArrayE.g();
        if (i2 != this.q) {
            this.q = i2;
            if (TextUtils.isEmpty(toolbar.getNavigationContentDescription())) {
                v(this.q);
            }
        }
        this.l = toolbar.getNavigationContentDescription();
        toolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.widget.ToolbarWidgetWrapper.1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final ActionMenuItem f1339b;

            {
                this.f1339b = new ActionMenuItem(ToolbarWidgetWrapper.this.f1330a.getContext(), 0, android.R.id.home, 0, 0, ToolbarWidgetWrapper.this.f1337j);
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Callback.n(view);
                try {
                    ToolbarWidgetWrapper toolbarWidgetWrapper = ToolbarWidgetWrapper.this;
                    Window.Callback callback = toolbarWidgetWrapper.m;
                    if (callback != null && toolbarWidgetWrapper.n) {
                        callback.onMenuItemSelected(0, this.f1339b);
                    }
                } finally {
                    Callback.o();
                }
            }
        });
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void A(ScrollingTabContainerView scrollingTabContainerView) {
        ScrollingTabContainerView scrollingTabContainerView2 = this.f1332c;
        Toolbar toolbar = this.f1330a;
        if (scrollingTabContainerView2 != null && scrollingTabContainerView2.getParent() == toolbar) {
            toolbar.removeView(this.f1332c);
        }
        this.f1332c = scrollingTabContainerView;
        if (scrollingTabContainerView == null || this.p != 2) {
            return;
        }
        toolbar.addView(scrollingTabContainerView, 0);
        Toolbar.LayoutParams layoutParams = (Toolbar.LayoutParams) this.f1332c.getLayoutParams();
        ((ViewGroup.MarginLayoutParams) layoutParams).width = -2;
        ((ViewGroup.MarginLayoutParams) layoutParams).height = -2;
        layoutParams.f785a = 8388691;
        scrollingTabContainerView.setAllowCollapse(true);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void B(Drawable drawable) {
        this.g = drawable;
        N();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void C(int i2) {
        B(i2 != 0 ? AppCompatResources.a(this.f1330a.getContext(), i2) : null);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void D(int i2) {
        K(i2 != 0 ? AppCompatResources.a(this.f1330a.getContext(), i2) : null);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void E(MenuPresenter.Callback callback, MenuBuilder.Callback callback2) {
        Toolbar toolbar = this.f1330a;
        toolbar.O = callback;
        toolbar.P = callback2;
        ActionMenuView actionMenuView = toolbar.f1315b;
        if (actionMenuView != null) {
            actionMenuView.v = callback;
            actionMenuView.w = callback2;
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void F(SpinnerAdapter spinnerAdapter, AdapterView.OnItemSelectedListener onItemSelectedListener) {
        L();
        this.d.setAdapter(spinnerAdapter);
        this.d.setOnItemSelectedListener(onItemSelectedListener);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final boolean G() {
        return this.g != null;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final CharSequence H() {
        return this.f1330a.getSubtitle();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final int I() {
        return this.f1331b;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void J(View view) {
        View view2 = this.f1333e;
        Toolbar toolbar = this.f1330a;
        if (view2 != null && (this.f1331b & 16) != 0) {
            toolbar.removeView(view2);
        }
        this.f1333e = view;
        if (view == null || (this.f1331b & 16) == 0) {
            return;
        }
        toolbar.addView(view);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void K(Drawable drawable) {
        this.f1335h = drawable;
        int i2 = this.f1331b & 4;
        Toolbar toolbar = this.f1330a;
        if (i2 == 0) {
            toolbar.setNavigationIcon((Drawable) null);
            return;
        }
        if (drawable == null) {
            drawable = this.r;
        }
        toolbar.setNavigationIcon(drawable);
    }

    public final void L() {
        if (this.d == null) {
            this.d = new AppCompatSpinner(this.f1330a.getContext(), null, R.attr.actionDropDownStyle);
            this.d.setLayoutParams(new Toolbar.LayoutParams(-2, -2, 8388627));
        }
    }

    public final void M() {
        if ((this.f1331b & 4) != 0) {
            boolean zIsEmpty = TextUtils.isEmpty(this.l);
            Toolbar toolbar = this.f1330a;
            if (zIsEmpty) {
                toolbar.setNavigationContentDescription(this.q);
            } else {
                toolbar.setNavigationContentDescription(this.l);
            }
        }
    }

    public final void N() {
        Drawable drawable;
        int i2 = this.f1331b;
        if ((i2 & 2) == 0) {
            drawable = null;
        } else if ((i2 & 1) == 0 || (drawable = this.g) == null) {
            drawable = this.f1334f;
        }
        this.f1330a.setLogo(drawable);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final boolean a() {
        ActionMenuView actionMenuView;
        Toolbar toolbar = this.f1330a;
        return toolbar.getVisibility() == 0 && (actionMenuView = toolbar.f1315b) != null && actionMenuView.t;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final boolean b() {
        ActionMenuPresenter actionMenuPresenter;
        ActionMenuView actionMenuView = this.f1330a.f1315b;
        return (actionMenuView == null || (actionMenuPresenter = actionMenuView.u) == null || !actionMenuPresenter.m()) ? false : true;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final boolean c() {
        ActionMenuPresenter actionMenuPresenter;
        ActionMenuView actionMenuView = this.f1330a.f1315b;
        return (actionMenuView == null || (actionMenuPresenter = actionMenuView.u) == null || !actionMenuPresenter.o()) ? false : true;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void collapseActionView() {
        Toolbar.ExpandedActionViewMenuPresenter expandedActionViewMenuPresenter = this.f1330a.N;
        MenuItemImpl menuItemImpl = expandedActionViewMenuPresenter == null ? null : expandedActionViewMenuPresenter.f1327c;
        if (menuItemImpl != null) {
            menuItemImpl.collapseActionView();
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void d(Menu menu, MenuPresenter.Callback callback) {
        ActionMenuPresenter actionMenuPresenter = this.o;
        Toolbar toolbar = this.f1330a;
        if (actionMenuPresenter == null) {
            this.o = new ActionMenuPresenter(toolbar.getContext());
        }
        ActionMenuPresenter actionMenuPresenter2 = this.o;
        actionMenuPresenter2.f963f = callback;
        MenuBuilder menuBuilder = (MenuBuilder) menu;
        if (menuBuilder == null && toolbar.f1315b == null) {
            return;
        }
        toolbar.f();
        MenuBuilder menuBuilder2 = toolbar.f1315b.q;
        if (menuBuilder2 == menuBuilder) {
            return;
        }
        if (menuBuilder2 != null) {
            menuBuilder2.r(toolbar.M);
            menuBuilder2.r(toolbar.N);
        }
        if (toolbar.N == null) {
            toolbar.N = toolbar.new ExpandedActionViewMenuPresenter();
        }
        actionMenuPresenter2.r = true;
        Context context = toolbar.f1322k;
        if (menuBuilder != null) {
            menuBuilder.b(actionMenuPresenter2, context);
            menuBuilder.b(toolbar.N, toolbar.f1322k);
        } else {
            actionMenuPresenter2.j(context, null);
            toolbar.N.j(toolbar.f1322k, null);
            actionMenuPresenter2.h(true);
            toolbar.N.h(true);
        }
        toolbar.f1315b.setPopupTheme(toolbar.l);
        toolbar.f1315b.setPresenter(actionMenuPresenter2);
        toolbar.M = actionMenuPresenter2;
        toolbar.u();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final boolean e() {
        ActionMenuPresenter actionMenuPresenter;
        ActionMenuView actionMenuView = this.f1330a.f1315b;
        return (actionMenuView == null || (actionMenuPresenter = actionMenuView.u) == null || !actionMenuPresenter.n()) ? false : true;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void f() {
        this.n = true;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void g(Drawable drawable) {
        this.f1330a.setBackground(drawable);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final Context getContext() {
        return this.f1330a.getContext();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final int getHeight() {
        return this.f1330a.getHeight();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final CharSequence getTitle() {
        return this.f1330a.getTitle();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final int getVisibility() {
        return this.f1330a.getVisibility();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final boolean h() {
        ActionMenuPresenter actionMenuPresenter;
        ActionMenuView actionMenuView = this.f1330a.f1315b;
        if (actionMenuView == null || (actionMenuPresenter = actionMenuView.u) == null) {
            return false;
        }
        return actionMenuPresenter.v != null || actionMenuPresenter.n();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final boolean i() {
        Toolbar.ExpandedActionViewMenuPresenter expandedActionViewMenuPresenter = this.f1330a.N;
        return (expandedActionViewMenuPresenter == null || expandedActionViewMenuPresenter.f1327c == null) ? false : true;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final boolean j() {
        Layout layout;
        AppCompatTextView appCompatTextView = this.f1330a.f1316c;
        if (appCompatTextView != null && (layout = appCompatTextView.getLayout()) != null) {
            int lineCount = layout.getLineCount();
            for (int i2 = 0; i2 < lineCount; i2++) {
                if (layout.getEllipsisCount(i2) > 0) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void k(int i2) {
        View view;
        int i3 = this.f1331b ^ i2;
        this.f1331b = i2;
        if (i3 != 0) {
            int i4 = i3 & 4;
            Toolbar toolbar = this.f1330a;
            if (i4 != 0) {
                if ((i2 & 4) != 0) {
                    M();
                }
                if ((this.f1331b & 4) != 0) {
                    Drawable drawable = this.f1335h;
                    if (drawable == null) {
                        drawable = this.r;
                    }
                    toolbar.setNavigationIcon(drawable);
                } else {
                    toolbar.setNavigationIcon((Drawable) null);
                }
            }
            if ((i3 & 3) != 0) {
                N();
            }
            if ((i3 & 8) != 0) {
                if ((i2 & 8) != 0) {
                    toolbar.setTitle(this.f1337j);
                    toolbar.setSubtitle(this.f1338k);
                } else {
                    toolbar.setTitle((CharSequence) null);
                    toolbar.setSubtitle((CharSequence) null);
                }
            }
            if ((i3 & 16) == 0 || (view = this.f1333e) == null) {
                return;
            }
            if ((i2 & 16) != 0) {
                toolbar.addView(view);
            } else {
                toolbar.removeView(view);
            }
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void l(CharSequence charSequence) {
        this.l = charSequence;
        M();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void m(CharSequence charSequence) {
        this.f1338k = charSequence;
        if ((this.f1331b & 8) != 0) {
            this.f1330a.setSubtitle(charSequence);
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void n(int i2) {
        AppCompatSpinner appCompatSpinner = this.d;
        if (appCompatSpinner != null) {
            appCompatSpinner.setSelection(i2);
        } else {
            md.k("Can't set dropdown selected position without an adapter");
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final Menu o() {
        return this.f1330a.getMenu();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final int p() {
        return this.p;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final ViewPropertyAnimatorCompat q(final int i2, long j2) {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompatB = ViewCompat.b(this.f1330a);
        viewPropertyAnimatorCompatB.a(i2 == 0 ? 1.0f : Call.Parameters.DEFAULT_CAMERA_ZOOM);
        viewPropertyAnimatorCompatB.c(j2);
        viewPropertyAnimatorCompatB.d(new ViewPropertyAnimatorListenerAdapter() { // from class: androidx.appcompat.widget.ToolbarWidgetWrapper.2

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f1341a = false;

            @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
            public final void a() {
                if (this.f1341a) {
                    return;
                }
                ToolbarWidgetWrapper.this.f1330a.setVisibility(i2);
            }

            @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
            public final void b() {
                this.f1341a = true;
            }

            @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
            public final void c() {
                ToolbarWidgetWrapper.this.f1330a.setVisibility(0);
            }
        });
        return viewPropertyAnimatorCompatB;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void r(int i2) {
        ScrollingTabContainerView scrollingTabContainerView;
        int i3 = this.p;
        if (i2 != i3) {
            Toolbar toolbar = this.f1330a;
            if (i3 == 1) {
                AppCompatSpinner appCompatSpinner = this.d;
                if (appCompatSpinner != null && appCompatSpinner.getParent() == toolbar) {
                    toolbar.removeView(this.d);
                }
            } else if (i3 == 2 && (scrollingTabContainerView = this.f1332c) != null && scrollingTabContainerView.getParent() == toolbar) {
                toolbar.removeView(this.f1332c);
            }
            this.p = i2;
            if (i2 != 0) {
                if (i2 == 1) {
                    L();
                    toolbar.addView(this.d, 0);
                    return;
                }
                if (i2 != 2) {
                    md.n(pq0.k(i2, "Invalid navigation mode "));
                    return;
                }
                ScrollingTabContainerView scrollingTabContainerView2 = this.f1332c;
                if (scrollingTabContainerView2 != null) {
                    toolbar.addView(scrollingTabContainerView2, 0);
                    Toolbar.LayoutParams layoutParams = (Toolbar.LayoutParams) this.f1332c.getLayoutParams();
                    ((ViewGroup.MarginLayoutParams) layoutParams).width = -2;
                    ((ViewGroup.MarginLayoutParams) layoutParams).height = -2;
                    layoutParams.f785a = 8388691;
                }
            }
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final boolean s() {
        return this.f1334f != null;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void setIcon(int i2) {
        setIcon(i2 != 0 ? AppCompatResources.a(this.f1330a.getContext(), i2) : null);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void setTitle(CharSequence charSequence) {
        this.f1336i = true;
        this.f1337j = charSequence;
        if ((this.f1331b & 8) != 0) {
            Toolbar toolbar = this.f1330a;
            toolbar.setTitle(charSequence);
            if (this.f1336i) {
                ViewCompat.v(toolbar.getRootView(), charSequence);
            }
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void setVisibility(int i2) {
        this.f1330a.setVisibility(i2);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void setWindowCallback(Window.Callback callback) {
        this.m = callback;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void setWindowTitle(CharSequence charSequence) {
        if (this.f1336i) {
            return;
        }
        this.f1337j = charSequence;
        if ((this.f1331b & 8) != 0) {
            Toolbar toolbar = this.f1330a;
            toolbar.setTitle(charSequence);
            if (this.f1336i) {
                ViewCompat.v(toolbar.getRootView(), charSequence);
            }
        }
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final Toolbar t() {
        return this.f1330a;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final int u() {
        AppCompatSpinner appCompatSpinner = this.d;
        if (appCompatSpinner != null) {
            return appCompatSpinner.getSelectedItemPosition();
        }
        return 0;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void v(int i2) {
        l(i2 == 0 ? null : this.f1330a.getContext().getString(i2));
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final int w() {
        AppCompatSpinner appCompatSpinner = this.d;
        if (appCompatSpinner != null) {
            return appCompatSpinner.getCount();
        }
        return 0;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void x(boolean z) {
        this.f1330a.setCollapsible(z);
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void y() {
        ActionMenuPresenter actionMenuPresenter;
        ActionMenuView actionMenuView = this.f1330a.f1315b;
        if (actionMenuView == null || (actionMenuPresenter = actionMenuView.u) == null) {
            return;
        }
        actionMenuPresenter.m();
        ActionMenuPresenter.ActionButtonSubmenu actionButtonSubmenu = actionMenuPresenter.u;
        if (actionButtonSubmenu == null || !actionButtonSubmenu.b()) {
            return;
        }
        actionButtonSubmenu.f1041j.dismiss();
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final View z() {
        return this.f1333e;
    }

    @Override // androidx.appcompat.widget.DecorToolbar
    public final void setIcon(Drawable drawable) {
        this.f1334f = drawable;
        N();
    }

    public ToolbarWidgetWrapper(Toolbar toolbar, boolean z) {
        this(toolbar, z, R.string.abc_action_bar_up_description, R.drawable.abc_ic_ab_back_material);
    }
}
