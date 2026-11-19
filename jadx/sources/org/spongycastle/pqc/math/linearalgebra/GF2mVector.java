package org.spongycastle.pqc.math.linearalgebra;

import defpackage.lc0;
import defpackage.md;

/* JADX INFO: loaded from: classes5.dex */
public class GF2mVector extends Vector {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GF2mField f78250a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f78251b;

    public GF2mVector(GF2mField gF2mField, byte[] bArr) {
        int[] iArr;
        this.f78250a = new GF2mField(gF2mField);
        int i2 = 8;
        int i3 = 1;
        while (gF2mField.f78248a > i2) {
            i3++;
            i2 += 8;
        }
        if (bArr.length % i3 != 0) {
            md.n("Byte array is not an encoded vector over the given finite field.");
            throw null;
        }
        this.f78251b = new int[bArr.length / i3];
        int i4 = 0;
        for (int i5 = 0; i5 < this.f78251b.length; i5++) {
            int i6 = 0;
            while (true) {
                iArr = this.f78251b;
                if (i6 >= i2) {
                    break;
                }
                iArr[i5] = ((bArr[i4] & 255) << i6) | iArr[i5];
                i6 += 8;
                i4++;
            }
            if (!gF2mField.c(iArr[i5])) {
                md.n("Byte array is not an encoded vector over the given finite field.");
                throw null;
            }
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof GF2mVector)) {
            return false;
        }
        GF2mVector gF2mVector = (GF2mVector) obj;
        if (this.f78250a.equals(gF2mVector.f78250a)) {
            return IntUtils.a(this.f78251b, gF2mVector.f78251b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f78251b.hashCode() + (this.f78250a.f78249b * 31);
    }

    public final String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        int i2 = 0;
        while (true) {
            int[] iArr = this.f78251b;
            if (i2 >= iArr.length) {
                return stringBuffer.toString();
            }
            for (int i3 = 0; i3 < this.f78250a.f78248a; i3++) {
                if (((1 << (i3 & 31)) & iArr[i2]) != 0) {
                    stringBuffer.append('1');
                } else {
                    stringBuffer.append('0');
                }
            }
            stringBuffer.append(' ');
            i2++;
        }
    }

    public GF2mVector(GF2mField gF2mField, int[] iArr) {
        this.f78250a = gF2mField;
        int length = iArr.length;
        for (int length2 = iArr.length - 1; length2 >= 0; length2--) {
            if (!gF2mField.c(iArr[length2])) {
                lc0.l("Element array is not specified over the given finite field.");
                throw null;
            }
        }
        int[] iArr2 = new int[iArr.length];
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        this.f78251b = iArr2;
    }

    public GF2mVector(GF2mVector gF2mVector) {
        this.f78250a = new GF2mField(gF2mVector.f78250a);
        int[] iArr = gF2mVector.f78251b;
        int[] iArr2 = new int[iArr.length];
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        this.f78251b = iArr2;
    }
}
