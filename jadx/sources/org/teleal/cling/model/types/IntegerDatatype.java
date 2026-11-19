package org.teleal.cling.model.types;

import defpackage.md;
import defpackage.pq0;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes5.dex */
public class IntegerDatatype extends AbstractDatatype<Integer> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f78513b;

    public IntegerDatatype(int i2) {
        this.f78513b = i2;
    }

    @Override // org.teleal.cling.model.types.AbstractDatatype, org.teleal.cling.model.types.Datatype
    public final Object e(String str) {
        if (str.equals("")) {
            return null;
        }
        try {
            Integer numValueOf = Integer.valueOf(Integer.parseInt(str));
            if (b(numValueOf)) {
                return numValueOf;
            }
            throw new InvalidValueException("Not a " + this.f78513b + " byte(s) integer: " + str);
        } catch (NumberFormatException e2) {
            throw new InvalidValueException("Can't convert string to number: ".concat(str), e2);
        }
    }

    @Override // org.teleal.cling.model.types.AbstractDatatype, org.teleal.cling.model.types.Datatype
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public final boolean b(Integer num) {
        int i2;
        int i3;
        if (num != null) {
            int iIntValue = num.intValue();
            int i4 = this.f78513b;
            if (i4 == 1) {
                i2 = -128;
            } else if (i4 == 2) {
                i2 = -32768;
            } else {
                if (i4 != 4) {
                    md.n(pq0.k(i4, "Invalid integer byte size: "));
                    return false;
                }
                i2 = Integer.MIN_VALUE;
            }
            if (iIntValue >= i2) {
                int iIntValue2 = num.intValue();
                if (i4 == 1) {
                    i3 = CertificateBody.profileType;
                } else if (i4 == 2) {
                    i3 = 32767;
                } else {
                    if (i4 != 4) {
                        md.n(pq0.k(i4, "Invalid integer byte size: "));
                        return false;
                    }
                    i3 = Integer.MAX_VALUE;
                }
                if (iIntValue2 <= i3) {
                }
            }
            return false;
        }
        return true;
    }
}
