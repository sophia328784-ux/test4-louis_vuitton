package okio;

import defpackage.b21;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"okio"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class Utf8 {
    public static long a(String str) {
        long j2;
        int length = str.length();
        str.getClass();
        long j3 = 0;
        if (length < 0) {
            b21.n(o60.h(length, 0, "endIndex < beginIndex: ", " < "));
            return 0L;
        }
        if (length > str.length()) {
            b21.v(fc.q(length, "endIndex > string.length: ", " > "), str.length());
            return 0L;
        }
        int i2 = 0;
        while (i2 < length) {
            char cCharAt = str.charAt(i2);
            if (cCharAt < 128) {
                j3++;
            } else {
                if (cCharAt < 2048) {
                    j2 = 2;
                } else if (cCharAt < 55296 || cCharAt > 57343) {
                    j2 = 3;
                } else {
                    int i3 = i2 + 1;
                    char cCharAt2 = i3 < length ? str.charAt(i3) : (char) 0;
                    if (cCharAt > 56319 || cCharAt2 < 56320 || cCharAt2 > 57343) {
                        j3++;
                        i2 = i3;
                    } else {
                        j3 += 4;
                        i2 += 2;
                    }
                }
                j3 += j2;
            }
            i2++;
        }
        return j3;
    }
}
