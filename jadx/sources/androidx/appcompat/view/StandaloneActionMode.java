package androidx.appcompat.view;

import android.content.Context;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class StandaloneActionMode extends ActionMode implements MenuBuilder.Callback {
    public final Context d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ActionBarContextView f908e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ActionMode.Callback f909f;
    public WeakReference g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f910h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MenuBuilder f911i;

    public StandaloneActionMode(Context context, ActionBarContextView actionBarContextView, ActionMode.Callback callback, boolean z) {
        this.d = context;
        this.f908e = actionBarContextView;
        this.f909f = callback;
        MenuBuilder menuBuilder = new MenuBuilder(actionBarContextView.getContext());
        menuBuilder.l = 1;
        this.f911i = menuBuilder;
        menuBuilder.f1007e = this;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public final boolean a(MenuBuilder menuBuilder, MenuItem menuItem) {
        return this.f909f.c(this, menuItem);
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public final void b(MenuBuilder menuBuilder) {
        i();
        this.f908e.i();
    }

    @Override // androidx.appcompat.view.ActionMode
    public final void c() {
        if (this.f910h) {
            return;
        }
        this.f910h = true;
        this.f909f.a(this);
    }

    @Override // androidx.appcompat.view.ActionMode
    public final View d() {
        WeakReference weakReference = this.g;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // androidx.appcompat.view.ActionMode
    public final MenuBuilder e() {
        return this.f911i;
    }

    @Override // androidx.appcompat.view.ActionMode
    public final MenuInflater f() {
        return new SupportMenuInflater(this.f908e.getContext());
    }

    @Override // androidx.appcompat.view.ActionMode
    public final CharSequence g() {
        return this.f908e.getSubtitle();
    }

    @Override // androidx.appcompat.view.ActionMode
    public final CharSequence h() {
        return this.f908e.getTitle();
    }

    @Override // androidx.appcompat.view.ActionMode
    public final void i() {
        this.f909f.d(this, this.f911i);
    }

    @Override // androidx.appcompat.view.ActionMode
    public final boolean j() {
        return this.f908e.t;
    }

    @Override // androidx.appcompat.view.ActionMode
    public final void k(View view) {
        this.f908e.setCustomView(view);
        this.g = view != null ? new WeakReference(view) : null;
    }

    @Override // androidx.appcompat.view.ActionMode
    public final void l(int i2) {
        m(this.d.getString(i2));
    }

    @Override // androidx.appcompat.view.ActionMode
    public final void m(CharSequence charSequence) {
        this.f908e.setSubtitle(charSequence);
    }

    @Override // androidx.appcompat.view.ActionMode
    public final void n(int i2) {
        o(this.d.getString(i2));
    }

    @Override // androidx.appcompat.view.ActionMode
    public final void o(CharSequence charSequence) {
        this.f908e.setTitle(charSequence);
    }

    @Override // androidx.appcompat.view.ActionMode
    public final void p(boolean z) {
        this.f902c = z;
        this.f908e.setTitleOptional(z);
    }
}
