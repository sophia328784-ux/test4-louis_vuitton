package androidx.navigation;

import android.os.Bundle;
import androidx.savedstate.SavedStateReader;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0000\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/navigation/StringNavType;", "Landroidx/navigation/NavType;", "", "<init>", "()V", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class StringNavType extends NavType<String> {
    public StringNavType() {
        super(true);
    }

    @Override // androidx.navigation.NavType
    public final Object a(String str, Bundle bundle) {
        bundle.getClass();
        str.getClass();
        if (!SavedStateReader.a(str, bundle) || SavedStateReader.n(str, bundle)) {
            return null;
        }
        return SavedStateReader.k(str, bundle);
    }

    @Override // androidx.navigation.NavType
    public final String b() {
        return "string";
    }

    @Override // androidx.navigation.NavType
    /* JADX INFO: renamed from: d */
    public final Object h(String str) {
        str.getClass();
        if (Intrinsics.c(str, "null")) {
            return null;
        }
        return str;
    }

    @Override // androidx.navigation.NavType
    public final void e(Bundle bundle, String str, Object obj) {
        String str2 = (String) obj;
        str.getClass();
        if (str2 != null) {
            bundle.putString(str, str2);
        } else {
            bundle.putString(str, null);
        }
    }

    @Override // androidx.navigation.NavType
    public final String f(Object obj) {
        String str = (String) obj;
        return str != null ? NavUriUtils.a(str) : "null";
    }
}
