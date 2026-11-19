package androidx.navigation;

import android.os.Bundle;
import androidx.savedstate.SavedStateReader;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0003\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/navigation/LongNavType;", "Landroidx/navigation/NavType;", "", "<init>", "()V", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class LongNavType extends NavType<Long> {
    public LongNavType() {
        super(false);
    }

    @Override // androidx.navigation.NavType
    public final Object a(String str, Bundle bundle) {
        bundle.getClass();
        str.getClass();
        return Long.valueOf(SavedStateReader.i(str, bundle));
    }

    @Override // androidx.navigation.NavType
    public final String b() {
        return "long";
    }

    @Override // androidx.navigation.NavType
    /* JADX INFO: renamed from: d */
    public final Object h(String str) {
        str.getClass();
        String strG = StringsKt.p(str, "L", false) ? o60.g(1, 0, str) : str;
        return Long.valueOf(StringsKt.P(str, "0x", false) ? Long.parseLong(strG.substring(2), CharsKt.checkRadix(16)) : Long.parseLong(strG));
    }

    @Override // androidx.navigation.NavType
    public final void e(Bundle bundle, String str, Object obj) {
        long jLongValue = ((Number) obj).longValue();
        str.getClass();
        bundle.putLong(str, jLongValue);
    }
}
