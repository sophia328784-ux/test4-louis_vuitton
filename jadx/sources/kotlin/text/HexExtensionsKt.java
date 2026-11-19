package kotlin.text;

import defpackage.az;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.UnsignedKt;
import kotlin.collections.AbstractList;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlin-stdlib"}, k = 2, mv = {2, 4, 0}, xi = 48)
public abstract class HexExtensionsKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f74522a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final long[] f74523b;

    static {
        int[] iArr = new int[256];
        int i2 = 0;
        for (int i3 = 0; i3 < 256; i3++) {
            iArr[i3] = "0123456789abcdef".charAt(i3 & 15) | ("0123456789abcdef".charAt(i3 >> 4) << '\b');
        }
        f74522a = iArr;
        int[] iArr2 = new int[256];
        for (int i4 = 0; i4 < 256; i4++) {
            iArr2[i4] = "0123456789ABCDEF".charAt(i4 & 15) | ("0123456789ABCDEF".charAt(i4 >> 4) << '\b');
        }
        int[] iArr3 = new int[256];
        for (int i5 = 0; i5 < 256; i5++) {
            iArr3[i5] = -1;
        }
        int i6 = 0;
        int i7 = 0;
        while (i6 < "0123456789abcdef".length()) {
            iArr3["0123456789abcdef".charAt(i6)] = i7;
            i6++;
            i7++;
        }
        int i8 = 0;
        int i9 = 0;
        while (i8 < "0123456789ABCDEF".length()) {
            iArr3["0123456789ABCDEF".charAt(i8)] = i9;
            i8++;
            i9++;
        }
        long[] jArr = new long[256];
        for (int i10 = 0; i10 < 256; i10++) {
            jArr[i10] = -1;
        }
        int i11 = 0;
        int i12 = 0;
        while (i11 < "0123456789abcdef".length()) {
            jArr["0123456789abcdef".charAt(i11)] = i12;
            i11++;
            i12++;
        }
        int i13 = 0;
        while (i2 < "0123456789ABCDEF".length()) {
            jArr["0123456789ABCDEF".charAt(i2)] = i13;
            i2++;
            i13++;
        }
        f74523b = jArr;
    }

    public static String a(long j2) {
        int i2;
        HexFormat.INSTANCE.getClass();
        HexFormat hexFormat = HexFormat.f74524e;
        hexFormat.getClass();
        String str = hexFormat.f74525a ? "0123456789ABCDEF" : "0123456789abcdef";
        HexFormat.NumberHexFormat numberHexFormat = hexFormat.f74527c;
        boolean z = numberHexFormat.f74538e;
        boolean z2 = numberHexFormat.f74537c;
        if (z) {
            char[] cArr = {str.charAt((int) ((j2 >> 60) & 15)), str.charAt((int) ((j2 >> 56) & 15)), str.charAt((int) ((j2 >> 52) & 15)), str.charAt((int) ((j2 >> 48) & 15)), str.charAt((int) ((j2 >> 44) & 15)), str.charAt((int) ((j2 >> 40) & 15)), str.charAt((int) ((j2 >> 36) & 15)), str.charAt((int) ((j2 >> 32) & 15)), str.charAt((int) ((j2 >> 28) & 15)), str.charAt((int) ((j2 >> 24) & 15)), str.charAt((int) ((j2 >> 20) & 15)), str.charAt((int) ((j2 >> 16) & 15)), str.charAt((int) ((j2 >> 12) & 15)), str.charAt((int) ((j2 >> 8) & 15)), str.charAt((int) ((j2 >> 4) & 15)), str.charAt((int) (j2 & 15))};
            if (!z2) {
                return new String(cArr);
            }
            int iNumberOfLeadingZeros = Long.numberOfLeadingZeros(j2) >> 2;
            int i3 = iNumberOfLeadingZeros <= 15 ? iNumberOfLeadingZeros : 15;
            AbstractList.INSTANCE.getClass();
            AbstractList.Companion.a(i3, 16, 16);
            return new String(cArr, i3, 16 - i3);
        }
        boolean z3 = z2;
        int i4 = numberHexFormat.d;
        int i5 = i4 - 16;
        int i6 = i5 < 0 ? 0 : i5;
        String str2 = numberHexFormat.f74535a;
        String str3 = numberHexFormat.f74536b;
        long length = ((long) str2.length()) + ((long) i6) + 16 + ((long) str3.length());
        if (0 > length || length > 2147483647L) {
            ULong.Companion companion = ULong.INSTANCE;
            az.w(UnsignedKt.b(10, length), "The resulting string length is too big: ");
            return null;
        }
        int i7 = (int) length;
        char[] cArr2 = new char[i7];
        int length2 = str2.length();
        if (length2 == 0) {
            i2 = 0;
        } else if (length2 != 1) {
            i2 = 0;
            str2.getChars(0, str2.length(), cArr2, 0);
        } else {
            i2 = 0;
            cArr2[0] = str2.charAt(0);
        }
        int length3 = str2.length();
        if (i6 > 0) {
            int i8 = i6 + length3;
            Arrays.fill(cArr2, length3, i8, str.charAt(i2));
            length3 = i8;
        }
        int i9 = 64;
        for (int i10 = 0; i10 < 16; i10++) {
            i9 -= 4;
            int i11 = (int) ((j2 >> i9) & 15);
            z3 = z3 && i11 == 0 && (i9 >> 2) >= i4;
            if (!z3) {
                cArr2[length3] = str.charAt(i11);
                length3++;
            }
        }
        int length4 = str3.length();
        if (length4 != 0) {
            if (length4 != 1) {
                str3.getChars(0, str3.length(), cArr2, length3);
            } else {
                cArr2[length3] = str3.charAt(0);
            }
        }
        int length5 = str3.length() + length3;
        if (length5 == i7) {
            return new String(cArr2);
        }
        AbstractList.INSTANCE.getClass();
        AbstractList.Companion.a(0, length5, i7);
        return new String(cArr2, 0, length5);
    }
}
