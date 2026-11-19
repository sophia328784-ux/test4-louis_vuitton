package org.spongycastle.math.field;

import java.math.BigInteger;

/* JADX INFO: loaded from: classes5.dex */
class PrimeField implements FiniteField {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BigInteger f78051a;

    public PrimeField(BigInteger bigInteger) {
        this.f78051a = bigInteger;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PrimeField) {
            return this.f78051a.equals(((PrimeField) obj).f78051a);
        }
        return false;
    }

    @Override // org.spongycastle.math.field.FiniteField
    public final BigInteger getCharacteristic() {
        return this.f78051a;
    }

    @Override // org.spongycastle.math.field.FiniteField
    public final int getDimension() {
        return 1;
    }

    public final int hashCode() {
        return this.f78051a.hashCode();
    }
}
