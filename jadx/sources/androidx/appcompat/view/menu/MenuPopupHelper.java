package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import com.vuitton.android.R;

/* JADX INFO: loaded from: classes.dex */
public class MenuPopupHelper implements MenuHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f1034a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MenuBuilder f1035b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f1036c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f1037e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public View f1038f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1039h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public MenuPresenter.Callback f1040i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public MenuPopup f1041j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public PopupWindow.OnDismissListener f1042k;
    public final PopupWindow.OnDismissListener l;

    public MenuPopupHelper(Context context, MenuBuilder menuBuilder, View view, boolean z, int i2, int i3) {
        this.g = 8388611;
        this.l = new PopupWindow.OnDismissListener() { // from class: androidx.appcompat.view.menu.MenuPopupHelper.1
            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                MenuPopupHelper.this.c();
            }
        };
        this.f1034a = context;
        this.f1035b = menuBuilder;
        this.f1038f = view;
        this.f1036c = z;
        this.d = i2;
        this.f1037e = i3;
    }

    public final MenuPopup a() {
        MenuPopup standardMenuPopup;
        if (this.f1041j == null) {
            Context context = this.f1034a;
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            int iMin = Math.min(point.x, point.y);
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.abc_cascading_menus_min_smallest_width);
            Context context2 = this.f1034a;
            if (iMin >= dimensionPixelSize) {
                standardMenuPopup = new CascadingMenuPopup(context2, this.f1038f, this.d, this.f1037e, this.f1036c);
            } else {
                standardMenuPopup = new StandardMenuPopup(context2, this.f1035b, this.f1038f, this.d, this.f1037e, this.f1036c);
            }
            standardMenuPopup.k(this.f1035b);
            standardMenuPopup.q(this.l);
            standardMenuPopup.m(this.f1038f);
            standardMenuPopup.d(this.f1040i);
            standardMenuPopup.n(this.f1039h);
            standardMenuPopup.o(this.g);
            this.f1041j = standardMenuPopup;
        }
        return this.f1041j;
    }

    public final boolean b() {
        MenuPopup menuPopup = this.f1041j;
        return menuPopup != null && menuPopup.b();
    }

    public void c() {
        this.f1041j = null;
        PopupWindow.OnDismissListener onDismissListener = this.f1042k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public final void d(boolean z) {
        this.f1039h = z;
        MenuPopup menuPopup = this.f1041j;
        if (menuPopup != null) {
            menuPopup.n(z);
        }
    }

    public final void e(int i2, int i3, boolean z, boolean z2) {
        MenuPopup menuPopupA = a();
        menuPopupA.s(z2);
        if (z) {
            if ((Gravity.getAbsoluteGravity(this.g, this.f1038f.getLayoutDirection()) & 7) == 5) {
                i2 -= this.f1038f.getWidth();
            }
            menuPopupA.p(i2);
            menuPopupA.t(i3);
            int i4 = (int) ((this.f1034a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            menuPopupA.f1033b = new Rect(i2 - i4, i3 - i4, i2 + i4, i3 + i4);
        }
        menuPopupA.a();
    }

    public MenuPopupHelper(Context context, MenuBuilder menuBuilder, View view) {
        this(context, menuBuilder, view, false, R.attr.popupMenuStyle, 0);
    }

    public MenuPopupHelper(Context context, MenuBuilder menuBuilder, View view, boolean z, int i2) {
        this(context, menuBuilder, view, z, i2, 0);
    }

    public MenuPopupHelper(Context context, MenuBuilder menuBuilder) {
        this(context, menuBuilder, null, false, R.attr.popupMenuStyle, 0);
    }
}
