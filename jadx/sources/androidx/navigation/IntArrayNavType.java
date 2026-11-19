package androidx.navigation;

import android.os.Bundle;
import androidx.savedstate.SavedStateReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0015\n\u0002\b\u0003\b\u0000\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/navigation/IntArrayNavType;", "Landroidx/navigation/CollectionNavType;", "", "<init>", "()V", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class IntArrayNavType extends CollectionNavType<int[]> {
    public IntArrayNavType() {
        super(true);
    }

    public static int[] j(String str) {
        str.getClass();
        return new int[]{((Number) NavType.f18197c.h(str)).intValue()};
    }

    @Override // androidx.navigation.NavType
    public final Object a(String str, Bundle bundle) {
        bundle.getClass();
        str.getClass();
        if (!SavedStateReader.a(str, bundle) || SavedStateReader.n(str, bundle)) {
            return null;
        }
        return SavedStateReader.h(str, bundle);
    }

    @Override // androidx.navigation.NavType
    public final String b() {
        return "integer[]";
    }

    @Override // androidx.navigation.NavType
    public final Object c(Object obj, String str) {
        int[] iArr = (int[]) obj;
        int[] iArrJ = j(str);
        if (iArr == null) {
            return iArrJ;
        }
        int length = iArr.length;
        int[] iArrCopyOf = Arrays.copyOf(iArr, length + 1);
        System.arraycopy(iArrJ, 0, iArrCopyOf, length, 1);
        return iArrCopyOf;
    }

    @Override // androidx.navigation.NavType
    /* JADX INFO: renamed from: d */
    public final /* bridge */ /* synthetic */ Object h(String str) {
        return j(str);
    }

    @Override // androidx.navigation.NavType
    public final void e(Bundle bundle, String str, Object obj) {
        int[] iArr = (int[]) obj;
        str.getClass();
        if (iArr != null) {
            bundle.putIntArray(str, iArr);
        } else {
            bundle.putString(str, null);
        }
    }

    @Override // androidx.navigation.NavType
    public final boolean g(Object obj, Object obj2) {
        Integer[] numArr;
        int[] iArr = (int[]) obj;
        int[] iArr2 = (int[]) obj2;
        Integer[] numArr2 = null;
        if (iArr != null) {
            numArr = new Integer[iArr.length];
            int length = iArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                numArr[i2] = Integer.valueOf(iArr[i2]);
            }
        } else {
            numArr = null;
        }
        if (iArr2 != null) {
            numArr2 = new Integer[iArr2.length];
            int length2 = iArr2.length;
            for (int i3 = 0; i3 < length2; i3++) {
                numArr2[i3] = Integer.valueOf(iArr2[i3]);
            }
        }
        return ArraysKt.h(numArr, numArr2);
    }

    @Override // androidx.navigation.CollectionNavType
    public final Object h() {
        return new int[0];
    }

    @Override // androidx.navigation.CollectionNavType
    public final List i(Object obj) {
        List listU;
        int[] iArr = (int[]) obj;
        if (iArr == null || (listU = ArraysKt.U(iArr)) == null) {
            return EmptyList.f71768b;
        }
        List list = listU;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(String.valueOf(((Number) it.next()).intValue()));
        }
        return arrayList;
    }
}
