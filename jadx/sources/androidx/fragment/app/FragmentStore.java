package androidx.fragment.app;

import android.os.Bundle;
import defpackage.a61;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class FragmentStore {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f13324a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f13325b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f13326c = new HashMap();
    public FragmentManagerViewModel d;

    public final void a(Fragment fragment) {
        if (this.f13324a.contains(fragment)) {
            a61.q(fragment, "Fragment already added: ");
            return;
        }
        synchronized (this.f13324a) {
            this.f13324a.add(fragment);
        }
        fragment.mAdded = true;
    }

    public final Fragment b(String str) {
        FragmentStateManager fragmentStateManager = (FragmentStateManager) this.f13325b.get(str);
        if (fragmentStateManager != null) {
            return fragmentStateManager.f13315c;
        }
        return null;
    }

    public final Fragment c(String str) {
        Fragment fragmentFindFragmentByWho;
        for (FragmentStateManager fragmentStateManager : this.f13325b.values()) {
            if (fragmentStateManager != null && (fragmentFindFragmentByWho = fragmentStateManager.f13315c.findFragmentByWho(str)) != null) {
                return fragmentFindFragmentByWho;
            }
        }
        return null;
    }

    public final ArrayList d() {
        ArrayList arrayList = new ArrayList();
        for (FragmentStateManager fragmentStateManager : this.f13325b.values()) {
            if (fragmentStateManager != null) {
                arrayList.add(fragmentStateManager);
            }
        }
        return arrayList;
    }

    public final ArrayList e() {
        ArrayList arrayList = new ArrayList();
        for (FragmentStateManager fragmentStateManager : this.f13325b.values()) {
            if (fragmentStateManager != null) {
                arrayList.add(fragmentStateManager.f13315c);
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    public final List f() {
        ArrayList arrayList;
        if (this.f13324a.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        synchronized (this.f13324a) {
            arrayList = new ArrayList(this.f13324a);
        }
        return arrayList;
    }

    public final void g(FragmentStateManager fragmentStateManager) {
        Fragment fragment = fragmentStateManager.f13315c;
        String str = fragment.mWho;
        HashMap map = this.f13325b;
        if (map.get(str) != null) {
            return;
        }
        map.put(fragment.mWho, fragmentStateManager);
        if (fragment.mRetainInstanceChangedWhileDetached) {
            boolean z = fragment.mRetainInstance;
            FragmentManagerViewModel fragmentManagerViewModel = this.d;
            if (z) {
                fragmentManagerViewModel.yc(fragment);
            } else {
                fragmentManagerViewModel.Ac(fragment);
            }
            fragment.mRetainInstanceChangedWhileDetached = false;
        }
        if (FragmentManager.O(2)) {
            fragment.toString();
        }
    }

    public final void h(FragmentStateManager fragmentStateManager) {
        Fragment fragment = fragmentStateManager.f13315c;
        if (fragment.mRetainInstance) {
            this.d.Ac(fragment);
        }
        String str = fragment.mWho;
        HashMap map = this.f13325b;
        if (map.get(str) == fragmentStateManager && ((FragmentStateManager) map.put(fragment.mWho, null)) != null && FragmentManager.O(2)) {
            fragment.toString();
        }
    }

    public final Bundle i(String str, Bundle bundle) {
        HashMap map = this.f13326c;
        return bundle != null ? (Bundle) map.put(str, bundle) : (Bundle) map.remove(str);
    }
}
