package androidx.navigation.serialization;

import android.os.Bundle;
import androidx.navigation.CollectionNavType;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateReaderKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u0006\n\u0000*\u0001\u0000\b\n\u0018\u00002\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u0001¨\u0006\u0004"}, d2 = {"androidx/navigation/serialization/InternalNavType$DoubleListType$1", "Landroidx/navigation/CollectionNavType;", "", "", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class InternalNavType$DoubleListType$1 extends CollectionNavType<List<? extends Double>> {
    @Override // androidx.navigation.NavType
    public final Object a(String str, Bundle bundle) {
        bundle.getClass();
        str.getClass();
        if (!bundle.containsKey(str) || SavedStateReader.n(str, bundle)) {
            return null;
        }
        double[] doubleArray = bundle.getDoubleArray(str);
        if (doubleArray != null) {
            return ArraysKt.S(doubleArray);
        }
        SavedStateReaderKt.a(str);
        throw null;
    }

    @Override // androidx.navigation.NavType
    public final String b() {
        return "List<Double>";
    }

    @Override // androidx.navigation.NavType
    public final Object c(Object obj, String str) {
        List list = (List) obj;
        if (list != null) {
            InternalNavType.f18354c.getClass();
            return CollectionsKt.Y(list, CollectionsKt.O(Double.valueOf(Double.parseDouble(str))));
        }
        InternalNavType.f18354c.getClass();
        return CollectionsKt.O(Double.valueOf(Double.parseDouble(str)));
    }

    @Override // androidx.navigation.NavType
    /* JADX INFO: renamed from: d */
    public final Object h(String str) {
        str.getClass();
        InternalNavType.f18354c.getClass();
        return CollectionsKt.O(Double.valueOf(Double.parseDouble(str)));
    }

    @Override // androidx.navigation.NavType
    public final void e(Bundle bundle, String str, Object obj) {
        List list = (List) obj;
        str.getClass();
        if (list == null) {
            bundle.putString(str, null);
            return;
        }
        List list2 = list;
        double[] dArr = new double[list2.size()];
        Iterator it = list2.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            dArr[i2] = ((Number) it.next()).doubleValue();
            i2++;
        }
        bundle.putDoubleArray(str, dArr);
    }

    @Override // androidx.navigation.NavType
    public final boolean g(Object obj, Object obj2) {
        List list = (List) obj;
        List list2 = (List) obj2;
        return ArraysKt.h(list != null ? (Double[]) list.toArray(new Double[0]) : null, list2 != null ? (Double[]) list2.toArray(new Double[0]) : null);
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
        List list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(String.valueOf(((Number) it.next()).doubleValue()));
        }
        return arrayList;
    }
}
