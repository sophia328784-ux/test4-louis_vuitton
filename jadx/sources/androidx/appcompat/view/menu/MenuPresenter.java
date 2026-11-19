package androidx.appcompat.view.menu;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public interface MenuPresenter {

    public interface Callback {
        void c(MenuBuilder menuBuilder, boolean z);

        boolean d(MenuBuilder menuBuilder);
    }

    void c(MenuBuilder menuBuilder, boolean z);

    void d(Callback callback);

    boolean e(MenuItemImpl menuItemImpl);

    boolean f(SubMenuBuilder subMenuBuilder);

    boolean g(MenuItemImpl menuItemImpl);

    void h(boolean z);

    boolean i();

    void j(Context context, MenuBuilder menuBuilder);
}
