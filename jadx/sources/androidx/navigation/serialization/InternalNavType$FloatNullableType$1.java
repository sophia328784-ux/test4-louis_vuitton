package androidx.navigation.serialization;

import android.os.Bundle;
import androidx.navigation.NavType;
import androidx.savedstate.SavedStateReader;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000*\u0001\u0000\b\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001¨\u0006\u0003"}, d2 = {"androidx/navigation/serialization/InternalNavType$FloatNullableType$1", "Landroidx/navigation/NavType;", "", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class InternalNavType$FloatNullableType$1 extends NavType<Float> {
    @Override // androidx.navigation.NavType
    public final Object a(String str, Bundle bundle) {
        bundle.getClass();
        str.getClass();
        if (!SavedStateReader.a(str, bundle) || SavedStateReader.n(str, bundle)) {
            return null;
        }
        return Float.valueOf(SavedStateReader.f(str, bundle));
    }

    @Override // androidx.navigation.NavType
    public final String b() {
        return "float_nullable";
    }

    @Override // androidx.navigation.NavType
    /* JADX INFO: renamed from: d */
    public final Object h(String str) {
        str.getClass();
        if (str.equals("null")) {
            return null;
        }
        NavType.f18202j.getClass();
        return Float.valueOf(Float.parseFloat(str));
    }

    @Override // androidx.navigation.NavType
    public final void e(Bundle bundle, String str, Object obj) {
        Float f2 = (Float) obj;
        str.getClass();
        if (f2 == null) {
            bundle.putString(str, null);
        } else {
            NavType.f18202j.e(bundle, str, f2);
        }
    }
}
