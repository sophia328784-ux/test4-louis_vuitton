package androidx.navigation.serialization;

import android.os.Bundle;
import androidx.navigation.CollectionNavType;
import androidx.navigation.NavType;
import androidx.navigation.NavUriUtils;
import androidx.navigation.StringNavType;
import androidx.savedstate.SavedStateReader;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\b\n\u0018\u00002\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00020\u0001¨\u0006\u0004"}, d2 = {"androidx/navigation/serialization/InternalNavType$StringNullableArrayType$1", "Landroidx/navigation/CollectionNavType;", "", "", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class InternalNavType$StringNullableArrayType$1 extends CollectionNavType<String[]> {
    @Override // androidx.navigation.NavType
    public final Object a(String str, Bundle bundle) {
        bundle.getClass();
        str.getClass();
        if (!bundle.containsKey(str) || SavedStateReader.n(str, bundle)) {
            return null;
        }
        String[] strArrL = SavedStateReader.l(str, bundle);
        ArrayList arrayList = new ArrayList(strArrL.length);
        for (String str2 : strArrL) {
            arrayList.add((String) NavType.p.h(str2));
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    @Override // androidx.navigation.NavType
    public final String b() {
        return "string_nullable[]";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.navigation.NavType
    public final Object c(Object obj, String str) {
        String[] strArr = (String[]) obj;
        StringNavType stringNavType = NavType.p;
        return strArr != null ? (String[]) ArraysKt.N(strArr, new String[]{stringNavType.h(str)}) : new String[]{stringNavType.h(str)};
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.navigation.NavType
    /* JADX INFO: renamed from: d */
    public final Object h(String str) {
        str.getClass();
        return new String[]{NavType.p.h(str)};
    }

    @Override // androidx.navigation.NavType
    public final void e(Bundle bundle, String str, Object obj) {
        String[] strArr = (String[]) obj;
        str.getClass();
        if (strArr == null) {
            bundle.putString(str, null);
            return;
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str2 : strArr) {
            if (str2 == null) {
                str2 = "null";
            }
            arrayList.add(str2);
        }
        String[] strArr2 = (String[]) arrayList.toArray(new String[0]);
        strArr2.getClass();
        bundle.putStringArray(str, strArr2);
    }

    @Override // androidx.navigation.NavType
    public final boolean g(Object obj, Object obj2) {
        return ArraysKt.h((String[]) obj, (String[]) obj2);
    }

    @Override // androidx.navigation.CollectionNavType
    public final Object h() {
        return new String[0];
    }

    @Override // androidx.navigation.CollectionNavType
    public final List i(Object obj) {
        String[] strArr = (String[]) obj;
        if (strArr == null) {
            return EmptyList.f71768b;
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        int length = strArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            String str = strArr[i2];
            arrayList.add(str != null ? NavUriUtils.a(str) : "null");
        }
        return arrayList;
    }
}
