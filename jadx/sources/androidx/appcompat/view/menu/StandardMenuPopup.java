package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.widget.DropDownListView;
import androidx.appcompat.widget.MenuPopupWindow;
import com.vuitton.android.R;
import defpackage.md;

/* JADX INFO: loaded from: classes.dex */
final class StandardMenuPopup extends MenuPopup implements PopupWindow.OnDismissListener, AdapterView.OnItemClickListener, MenuPresenter, View.OnKeyListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f1044c;
    public final MenuBuilder d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MenuAdapter f1045e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f1046f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f1047h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f1048i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MenuPopupWindow f1049j;
    public PopupWindow.OnDismissListener m;
    public View n;
    public View o;
    public MenuPresenter.Callback p;
    public ViewTreeObserver q;
    public boolean r;
    public boolean s;
    public int t;
    public boolean v;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ViewTreeObserver.OnGlobalLayoutListener f1050k = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.view.menu.StandardMenuPopup.1
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            StandardMenuPopup standardMenuPopup = StandardMenuPopup.this;
            MenuPopupWindow menuPopupWindow = standardMenuPopup.f1049j;
            if (!standardMenuPopup.b() || menuPopupWindow.z) {
                return;
            }
            View view = standardMenuPopup.o;
            if (view == null || !view.isShown()) {
                standardMenuPopup.dismiss();
            } else {
                menuPopupWindow.a();
            }
        }
    };
    public final View.OnAttachStateChangeListener l = new View.OnAttachStateChangeListener() { // from class: androidx.appcompat.view.menu.StandardMenuPopup.2
        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            StandardMenuPopup standardMenuPopup = StandardMenuPopup.this;
            ViewTreeObserver viewTreeObserver = standardMenuPopup.q;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    standardMenuPopup.q = view.getViewTreeObserver();
                }
                standardMenuPopup.q.removeGlobalOnLayoutListener(standardMenuPopup.f1050k);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    };
    public int u = 0;

    public StandardMenuPopup(Context context, MenuBuilder menuBuilder, View view, int i2, int i3, boolean z) {
        this.f1044c = context;
        this.d = menuBuilder;
        this.f1046f = z;
        this.f1045e = new MenuAdapter(menuBuilder, LayoutInflater.from(context), z, R.layout.abc_popup_menu_item_layout);
        this.f1047h = i2;
        this.f1048i = i3;
        Resources resources = context.getResources();
        this.g = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.n = view;
        this.f1049j = new MenuPopupWindow(context, null, i2, i3);
        menuBuilder.b(this, context);
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final void a() {
        View view;
        if (b()) {
            return;
        }
        if (this.r || (view = this.n) == null) {
            md.k("StandardMenuPopup cannot be used without an anchor");
            return;
        }
        this.o = view;
        MenuPopupWindow menuPopupWindow = this.f1049j;
        PopupWindow popupWindow = menuPopupWindow.A;
        PopupWindow popupWindow2 = menuPopupWindow.A;
        popupWindow.setOnDismissListener(this);
        menuPopupWindow.q = this;
        menuPopupWindow.z = true;
        popupWindow2.setFocusable(true);
        View view2 = this.o;
        boolean z = this.q == null;
        ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
        this.q = viewTreeObserver;
        if (z) {
            viewTreeObserver.addOnGlobalLayoutListener(this.f1050k);
        }
        view2.addOnAttachStateChangeListener(this.l);
        menuPopupWindow.p = view2;
        menuPopupWindow.m = this.u;
        boolean z2 = this.s;
        Context context = this.f1044c;
        MenuAdapter menuAdapter = this.f1045e;
        if (!z2) {
            this.t = MenuPopup.l(menuAdapter, context, this.g);
            this.s = true;
        }
        menuPopupWindow.f(this.t);
        popupWindow2.setInputMethodMode(2);
        Rect rect = this.f1033b;
        menuPopupWindow.y = rect != null ? new Rect(rect) : null;
        menuPopupWindow.a();
        DropDownListView dropDownListView = menuPopupWindow.d;
        dropDownListView.setOnKeyListener(this);
        if (this.v) {
            MenuBuilder menuBuilder = this.d;
            if (menuBuilder.m != null) {
                FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(context).inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) dropDownListView, false);
                TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
                if (textView != null) {
                    textView.setText(menuBuilder.m);
                }
                frameLayout.setEnabled(false);
                dropDownListView.addHeaderView(frameLayout, null, false);
            }
        }
        menuPopupWindow.q(menuAdapter);
        menuPopupWindow.a();
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final boolean b() {
        return !this.r && this.f1049j.A.isShowing();
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void c(MenuBuilder menuBuilder, boolean z) {
        if (menuBuilder != this.d) {
            return;
        }
        dismiss();
        MenuPresenter.Callback callback = this.p;
        if (callback != null) {
            callback.c(menuBuilder, z);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void d(MenuPresenter.Callback callback) {
        this.p = callback;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final void dismiss() {
        if (b()) {
            this.f1049j.dismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean f(SubMenuBuilder subMenuBuilder) {
        boolean z;
        if (subMenuBuilder.hasVisibleItems()) {
            MenuPopupHelper menuPopupHelper = new MenuPopupHelper(this.f1044c, subMenuBuilder, this.o, this.f1046f, this.f1047h, this.f1048i);
            MenuPresenter.Callback callback = this.p;
            menuPopupHelper.f1040i = callback;
            MenuPopup menuPopup = menuPopupHelper.f1041j;
            if (menuPopup != null) {
                menuPopup.d(callback);
            }
            int size = subMenuBuilder.f1008f.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    z = false;
                    break;
                }
                MenuItem item = subMenuBuilder.getItem(i2);
                if (item.isVisible() && item.getIcon() != null) {
                    z = true;
                    break;
                }
                i2++;
            }
            menuPopupHelper.d(z);
            menuPopupHelper.f1042k = this.m;
            this.m = null;
            this.d.c(false);
            MenuPopupWindow menuPopupWindow = this.f1049j;
            int width = menuPopupWindow.g;
            int iP = menuPopupWindow.p();
            if ((Gravity.getAbsoluteGravity(this.u, this.n.getLayoutDirection()) & 7) == 5) {
                width += this.n.getWidth();
            }
            if (!menuPopupHelper.b()) {
                if (menuPopupHelper.f1038f != null) {
                    menuPopupHelper.e(width, iP, true, true);
                }
            }
            MenuPresenter.Callback callback2 = this.p;
            if (callback2 != null) {
                callback2.d(subMenuBuilder);
            }
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void h(boolean z) {
        this.s = false;
        MenuAdapter menuAdapter = this.f1045e;
        if (menuAdapter != null) {
            menuAdapter.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean i() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void k(MenuBuilder menuBuilder) {
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void m(View view) {
        this.n = view;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void n(boolean z) {
        this.f1045e.d = z;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void o(int i2) {
        this.u = i2;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.r = true;
        this.d.c(true);
        ViewTreeObserver viewTreeObserver = this.q;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.q = this.o.getViewTreeObserver();
            }
            this.q.removeGlobalOnLayoutListener(this.f1050k);
            this.q = null;
        }
        this.o.removeOnAttachStateChangeListener(this.l);
        PopupWindow.OnDismissListener onDismissListener = this.m;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i2, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i2 != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void p(int i2) {
        this.f1049j.g = i2;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void q(PopupWindow.OnDismissListener onDismissListener) {
        this.m = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final ListView r() {
        return this.f1049j.d;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void s(boolean z) {
        this.v = z;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void t(int i2) {
        this.f1049j.m(i2);
    }
}
