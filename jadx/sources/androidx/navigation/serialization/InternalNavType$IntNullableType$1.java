package androidx.navigation.serialization;

import android.os.Bundle;
import androidx.navigation.NavType;
import androidx.savedstate.SavedStateReader;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000*\u0001\u0000\b\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001¨\u0006\u0003"}, d2 = {"androidx/navigation/serialization/InternalNavType$IntNullableType$1", "Landroidx/navigation/NavType;", "", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class InternalNavType$IntNullableType$1 extends NavType<Integer> {
    @Override // androidx.navigation.NavType
    public final Object a(String str, Bundle bundle) {
        bundle.getClass();
        str.getClass();
        if (!SavedStateReader.a(str, bundle) || SavedStateReader.n(str, bundle)) {
            return null;
        }
        return Integer.valueOf(SavedStateReader.g(str, bundle));
    }

    @Override // androidx.navigation.NavType
    public final String b() {
        return "integer_nullable";
    }

    @Override // androidx.navigation.NavType
    /* JADX INFO: renamed from: d */
    public final Object h(String str) {
        str.getClass();
        if (str.equals("null")) {
            return null;
        }
        return (Integer) NavType.f18197c.h(str);
    }

    @Override // androidx.navigation.NavType
    public final void e(Bundle bundle, String str, Object obj) {
        Integer num = (Integer) obj;
        str.getClass();
        if (num == null) {
            bundle.putString(str, null);
        } else {
            NavType.f18197c.e(bundle, str, num);
        }
    }
}
