package org.spongycastle.math.field;

import java.math.BigInteger;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
class GenericPolynomialExtensionField implements PolynomialExtensionField {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FiniteField f78049a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Polynomial f78050b;

    public GenericPolynomialExtensionField(FiniteField finiteField, Polynomial polynomial) {
        this.f78049a = finiteField;
        this.f78050b = polynomial;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GenericPolynomialExtensionField)) {
            return false;
        }
        GenericPolynomialExtensionField genericPolynomialExtensionField = (GenericPolynomialExtensionField) obj;
        return this.f78049a.equals(genericPolynomialExtensionField.f78049a) && this.f78050b.equals(genericPolynomialExtensionField.f78050b);
    }

    @Override // org.spongycastle.math.field.FiniteField
    public final BigInteger getCharacteristic() {
        return this.f78049a.getCharacteristic();
    }

    @Override // org.spongycastle.math.field.FiniteField
    public final int getDimension() {
        return ((GF2Polynomial) this.f78050b).getDegree() * this.f78049a.getDimension();
    }

    @Override // org.spongycastle.math.field.PolynomialExtensionField
    public final Polynomial getMinimalPolynomial() {
        return this.f78050b;
    }

    public final int hashCode() {
        return Integer.rotateLeft(Arrays.h(((GF2Polynomial) this.f78050b).f78048a), 16) ^ this.f78049a.hashCode();
    }
}
