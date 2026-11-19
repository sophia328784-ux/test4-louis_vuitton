package androidx.core.view;

import android.content.Context;
import android.view.View;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.SubMenuBuilder;

/* JADX INFO: loaded from: classes.dex */
public abstract class ActionProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public VisibilityListener f12146a;

    public interface SubUiVisibilityListener {
    }

    public interface VisibilityListener {
    }

    public ActionProvider(Context context) {
    }

    public boolean a() {
        return false;
    }

    public boolean b() {
        return true;
    }

    public abstract View c();

    public View d(MenuItemImpl menuItemImpl) {
        return c();
    }

    public boolean e() {
        return false;
    }

    public void f(SubMenuBuilder subMenuBuilder) {
    }

    public boolean g() {
        return false;
    }

    public void h(VisibilityListener visibilityListener) {
        this.f12146a = visibilityListener;
    }
}
