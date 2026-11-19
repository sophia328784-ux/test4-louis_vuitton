package androidx.navigation.serialization;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.internal.SavedStateHandleImpl;
import androidx.navigation.NavType;
import defpackage.lc0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.MapsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0016\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u0004¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/navigation/serialization/SavedStateHandleArgStore;", "Landroidx/navigation/serialization/ArgStore;", "Landroidx/lifecycle/SavedStateHandle;", "handle", "", "", "Landroidx/navigation/NavType;", "typeMap", "<init>", "(Landroidx/lifecycle/SavedStateHandle;Ljava/util/Map;)V", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class SavedStateHandleArgStore extends ArgStore {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SavedStateHandle f18375a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f18376b;

    public SavedStateHandleArgStore(SavedStateHandle savedStateHandle, Map<String, ? extends NavType<?>> map) {
        savedStateHandle.getClass();
        map.getClass();
        this.f18375a = savedStateHandle;
        this.f18376b = map;
    }

    @Override // androidx.navigation.serialization.ArgStore
    public final boolean a(String str) {
        str.getClass();
        SavedStateHandle savedStateHandle = this.f18375a;
        savedStateHandle.getClass();
        SavedStateHandleImpl savedStateHandleImpl = savedStateHandle.f13501b;
        savedStateHandleImpl.getClass();
        return savedStateHandleImpl.f13571a.containsKey(str);
    }

    @Override // androidx.navigation.serialization.ArgStore
    public final Object b(String str) {
        Pair[] pairArr;
        str.getClass();
        SavedStateHandle savedStateHandle = this.f18375a;
        Map mapH = MapsKt.h(new Pair(str, savedStateHandle.a(str)));
        if (mapH.isEmpty()) {
            pairArr = new Pair[0];
        } else {
            ArrayList arrayList = new ArrayList(mapH.size());
            for (Map.Entry entry : mapH.entrySet()) {
                arrayList.add(new Pair((String) entry.getKey(), entry.getValue()));
            }
            pairArr = (Pair[]) arrayList.toArray(new Pair[0]);
        }
        Bundle bundleA = BundleKt.a((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
        Object obj = this.f18376b.get(str);
        if (obj != null) {
            return ((NavType) obj).a(str, bundleA);
        }
        lc0.o("Failed to find type for ", str, " when decoding ", savedStateHandle);
        return null;
    }
}
