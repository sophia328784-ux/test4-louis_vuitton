package okhttp3.internal.http2;

import defpackage.n00;
import kotlin.Metadata;
import kotlin.text.StringsKt;
import okhttp3.internal._UtilJvmKt;
import okio.ByteString;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/http2/Http2;", "", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class Http2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ByteString f77226a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String[] f77227b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String[] f77228c;
    public static final String[] d;

    static {
        ByteString.f77398e.getClass();
        f77226a = ByteString.Companion.c("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");
        f77227b = new String[]{"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};
        f77228c = new String[64];
        String[] strArr = new String[256];
        for (int i2 = 0; i2 < 256; i2++) {
            String binaryString = Integer.toBinaryString(i2);
            binaryString.getClass();
            String strReplace = _UtilJvmKt.d("%8s", binaryString).replace(' ', '0');
            strReplace.getClass();
            strArr[i2] = strReplace;
        }
        d = strArr;
        String[] strArr2 = f77228c;
        strArr2[0] = "";
        strArr2[1] = "END_STREAM";
        int[] iArr = {1};
        strArr2[8] = "PADDED";
        int i3 = iArr[0];
        strArr2[i3 | 8] = n00.r(strArr2[i3], "|PADDED", new StringBuilder());
        strArr2[4] = "END_HEADERS";
        strArr2[32] = "PRIORITY";
        strArr2[36] = "END_HEADERS|PRIORITY";
        int[] iArr2 = {4, 32, 36};
        for (int i4 = 0; i4 < 3; i4++) {
            int i5 = iArr2[i4];
            int i6 = iArr[0];
            String[] strArr3 = f77228c;
            int i7 = i6 | i5;
            strArr3[i7] = strArr3[i6] + '|' + strArr3[i5];
            StringBuilder sb = new StringBuilder();
            sb.append(strArr3[i6]);
            sb.append('|');
            strArr3[i7 | 8] = n00.r(strArr3[i5], "|PADDED", sb);
        }
        int length = f77228c.length;
        for (int i8 = 0; i8 < length; i8++) {
            String[] strArr4 = f77228c;
            if (strArr4[i8] == null) {
                strArr4[i8] = d[i8];
            }
        }
    }

    public static String a(int i2) {
        String[] strArr = f77227b;
        return i2 < strArr.length ? strArr[i2] : _UtilJvmKt.d("0x%02x", Integer.valueOf(i2));
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0055  */
    public static String b(int i2, int i3, boolean z, int i4, int i5) {
        String strJ;
        String str;
        String strA = a(i4);
        if (i5 == 0) {
            strJ = "";
        } else {
            String[] strArr = d;
            if (i4 == 2 || i4 == 3) {
                strJ = strArr[i5];
            } else if (i4 == 4 || i4 == 6) {
                strJ = i5 == 1 ? "ACK" : strArr[i5];
            } else if (i4 == 7 || i4 == 8) {
                strJ = strArr[i5];
            } else {
                String[] strArr2 = f77228c;
                if (i5 < strArr2.length) {
                    str = strArr2[i5];
                    str.getClass();
                } else {
                    str = strArr[i5];
                }
                if (i4 != 5 || (i5 & 4) == 0) {
                    strJ = (i4 != 0 || (i5 & 32) == 0) ? str : StringsKt.J(str, "PRIORITY", "COMPRESSED");
                } else {
                    strJ = StringsKt.J(str, "HEADERS", "PUSH_PROMISE");
                }
            }
        }
        return _UtilJvmKt.d("%s 0x%08x %5d %-13s %s", z ? "<<" : ">>", Integer.valueOf(i2), Integer.valueOf(i3), strA, strJ);
    }

    public static String c(long j2, int i2, int i3, boolean z) {
        return _UtilJvmKt.d("%s 0x%08x %5d %-13s %d", z ? "<<" : ">>", Integer.valueOf(i2), Integer.valueOf(i3), a(8), Long.valueOf(j2));
    }
}
