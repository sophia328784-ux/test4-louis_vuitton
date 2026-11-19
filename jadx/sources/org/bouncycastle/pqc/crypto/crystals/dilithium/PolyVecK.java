package org.bouncycastle.pqc.crypto.crystals.dilithium;

import defpackage.n00;

/* JADX INFO: loaded from: classes5.dex */
class PolyVecK {
    private int dilithiumK;
    private int dilithiumL;
    private DilithiumEngine engine;
    private int mode;
    private int polyVecBytes;
    Poly[] vec;

    public PolyVecK(DilithiumEngine dilithiumEngine) {
        this.engine = dilithiumEngine;
        this.mode = dilithiumEngine.getDilithiumMode();
        this.dilithiumK = dilithiumEngine.getDilithiumK();
        this.dilithiumL = dilithiumEngine.getDilithiumL();
        this.vec = new Poly[this.dilithiumK];
        for (int i2 = 0; i2 < this.dilithiumK; i2++) {
            this.vec[i2] = new Poly(dilithiumEngine);
        }
    }

    public void addPolyVecK(PolyVecK polyVecK) {
        for (int i2 = 0; i2 < this.dilithiumK; i2++) {
            getVectorIndex(i2).addPoly(polyVecK.getVectorIndex(i2));
        }
    }

    public boolean checkNorm(int i2) {
        for (int i3 = 0; i3 < this.dilithiumK; i3++) {
            if (getVectorIndex(i3).checkNorm(i2)) {
                return true;
            }
        }
        return false;
    }

    public void conditionalAddQ() {
        for (int i2 = 0; i2 < this.dilithiumK; i2++) {
            getVectorIndex(i2).conditionalAddQ();
        }
    }

    public void decompose(PolyVecK polyVecK) {
        for (int i2 = 0; i2 < this.dilithiumK; i2++) {
            getVectorIndex(i2).decompose(polyVecK.getVectorIndex(i2));
        }
    }

    public Poly getVectorIndex(int i2) {
        return this.vec[i2];
    }

    public void invNttToMont() {
        for (int i2 = 0; i2 < this.dilithiumK; i2++) {
            getVectorIndex(i2).invNttToMont();
        }
    }

    public int makeHint(PolyVecK polyVecK, PolyVecK polyVecK2) {
        int iPolyMakeHint = 0;
        for (int i2 = 0; i2 < this.dilithiumK; i2++) {
            iPolyMakeHint += getVectorIndex(i2).polyMakeHint(polyVecK.getVectorIndex(i2), polyVecK2.getVectorIndex(i2));
        }
        return iPolyMakeHint;
    }

    public byte[] packW1() {
        byte[] bArr = new byte[this.dilithiumK * this.engine.getDilithiumPolyW1PackedBytes()];
        for (int i2 = 0; i2 < this.dilithiumK; i2++) {
            System.arraycopy(getVectorIndex(i2).w1Pack(), 0, bArr, this.engine.getDilithiumPolyW1PackedBytes() * i2, this.engine.getDilithiumPolyW1PackedBytes());
        }
        return bArr;
    }

    public void pointwisePolyMontgomery(Poly poly, PolyVecK polyVecK) {
        for (int i2 = 0; i2 < this.dilithiumK; i2++) {
            getVectorIndex(i2).pointwiseMontgomery(poly, polyVecK.getVectorIndex(i2));
        }
    }

    public void polyVecNtt() {
        for (int i2 = 0; i2 < this.dilithiumK; i2++) {
            this.vec[i2].polyNtt();
        }
    }

    public void power2Round(PolyVecK polyVecK) {
        for (int i2 = 0; i2 < this.dilithiumK; i2++) {
            getVectorIndex(i2).power2Round(polyVecK.getVectorIndex(i2));
        }
    }

    public void reduce() {
        for (int i2 = 0; i2 < this.dilithiumK; i2++) {
            getVectorIndex(i2).reduce();
        }
    }

    public void setVectorIndex(int i2, Poly poly) {
        this.vec[i2] = poly;
    }

    public void shiftLeft() {
        for (int i2 = 0; i2 < this.dilithiumK; i2++) {
            getVectorIndex(i2).shiftLeft();
        }
    }

    public void subtract(PolyVecK polyVecK) {
        for (int i2 = 0; i2 < this.dilithiumK; i2++) {
            getVectorIndex(i2).subtract(polyVecK.getVectorIndex(i2));
        }
    }

    public String toString() {
        String strConcat = "[";
        for (int i2 = 0; i2 < this.dilithiumK; i2++) {
            strConcat = strConcat + i2 + " " + getVectorIndex(i2).toString();
            if (i2 != this.dilithiumK - 1) {
                strConcat = strConcat.concat(",\n");
            }
        }
        return strConcat.concat("]");
    }

    public void uniformEta(byte[] bArr, short s) {
        int i2 = 0;
        while (i2 < this.dilithiumK) {
            getVectorIndex(i2).uniformEta(bArr, s);
            i2++;
            s = (short) (s + 1);
        }
    }

    public void useHint(PolyVecK polyVecK, PolyVecK polyVecK2) {
        for (int i2 = 0; i2 < this.dilithiumK; i2++) {
            getVectorIndex(i2).polyUseHint(polyVecK.getVectorIndex(i2), polyVecK2.getVectorIndex(i2));
        }
    }

    public PolyVecK() throws Exception {
        throw new Exception("Requires Parameter");
    }

    public String toString(String str) {
        StringBuilder sbU = n00.u(str, ": ");
        sbU.append(toString());
        return sbU.toString();
    }
}
