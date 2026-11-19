package defpackage;

import android.os.Bundle;
import androidx.activity.ComponentActivity;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.core.os.BundleKt;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.internal.SavedStateHandleImpl;
import androidx.navigation.NavHostController;
import androidx.navigation.fragment.NavHostFragment;
import androidx.savedstate.SavedStateRegistry;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.MapsKt;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class dn implements SavedStateRegistry.SavedStateProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f68619a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f68620b;

    public /* synthetic */ dn(Object obj, int i2) {
        this.f68619a = i2;
        this.f68620b = obj;
    }

    @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
    public final Bundle saveState() {
        Pair[] pairArr;
        int i2 = this.f68619a;
        Object obj = this.f68620b;
        switch (i2) {
            case 0:
                return ComponentActivity.n((ComponentActivity) obj);
            case 1:
                Map mapD = ((SaveableStateRegistry) obj).d();
                Bundle bundle = new Bundle();
                for (Map.Entry entry : mapD.entrySet()) {
                    String str = (String) entry.getKey();
                    List list = (List) entry.getValue();
                    bundle.putParcelableArrayList(str, list instanceof ArrayList ? (ArrayList) list : new ArrayList<>(list));
                }
                return bundle;
            case 2:
                return ((FragmentManager) obj).f0();
            case 3:
                int i3 = NavHostFragment.E;
                Bundle bundleH = ((NavHostController) obj).h();
                if (bundleH != null) {
                    return bundleH;
                }
                Bundle bundle2 = Bundle.EMPTY;
                bundle2.getClass();
                return bundle2;
            case 4:
                int i4 = ((NavHostFragment) obj).C;
                if (i4 != 0) {
                    return BundleKt.a(new Pair("android-support-nav:fragment:graphId", Integer.valueOf(i4)));
                }
                Bundle bundle3 = Bundle.EMPTY;
                bundle3.getClass();
                return bundle3;
            default:
                SavedStateHandleImpl savedStateHandleImpl = (SavedStateHandleImpl) obj;
                for (Map.Entry entry2 : MapsKt.o(savedStateHandleImpl.d).entrySet()) {
                    savedStateHandleImpl.a(((MutableStateFlow) entry2.getValue()).getValue(), (String) entry2.getKey());
                }
                for (Map.Entry entry3 : MapsKt.o(savedStateHandleImpl.f13572b).entrySet()) {
                    savedStateHandleImpl.a(((SavedStateRegistry.SavedStateProvider) entry3.getValue()).saveState(), (String) entry3.getKey());
                }
                LinkedHashMap linkedHashMap = savedStateHandleImpl.f13571a;
                if (linkedHashMap.isEmpty()) {
                    pairArr = new Pair[0];
                } else {
                    ArrayList arrayList = new ArrayList(linkedHashMap.size());
                    for (Map.Entry entry4 : linkedHashMap.entrySet()) {
                        arrayList.add(new Pair((String) entry4.getKey(), entry4.getValue()));
                    }
                    pairArr = (Pair[]) arrayList.toArray(new Pair[0]);
                }
                return BundleKt.a((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
        }
    }
}
