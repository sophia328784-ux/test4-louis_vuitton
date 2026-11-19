package androidx.appcompat.widget;

import android.view.Menu;
import android.view.Window;
import androidx.appcompat.view.menu.MenuPresenter;

/* JADX INFO: loaded from: classes.dex */
public interface DecorContentParent {
    boolean a();

    boolean b();

    boolean c();

    void d(Menu menu, MenuPresenter.Callback callback);

    boolean e();

    void f();

    boolean h();

    void i(int i2);

    void l();

    void setWindowCallback(Window.Callback callback);

    void setWindowTitle(CharSequence charSequence);
}
