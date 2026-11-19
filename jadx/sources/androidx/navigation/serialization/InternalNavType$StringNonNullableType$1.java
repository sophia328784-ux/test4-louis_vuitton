package androidx.navigation.serialization;

import android.os.Bundle;
import androidx.navigation.NavType;
import androidx.navigation.NavUriUtils;
import androidx.savedstate.SavedStateReader;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"androidx/navigation/serialization/InternalNavType$StringNonNullableType$1", "Landroidx/navigation/NavType;", "", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class InternalNavType$StringNonNullableType$1 extends NavType<String> {
    @Override // androidx.navigation.NavType
    public final Object a(String str, Bundle bundle) {
        bundle.getClass();
        str.getClass();
        return (!SavedStateReader.a(str, bundle) || SavedStateReader.n(str, bundle)) ? "null" : SavedStateReader.k(str, bundle);
    }

    @Override // androidx.navigation.NavType
    public final String b() {
        return "string_non_nullable";
    }

    @Override // androidx.navigation.NavType
    /* JADX INFO: renamed from: d */
    public final Object h(String str) {
        str.getClass();
        return str;
    }

    @Override // androidx.navigation.NavType
    public final void e(Bundle bundle, String str, Object obj) {
        String str2 = (String) obj;
        str.getClass();
        str2.getClass();
        bundle.putString(str, str2);
    }

    @Override // androidx.navigation.NavType
    public final String f(Object obj) {
        String str = (String) obj;
        str.getClass();
        return NavUriUtils.a(str);
    }
}
