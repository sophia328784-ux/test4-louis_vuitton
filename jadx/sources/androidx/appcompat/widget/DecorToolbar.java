package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.View;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.SpinnerAdapter;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.core.view.ViewPropertyAnimatorCompat;

/* JADX INFO: loaded from: classes.dex */
public interface DecorToolbar {
    void A(ScrollingTabContainerView scrollingTabContainerView);

    void B(Drawable drawable);

    void C(int i2);

    void D(int i2);

    void E(MenuPresenter.Callback callback, MenuBuilder.Callback callback2);

    void F(SpinnerAdapter spinnerAdapter, AdapterView.OnItemSelectedListener onItemSelectedListener);

    boolean G();

    CharSequence H();

    int I();

    void J(View view);

    void K(Drawable drawable);

    boolean a();

    boolean b();

    boolean c();

    void collapseActionView();

    void d(Menu menu, MenuPresenter.Callback callback);

    boolean e();

    void f();

    void g(Drawable drawable);

    Context getContext();

    int getHeight();

    CharSequence getTitle();

    int getVisibility();

    boolean h();

    boolean i();

    boolean j();

    void k(int i2);

    void l(CharSequence charSequence);

    void m(CharSequence charSequence);

    void n(int i2);

    Menu o();

    int p();

    ViewPropertyAnimatorCompat q(int i2, long j2);

    void r(int i2);

    boolean s();

    void setIcon(int i2);

    void setIcon(Drawable drawable);

    void setTitle(CharSequence charSequence);

    void setVisibility(int i2);

    void setWindowCallback(Window.Callback callback);

    void setWindowTitle(CharSequence charSequence);

    Toolbar t();

    int u();

    void v(int i2);

    int w();

    void x(boolean z);

    void y();

    View z();
}
