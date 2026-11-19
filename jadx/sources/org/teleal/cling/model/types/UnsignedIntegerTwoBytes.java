package org.teleal.cling.model.types;

/* JADX INFO: loaded from: classes5.dex */
public final class UnsignedIntegerTwoBytes extends UnsignedVariableInteger {
    public UnsignedIntegerTwoBytes(long j2) throws NumberFormatException {
        super(j2);
    }

    @Override // org.teleal.cling.model.types.UnsignedVariableInteger
    public final UnsignedVariableInteger.Bits a() {
        return UnsignedVariableInteger.Bits.SIXTEEN;
    }

    public UnsignedIntegerTwoBytes(String str) throws NumberFormatException {
        super(str);
    }
}
