package kotlin;

import kotlin.text.CharsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlin-stdlib"}, k = 2, mv = {2, 4, 0}, xi = 48)
public abstract class UnsignedKt {
    public static final double a(long j2) {
        return ((j2 >>> 11) * 2048.0d) + (j2 & 2047);
    }

    public static final String b(int i2, long j2) {
        if (j2 >= 0) {
            String string = Long.toString(j2, CharsKt.checkRadix(i2));
            string.getClass();
            return string;
        }
        long j3 = i2;
        long j4 = ((j2 >>> 1) / j3) << 1;
        long j5 = j2 - (j4 * j3);
        if (j5 >= j3) {
            j5 -= j3;
            j4++;
        }
        StringBuilder sb = new StringBuilder();
        String string2 = Long.toString(j4, CharsKt.checkRadix(i2));
        string2.getClass();
        sb.append(string2);
        String string3 = Long.toString(j5, CharsKt.checkRadix(i2));
        string3.getClass();
        sb.append(string3);
        return sb.toString();
    }
}
