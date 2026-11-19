package org.teleal.cling.model.types;

/* JADX INFO: loaded from: classes5.dex */
public class UnsignedIntegerFourBytesDatatype extends AbstractDatatype<UnsignedIntegerFourBytes> {
    @Override // org.teleal.cling.model.types.AbstractDatatype, org.teleal.cling.model.types.Datatype
    public final Object e(String str) {
        if (str.equals("")) {
            return null;
        }
        try {
            return new UnsignedIntegerFourBytes(str);
        } catch (NumberFormatException e2) {
            throw new InvalidValueException("Can't convert string to number or not in range: ".concat(str), e2);
        }
    }
}
