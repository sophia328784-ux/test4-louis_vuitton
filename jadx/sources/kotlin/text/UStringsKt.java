package kotlin.text;

import kotlin.Metadata;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.UnsignedKt;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlin-stdlib"}, k = 2, mv = {2, 4, 0}, xi = 48)
public abstract class UStringsKt {
    public static final String a(int i2) {
        return UnsignedKt.b(CharsKt__CharJVMKt.checkRadix(16), ((long) i2) & BodyPartID.bodyIdMax);
    }

    /* JADX WARN: Code duplicated, block: B:8:0x001c  */
    public static final byte b(String str) {
        UByte uByte;
        str.getClass();
        UInt uIntD = d(str);
        if (uIntD != null) {
            int i2 = uIntD.f71724b;
            if (Integer.compareUnsigned(i2, 255) > 0) {
                uByte = null;
            } else {
                uByte = new UByte((byte) i2);
            }
        } else {
            uByte = null;
        }
        if (uByte != null) {
            return uByte.f71719b;
        }
        StringsKt__StringNumberConversionsKt.b(str);
        throw null;
    }

    public static final int c(String str) {
        str.getClass();
        UInt uIntD = d(str);
        if (uIntD != null) {
            return uIntD.f71724b;
        }
        StringsKt__StringNumberConversionsKt.b(str);
        throw null;
    }

    public static final UInt d(String str) {
        int i2;
        str.getClass();
        CharsKt__CharJVMKt.checkRadix(10);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i3 = 0;
        char cCharAt = str.charAt(0);
        if (cCharAt < '0') {
            i2 = 1;
            if (length == 1 || cCharAt != '+') {
                return null;
            }
        } else {
            i2 = 0;
        }
        UInt.Companion companion = UInt.INSTANCE;
        int iDivideUnsigned = 119304647;
        while (i2 < length) {
            int iDigit = Character.digit((int) str.charAt(i2), 10);
            if (iDigit < 0) {
                return null;
            }
            if (Integer.compareUnsigned(i3, iDivideUnsigned) > 0) {
                if (iDivideUnsigned != 119304647) {
                    return null;
                }
                iDivideUnsigned = Integer.divideUnsigned(-1, 10);
                if (Integer.compareUnsigned(i3, iDivideUnsigned) > 0) {
                    return null;
                }
            }
            int i4 = i3 * 10;
            int i5 = iDigit + i4;
            if (Integer.compareUnsigned(i5, i4) < 0) {
                return null;
            }
            i2++;
            i3 = i5;
        }
        return new UInt(i3);
    }

    public static final long e(String str) {
        str.getClass();
        ULong uLongF = f(str);
        if (uLongF != null) {
            return uLongF.f71729b;
        }
        StringsKt__StringNumberConversionsKt.b(str);
        throw null;
    }

    public static final ULong f(String str) {
        str.getClass();
        str.getClass();
        CharsKt__CharJVMKt.checkRadix(10);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i2 = 0;
        char cCharAt = str.charAt(0);
        if (cCharAt < '0') {
            i2 = 1;
            if (length == 1 || cCharAt != '+') {
                return null;
            }
        }
        ULong.Companion companion = ULong.INSTANCE;
        long j2 = 0;
        long jDivideUnsigned = 512409557603043100L;
        while (i2 < length) {
            int iDigit = Character.digit((int) str.charAt(i2), 10);
            if (iDigit < 0) {
                return null;
            }
            if (Long.compareUnsigned(j2, jDivideUnsigned) > 0) {
                if (jDivideUnsigned != 512409557603043100L) {
                    return null;
                }
                jDivideUnsigned = Long.divideUnsigned(-1L, 10L);
                if (Long.compareUnsigned(j2, jDivideUnsigned) > 0) {
                    return null;
                }
            }
            long j3 = j2 * 10;
            UInt.Companion companion2 = UInt.INSTANCE;
            long j4 = (((long) iDigit) & BodyPartID.bodyIdMax) + j3;
            if (Long.compareUnsigned(j4, j3) < 0) {
                return null;
            }
            i2++;
            j2 = j4;
        }
        return new ULong(j2);
    }

    /* JADX WARN: Code duplicated, block: B:8:0x001d  */
    public static final short g(String str) {
        UShort uShort;
        str.getClass();
        UInt uIntD = d(str);
        if (uIntD != null) {
            int i2 = uIntD.f71724b;
            if (Integer.compareUnsigned(i2, 65535) > 0) {
                uShort = null;
            } else {
                uShort = new UShort((short) i2);
            }
        } else {
            uShort = null;
        }
        if (uShort != null) {
            return uShort.f71735b;
        }
        StringsKt__StringNumberConversionsKt.b(str);
        throw null;
    }
}
