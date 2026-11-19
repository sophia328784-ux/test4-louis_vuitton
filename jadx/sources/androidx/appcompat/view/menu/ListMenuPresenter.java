package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import com.dynatrace.android.callback.Callback;
import com.vuitton.android.R;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ListMenuPresenter implements MenuPresenter, AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Context f992b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LayoutInflater f993c;
    public MenuBuilder d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ExpandedMenuView f994e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f995f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public MenuPresenter.Callback f996h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public MenuAdapter f997i;

    public class MenuAdapter extends BaseAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f998b = -1;

        public MenuAdapter() {
            a();
        }

        public final void a() {
            MenuBuilder menuBuilder = ListMenuPresenter.this.d;
            MenuItemImpl menuItemImpl = menuBuilder.v;
            if (menuItemImpl != null) {
                menuBuilder.i();
                ArrayList arrayList = menuBuilder.f1011j;
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    if (((MenuItemImpl) arrayList.get(i2)) == menuItemImpl) {
                        this.f998b = i2;
                        return;
                    }
                }
            }
            this.f998b = -1;
        }

        @Override // android.widget.Adapter
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final MenuItemImpl getItem(int i2) {
            ListMenuPresenter listMenuPresenter = ListMenuPresenter.this;
            MenuBuilder menuBuilder = listMenuPresenter.d;
            menuBuilder.i();
            ArrayList arrayList = menuBuilder.f1011j;
            listMenuPresenter.getClass();
            int i3 = this.f998b;
            if (i3 >= 0 && i2 >= i3) {
                i2++;
            }
            return (MenuItemImpl) arrayList.get(i2);
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            ListMenuPresenter listMenuPresenter = ListMenuPresenter.this;
            MenuBuilder menuBuilder = listMenuPresenter.d;
            menuBuilder.i();
            int size = menuBuilder.f1011j.size();
            listMenuPresenter.getClass();
            return this.f998b < 0 ? size : size - 1;
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public final View getView(int i2, View view, ViewGroup viewGroup) {
            if (view == null) {
                ListMenuPresenter listMenuPresenter = ListMenuPresenter.this;
                view = listMenuPresenter.f993c.inflate(listMenuPresenter.g, viewGroup, false);
            }
            ((MenuView.ItemView) view).c(getItem(i2));
            return view;
        }

        @Override // android.widget.BaseAdapter
        public final void notifyDataSetChanged() {
            a();
            super.notifyDataSetChanged();
        }
    }

    public ListMenuPresenter(Context context, int i2) {
        this(i2, 0);
        this.f992b = context;
        this.f993c = LayoutInflater.from(context);
    }

    public final ListAdapter a() {
        if (this.f997i == null) {
            this.f997i = new MenuAdapter();
        }
        return this.f997i;
    }

    public final MenuView b(ViewGroup viewGroup) {
        if (this.f994e == null) {
            this.f994e = (ExpandedMenuView) this.f993c.inflate(R.layout.abc_expanded_menu_layout, viewGroup, false);
            if (this.f997i == null) {
                this.f997i = new MenuAdapter();
            }
            this.f994e.setAdapter((ListAdapter) this.f997i);
            this.f994e.setOnItemClickListener(this);
        }
        return this.f994e;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void c(MenuBuilder menuBuilder, boolean z) {
        MenuPresenter.Callback callback = this.f996h;
        if (callback != null) {
            callback.c(menuBuilder, z);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void d(MenuPresenter.Callback callback) {
        throw null;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean e(MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean f(SubMenuBuilder subMenuBuilder) {
        if (!subMenuBuilder.hasVisibleItems()) {
            return false;
        }
        MenuDialogHelper menuDialogHelper = new MenuDialogHelper(subMenuBuilder);
        MenuBuilder menuBuilder = menuDialogHelper.f1013b;
        AlertDialog.Builder builder = new AlertDialog.Builder(menuBuilder.f1004a);
        ListMenuPresenter listMenuPresenter = new ListMenuPresenter(builder.getContext(), R.layout.abc_list_menu_item_layout);
        menuDialogHelper.d = listMenuPresenter;
        listMenuPresenter.f996h = menuDialogHelper;
        menuBuilder.b(listMenuPresenter, menuBuilder.f1004a);
        ListAdapter listAdapterA = menuDialogHelper.d.a();
        AlertController.AlertParams alertParams = builder.f810a;
        alertParams.q = listAdapterA;
        alertParams.r = menuDialogHelper;
        View view = menuBuilder.o;
        if (view != null) {
            alertParams.f800f = view;
        } else {
            alertParams.d = menuBuilder.n;
            builder.setTitle(menuBuilder.m);
        }
        alertParams.o = menuDialogHelper;
        AlertDialog alertDialogCreate = builder.create();
        menuDialogHelper.f1014c = alertDialogCreate;
        alertDialogCreate.setOnDismissListener(menuDialogHelper);
        WindowManager.LayoutParams attributes = menuDialogHelper.f1014c.getWindow().getAttributes();
        attributes.type = 1003;
        attributes.flags |= 131072;
        menuDialogHelper.f1014c.show();
        MenuPresenter.Callback callback = this.f996h;
        if (callback == null) {
            return true;
        }
        callback.d(subMenuBuilder);
        return true;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean g(MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void h(boolean z) {
        MenuAdapter menuAdapter = this.f997i;
        if (menuAdapter != null) {
            menuAdapter.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean i() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void j(Context context, MenuBuilder menuBuilder) {
        int i2 = this.f995f;
        if (i2 != 0) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i2);
            this.f992b = contextThemeWrapper;
            this.f993c = LayoutInflater.from(contextThemeWrapper);
        } else if (this.f992b != null) {
            this.f992b = context;
            if (this.f993c == null) {
                this.f993c = LayoutInflater.from(context);
            }
        }
        this.d = menuBuilder;
        MenuAdapter menuAdapter = this.f997i;
        if (menuAdapter != null) {
            menuAdapter.notifyDataSetChanged();
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i2, long j2) {
        Callback.q(view);
        try {
            this.d.q(this.f997i.getItem(i2), this, 0);
        } finally {
            Callback.r();
        }
    }

    public ListMenuPresenter(int i2, int i3) {
        this.g = i2;
        this.f995f = i3;
    }
}
