package org.teleal.cling.model.types;

/* JADX INFO: loaded from: classes5.dex */
public final class UnsignedIntegerOneByte extends UnsignedVariableInteger {
    public UnsignedIntegerOneByte(long j2) throws NumberFormatException {
        super(j2);
    }

    @Override // org.teleal.cling.model.types.UnsignedVariableInteger
    public final UnsignedVariableInteger.Bits a() {
        return UnsignedVariableInteger.Bits.EIGHT;
    }

    public UnsignedIntegerOneByte(String str) throws NumberFormatException {
        super(str);
    }
}
