package org.teleal.cling.model.types;

/* JADX INFO: loaded from: classes5.dex */
public class DoubleDatatype extends AbstractDatatype<Double> {
    @Override // org.teleal.cling.model.types.AbstractDatatype, org.teleal.cling.model.types.Datatype
    public final Object e(String str) {
        if (str.equals("")) {
            return null;
        }
        try {
            return Double.valueOf(Double.parseDouble(str));
        } catch (NumberFormatException e2) {
            throw new InvalidValueException("Can't convert string to number: ".concat(str), e2);
        }
    }
}
