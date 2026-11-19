package androidx.navigation;

import android.os.Bundle;
import androidx.savedstate.SavedStateReader;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0000\u0018\u00002\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/navigation/StringArrayNavType;", "Landroidx/navigation/CollectionNavType;", "", "", "<init>", "()V", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class StringArrayNavType extends CollectionNavType<String[]> {
    public StringArrayNavType() {
        super(true);
    }

    @Override // androidx.navigation.NavType
    public final Object a(String str, Bundle bundle) {
        bundle.getClass();
        str.getClass();
        if (!SavedStateReader.a(str, bundle) || SavedStateReader.n(str, bundle)) {
            return null;
        }
        return SavedStateReader.l(str, bundle);
    }

    @Override // androidx.navigation.NavType
    public final String b() {
        return "string[]";
    }

    @Override // androidx.navigation.NavType
    public final Object c(Object obj, String str) {
        String[] strArr = (String[]) obj;
        return strArr != null ? (String[]) ArraysKt.N(strArr, new String[]{str}) : new String[]{str};
    }

    @Override // androidx.navigation.NavType
    /* JADX INFO: renamed from: d */
    public final Object h(String str) {
        str.getClass();
        return new String[]{str};
    }

    @Override // androidx.navigation.NavType
    public final void e(Bundle bundle, String str, Object obj) {
        String[] strArr = (String[]) obj;
        str.getClass();
        if (strArr != null) {
            bundle.putStringArray(str, strArr);
        } else {
            bundle.putString(str, null);
        }
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
        for (String str : strArr) {
            arrayList.add(NavUriUtils.a(str));
        }
        return arrayList;
    }
}
