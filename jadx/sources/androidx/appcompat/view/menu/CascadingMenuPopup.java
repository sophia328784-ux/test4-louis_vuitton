package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Handler;
import android.os.SystemClock;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.widget.DropDownListView;
import androidx.appcompat.widget.MenuItemHoverListener;
import androidx.appcompat.widget.MenuPopupWindow;
import com.vuitton.android.R;
import defpackage.cj;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
final class CascadingMenuPopup extends MenuPopup implements MenuPresenter, View.OnKeyListener, PopupWindow.OnDismissListener {
    public PopupWindow.OnDismissListener A;
    public boolean B;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f969c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f970e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f971f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Handler f972h;
    public View p;
    public View q;
    public int r;
    public boolean s;
    public boolean t;
    public int u;
    public int v;
    public boolean x;
    public MenuPresenter.Callback y;
    public ViewTreeObserver z;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArrayList f973i = new ArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ArrayList f974j = new ArrayList();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ViewTreeObserver.OnGlobalLayoutListener f975k = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.view.menu.CascadingMenuPopup.1
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            CascadingMenuPopup cascadingMenuPopup = CascadingMenuPopup.this;
            ArrayList arrayList = cascadingMenuPopup.f974j;
            if (!cascadingMenuPopup.b() || arrayList.size() <= 0 || ((CascadingMenuInfo) arrayList.get(0)).f979a.z) {
                return;
            }
            View view = cascadingMenuPopup.q;
            if (view == null || !view.isShown()) {
                cascadingMenuPopup.dismiss();
                return;
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((CascadingMenuInfo) it.next()).f979a.a();
            }
        }
    };
    public final View.OnAttachStateChangeListener l = new View.OnAttachStateChangeListener() { // from class: androidx.appcompat.view.menu.CascadingMenuPopup.2
        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            CascadingMenuPopup cascadingMenuPopup = CascadingMenuPopup.this;
            ViewTreeObserver viewTreeObserver = cascadingMenuPopup.z;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    cascadingMenuPopup.z = view.getViewTreeObserver();
                }
                cascadingMenuPopup.z.removeGlobalOnLayoutListener(cascadingMenuPopup.f975k);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    };
    public final MenuItemHoverListener m = new MenuItemHoverListener() { // from class: androidx.appcompat.view.menu.CascadingMenuPopup.3
        @Override // androidx.appcompat.widget.MenuItemHoverListener
        public final void c(final MenuBuilder menuBuilder, final MenuItemImpl menuItemImpl) {
            CascadingMenuPopup cascadingMenuPopup = CascadingMenuPopup.this;
            Handler handler = cascadingMenuPopup.f972h;
            handler.removeCallbacksAndMessages(null);
            ArrayList arrayList = cascadingMenuPopup.f974j;
            int size = arrayList.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    i2 = -1;
                    break;
                } else if (menuBuilder == ((CascadingMenuInfo) arrayList.get(i2)).f980b) {
                    break;
                } else {
                    i2++;
                }
            }
            if (i2 == -1) {
                return;
            }
            int i3 = i2 + 1;
            final CascadingMenuInfo cascadingMenuInfo = i3 < arrayList.size() ? (CascadingMenuInfo) arrayList.get(i3) : null;
            handler.postAtTime(new Runnable() { // from class: androidx.appcompat.view.menu.CascadingMenuPopup.3.1
                @Override // java.lang.Runnable
                public void run() {
                    CascadingMenuInfo cascadingMenuInfo2 = cascadingMenuInfo;
                    if (cascadingMenuInfo2 != null) {
                        CascadingMenuPopup.this.B = true;
                        cascadingMenuInfo2.f980b.c(false);
                        CascadingMenuPopup.this.B = false;
                    }
                    if (menuItemImpl.isEnabled() && menuItemImpl.hasSubMenu()) {
                        menuBuilder.q(menuItemImpl, null, 4);
                    }
                }
            }, menuBuilder, SystemClock.uptimeMillis() + 200);
        }

        @Override // androidx.appcompat.widget.MenuItemHoverListener
        public final void d(MenuBuilder menuBuilder, MenuItem menuItem) {
            CascadingMenuPopup.this.f972h.removeCallbacksAndMessages(menuBuilder);
        }
    };
    public int n = 0;
    public int o = 0;
    public boolean w = false;

    public static class CascadingMenuInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MenuPopupWindow f979a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MenuBuilder f980b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f981c;

        public CascadingMenuInfo(MenuPopupWindow menuPopupWindow, MenuBuilder menuBuilder, int i2) {
            this.f979a = menuPopupWindow;
            this.f980b = menuBuilder;
            this.f981c = i2;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface HorizPosition {
    }

    public CascadingMenuPopup(Context context, View view, int i2, int i3, boolean z) {
        this.f969c = context;
        this.p = view;
        this.f970e = i2;
        this.f971f = i3;
        this.g = z;
        this.r = view.getLayoutDirection() != 1 ? 1 : 0;
        Resources resources = context.getResources();
        this.d = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.f972h = new Handler();
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final void a() {
        if (b()) {
            return;
        }
        ArrayList arrayList = this.f973i;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            u((MenuBuilder) it.next());
        }
        arrayList.clear();
        View view = this.p;
        this.q = view;
        if (view != null) {
            boolean z = this.z == null;
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            this.z = viewTreeObserver;
            if (z) {
                viewTreeObserver.addOnGlobalLayoutListener(this.f975k);
            }
            this.q.addOnAttachStateChangeListener(this.l);
        }
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final boolean b() {
        ArrayList arrayList = this.f974j;
        return arrayList.size() > 0 && ((CascadingMenuInfo) arrayList.get(0)).f979a.A.isShowing();
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void c(MenuBuilder menuBuilder, boolean z) {
        ArrayList arrayList = this.f974j;
        int size = arrayList.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                i2 = -1;
                break;
            } else if (menuBuilder == ((CascadingMenuInfo) arrayList.get(i2)).f980b) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 < 0) {
            return;
        }
        int i3 = i2 + 1;
        if (i3 < arrayList.size()) {
            ((CascadingMenuInfo) arrayList.get(i3)).f980b.c(false);
        }
        CascadingMenuInfo cascadingMenuInfo = (CascadingMenuInfo) arrayList.remove(i2);
        MenuBuilder menuBuilder2 = cascadingMenuInfo.f980b;
        MenuPopupWindow menuPopupWindow = cascadingMenuInfo.f979a;
        menuBuilder2.r(this);
        if (this.B) {
            menuPopupWindow.t();
            menuPopupWindow.A.setAnimationStyle(0);
        }
        menuPopupWindow.dismiss();
        int size2 = arrayList.size();
        if (size2 > 0) {
            this.r = ((CascadingMenuInfo) arrayList.get(size2 - 1)).f981c;
        } else {
            this.r = this.p.getLayoutDirection() == 1 ? 0 : 1;
        }
        if (size2 != 0) {
            if (z) {
                ((CascadingMenuInfo) arrayList.get(0)).f980b.c(false);
                return;
            }
            return;
        }
        dismiss();
        MenuPresenter.Callback callback = this.y;
        if (callback != null) {
            callback.c(menuBuilder, true);
        }
        ViewTreeObserver viewTreeObserver = this.z;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.z.removeGlobalOnLayoutListener(this.f975k);
            }
            this.z = null;
        }
        this.q.removeOnAttachStateChangeListener(this.l);
        this.A.onDismiss();
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void d(MenuPresenter.Callback callback) {
        this.y = callback;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final void dismiss() {
        ArrayList arrayList = this.f974j;
        int size = arrayList.size();
        if (size > 0) {
            CascadingMenuInfo[] cascadingMenuInfoArr = (CascadingMenuInfo[]) arrayList.toArray(new CascadingMenuInfo[size]);
            for (int i2 = size - 1; i2 >= 0; i2--) {
                CascadingMenuInfo cascadingMenuInfo = cascadingMenuInfoArr[i2];
                if (cascadingMenuInfo.f979a.A.isShowing()) {
                    cascadingMenuInfo.f979a.dismiss();
                }
            }
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean f(SubMenuBuilder subMenuBuilder) {
        for (CascadingMenuInfo cascadingMenuInfo : this.f974j) {
            if (subMenuBuilder == cascadingMenuInfo.f980b) {
                cascadingMenuInfo.f979a.d.requestFocus();
                return true;
            }
        }
        if (!subMenuBuilder.hasVisibleItems()) {
            return false;
        }
        k(subMenuBuilder);
        MenuPresenter.Callback callback = this.y;
        if (callback != null) {
            callback.d(subMenuBuilder);
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void h(boolean z) {
        Iterator it = this.f974j.iterator();
        while (it.hasNext()) {
            ListAdapter adapter = ((CascadingMenuInfo) it.next()).f979a.d.getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                adapter = ((HeaderViewListAdapter) adapter).getWrappedAdapter();
            }
            ((MenuAdapter) adapter).notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean i() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void k(MenuBuilder menuBuilder) {
        menuBuilder.b(this, this.f969c);
        if (b()) {
            u(menuBuilder);
        } else {
            this.f973i.add(menuBuilder);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void m(View view) {
        if (this.p != view) {
            this.p = view;
            this.o = Gravity.getAbsoluteGravity(this.n, view.getLayoutDirection());
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void n(boolean z) {
        this.w = z;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void o(int i2) {
        if (this.n != i2) {
            this.n = i2;
            this.o = Gravity.getAbsoluteGravity(i2, this.p.getLayoutDirection());
        }
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        CascadingMenuInfo cascadingMenuInfo;
        ArrayList arrayList = this.f974j;
        int size = arrayList.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                cascadingMenuInfo = null;
                break;
            }
            cascadingMenuInfo = (CascadingMenuInfo) arrayList.get(i2);
            if (!cascadingMenuInfo.f979a.A.isShowing()) {
                break;
            } else {
                i2++;
            }
        }
        if (cascadingMenuInfo != null) {
            cascadingMenuInfo.f980b.c(false);
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
        this.s = true;
        this.u = i2;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void q(PopupWindow.OnDismissListener onDismissListener) {
        this.A = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final ListView r() {
        ArrayList arrayList = this.f974j;
        if (arrayList.isEmpty()) {
            return null;
        }
        return ((CascadingMenuInfo) cj.c(1, arrayList)).f979a.d;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void s(boolean z) {
        this.x = z;
    }

    @Override // androidx.appcompat.view.menu.MenuPopup
    public final void t(int i2) {
        this.t = true;
        this.v = i2;
    }

    /* JADX WARN: Code duplicated, block: B:55:0x0109  */
    /* JADX WARN: Code duplicated, block: B:57:0x0134  */
    /* JADX WARN: Code duplicated, block: B:59:0x0140  */
    /* JADX WARN: Code duplicated, block: B:61:0x0144  */
    /* JADX WARN: Code duplicated, block: B:62:0x0146  */
    /* JADX WARN: Code duplicated, block: B:66:0x014e  */
    /* JADX WARN: Code duplicated, block: B:67:0x0150  */
    /* JADX WARN: Code duplicated, block: B:70:0x015c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:72:0x015f  */
    /* JADX WARN: Code duplicated, block: B:73:0x0166 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:74:0x0168  */
    /* JADX WARN: Code duplicated, block: B:75:0x016d  */
    /* JADX WARN: Code duplicated, block: B:77:0x017c  */
    /* JADX WARN: Code duplicated, block: B:79:0x0180  */
    /* JADX WARN: Code duplicated, block: B:82:0x0188  */
    /* JADX WARN: Code duplicated, block: B:85:0x0191  */
    /* JADX WARN: Code duplicated, block: B:86:0x0197  */
    public final void u(MenuBuilder menuBuilder) {
        boolean z;
        int i2;
        int i3;
        CascadingMenuInfo cascadingMenuInfo;
        View childAt;
        Rect rect;
        Rect rect2;
        DropDownListView dropDownListView;
        int[] iArr;
        Rect rect3;
        int i4;
        int i5;
        MenuItem item;
        MenuAdapter menuAdapter;
        int headersCount;
        int firstVisiblePosition;
        Context context = this.f969c;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        MenuAdapter menuAdapter2 = new MenuAdapter(menuBuilder, layoutInflaterFrom, this.g, R.layout.abc_cascading_menu_item_layout);
        int i6 = 1;
        if (!b() && this.w) {
            menuAdapter2.d = true;
        } else if (b()) {
            int size = menuBuilder.f1008f.size();
            int i7 = 0;
            while (true) {
                if (i7 >= size) {
                    z = false;
                    break;
                }
                MenuItem item2 = menuBuilder.getItem(i7);
                if (item2.isVisible() && item2.getIcon() != null) {
                    z = true;
                    break;
                }
                i7++;
            }
            menuAdapter2.d = z;
        }
        int iL = MenuPopup.l(menuAdapter2, context, this.d);
        MenuPopupWindow menuPopupWindow = new MenuPopupWindow(context, null, this.f970e, this.f971f);
        menuPopupWindow.B = this.m;
        menuPopupWindow.q = this;
        PopupWindow popupWindow = menuPopupWindow.A;
        popupWindow.setOnDismissListener(this);
        menuPopupWindow.p = this.p;
        menuPopupWindow.m = this.o;
        menuPopupWindow.z = true;
        popupWindow.setFocusable(true);
        popupWindow.setInputMethodMode(2);
        menuPopupWindow.q(menuAdapter2);
        menuPopupWindow.f(iL);
        menuPopupWindow.m = this.o;
        ArrayList arrayList = this.f974j;
        if (arrayList.size() > 0) {
            cascadingMenuInfo = (CascadingMenuInfo) cj.c(1, arrayList);
            MenuBuilder menuBuilder2 = cascadingMenuInfo.f980b;
            int size2 = menuBuilder2.f1008f.size();
            int i8 = 0;
            while (true) {
                if (i8 >= size2) {
                    item = null;
                    break;
                }
                item = menuBuilder2.getItem(i8);
                if (item.hasSubMenu() && menuBuilder == item.getSubMenu()) {
                    break;
                } else {
                    i8++;
                }
            }
            if (item == null) {
                i2 = 1;
                childAt = null;
                i3 = 0;
            } else {
                DropDownListView dropDownListView2 = cascadingMenuInfo.f979a.d;
                ListAdapter adapter = dropDownListView2.getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    headersCount = headerViewListAdapter.getHeadersCount();
                    menuAdapter = (MenuAdapter) headerViewListAdapter.getWrappedAdapter();
                } else {
                    menuAdapter = (MenuAdapter) adapter;
                    headersCount = 0;
                }
                int count = menuAdapter.getCount();
                int i9 = 0;
                i3 = 0;
                while (true) {
                    i2 = i6;
                    if (i9 >= count) {
                        i9 = -1;
                        break;
                    } else {
                        if (item == menuAdapter.getItem(i9)) {
                            break;
                        }
                        i9++;
                        i6 = i2;
                    }
                }
                if (i9 != -1 && (firstVisiblePosition = (i9 + headersCount) - dropDownListView2.getFirstVisiblePosition()) >= 0 && firstVisiblePosition < dropDownListView2.getChildCount()) {
                    childAt = dropDownListView2.getChildAt(firstVisiblePosition);
                }
            }
            if (childAt != null) {
                menuPopupWindow.u();
                menuPopupWindow.s();
                dropDownListView = ((CascadingMenuInfo) arrayList.get(arrayList.size() - 1)).f979a.d;
                iArr = new int[2];
                dropDownListView.getLocationOnScreen(iArr);
                rect3 = new Rect();
                this.q.getWindowVisibleDisplayFrame(rect3);
                if (this.r == i2) {
                    if (dropDownListView.getWidth() + iArr[i3] + iL > rect3.right) {
                        i4 = i3;
                    } else {
                        i4 = 1;
                    }
                } else if (iArr[i3] - iL < 0) {
                    i4 = 1;
                } else {
                    i4 = i3;
                }
                if (i4 == 1) {
                    i5 = 1;
                } else {
                    i5 = i3;
                }
                this.r = i4;
                menuPopupWindow.p = childAt;
                if ((this.o & 5) == 5) {
                    if (i5 == 0) {
                        iL = 0 - childAt.getWidth();
                    }
                } else if (i5 != 0) {
                    iL = childAt.getWidth();
                } else {
                    iL = 0 - iL;
                }
                menuPopupWindow.g = iL;
                menuPopupWindow.l = true;
                menuPopupWindow.f1249k = true;
                menuPopupWindow.m(i3);
            } else {
                if (this.s) {
                    menuPopupWindow.g = this.u;
                }
                if (this.t) {
                    menuPopupWindow.m(this.v);
                }
                rect = this.f1033b;
                if (rect != null) {
                    rect2 = new Rect(rect);
                } else {
                    rect2 = null;
                }
                menuPopupWindow.y = rect2;
            }
            arrayList.add(new CascadingMenuInfo(menuPopupWindow, menuBuilder, this.r));
            menuPopupWindow.a();
            DropDownListView dropDownListView3 = menuPopupWindow.d;
            dropDownListView3.setOnKeyListener(this);
            if (cascadingMenuInfo == null || !this.x || menuBuilder.m == null) {
                return;
            }
            FrameLayout frameLayout = (FrameLayout) layoutInflaterFrom.inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) dropDownListView3, false);
            TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
            frameLayout.setEnabled(false);
            textView.setText(menuBuilder.m);
            dropDownListView3.addHeaderView(frameLayout, null, false);
            menuPopupWindow.a();
            return;
        }
        i2 = 1;
        i3 = 0;
        cascadingMenuInfo = null;
        childAt = null;
        if (childAt != null) {
            menuPopupWindow.u();
            menuPopupWindow.s();
            dropDownListView = ((CascadingMenuInfo) arrayList.get(arrayList.size() - 1)).f979a.d;
            iArr = new int[2];
            dropDownListView.getLocationOnScreen(iArr);
            rect3 = new Rect();
            this.q.getWindowVisibleDisplayFrame(rect3);
            if (this.r == i2) {
                if (dropDownListView.getWidth() + iArr[i3] + iL > rect3.right) {
                    i4 = i3;
                } else {
                    i4 = 1;
                }
            } else if (iArr[i3] - iL < 0) {
                i4 = 1;
            } else {
                i4 = i3;
            }
            if (i4 == 1) {
                i5 = 1;
            } else {
                i5 = i3;
            }
            this.r = i4;
            menuPopupWindow.p = childAt;
            if ((this.o & 5) == 5) {
                if (i5 == 0) {
                    iL = 0 - childAt.getWidth();
                }
            } else if (i5 != 0) {
                iL = childAt.getWidth();
            } else {
                iL = 0 - iL;
            }
            menuPopupWindow.g = iL;
            menuPopupWindow.l = true;
            menuPopupWindow.f1249k = true;
            menuPopupWindow.m(i3);
        } else {
            if (this.s) {
                menuPopupWindow.g = this.u;
            }
            if (this.t) {
                menuPopupWindow.m(this.v);
            }
            rect = this.f1033b;
            if (rect != null) {
                rect2 = new Rect(rect);
            } else {
                rect2 = null;
            }
            menuPopupWindow.y = rect2;
        }
        arrayList.add(new CascadingMenuInfo(menuPopupWindow, menuBuilder, this.r));
        menuPopupWindow.a();
        DropDownListView dropDownListView4 = menuPopupWindow.d;
        dropDownListView4.setOnKeyListener(this);
        if (cascadingMenuInfo == null) {
        }
    }
}
