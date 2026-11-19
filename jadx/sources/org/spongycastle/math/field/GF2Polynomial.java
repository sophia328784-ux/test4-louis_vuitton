package org.spongycastle.math.field;

import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
class GF2Polynomial implements Polynomial {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f78048a;

    public GF2Polynomial(int[] iArr) {
        int[] iArr2 = new int[iArr.length];
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        this.f78048a = iArr2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GF2Polynomial) {
            return Arrays.b(this.f78048a, ((GF2Polynomial) obj).f78048a);
        }
        return false;
    }

    @Override // org.spongycastle.math.field.Polynomial
    public final int getDegree() {
        int[] iArr = this.f78048a;
        return iArr[iArr.length - 1];
    }

    @Override // org.spongycastle.math.field.Polynomial
    public final int[] getExponentsPresent() {
        int[] iArr = this.f78048a;
        if (iArr == null) {
            return null;
        }
        int[] iArr2 = new int[iArr.length];
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        return iArr2;
    }

    public final int hashCode() {
        return Arrays.h(this.f78048a);
    }
}
