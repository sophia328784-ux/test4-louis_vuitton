package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"kotlinx/coroutines/internal/SystemPropsKt__SystemPropsKt"}, d2 = {}, k = 4, mv = {2, 2, 0}, xi = 48)
public abstract class SystemPropsKt {
    public static final int a() {
        return SystemPropsKt__SystemPropsKt.f75140a;
    }

    public static final long b(String str, long j2, long j3, long j4) {
        String strC = c(str);
        if (strC == null) {
            return j2;
        }
        Long lZ = StringsKt.Z(strC);
        if (lZ == null) {
            throw new IllegalStateException(("System property '" + str + "' has unrecognized value '" + strC + '\'').toString());
        }
        long jLongValue = lZ.longValue();
        if (j3 <= jLongValue && jLongValue <= j4) {
            return jLongValue;
        }
        throw new IllegalStateException(("System property '" + str + "' should be in range " + j3 + ".." + j4 + ", but is '" + jLongValue + '\'').toString());
    }

    public static final String c(String str) {
        int i2 = SystemPropsKt__SystemPropsKt.f75140a;
        try {
            return System.getProperty(str);
        } catch (SecurityException unused) {
            return null;
        }
    }

    public static int d(int i2, int i3, String str) {
        return (int) b(str, i2, 1L, (i3 & 8) != 0 ? Integer.MAX_VALUE : 2097150);
    }
}
