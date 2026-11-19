package org.spongycastle.pqc.math.linearalgebra;

import defpackage.md;
import defpackage.n00;
import java.security.SecureRandom;

/* JADX INFO: loaded from: classes5.dex */
public class Permutation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f78255a;

    public Permutation(byte[] bArr) {
        int i2;
        int[] iArr;
        if (bArr.length <= 4) {
            md.n("invalid encoding");
            throw null;
        }
        int iB = LittleEndianConversions.b(bArr, 0);
        int i3 = iB - 1;
        int i4 = IntegerFunctions.f78252a;
        if (i3 == 0) {
            i2 = 1;
        } else {
            i2 = 0;
            for (i3 = i3 < 0 ? -i3 : i3; i3 > 0; i3 >>>= 8) {
                i2++;
            }
        }
        if (bArr.length != (iB * i2) + 4) {
            md.n("invalid encoding");
            throw null;
        }
        this.f78255a = new int[iB];
        int i5 = 0;
        while (true) {
            iArr = this.f78255a;
            if (i5 >= iB) {
                break;
            }
            int i6 = (i5 * i2) + 4;
            int i7 = 0;
            for (int i8 = i2 - 1; i8 >= 0; i8--) {
                i7 |= (bArr[i6 + i8] & 255) << (i8 * 8);
            }
            iArr[i5] = i7;
            i5++;
        }
        int length = iArr.length;
        boolean[] zArr = new boolean[length];
        for (int i9 : iArr) {
            if (i9 < 0 || i9 >= length || zArr[i9]) {
                md.n("invalid encoding");
                throw null;
            }
            zArr[i9] = true;
        }
    }

    public final byte[] a() {
        int i2;
        int[] iArr = this.f78255a;
        int length = iArr.length;
        int i3 = length - 1;
        int i4 = IntegerFunctions.f78252a;
        if (i3 == 0) {
            i2 = 1;
        } else {
            if (i3 < 0) {
                i3 = -i3;
            }
            i2 = 0;
            while (i3 > 0) {
                i2++;
                i3 >>>= 8;
            }
        }
        byte[] bArr = new byte[(length * i2) + 4];
        LittleEndianConversions.a(length, bArr, 0);
        for (int i5 = 0; i5 < length; i5++) {
            int i6 = iArr[i5];
            int i7 = (i5 * i2) + 4;
            for (int i8 = i2 - 1; i8 >= 0; i8--) {
                bArr[i7 + i8] = (byte) (i6 >>> (i8 * 8));
            }
        }
        return bArr;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Permutation) {
            return IntUtils.a(this.f78255a, ((Permutation) obj).f78255a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f78255a.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[");
        int[] iArr = this.f78255a;
        sb.append(iArr[0]);
        String string = sb.toString();
        for (int i2 = 1; i2 < iArr.length; i2++) {
            StringBuilder sbU = n00.u(string, ", ");
            sbU.append(iArr[i2]);
            string = sbU.toString();
        }
        return string.concat("]");
    }

    public Permutation(int[] iArr) {
        int length = iArr.length;
        boolean[] zArr = new boolean[length];
        for (int i2 : iArr) {
            if (i2 >= 0 && i2 < length && !zArr[i2]) {
                zArr[i2] = true;
            } else {
                md.n("array is not a permutation vector");
                throw null;
            }
        }
        int[] iArr2 = new int[iArr.length];
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        this.f78255a = iArr2;
    }

    public Permutation(int i2) {
        if (i2 > 0) {
            this.f78255a = new int[i2];
            for (int i3 = i2 - 1; i3 >= 0; i3--) {
                this.f78255a[i3] = i3;
            }
            return;
        }
        md.n("invalid length");
        throw null;
    }

    public Permutation(int i2, SecureRandom secureRandom) {
        if (i2 > 0) {
            this.f78255a = new int[i2];
            int[] iArr = new int[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                iArr[i3] = i3;
            }
            int i4 = i2;
            for (int i5 = 0; i5 < i2; i5++) {
                int iA = RandUtils.a(secureRandom, i4);
                i4--;
                this.f78255a[i5] = iArr[iA];
                iArr[iA] = iArr[i4];
            }
            return;
        }
        md.n("invalid length");
        throw null;
    }
}
