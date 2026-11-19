package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.internal.view.SupportMenuItem;
import androidx.core.view.ActionProvider;
import defpackage.md;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class MenuItemImpl implements SupportMenuItem {
    public ActionProvider A;
    public MenuItem.OnActionExpandListener B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1015a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1016b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1017c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CharSequence f1018e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public CharSequence f1019f;
    public Intent g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public char f1020h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public char f1022j;
    public Drawable l;
    public final MenuBuilder n;
    public SubMenuBuilder o;
    public MenuItem.OnMenuItemClickListener p;
    public CharSequence q;
    public CharSequence r;
    public int y;
    public View z;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f1021i = 4096;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f1023k = 4096;
    public int m = 0;
    public ColorStateList s = null;
    public PorterDuff.Mode t = null;
    public boolean u = false;
    public boolean v = false;
    public boolean w = false;
    public int x = 16;
    public boolean C = false;

    /* JADX INFO: renamed from: androidx.appcompat.view.menu.MenuItemImpl$1, reason: invalid class name */
    class AnonymousClass1 implements ActionProvider.VisibilityListener {
        public AnonymousClass1() {
        }
    }

    public MenuItemImpl(MenuBuilder menuBuilder, int i2, int i3, int i4, int i5, CharSequence charSequence, int i6) {
        this.n = menuBuilder;
        this.f1015a = i3;
        this.f1016b = i2;
        this.f1017c = i4;
        this.d = i5;
        this.f1018e = charSequence;
        this.y = i6;
    }

    public static void c(int i2, int i3, String str, StringBuilder sb) {
        if ((i2 & i3) == i3) {
            sb.append(str);
        }
    }

    @Override // androidx.core.internal.view.SupportMenuItem
    public final ActionProvider a() {
        return this.A;
    }

    @Override // androidx.core.internal.view.SupportMenuItem
    public final SupportMenuItem b(ActionProvider actionProvider) {
        this.z = null;
        this.A = actionProvider;
        this.n.p(true);
        ActionProvider actionProvider2 = this.A;
        if (actionProvider2 != null) {
            actionProvider2.h(new AnonymousClass1());
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final boolean collapseActionView() {
        if ((this.y & 8) == 0) {
            return false;
        }
        if (this.z == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.B;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.n.d(this);
        }
        return false;
    }

    public final Drawable d(Drawable drawable) {
        if (drawable != null && this.w && (this.u || this.v)) {
            drawable = drawable.mutate();
            if (this.u) {
                drawable.setTintList(this.s);
            }
            if (this.v) {
                drawable.setTintMode(this.t);
            }
            this.w = false;
        }
        return drawable;
    }

    public final boolean e() {
        ActionProvider actionProvider;
        if ((this.y & 8) == 0) {
            return false;
        }
        if (this.z == null && (actionProvider = this.A) != null) {
            this.z = actionProvider.d(this);
        }
        return this.z != null;
    }

    @Override // android.view.MenuItem
    public final boolean expandActionView() {
        if (!e()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.B;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
            return this.n.f(this);
        }
        return false;
    }

    public final void f(boolean z) {
        int i2 = this.x;
        if (z) {
            this.x = i2 | 32;
        } else {
            this.x = i2 & (-33);
        }
    }

    @Override // android.view.MenuItem
    public final android.view.ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // android.view.MenuItem
    public final View getActionView() {
        View view = this.z;
        if (view != null) {
            return view;
        }
        ActionProvider actionProvider = this.A;
        if (actionProvider == null) {
            return null;
        }
        View viewD = actionProvider.d(this);
        this.z = viewD;
        return viewD;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.f1023k;
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.f1022j;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.q;
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return this.f1016b;
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        Drawable drawable = this.l;
        if (drawable != null) {
            return d(drawable);
        }
        int i2 = this.m;
        if (i2 == 0) {
            return null;
        }
        Drawable drawableA = AppCompatResources.a(this.n.f1004a, i2);
        this.m = 0;
        this.l = drawableA;
        return d(drawableA);
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.s;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.t;
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.g;
    }

    @Override // android.view.MenuItem
    public final int getItemId() {
        return this.f1015a;
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public final int getNumericModifiers() {
        return this.f1021i;
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.f1020h;
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return this.f1017c;
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return this.o;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitle() {
        return this.f1018e;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f1019f;
        return charSequence != null ? charSequence : this.f1018e;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.r;
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return this.o != null;
    }

    @Override // android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return this.C;
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return (this.x & 1) == 1;
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return (this.x & 2) == 2;
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return (this.x & 16) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        ActionProvider actionProvider = this.A;
        if (actionProvider == null || !actionProvider.g()) {
            return (this.x & 8) == 0;
        }
        return (this.x & 8) == 0 && this.A.b();
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(android.view.ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(int i2) {
        int i3;
        MenuBuilder menuBuilder = this.n;
        Context context = menuBuilder.f1004a;
        View viewInflate = LayoutInflater.from(context).inflate(i2, (ViewGroup) new LinearLayout(context), false);
        this.z = viewInflate;
        this.A = null;
        if (viewInflate != null && viewInflate.getId() == -1 && (i3 = this.f1015a) > 0) {
            viewInflate.setId(i3);
        }
        menuBuilder.f1012k = true;
        menuBuilder.p(true);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c2, int i2) {
        if (this.f1022j == c2 && this.f1023k == i2) {
            return this;
        }
        this.f1022j = Character.toLowerCase(c2);
        this.f1023k = KeyEvent.normalizeMetaState(i2);
        this.n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z) {
        int i2 = this.x;
        int i3 = (z ? 1 : 0) | (i2 & (-2));
        this.x = i3;
        if (i2 != i3) {
            this.n.p(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z) {
        int i2 = this.x;
        int i3 = i2 & 4;
        MenuBuilder menuBuilder = this.n;
        if (i3 == 0) {
            int i4 = (i2 & (-3)) | (z ? 2 : 0);
            this.x = i4;
            if (i2 != i4) {
                menuBuilder.p(false);
            }
            return this;
        }
        ArrayList arrayList = menuBuilder.f1008f;
        int size = arrayList.size();
        menuBuilder.w();
        for (int i5 = 0; i5 < size; i5++) {
            MenuItemImpl menuItemImpl = (MenuItemImpl) arrayList.get(i5);
            if (menuItemImpl.f1016b == this.f1016b && (menuItemImpl.x & 4) != 0 && menuItemImpl.isCheckable()) {
                boolean z2 = menuItemImpl == this;
                int i6 = menuItemImpl.x;
                int i7 = (z2 ? 2 : 0) | (i6 & (-3));
                menuItemImpl.x = i7;
                if (i6 != i7) {
                    menuItemImpl.n.p(false);
                }
            }
        }
        menuBuilder.v();
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public final SupportMenuItem setContentDescription(CharSequence charSequence) {
        this.q = charSequence;
        this.n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z) {
        int i2 = this.x;
        if (z) {
            this.x = i2 | 16;
        } else {
            this.x = i2 & (-17);
        }
        this.n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i2) {
        this.l = null;
        this.m = i2;
        this.w = true;
        this.n.p(false);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.s = colorStateList;
        this.u = true;
        this.w = true;
        this.n.p(false);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.t = mode;
        this.v = true;
        this.w = true;
        this.n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.g = intent;
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public final MenuItem setNumericShortcut(char c2, int i2) {
        if (this.f1020h == c2 && this.f1021i == i2) {
            return this;
        }
        this.f1020h = c2;
        this.f1021i = KeyEvent.normalizeMetaState(i2);
        this.n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.B = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.p = onMenuItemClickListener;
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public final MenuItem setShortcut(char c2, char c3, int i2, int i3) {
        this.f1020h = c2;
        this.f1021i = KeyEvent.normalizeMetaState(i2);
        this.f1022j = Character.toLowerCase(c3);
        this.f1023k = KeyEvent.normalizeMetaState(i3);
        this.n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final void setShowAsAction(int i2) {
        int i3 = i2 & 3;
        if (i3 != 0 && i3 != 1 && i3 != 2) {
            md.n("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
            return;
        }
        this.y = i2;
        MenuBuilder menuBuilder = this.n;
        menuBuilder.f1012k = true;
        menuBuilder.p(true);
    }

    @Override // android.view.MenuItem
    public final MenuItem setShowAsActionFlags(int i2) {
        setShowAsAction(i2);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.f1018e = charSequence;
        this.n.p(false);
        SubMenuBuilder subMenuBuilder = this.o;
        if (subMenuBuilder != null) {
            subMenuBuilder.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f1019f = charSequence;
        this.n.p(false);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public final SupportMenuItem setTooltipText(CharSequence charSequence) {
        this.r = charSequence;
        this.n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z) {
        int i2 = this.x;
        int i3 = (z ? 0 : 8) | (i2 & (-9));
        this.x = i3;
        if (i2 != i3) {
            MenuBuilder menuBuilder = this.n;
            menuBuilder.f1009h = true;
            menuBuilder.p(true);
        }
        return this;
    }

    public final String toString() {
        CharSequence charSequence = this.f1018e;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setContentDescription(CharSequence charSequence) {
        setContentDescription(charSequence);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setTooltipText(CharSequence charSequence) {
        setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.m = 0;
        this.l = drawable;
        this.w = true;
        this.n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i2) {
        setTitle(this.n.f1004a.getString(i2));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c2) {
        if (this.f1020h == c2) {
            return this;
        }
        this.f1020h = c2;
        this.n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c2, char c3) {
        this.f1020h = c2;
        this.f1022j = Character.toLowerCase(c3);
        this.n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c2) {
        if (this.f1022j == c2) {
            return this;
        }
        this.f1022j = Character.toLowerCase(c2);
        this.n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(View view) {
        int i2;
        this.z = view;
        this.A = null;
        if (view != null && view.getId() == -1 && (i2 = this.f1015a) > 0) {
            view.setId(i2);
        }
        MenuBuilder menuBuilder = this.n;
        menuBuilder.f1012k = true;
        menuBuilder.p(true);
        return this;
    }
}
