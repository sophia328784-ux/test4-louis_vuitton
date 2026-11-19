package org.teleal.cling.model.types;

/* JADX INFO: loaded from: classes5.dex */
public class ShortDatatype extends AbstractDatatype<Short> {
    @Override // org.teleal.cling.model.types.AbstractDatatype, org.teleal.cling.model.types.Datatype
    public final Object e(String str) {
        if (str.equals("")) {
            return null;
        }
        try {
            Short shValueOf = Short.valueOf(Short.parseShort(str));
            if (b(shValueOf)) {
                return shValueOf;
            }
            throw new InvalidValueException("Not a valid short: ".concat(str));
        } catch (NumberFormatException e2) {
            throw new InvalidValueException("Can't convert string to number: ".concat(str), e2);
        }
    }
}
