package androidx.navigation.serialization;

import android.os.Bundle;
import androidx.navigation.CollectionNavType;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateReaderKt;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0013\n\u0000*\u0001\u0000\b\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001¨\u0006\u0003"}, d2 = {"androidx/navigation/serialization/InternalNavType$DoubleArrayType$1", "Landroidx/navigation/CollectionNavType;", "", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class InternalNavType$DoubleArrayType$1 extends CollectionNavType<double[]> {
    public static double[] j(String str) {
        str.getClass();
        InternalNavType.f18354c.getClass();
        return new double[]{Double.valueOf(Double.parseDouble(str)).doubleValue()};
    }

    @Override // androidx.navigation.NavType
    public final Object a(String str, Bundle bundle) {
        bundle.getClass();
        str.getClass();
        if (!bundle.containsKey(str) || SavedStateReader.n(str, bundle)) {
            return null;
        }
        double[] doubleArray = bundle.getDoubleArray(str);
        if (doubleArray != null) {
            return doubleArray;
        }
        SavedStateReaderKt.a(str);
        throw null;
    }

    @Override // androidx.navigation.NavType
    public final String b() {
        return "double[]";
    }

    @Override // androidx.navigation.NavType
    public final Object c(Object obj, String str) {
        double[] dArr = (double[]) obj;
        double[] dArrJ = j(str);
        if (dArr == null) {
            return dArrJ;
        }
        int length = dArr.length;
        double[] dArrCopyOf = Arrays.copyOf(dArr, length + 1);
        System.arraycopy(dArrJ, 0, dArrCopyOf, length, 1);
        return dArrCopyOf;
    }

    @Override // androidx.navigation.NavType
    /* JADX INFO: renamed from: d */
    public final /* bridge */ /* synthetic */ Object h(String str) {
        return j(str);
    }

    @Override // androidx.navigation.NavType
    public final void e(Bundle bundle, String str, Object obj) {
        double[] dArr = (double[]) obj;
        str.getClass();
        if (dArr == null) {
            bundle.putString(str, null);
        } else {
            bundle.putDoubleArray(str, dArr);
        }
    }

    @Override // androidx.navigation.NavType
    public final boolean g(Object obj, Object obj2) {
        Double[] dArr;
        double[] dArr2 = (double[]) obj;
        double[] dArr3 = (double[]) obj2;
        Double[] dArr4 = null;
        if (dArr2 != null) {
            dArr = new Double[dArr2.length];
            int length = dArr2.length;
            for (int i2 = 0; i2 < length; i2++) {
                dArr[i2] = Double.valueOf(dArr2[i2]);
            }
        } else {
            dArr = null;
        }
        if (dArr3 != null) {
            dArr4 = new Double[dArr3.length];
            int length2 = dArr3.length;
            for (int i3 = 0; i3 < length2; i3++) {
                dArr4[i3] = Double.valueOf(dArr3[i3]);
            }
        }
        return ArraysKt.h(dArr, dArr4);
    }

    @Override // androidx.navigation.CollectionNavType
    public final Object h() {
        return new double[0];
    }

    @Override // androidx.navigation.CollectionNavType
    public final List i(Object obj) {
        List listS;
        double[] dArr = (double[]) obj;
        if (dArr == null || (listS = ArraysKt.S(dArr)) == null) {
            return EmptyList.f71768b;
        }
        List list = listS;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(String.valueOf(((Number) it.next()).doubleValue()));
        }
        return arrayList;
    }
}
