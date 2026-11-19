package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class MenuAdapter extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MenuBuilder f1000b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1001c = -1;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f1002e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LayoutInflater f1003f;
    public final int g;

    public MenuAdapter(MenuBuilder menuBuilder, LayoutInflater layoutInflater, boolean z, int i2) {
        this.f1002e = z;
        this.f1003f = layoutInflater;
        this.f1000b = menuBuilder;
        this.g = i2;
        a();
    }

    public final void a() {
        MenuBuilder menuBuilder = this.f1000b;
        MenuItemImpl menuItemImpl = menuBuilder.v;
        if (menuItemImpl != null) {
            menuBuilder.i();
            ArrayList arrayList = menuBuilder.f1011j;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (((MenuItemImpl) arrayList.get(i2)) == menuItemImpl) {
                    this.f1001c = i2;
                    return;
                }
            }
        }
        this.f1001c = -1;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final MenuItemImpl getItem(int i2) {
        ArrayList arrayListL;
        boolean z = this.f1002e;
        MenuBuilder menuBuilder = this.f1000b;
        if (z) {
            menuBuilder.i();
            arrayListL = menuBuilder.f1011j;
        } else {
            arrayListL = menuBuilder.l();
        }
        int i3 = this.f1001c;
        if (i3 >= 0 && i2 >= i3) {
            i2++;
        }
        return (MenuItemImpl) arrayListL.get(i2);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        ArrayList arrayListL;
        boolean z = this.f1002e;
        MenuBuilder menuBuilder = this.f1000b;
        if (z) {
            menuBuilder.i();
            arrayListL = menuBuilder.f1011j;
        } else {
            arrayListL = menuBuilder.l();
        }
        return this.f1001c < 0 ? arrayListL.size() : arrayListL.size() - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public final View getView(int i2, View view, ViewGroup viewGroup) {
        boolean z = false;
        if (view == null) {
            view = this.f1003f.inflate(this.g, viewGroup, false);
        }
        int i3 = getItem(i2).f1016b;
        int i4 = i2 - 1;
        int i5 = i4 >= 0 ? getItem(i4).f1016b : i3;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        if (this.f1000b.m() && i3 != i5) {
            z = true;
        }
        listMenuItemView.setGroupDividerEnabled(z);
        MenuView.ItemView itemView = (MenuView.ItemView) view;
        if (this.d) {
            listMenuItemView.setForceShowIcon(true);
        }
        itemView.c(getItem(i2));
        return view;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
