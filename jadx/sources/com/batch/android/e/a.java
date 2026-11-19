package com.batch.android.e;

import java.util.Arrays;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f23060a = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!#$%&()*+,./:;<=>?@[]^_`{|}~'";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte[] f23061b = new byte[91];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final byte[] f23062c;

    /* JADX INFO: renamed from: com.batch.android.e.a$a, reason: collision with other inner class name */
    public static final class C0046a extends Exception {
    }

    public a() {
        byte[] bArr = new byte[256];
        for (int i2 = 0; i2 < 256; i2++) {
            UByte.Companion companion = UByte.INSTANCE;
            bArr[i2] = -1;
        }
        this.f23062c = bArr;
        a();
    }

    public final byte[] a(byte[] bArr) throws C0046a {
        bArr.getClass();
        byte[] bArr2 = new byte[(int) Math.ceil((((double) bArr.length) * 14.0d) / 16.0d)];
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = -1;
        for (byte b2 : Arrays.copyOf(bArr, bArr.length)) {
            UByte.Companion companion = UByte.INSTANCE;
            byte b3 = this.f23062c[b2 & 255];
            if (b3 == -1) {
                throw new C0046a();
            }
            if (i5 == -1) {
                i5 = b3 & 255;
            } else {
                int i6 = ((b3 & 255) * 91) + i5;
                UInt.Companion companion2 = UInt.INSTANCE;
                i3 |= i6 << i4;
                i4 = (i6 & 8191) > 88 ? i4 + 13 : i4 + 14;
                while (Integer.compareUnsigned(i4, 7) > 0) {
                    bArr2[i2] = (byte) i3;
                    i3 >>>= 8;
                    i4 -= 8;
                    i2++;
                }
                i5 = -1;
            }
        }
        if (i5 != -1) {
            UInt.Companion companion3 = UInt.INSTANCE;
            UByte.Companion companion4 = UByte.INSTANCE;
            bArr2[i2] = (byte) ((i5 << i4) | i3);
            i2++;
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr2, i2);
        return Arrays.copyOf(bArrCopyOf, bArrCopyOf.length);
    }

    public final byte[] b(byte[] bArr) {
        bArr.getClass();
        byte[] bArr2 = new byte[(int) Math.ceil((((double) bArr.length) * 16.0d) / 13.0d)];
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        for (byte b2 : Arrays.copyOf(bArr, bArr.length)) {
            UByte.Companion companion = UByte.INSTANCE;
            UInt.Companion companion2 = UInt.INSTANCE;
            i3 |= (b2 & 255) << i2;
            int i5 = i2 + 8;
            if (Integer.compareUnsigned(i5, 13) > 0) {
                int i6 = i3 & 8191;
                if (Integer.compareUnsigned(i6, 88) > 0) {
                    i3 >>>= 13;
                    i2 -= 5;
                } else {
                    i6 = i3 & 16383;
                    i3 >>>= 14;
                    i2 -= 6;
                }
                int i7 = i4 + 1;
                bArr2[i4] = this.f23061b[Integer.remainderUnsigned(i6, 91)];
                i4 += 2;
                bArr2[i7] = this.f23061b[Integer.divideUnsigned(i6, 91)];
            } else {
                i2 = i5;
            }
        }
        if (Integer.compareUnsigned(i2, 0) > 0) {
            int i8 = i4 + 1;
            byte b3 = this.f23061b[Integer.remainderUnsigned(i3, 91)];
            UByte.Companion companion3 = UByte.INSTANCE;
            bArr2[i4] = b3;
            if (Integer.compareUnsigned(i2, 7) > 0 || Integer.compareUnsigned(i3, 90) > 0) {
                i4 += 2;
                bArr2[i8] = this.f23061b[Integer.divideUnsigned(i3, 91)];
            } else {
                i4 = i8;
            }
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr2, i4);
        return Arrays.copyOf(bArrCopyOf, bArrCopyOf.length);
    }

    public final byte[] a(String str) throws C0046a {
        str.getClass();
        return a(StringsKt.o(str));
    }

    private final void a() {
        byte[] bArrO = StringsKt.o(this.f23060a);
        int length = bArrO.length;
        for (int i2 = 0; i2 < length; i2++) {
            byte b2 = bArrO[i2];
            byte[] bArr = this.f23061b;
            UByte.Companion companion = UByte.INSTANCE;
            bArr[i2] = b2;
            this.f23062c[b2] = (byte) i2;
        }
    }

    public final String b(String str) {
        str.getClass();
        byte[] bArrB = b(StringsKt.o(str));
        bArrB.getClass();
        return new String(bArrB, Charsets.UTF_8);
    }
}
