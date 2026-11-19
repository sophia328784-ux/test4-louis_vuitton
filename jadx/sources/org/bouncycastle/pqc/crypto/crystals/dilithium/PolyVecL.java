package org.bouncycastle.pqc.crypto.crystals.dilithium;

import defpackage.n00;

/* JADX INFO: loaded from: classes5.dex */
class PolyVecL {
    private int dilithiumK;
    private int dilithiumL;
    private DilithiumEngine engine;
    private int mode;
    private int polyVecBytes;
    Poly[] vec;

    public PolyVecL(DilithiumEngine dilithiumEngine) {
        this.engine = dilithiumEngine;
        this.mode = dilithiumEngine.getDilithiumMode();
        this.dilithiumL = dilithiumEngine.getDilithiumL();
        this.dilithiumK = dilithiumEngine.getDilithiumK();
        this.vec = new Poly[this.dilithiumL];
        for (int i2 = 0; i2 < this.dilithiumL; i2++) {
            this.vec[i2] = new Poly(dilithiumEngine);
        }
    }

    public void addPolyVecL(PolyVecL polyVecL) {
        for (int i2 = 0; i2 < this.dilithiumL; i2++) {
            getVectorIndex(i2).addPoly(polyVecL.getVectorIndex(i2));
        }
    }

    public boolean checkNorm(int i2) {
        for (int i3 = 0; i3 < this.dilithiumL; i3++) {
            if (getVectorIndex(i3).checkNorm(i2)) {
                return true;
            }
        }
        return false;
    }

    public void copyPolyVecL(PolyVecL polyVecL) {
        for (int i2 = 0; i2 < this.dilithiumL; i2++) {
            for (int i3 = 0; i3 < 256; i3++) {
                polyVecL.getVectorIndex(i2).setCoeffIndex(i3, getVectorIndex(i2).getCoeffIndex(i3));
            }
        }
    }

    public void expandMatrix(byte[] bArr, int i2) {
        for (int i3 = 0; i3 < this.dilithiumL; i3++) {
            this.vec[i3].uniformBlocks(bArr, (short) ((i2 << 8) + i3));
        }
    }

    public Poly getVectorIndex(int i2) {
        return this.vec[i2];
    }

    public void invNttToMont() {
        for (int i2 = 0; i2 < this.dilithiumL; i2++) {
            getVectorIndex(i2).invNttToMont();
        }
    }

    public void pointwisePolyMontgomery(Poly poly, PolyVecL polyVecL) {
        for (int i2 = 0; i2 < this.dilithiumL; i2++) {
            getVectorIndex(i2).pointwiseMontgomery(poly, polyVecL.getVectorIndex(i2));
        }
    }

    public void polyVecNtt() {
        for (int i2 = 0; i2 < this.dilithiumL; i2++) {
            this.vec[i2].polyNtt();
        }
    }

    public void reduce() {
        for (int i2 = 0; i2 < this.dilithiumL; i2++) {
            getVectorIndex(i2).reduce();
        }
    }

    public String toString() {
        String strConcat = "\n[";
        for (int i2 = 0; i2 < this.dilithiumL; i2++) {
            strConcat = strConcat + "Inner Matrix " + i2 + " " + getVectorIndex(i2).toString();
            if (i2 != this.dilithiumL - 1) {
                strConcat = strConcat.concat(",\n");
            }
        }
        return strConcat.concat("]");
    }

    public void uniformEta(byte[] bArr, short s) {
        int i2 = 0;
        while (i2 < this.dilithiumL) {
            getVectorIndex(i2).uniformEta(bArr, s);
            i2++;
            s = (short) (s + 1);
        }
    }

    public void uniformGamma1(byte[] bArr, short s) {
        for (int i2 = 0; i2 < this.dilithiumL; i2++) {
            getVectorIndex(i2).uniformGamma1(bArr, (short) ((this.dilithiumL * s) + i2));
        }
    }

    public PolyVecL() throws Exception {
        throw new Exception("Requires Parameter");
    }

    public String toString(String str) {
        StringBuilder sbU = n00.u(str, ": ");
        sbU.append(toString());
        return sbU.toString();
    }
}
