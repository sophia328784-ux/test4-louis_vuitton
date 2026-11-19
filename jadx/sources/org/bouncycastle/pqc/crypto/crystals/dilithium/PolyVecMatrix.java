package org.bouncycastle.pqc.crypto.crystals.dilithium;

import defpackage.n00;

/* JADX INFO: loaded from: classes5.dex */
class PolyVecMatrix {
    private final int dilithiumK;
    private final int dilithiumL;
    private final PolyVecL[] mat;

    public PolyVecMatrix(DilithiumEngine dilithiumEngine) {
        int dilithiumK = dilithiumEngine.getDilithiumK();
        this.dilithiumK = dilithiumK;
        this.dilithiumL = dilithiumEngine.getDilithiumL();
        this.mat = new PolyVecL[dilithiumK];
        for (int i2 = 0; i2 < this.dilithiumK; i2++) {
            this.mat[i2] = new PolyVecL(dilithiumEngine);
        }
    }

    private String addString() {
        String strConcat = "[";
        int i2 = 0;
        while (i2 < this.dilithiumK) {
            StringBuilder sbT = n00.t(strConcat + "Outer Matrix " + i2 + " [");
            sbT.append(this.mat[i2].toString());
            String string = sbT.toString();
            strConcat = i2 == this.dilithiumK + (-1) ? string.concat("]\n") : string.concat("],\n");
            i2++;
        }
        return strConcat.concat("]\n");
    }

    public void expandMatrix(byte[] bArr) {
        for (int i2 = 0; i2 < this.dilithiumK; i2++) {
            for (int i3 = 0; i3 < this.dilithiumL; i3++) {
                this.mat[i2].getVectorIndex(i3).uniformBlocks(bArr, (short) ((i2 << 8) + i3));
            }
        }
    }

    public void pointwiseMontgomery(PolyVecK polyVecK, PolyVecL polyVecL) {
        for (int i2 = 0; i2 < this.dilithiumK; i2++) {
            polyVecK.getVectorIndex(i2).pointwiseAccountMontgomery(this.mat[i2], polyVecL);
        }
    }

    public String toString(String str) {
        return str.concat(": \n" + addString());
    }
}
