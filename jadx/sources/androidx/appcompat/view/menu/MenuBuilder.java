package androidx.appcompat.view.menu;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.core.content.ContextCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ActionProvider;
import defpackage.md;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public class MenuBuilder implements SupportMenu {
    public static final int[] y = {1, 4, 5, 3, 2, 0};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f1004a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Resources f1005b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f1006c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Callback f1007e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f1008f;
    public final ArrayList g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1009h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArrayList f1010i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ArrayList f1011j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f1012k;
    public CharSequence m;
    public Drawable n;
    public View o;
    public MenuItemImpl v;
    public boolean x;
    public int l = 0;
    public boolean p = false;
    public boolean q = false;
    public boolean r = false;
    public boolean s = false;
    public final ArrayList t = new ArrayList();
    public final CopyOnWriteArrayList u = new CopyOnWriteArrayList();
    public boolean w = false;

    public interface Callback {
        boolean a(MenuBuilder menuBuilder, MenuItem menuItem);

        void b(MenuBuilder menuBuilder);
    }

    public interface ItemInvoker {
        boolean b(MenuItemImpl menuItemImpl);
    }

    public MenuBuilder(Context context) {
        boolean z = false;
        this.f1004a = context;
        Resources resources = context.getResources();
        this.f1005b = resources;
        this.f1008f = new ArrayList();
        this.g = new ArrayList();
        this.f1009h = true;
        this.f1010i = new ArrayList();
        this.f1011j = new ArrayList();
        this.f1012k = true;
        if (resources.getConfiguration().keyboard != 1 && ViewConfiguration.get(context).shouldShowMenuShortcutsWhenKeyboardPresent()) {
            z = true;
        }
        this.d = z;
    }

    public final MenuItemImpl a(int i2, int i3, int i4, CharSequence charSequence) {
        int i5;
        int i6 = ((-65536) & i4) >> 16;
        if (i6 < 0 || i6 >= 6) {
            md.n("order does not contain a valid category.");
            return null;
        }
        int i7 = (y[i6] << 16) | (65535 & i4);
        MenuItemImpl menuItemImpl = new MenuItemImpl(this, i2, i3, i4, i7, charSequence, this.l);
        ArrayList arrayList = this.f1008f;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (((MenuItemImpl) arrayList.get(size)).d <= i7) {
                i5 = size + 1;
                arrayList.add(i5, menuItemImpl);
                p(true);
                return menuItemImpl;
            }
        }
        i5 = 0;
        arrayList.add(i5, menuItemImpl);
        p(true);
        return menuItemImpl;
    }

    @Override // android.view.Menu
    public final MenuItem add(int i2) {
        return a(0, 0, 0, this.f1005b.getString(i2));
    }

    @Override // android.view.Menu
    public final int addIntentOptions(int i2, int i3, int i4, ComponentName componentName, Intent[] intentArr, Intent intent, int i5, MenuItem[] menuItemArr) {
        int i6;
        PackageManager packageManager = this.f1004a.getPackageManager();
        List<ResolveInfo> listQueryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = listQueryIntentActivityOptions != null ? listQueryIntentActivityOptions.size() : 0;
        if ((i5 & 1) == 0) {
            removeGroup(i2);
        }
        for (int i7 = 0; i7 < size; i7++) {
            ResolveInfo resolveInfo = listQueryIntentActivityOptions.get(i7);
            int i8 = resolveInfo.specificIndex;
            Intent intent2 = new Intent(i8 < 0 ? intent : intentArr[i8]);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
            MenuItemImpl menuItemImplA = a(i2, i3, i4, resolveInfo.loadLabel(packageManager));
            menuItemImplA.setIcon(resolveInfo.loadIcon(packageManager));
            menuItemImplA.g = intent2;
            if (menuItemArr != null && (i6 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i6] = menuItemImplA;
            }
        }
        return size;
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i2, int i3, int i4, CharSequence charSequence) {
        MenuItemImpl menuItemImplA = a(i2, i3, i4, charSequence);
        SubMenuBuilder subMenuBuilder = new SubMenuBuilder(this.f1004a, this, menuItemImplA);
        menuItemImplA.o = subMenuBuilder;
        subMenuBuilder.setHeaderTitle(menuItemImplA.f1018e);
        return subMenuBuilder;
    }

    public final void b(MenuPresenter menuPresenter, Context context) {
        this.u.add(new WeakReference(menuPresenter));
        menuPresenter.j(context, this);
        this.f1012k = true;
    }

    public final void c(boolean z) {
        if (this.s) {
            return;
        }
        this.s = true;
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.u;
        for (WeakReference weakReference : copyOnWriteArrayList) {
            MenuPresenter menuPresenter = (MenuPresenter) weakReference.get();
            if (menuPresenter == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                menuPresenter.c(this, z);
            }
        }
        this.s = false;
    }

    @Override // android.view.Menu
    public final void clear() {
        MenuItemImpl menuItemImpl = this.v;
        if (menuItemImpl != null) {
            d(menuItemImpl);
        }
        this.f1008f.clear();
        p(true);
    }

    public final void clearHeader() {
        this.n = null;
        this.m = null;
        this.o = null;
        p(false);
    }

    @Override // android.view.Menu
    public final void close() {
        c(true);
    }

    public boolean d(MenuItemImpl menuItemImpl) {
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.u;
        boolean zE = false;
        if (!copyOnWriteArrayList.isEmpty() && this.v == menuItemImpl) {
            w();
            for (WeakReference weakReference : copyOnWriteArrayList) {
                MenuPresenter menuPresenter = (MenuPresenter) weakReference.get();
                if (menuPresenter != null) {
                    zE = menuPresenter.e(menuItemImpl);
                    if (zE) {
                        break;
                    }
                } else {
                    copyOnWriteArrayList.remove(weakReference);
                }
            }
            v();
            if (zE) {
                this.v = null;
            }
        }
        return zE;
    }

    public boolean e(MenuBuilder menuBuilder, MenuItem menuItem) {
        Callback callback = this.f1007e;
        return callback != null && callback.a(menuBuilder, menuItem);
    }

    public boolean f(MenuItemImpl menuItemImpl) {
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.u;
        boolean zG = false;
        if (copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        w();
        for (WeakReference weakReference : copyOnWriteArrayList) {
            MenuPresenter menuPresenter = (MenuPresenter) weakReference.get();
            if (menuPresenter != null) {
                zG = menuPresenter.g(menuItemImpl);
                if (zG) {
                    break;
                }
            } else {
                copyOnWriteArrayList.remove(weakReference);
            }
        }
        v();
        if (zG) {
            this.v = menuItemImpl;
        }
        return zG;
    }

    @Override // android.view.Menu
    public final MenuItem findItem(int i2) {
        MenuItem menuItemFindItem;
        ArrayList arrayList = this.f1008f;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            MenuItemImpl menuItemImpl = (MenuItemImpl) arrayList.get(i3);
            if (menuItemImpl.f1015a == i2) {
                return menuItemImpl;
            }
            if (menuItemImpl.hasSubMenu() && (menuItemFindItem = menuItemImpl.o.findItem(i2)) != null) {
                return menuItemFindItem;
            }
        }
        return null;
    }

    public final MenuItemImpl g(int i2, KeyEvent keyEvent) {
        ArrayList arrayList = this.t;
        arrayList.clear();
        h(arrayList, i2, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return (MenuItemImpl) arrayList.get(0);
        }
        boolean zN = n();
        for (int i3 = 0; i3 < size; i3++) {
            MenuItemImpl menuItemImpl = (MenuItemImpl) arrayList.get(i3);
            char c2 = zN ? menuItemImpl.f1022j : menuItemImpl.f1020h;
            char[] cArr = keyData.meta;
            if ((c2 == cArr[0] && (metaState & 2) == 0) || ((c2 == cArr[2] && (metaState & 2) != 0) || (zN && c2 == '\b' && i2 == 67))) {
                return menuItemImpl;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public final MenuItem getItem(int i2) {
        return (MenuItem) this.f1008f.get(i2);
    }

    public final void h(List list, int i2, KeyEvent keyEvent) {
        boolean zN = n();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i2 == 67) {
            ArrayList arrayList = this.f1008f;
            int size = arrayList.size();
            for (int i3 = 0; i3 < size; i3++) {
                MenuItemImpl menuItemImpl = (MenuItemImpl) arrayList.get(i3);
                if (menuItemImpl.hasSubMenu()) {
                    menuItemImpl.o.h(list, i2, keyEvent);
                }
                char c2 = zN ? menuItemImpl.f1022j : menuItemImpl.f1020h;
                if ((modifiers & 69647) == ((zN ? menuItemImpl.f1023k : menuItemImpl.f1021i) & 69647) && c2 != 0) {
                    char[] cArr = keyData.meta;
                    if ((c2 == cArr[0] || c2 == cArr[2] || (zN && c2 == '\b' && i2 == 67)) && menuItemImpl.isEnabled()) {
                        list.add(menuItemImpl);
                    }
                }
            }
        }
    }

    @Override // android.view.Menu
    public final boolean hasVisibleItems() {
        if (this.x) {
            return true;
        }
        ArrayList arrayList = this.f1008f;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (((MenuItemImpl) arrayList.get(i2)).isVisible()) {
                return true;
            }
        }
        return false;
    }

    public final void i() {
        ArrayList arrayListL = l();
        if (this.f1012k) {
            CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.u;
            boolean zI = false;
            for (WeakReference weakReference : copyOnWriteArrayList) {
                MenuPresenter menuPresenter = (MenuPresenter) weakReference.get();
                if (menuPresenter == null) {
                    copyOnWriteArrayList.remove(weakReference);
                } else {
                    zI |= menuPresenter.i();
                }
            }
            ArrayList arrayList = this.f1010i;
            ArrayList arrayList2 = this.f1011j;
            if (zI) {
                arrayList.clear();
                arrayList2.clear();
                int size = arrayListL.size();
                for (int i2 = 0; i2 < size; i2++) {
                    MenuItemImpl menuItemImpl = (MenuItemImpl) arrayListL.get(i2);
                    if ((menuItemImpl.x & 32) == 32) {
                        arrayList.add(menuItemImpl);
                    } else {
                        arrayList2.add(menuItemImpl);
                    }
                }
            } else {
                arrayList.clear();
                arrayList2.clear();
                arrayList2.addAll(l());
            }
            this.f1012k = false;
        }
    }

    @Override // android.view.Menu
    public final boolean isShortcutKey(int i2, KeyEvent keyEvent) {
        return g(i2, keyEvent) != null;
    }

    public String j() {
        return "android:menu:actionviewstates";
    }

    public MenuBuilder k() {
        return this;
    }

    public final ArrayList l() {
        boolean z = this.f1009h;
        ArrayList arrayList = this.g;
        if (!z) {
            return arrayList;
        }
        arrayList.clear();
        ArrayList arrayList2 = this.f1008f;
        int size = arrayList2.size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItemImpl menuItemImpl = (MenuItemImpl) arrayList2.get(i2);
            if (menuItemImpl.isVisible()) {
                arrayList.add(menuItemImpl);
            }
        }
        this.f1009h = false;
        this.f1012k = true;
        return arrayList;
    }

    public boolean m() {
        return this.w;
    }

    public boolean n() {
        return this.f1006c;
    }

    public boolean o() {
        return this.d;
    }

    public final void p(boolean z) {
        if (this.p) {
            this.q = true;
            if (z) {
                this.r = true;
                return;
            }
            return;
        }
        if (z) {
            this.f1009h = true;
            this.f1012k = true;
        }
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.u;
        if (copyOnWriteArrayList.isEmpty()) {
            return;
        }
        w();
        for (WeakReference weakReference : copyOnWriteArrayList) {
            MenuPresenter menuPresenter = (MenuPresenter) weakReference.get();
            if (menuPresenter == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                menuPresenter.h(z);
            }
        }
        v();
    }

    @Override // android.view.Menu
    public final boolean performIdentifierAction(int i2, int i3) {
        return q(findItem(i2), null, i3);
    }

    @Override // android.view.Menu
    public final boolean performShortcut(int i2, KeyEvent keyEvent, int i3) {
        MenuItemImpl menuItemImplG = g(i2, keyEvent);
        boolean zQ = menuItemImplG != null ? q(menuItemImplG, null, i3) : false;
        if ((i3 & 2) != 0) {
            c(true);
        }
        return zQ;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001a  */
    /* JADX WARN: Code duplicated, block: B:30:0x0045  */
    /* JADX WARN: Code duplicated, block: B:33:0x004c  */
    /* JADX WARN: Code duplicated, block: B:35:0x0053  */
    /* JADX WARN: Code duplicated, block: B:36:0x0058  */
    /* JADX WARN: Code duplicated, block: B:43:0x0069  */
    /* JADX WARN: Code duplicated, block: B:45:0x006d  */
    /* JADX WARN: Code duplicated, block: B:48:0x0076  */
    /* JADX WARN: Code duplicated, block: B:51:0x0088  */
    /* JADX WARN: Code duplicated, block: B:55:0x0094 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:56:0x0096  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:67:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:74:0x00b6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:75:0x00b2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:76:0x00b8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:78:0x009e A[SYNTHETIC] */
    public final boolean q(MenuItem menuItem, MenuPresenter menuPresenter, int i2) {
        ActionProvider actionProvider;
        boolean zExpandActionView;
        ActionProvider actionProvider2;
        boolean z;
        SubMenuBuilder subMenuBuilder;
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList;
        MenuPresenter menuPresenter2;
        MenuItemImpl menuItemImpl = (MenuItemImpl) menuItem;
        boolean zF = false;
        if (menuItemImpl == null || !menuItemImpl.isEnabled()) {
            return false;
        }
        MenuBuilder menuBuilder = menuItemImpl.n;
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = menuItemImpl.p;
        if ((onMenuItemClickListener == null || !onMenuItemClickListener.onMenuItemClick(menuItemImpl)) && !menuBuilder.e(menuBuilder, menuItemImpl)) {
            Intent intent = menuItemImpl.g;
            if (intent != null) {
                try {
                    menuBuilder.f1004a.startActivity(intent);
                } catch (ActivityNotFoundException unused) {
                    actionProvider = menuItemImpl.A;
                    if (actionProvider == null) {
                    }
                    zExpandActionView = false;
                    actionProvider2 = menuItemImpl.A;
                    if (actionProvider2 == null) {
                        z = false;
                    } else {
                        z = false;
                    }
                    if (menuItemImpl.e()) {
                        zExpandActionView |= menuItemImpl.expandActionView();
                        if (zExpandActionView) {
                            c(true);
                        }
                    } else if (menuItemImpl.hasSubMenu()) {
                        if ((i2 & 4) == 0) {
                            c(false);
                        }
                        if (!menuItemImpl.hasSubMenu()) {
                            SubMenuBuilder subMenuBuilder2 = new SubMenuBuilder(this.f1004a, this, menuItemImpl);
                            menuItemImpl.o = subMenuBuilder2;
                            subMenuBuilder2.setHeaderTitle(menuItemImpl.f1018e);
                        }
                        subMenuBuilder = menuItemImpl.o;
                        if (z) {
                            actionProvider2.f(subMenuBuilder);
                        }
                        copyOnWriteArrayList = this.u;
                        if (!copyOnWriteArrayList.isEmpty()) {
                            if (menuPresenter != null) {
                            }
                            for (WeakReference weakReference : copyOnWriteArrayList) {
                                menuPresenter2 = (MenuPresenter) weakReference.get();
                                if (menuPresenter2 == null) {
                                    copyOnWriteArrayList.remove(weakReference);
                                } else if (!zF) {
                                    zF = menuPresenter2.f(subMenuBuilder);
                                }
                            }
                        }
                        zExpandActionView |= zF;
                        if (!zExpandActionView) {
                            c(true);
                        }
                    } else {
                        if ((i2 & 4) == 0) {
                            c(false);
                        }
                        if (!menuItemImpl.hasSubMenu()) {
                            SubMenuBuilder subMenuBuilder3 = new SubMenuBuilder(this.f1004a, this, menuItemImpl);
                            menuItemImpl.o = subMenuBuilder3;
                            subMenuBuilder3.setHeaderTitle(menuItemImpl.f1018e);
                        }
                        subMenuBuilder = menuItemImpl.o;
                        if (z) {
                            actionProvider2.f(subMenuBuilder);
                        }
                        copyOnWriteArrayList = this.u;
                        if (!copyOnWriteArrayList.isEmpty()) {
                            zF = menuPresenter != null ? menuPresenter.f(subMenuBuilder) : false;
                            while (r8.hasNext()) {
                                menuPresenter2 = (MenuPresenter) weakReference.get();
                                if (menuPresenter2 == null) {
                                    copyOnWriteArrayList.remove(weakReference);
                                } else if (!zF) {
                                    zF = menuPresenter2.f(subMenuBuilder);
                                }
                            }
                        }
                        zExpandActionView |= zF;
                        if (!zExpandActionView) {
                            c(true);
                        }
                    }
                    return zExpandActionView;
                }
                zExpandActionView = true;
            } else {
                actionProvider = menuItemImpl.A;
                if (actionProvider == null && actionProvider.e()) {
                    zExpandActionView = true;
                } else {
                    zExpandActionView = false;
                }
            }
        } else {
            zExpandActionView = true;
        }
        actionProvider2 = menuItemImpl.A;
        if (actionProvider2 == null && actionProvider2.a()) {
            z = true;
        } else {
            z = false;
        }
        if (menuItemImpl.e()) {
            zExpandActionView |= menuItemImpl.expandActionView();
            if (zExpandActionView) {
                c(true);
            }
        } else if (menuItemImpl.hasSubMenu() || z) {
            if ((i2 & 4) == 0) {
                c(false);
            }
            if (!menuItemImpl.hasSubMenu()) {
                SubMenuBuilder subMenuBuilder4 = new SubMenuBuilder(this.f1004a, this, menuItemImpl);
                menuItemImpl.o = subMenuBuilder4;
                subMenuBuilder4.setHeaderTitle(menuItemImpl.f1018e);
            }
            subMenuBuilder = menuItemImpl.o;
            if (z) {
                actionProvider2.f(subMenuBuilder);
            }
            copyOnWriteArrayList = this.u;
            if (!copyOnWriteArrayList.isEmpty()) {
                if (menuPresenter != null) {
                }
                while (r8.hasNext()) {
                    menuPresenter2 = (MenuPresenter) weakReference.get();
                    if (menuPresenter2 == null) {
                        copyOnWriteArrayList.remove(weakReference);
                    } else if (!zF) {
                        zF = menuPresenter2.f(subMenuBuilder);
                    }
                }
            }
            zExpandActionView |= zF;
            if (!zExpandActionView) {
                c(true);
            }
        } else if ((i2 & 1) == 0) {
            c(true);
        }
        return zExpandActionView;
    }

    public final void r(MenuPresenter menuPresenter) {
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.u;
        for (WeakReference weakReference : copyOnWriteArrayList) {
            MenuPresenter menuPresenter2 = (MenuPresenter) weakReference.get();
            if (menuPresenter2 == null || menuPresenter2 == menuPresenter) {
                copyOnWriteArrayList.remove(weakReference);
            }
        }
    }

    @Override // android.view.Menu
    public final void removeGroup(int i2) {
        ArrayList arrayList = this.f1008f;
        int size = arrayList.size();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i4 >= size) {
                i4 = -1;
                break;
            } else if (((MenuItemImpl) arrayList.get(i4)).f1016b == i2) {
                break;
            } else {
                i4++;
            }
        }
        if (i4 >= 0) {
            int size2 = arrayList.size() - i4;
            while (true) {
                int i5 = i3 + 1;
                if (i3 >= size2 || ((MenuItemImpl) arrayList.get(i4)).f1016b != i2) {
                    break;
                }
                if (i4 >= 0 && i4 < arrayList.size()) {
                    arrayList.remove(i4);
                }
                i3 = i5;
            }
            p(true);
        }
    }

    @Override // android.view.Menu
    public final void removeItem(int i2) {
        ArrayList arrayList = this.f1008f;
        int size = arrayList.size();
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                i3 = -1;
                break;
            } else if (((MenuItemImpl) arrayList.get(i3)).f1015a == i2) {
                break;
            } else {
                i3++;
            }
        }
        if (i3 < 0 || i3 >= arrayList.size()) {
            return;
        }
        arrayList.remove(i3);
        p(true);
    }

    public final void s(Bundle bundle) {
        MenuItem menuItemFindItem;
        if (bundle == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(j());
        int size = this.f1008f.size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = getItem(i2);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                ((SubMenuBuilder) item.getSubMenu()).s(bundle);
            }
        }
        int i3 = bundle.getInt("android:menu:expandedactionview");
        if (i3 <= 0 || (menuItemFindItem = findItem(i3)) == null) {
            return;
        }
        menuItemFindItem.expandActionView();
    }

    @Override // android.view.Menu
    public final void setGroupCheckable(int i2, boolean z, boolean z2) {
        ArrayList arrayList = this.f1008f;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            MenuItemImpl menuItemImpl = (MenuItemImpl) arrayList.get(i3);
            if (menuItemImpl.f1016b == i2) {
                menuItemImpl.x = (menuItemImpl.x & (-5)) | (z2 ? 4 : 0);
                menuItemImpl.setCheckable(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.w = z;
    }

    @Override // android.view.Menu
    public final void setGroupEnabled(int i2, boolean z) {
        ArrayList arrayList = this.f1008f;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            MenuItemImpl menuItemImpl = (MenuItemImpl) arrayList.get(i3);
            if (menuItemImpl.f1016b == i2) {
                menuItemImpl.setEnabled(z);
            }
        }
    }

    @Override // android.view.Menu
    public final void setGroupVisible(int i2, boolean z) {
        ArrayList arrayList = this.f1008f;
        int size = arrayList.size();
        boolean z2 = false;
        for (int i3 = 0; i3 < size; i3++) {
            MenuItemImpl menuItemImpl = (MenuItemImpl) arrayList.get(i3);
            if (menuItemImpl.f1016b == i2) {
                int i4 = menuItemImpl.x;
                int i5 = (i4 & (-9)) | (z ? 0 : 8);
                menuItemImpl.x = i5;
                if (i4 != i5) {
                    z2 = true;
                }
            }
        }
        if (z2) {
            p(true);
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f1006c = z;
        p(false);
    }

    @Override // android.view.Menu
    public final int size() {
        return this.f1008f.size();
    }

    public final void t(Bundle bundle) {
        int size = this.f1008f.size();
        SparseArray<? extends Parcelable> sparseArray = null;
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = getItem(i2);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                actionView.saveHierarchyState(sparseArray);
                if (item.isActionViewExpanded()) {
                    bundle.putInt("android:menu:expandedactionview", item.getItemId());
                }
            }
            if (item.hasSubMenu()) {
                ((SubMenuBuilder) item.getSubMenu()).t(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(j(), sparseArray);
        }
    }

    public final void u(int i2, CharSequence charSequence, int i3, Drawable drawable, View view) {
        if (view != null) {
            this.o = view;
            this.m = null;
            this.n = null;
        } else {
            if (i2 > 0) {
                this.m = this.f1005b.getText(i2);
            } else if (charSequence != null) {
                this.m = charSequence;
            }
            if (i3 > 0) {
                this.n = ContextCompat.getDrawable(this.f1004a, i3);
            } else if (drawable != null) {
                this.n = drawable;
            }
            this.o = null;
        }
        p(false);
    }

    public final void v() {
        this.p = false;
        if (this.q) {
            this.q = false;
            p(this.r);
        }
    }

    public final void w() {
        if (this.p) {
            return;
        }
        this.p = true;
        this.q = false;
        this.r = false;
    }

    @Override // android.view.Menu
    public final MenuItem add(CharSequence charSequence) {
        return a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public final MenuItem add(int i2, int i3, int i4, CharSequence charSequence) {
        return a(i2, i3, i4, charSequence);
    }

    @Override // android.view.Menu
    public final MenuItem add(int i2, int i3, int i4, int i5) {
        return a(i2, i3, i4, this.f1005b.getString(i5));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i2) {
        return addSubMenu(0, 0, 0, this.f1005b.getString(i2));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i2, int i3, int i4, int i5) {
        return addSubMenu(i2, i3, i4, this.f1005b.getString(i5));
    }
}
