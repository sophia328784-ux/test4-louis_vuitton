package org.teleal.cling.model.types;

import org.teleal.common.util.ByteArray;
import org.teleal.common.util.HexBin;

/* JADX INFO: loaded from: classes5.dex */
public class BinHexDatatype extends AbstractDatatype<Byte[]> {
    @Override // org.teleal.cling.model.types.AbstractDatatype, org.teleal.cling.model.types.Datatype
    public final String a(Object obj) {
        Byte[] bArr = (Byte[]) obj;
        if (bArr == null) {
            return "";
        }
        try {
            return new String(HexBin.b(ByteArray.a(bArr)));
        } catch (Exception e2) {
            throw new InvalidValueException(e2.getMessage(), e2);
        }
    }

    @Override // org.teleal.cling.model.types.AbstractDatatype
    public final Class f() {
        return Byte[].class;
    }

    @Override // org.teleal.cling.model.types.AbstractDatatype, org.teleal.cling.model.types.Datatype
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public final Byte[] e(String str) {
        if (str.equals("")) {
            return null;
        }
        try {
            byte[] bArr = HexBin.f78644a;
            byte[] bArrA = HexBin.a(str.getBytes());
            Byte[] bArr2 = new Byte[bArrA.length];
            for (int i2 = 0; i2 < bArrA.length; i2++) {
                bArr2[i2] = Byte.valueOf(bArrA[i2]);
            }
            return bArr2;
        } catch (Exception e2) {
            throw new InvalidValueException(e2.getMessage(), e2);
        }
    }
}
