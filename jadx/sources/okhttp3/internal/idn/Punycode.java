package okhttp3.internal.idn;

import defpackage.no0;
import kotlin.Metadata;
import okio.ByteString;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/idn/Punycode;", "", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class Punycode {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ByteString f77306a;

    static {
        ByteString.f77398e.getClass();
        f77306a = ByteString.Companion.c("xn--");
    }

    public static int a(int i2, int i3, boolean z) {
        int i4 = z ? i2 / 700 : i2 / 2;
        int i5 = (i4 / i3) + i4;
        int i6 = 0;
        while (i5 > 455) {
            i5 /= 35;
            i6 += 36;
        }
        return ((i5 * 36) / (i5 + 38)) + i6;
    }

    public static int b(int i2) {
        if (i2 < 26) {
            return i2 + 97;
        }
        if (i2 < 36) {
            return i2 + 22;
        }
        no0.i(i2, "unexpected digit: ");
        return 0;
    }
}
