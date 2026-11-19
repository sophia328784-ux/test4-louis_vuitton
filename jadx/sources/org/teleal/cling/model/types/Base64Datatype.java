package org.teleal.cling.model.types;

import org.teleal.common.util.Base64Coder;
import org.teleal.common.util.ByteArray;

/* JADX INFO: loaded from: classes5.dex */
public class Base64Datatype extends AbstractDatatype<Byte[]> {
    @Override // org.teleal.cling.model.types.AbstractDatatype, org.teleal.cling.model.types.Datatype
    public final String a(Object obj) {
        Byte[] bArr = (Byte[]) obj;
        if (bArr == null) {
            return "";
        }
        try {
            return new String(Base64Coder.b(ByteArray.a(bArr)));
        } catch (Exception e2) {
            throw new InvalidValueException(e2.getMessage(), e2);
        }
    }

    @Override // org.teleal.cling.model.types.AbstractDatatype, org.teleal.cling.model.types.Datatype
    public final Object e(String str) {
        if (str.equals("")) {
            return null;
        }
        try {
            byte[] bArrA = Base64Coder.a(str);
            Byte[] bArr = new Byte[bArrA.length];
            for (int i2 = 0; i2 < bArrA.length; i2++) {
                bArr[i2] = Byte.valueOf(bArrA[i2]);
            }
            return bArr;
        } catch (Exception e2) {
            throw new InvalidValueException(e2.getMessage(), e2);
        }
    }

    @Override // org.teleal.cling.model.types.AbstractDatatype
    public final Class f() {
        return Byte[].class;
    }
}
