package androidx.navigation.serialization;

import android.os.Bundle;
import androidx.navigation.CollectionNavType;
import androidx.navigation.NavType;
import androidx.navigation.NavUriUtils;
import androidx.navigation.StringNavType;
import androidx.savedstate.SavedStateReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000*\u0001\u0000\b\n\u0018\u00002\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00020\u0001¨\u0006\u0004"}, d2 = {"androidx/navigation/serialization/InternalNavType$StringNullableListType$1", "Landroidx/navigation/CollectionNavType;", "", "", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class InternalNavType$StringNullableListType$1 extends CollectionNavType<List<? extends String>> {
    @Override // androidx.navigation.NavType
    public final Object a(String str, Bundle bundle) {
        bundle.getClass();
        str.getClass();
        if (!bundle.containsKey(str) || SavedStateReader.n(str, bundle)) {
            return null;
        }
        List listW = ArraysKt.W(SavedStateReader.l(str, bundle));
        ArrayList arrayList = new ArrayList(CollectionsKt.t(listW, 10));
        Iterator it = listW.iterator();
        while (it.hasNext()) {
            arrayList.add((String) NavType.p.h((String) it.next()));
        }
        return arrayList;
    }

    @Override // androidx.navigation.NavType
    public final String b() {
        return "List<String?>";
    }

    @Override // androidx.navigation.NavType
    public final Object c(Object obj, String str) {
        List list = (List) obj;
        StringNavType stringNavType = NavType.p;
        return list != null ? CollectionsKt.Y(list, CollectionsKt.O(stringNavType.h(str))) : CollectionsKt.O(stringNavType.h(str));
    }

    @Override // androidx.navigation.NavType
    /* JADX INFO: renamed from: d */
    public final Object h(String str) {
        str.getClass();
        return CollectionsKt.O(NavType.p.h(str));
    }

    @Override // androidx.navigation.NavType
    public final void e(Bundle bundle, String str, Object obj) {
        List list = (List) obj;
        str.getClass();
        if (list == null) {
            bundle.putString(str, null);
            return;
        }
        List<String> list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        for (String str2 : list2) {
            if (str2 == null) {
                str2 = "null";
            }
            arrayList.add(str2);
        }
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        strArr.getClass();
        bundle.putStringArray(str, strArr);
    }

    @Override // androidx.navigation.NavType
    public final boolean g(Object obj, Object obj2) {
        List list = (List) obj;
        List list2 = (List) obj2;
        return ArraysKt.h(list != null ? (String[]) list.toArray(new String[0]) : null, list2 != null ? (String[]) list2.toArray(new String[0]) : null);
    }

    @Override // androidx.navigation.CollectionNavType
    public final Object h() {
        return EmptyList.f71768b;
    }

    @Override // androidx.navigation.CollectionNavType
    public final List i(Object obj) {
        List list = (List) obj;
        if (list == null) {
            return EmptyList.f71768b;
        }
        List<String> list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        for (String str : list2) {
            arrayList.add(str != null ? NavUriUtils.a(str) : "null");
        }
        return arrayList;
    }
}
