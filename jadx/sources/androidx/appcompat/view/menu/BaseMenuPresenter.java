package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseMenuPresenter implements MenuPresenter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f960b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Context f961c;
    public MenuBuilder d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LayoutInflater f962e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public MenuPresenter.Callback f963f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f964h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public MenuView f965i;

    public BaseMenuPresenter(Context context, int i2, int i3) {
        this.f960b = context;
        this.f962e = LayoutInflater.from(context);
        this.g = i2;
        this.f964h = i3;
    }

    public abstract void a(MenuItemImpl menuItemImpl, MenuView.ItemView itemView);

    public boolean b(ViewGroup viewGroup, int i2) {
        viewGroup.removeViewAt(i2);
        return true;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void c(MenuBuilder menuBuilder, boolean z) {
        MenuPresenter.Callback callback = this.f963f;
        if (callback != null) {
            callback.c(menuBuilder, z);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean e(MenuItemImpl menuItemImpl) {
        return false;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean f(SubMenuBuilder subMenuBuilder) {
        MenuPresenter.Callback callback = this.f963f;
        MenuBuilder menuBuilder = subMenuBuilder;
        if (callback == null) {
            return false;
        }
        if (subMenuBuilder == null) {
            menuBuilder = this.d;
        }
        return callback.d(menuBuilder);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final boolean g(MenuItemImpl menuItemImpl) {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void h(boolean z) {
        ViewGroup viewGroup = (ViewGroup) this.f965i;
        if (viewGroup == null) {
            return;
        }
        MenuBuilder menuBuilder = this.d;
        int i2 = 0;
        if (menuBuilder != null) {
            menuBuilder.i();
            ArrayList arrayListL = this.d.l();
            int size = arrayListL.size();
            int i3 = 0;
            for (int i4 = 0; i4 < size; i4++) {
                MenuItemImpl menuItemImpl = (MenuItemImpl) arrayListL.get(i4);
                if (l(menuItemImpl)) {
                    View childAt = viewGroup.getChildAt(i3);
                    MenuItemImpl itemData = childAt instanceof MenuView.ItemView ? ((MenuView.ItemView) childAt).getItemData() : null;
                    View viewK = k(menuItemImpl, childAt, viewGroup);
                    if (menuItemImpl != itemData) {
                        viewK.setPressed(false);
                        viewK.jumpDrawablesToCurrentState();
                    }
                    if (viewK != childAt) {
                        ViewGroup viewGroup2 = (ViewGroup) viewK.getParent();
                        if (viewGroup2 != null) {
                            viewGroup2.removeView(viewK);
                        }
                        ((ViewGroup) this.f965i).addView(viewK, i3);
                    }
                    i3++;
                }
            }
            i2 = i3;
        }
        while (i2 < viewGroup.getChildCount()) {
            if (!b(viewGroup, i2)) {
                i2++;
            }
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean i() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void j(Context context, MenuBuilder menuBuilder) {
        this.f961c = context;
        LayoutInflater.from(context);
        this.d = menuBuilder;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View k(MenuItemImpl menuItemImpl, View view, ViewGroup viewGroup) {
        MenuView.ItemView itemView;
        if (view instanceof MenuView.ItemView) {
            itemView = (MenuView.ItemView) view;
        } else {
            itemView = (MenuView.ItemView) this.f962e.inflate(this.f964h, viewGroup, false);
        }
        a(menuItemImpl, itemView);
        return (View) itemView;
    }

    public boolean l(MenuItemImpl menuItemImpl) {
        return true;
    }
}
