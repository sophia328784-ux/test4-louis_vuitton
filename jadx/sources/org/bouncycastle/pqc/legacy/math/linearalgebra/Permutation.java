package org.bouncycastle.pqc.legacy.math.linearalgebra;

import defpackage.md;
import defpackage.n00;
import java.security.SecureRandom;
import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class Permutation {
    private int[] perm;

    public Permutation(byte[] bArr) {
        int[] iArr;
        if (bArr.length <= 4) {
            md.n("invalid encoding");
            throw null;
        }
        int i2 = 0;
        int iOS2IP = LittleEndianConversions.OS2IP(bArr, 0);
        int iCeilLog256 = IntegerFunctions.ceilLog256(iOS2IP - 1);
        if (bArr.length != (iOS2IP * iCeilLog256) + 4) {
            md.n("invalid encoding");
            throw null;
        }
        this.perm = new int[iOS2IP];
        while (true) {
            iArr = this.perm;
            if (i2 >= iOS2IP) {
                break;
            }
            iArr[i2] = LittleEndianConversions.OS2IP(bArr, (i2 * iCeilLog256) + 4, iCeilLog256);
            i2++;
        }
        if (isPermutation(iArr)) {
            return;
        }
        md.n("invalid encoding");
        throw null;
    }

    private boolean isPermutation(int[] iArr) {
        int length = iArr.length;
        boolean[] zArr = new boolean[length];
        for (int i2 : iArr) {
            if (i2 < 0 || i2 >= length || zArr[i2]) {
                return false;
            }
            zArr[i2] = true;
        }
        return true;
    }

    public Permutation computeInverse() {
        Permutation permutation = new Permutation(this.perm.length);
        for (int length = this.perm.length - 1; length >= 0; length--) {
            permutation.perm[this.perm[length]] = length;
        }
        return permutation;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Permutation) {
            return IntUtils.equals(this.perm, ((Permutation) obj).perm);
        }
        return false;
    }

    public byte[] getEncoded() {
        int length = this.perm.length;
        int iCeilLog256 = IntegerFunctions.ceilLog256(length - 1);
        byte[] bArr = new byte[(length * iCeilLog256) + 4];
        LittleEndianConversions.I2OSP(length, bArr, 0);
        for (int i2 = 0; i2 < length; i2++) {
            LittleEndianConversions.I2OSP(this.perm[i2], bArr, (i2 * iCeilLog256) + 4, iCeilLog256);
        }
        return bArr;
    }

    public int[] getVector() {
        return IntUtils.clone(this.perm);
    }

    public int hashCode() {
        return Arrays.hashCode(this.perm);
    }

    public Permutation rightMultiply(Permutation permutation) {
        int length = permutation.perm.length;
        int[] iArr = this.perm;
        if (length != iArr.length) {
            md.n("length mismatch");
            return null;
        }
        Permutation permutation2 = new Permutation(iArr.length);
        for (int length2 = this.perm.length - 1; length2 >= 0; length2--) {
            permutation2.perm[length2] = this.perm[permutation.perm[length2]];
        }
        return permutation2;
    }

    public String toString() {
        String string = "[" + this.perm[0];
        for (int i2 = 1; i2 < this.perm.length; i2++) {
            StringBuilder sbU = n00.u(string, ", ");
            sbU.append(this.perm[i2]);
            string = sbU.toString();
        }
        return string.concat("]");
    }

    public Permutation(int i2, SecureRandom secureRandom) {
        if (i2 <= 0) {
            md.n("invalid length");
            throw null;
        }
        this.perm = new int[i2];
        int[] iArr = new int[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            iArr[i3] = i3;
        }
        int i4 = i2;
        for (int i5 = 0; i5 < i2; i5++) {
            int iNextInt = RandUtils.nextInt(secureRandom, i4);
            i4--;
            this.perm[i5] = iArr[iNextInt];
            iArr[iNextInt] = iArr[i4];
        }
    }

    public Permutation(int i2) {
        if (i2 <= 0) {
            md.n("invalid length");
            throw null;
        }
        this.perm = new int[i2];
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            this.perm[i3] = i3;
        }
    }

    public Permutation(int[] iArr) {
        if (isPermutation(iArr)) {
            this.perm = IntUtils.clone(iArr);
        } else {
            md.n("array is not a permutation vector");
            throw null;
        }
    }
}
