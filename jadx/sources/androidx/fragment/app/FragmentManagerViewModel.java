package androidx.fragment.app;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
final class FragmentManagerViewModel extends ViewModel {
    public static final ViewModelProvider.Factory g = new AnonymousClass1();
    public final boolean d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f13300a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f13301b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f13302c = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f13303e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f13304f = false;

    /* JADX INFO: renamed from: androidx.fragment.app.FragmentManagerViewModel$1, reason: invalid class name */
    public class AnonymousClass1 implements ViewModelProvider.Factory {
        @Override // androidx.lifecycle.ViewModelProvider.Factory
        public final ViewModel create(Class cls) {
            return new FragmentManagerViewModel(true);
        }
    }

    public FragmentManagerViewModel(boolean z) {
        this.d = z;
    }

    public final void Ac(Fragment fragment) {
        if (this.f13304f) {
            FragmentManager.O(2);
        } else {
            if (this.f13300a.remove(fragment.mWho) == null || !FragmentManager.O(2)) {
                return;
            }
            fragment.toString();
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && FragmentManagerViewModel.class == obj.getClass()) {
            FragmentManagerViewModel fragmentManagerViewModel = (FragmentManagerViewModel) obj;
            if (this.f13300a.equals(fragmentManagerViewModel.f13300a) && this.f13301b.equals(fragmentManagerViewModel.f13301b) && this.f13302c.equals(fragmentManagerViewModel.f13302c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f13302c.hashCode() + ((this.f13301b.hashCode() + (this.f13300a.hashCode() * 31)) * 31);
    }

    @Override // androidx.lifecycle.ViewModel
    public final void onCleared() {
        if (FragmentManager.O(3)) {
            toString();
        }
        this.f13303e = true;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator it = this.f13300a.values().iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator it2 = this.f13301b.keySet().iterator();
        while (it2.hasNext()) {
            sb.append((String) it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator it3 = this.f13302c.keySet().iterator();
        while (it3.hasNext()) {
            sb.append((String) it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }

    public final void yc(Fragment fragment) {
        if (this.f13304f) {
            FragmentManager.O(2);
            return;
        }
        String str = fragment.mWho;
        HashMap map = this.f13300a;
        if (map.containsKey(str)) {
            return;
        }
        map.put(fragment.mWho, fragment);
        if (FragmentManager.O(2)) {
            fragment.toString();
        }
    }

    public final void zc(String str, boolean z) {
        HashMap map = this.f13301b;
        FragmentManagerViewModel fragmentManagerViewModel = (FragmentManagerViewModel) map.get(str);
        if (fragmentManagerViewModel != null) {
            if (z) {
                ArrayList<String> arrayList = new ArrayList();
                arrayList.addAll(fragmentManagerViewModel.f13301b.keySet());
                for (String str2 : arrayList) {
                    FragmentManager.O(3);
                    fragmentManagerViewModel.zc(str2, true);
                }
            }
            fragmentManagerViewModel.onCleared();
            map.remove(str);
        }
        HashMap map2 = this.f13302c;
        ViewModelStore viewModelStore = (ViewModelStore) map2.get(str);
        if (viewModelStore != null) {
            viewModelStore.a();
            map2.remove(str);
        }
    }
}
