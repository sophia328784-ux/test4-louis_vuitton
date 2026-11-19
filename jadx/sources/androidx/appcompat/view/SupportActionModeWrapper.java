package androidx.appcompat.view;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.menu.MenuItemWrapperICS;
import androidx.appcompat.view.menu.MenuWrapperICS;
import androidx.collection.SimpleArrayMap;
import androidx.core.internal.view.SupportMenu;
import androidx.core.internal.view.SupportMenuItem;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class SupportActionModeWrapper extends android.view.ActionMode {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f912a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ActionMode f913b;

    public static class CallbackWrapper implements ActionMode.Callback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final android.view.ActionMode.Callback f914a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Context f915b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ArrayList f916c = new ArrayList();
        public final SimpleArrayMap d = new SimpleArrayMap();

        public CallbackWrapper(Context context, android.view.ActionMode.Callback callback) {
            this.f915b = context;
            this.f914a = callback;
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public final void a(ActionMode actionMode) {
            this.f914a.onDestroyActionMode(e(actionMode));
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public final boolean b(ActionMode actionMode, Menu menu) {
            SupportActionModeWrapper supportActionModeWrapperE = e(actionMode);
            SimpleArrayMap simpleArrayMap = this.d;
            Menu menuWrapperICS = (Menu) simpleArrayMap.get(menu);
            if (menuWrapperICS == null) {
                menuWrapperICS = new MenuWrapperICS(this.f915b, (SupportMenu) menu);
                simpleArrayMap.put(menu, menuWrapperICS);
            }
            return this.f914a.onCreateActionMode(supportActionModeWrapperE, menuWrapperICS);
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public final boolean c(ActionMode actionMode, MenuItem menuItem) {
            return this.f914a.onActionItemClicked(e(actionMode), new MenuItemWrapperICS(this.f915b, (SupportMenuItem) menuItem));
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public final boolean d(ActionMode actionMode, Menu menu) {
            SupportActionModeWrapper supportActionModeWrapperE = e(actionMode);
            SimpleArrayMap simpleArrayMap = this.d;
            Menu menuWrapperICS = (Menu) simpleArrayMap.get(menu);
            if (menuWrapperICS == null) {
                menuWrapperICS = new MenuWrapperICS(this.f915b, (SupportMenu) menu);
                simpleArrayMap.put(menu, menuWrapperICS);
            }
            return this.f914a.onPrepareActionMode(supportActionModeWrapperE, menuWrapperICS);
        }

        public final SupportActionModeWrapper e(ActionMode actionMode) {
            ArrayList arrayList = this.f916c;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                SupportActionModeWrapper supportActionModeWrapper = (SupportActionModeWrapper) arrayList.get(i2);
                if (supportActionModeWrapper != null && supportActionModeWrapper.f913b == actionMode) {
                    return supportActionModeWrapper;
                }
            }
            SupportActionModeWrapper supportActionModeWrapper2 = new SupportActionModeWrapper(this.f915b, actionMode);
            arrayList.add(supportActionModeWrapper2);
            return supportActionModeWrapper2;
        }
    }

    public SupportActionModeWrapper(Context context, ActionMode actionMode) {
        this.f912a = context;
        this.f913b = actionMode;
    }

    @Override // android.view.ActionMode
    public final void finish() {
        this.f913b.c();
    }

    @Override // android.view.ActionMode
    public final View getCustomView() {
        return this.f913b.d();
    }

    @Override // android.view.ActionMode
    public final Menu getMenu() {
        return new MenuWrapperICS(this.f912a, this.f913b.e());
    }

    @Override // android.view.ActionMode
    public final MenuInflater getMenuInflater() {
        return this.f913b.f();
    }

    @Override // android.view.ActionMode
    public final CharSequence getSubtitle() {
        return this.f913b.g();
    }

    @Override // android.view.ActionMode
    public final Object getTag() {
        return this.f913b.f901b;
    }

    @Override // android.view.ActionMode
    public final CharSequence getTitle() {
        return this.f913b.h();
    }

    @Override // android.view.ActionMode
    public final boolean getTitleOptionalHint() {
        return this.f913b.f902c;
    }

    @Override // android.view.ActionMode
    public final void invalidate() {
        this.f913b.i();
    }

    @Override // android.view.ActionMode
    public final boolean isTitleOptional() {
        return this.f913b.j();
    }

    @Override // android.view.ActionMode
    public final void setCustomView(View view) {
        this.f913b.k(view);
    }

    @Override // android.view.ActionMode
    public final void setSubtitle(CharSequence charSequence) {
        this.f913b.m(charSequence);
    }

    @Override // android.view.ActionMode
    public final void setTag(Object obj) {
        this.f913b.f901b = obj;
    }

    @Override // android.view.ActionMode
    public final void setTitle(CharSequence charSequence) {
        this.f913b.o(charSequence);
    }

    @Override // android.view.ActionMode
    public final void setTitleOptionalHint(boolean z) {
        this.f913b.p(z);
    }

    @Override // android.view.ActionMode
    public final void setSubtitle(int i2) {
        this.f913b.l(i2);
    }

    @Override // android.view.ActionMode
    public final void setTitle(int i2) {
        this.f913b.n(i2);
    }
}
