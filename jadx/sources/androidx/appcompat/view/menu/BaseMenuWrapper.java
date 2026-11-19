package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.collection.SimpleArrayMap;
import androidx.core.internal.view.SupportMenuItem;
import androidx.core.internal.view.SupportSubMenu;

/* JADX INFO: loaded from: classes.dex */
abstract class BaseMenuWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f966a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public SimpleArrayMap f967b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SimpleArrayMap f968c;

    public BaseMenuWrapper(Context context) {
        this.f966a = context;
    }

    public final MenuItem c(MenuItem menuItem) {
        if (!(menuItem instanceof SupportMenuItem)) {
            return menuItem;
        }
        SupportMenuItem supportMenuItem = (SupportMenuItem) menuItem;
        if (this.f967b == null) {
            this.f967b = new SimpleArrayMap();
        }
        MenuItem menuItem2 = (MenuItem) this.f967b.get(supportMenuItem);
        if (menuItem2 != null) {
            return menuItem2;
        }
        MenuItemWrapperICS menuItemWrapperICS = new MenuItemWrapperICS(this.f966a, supportMenuItem);
        this.f967b.put(supportMenuItem, menuItemWrapperICS);
        return menuItemWrapperICS;
    }

    public final SubMenu d(SubMenu subMenu) {
        if (!(subMenu instanceof SupportSubMenu)) {
            return subMenu;
        }
        SupportSubMenu supportSubMenu = (SupportSubMenu) subMenu;
        if (this.f968c == null) {
            this.f968c = new SimpleArrayMap();
        }
        SubMenu subMenu2 = (SubMenu) this.f968c.get(supportSubMenu);
        if (subMenu2 != null) {
            return subMenu2;
        }
        SubMenuWrapperICS subMenuWrapperICS = new SubMenuWrapperICS(this.f966a, supportSubMenu);
        this.f968c.put(supportSubMenu, subMenuWrapperICS);
        return subMenuWrapperICS;
    }
}
