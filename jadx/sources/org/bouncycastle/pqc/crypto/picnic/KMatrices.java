package org.bouncycastle.pqc.crypto.picnic;

/* JADX INFO: loaded from: classes5.dex */
class KMatrices {
    private int columns;
    private int[] data;
    private int nmatrices;
    private int rows;

    public KMatrices(int i2, int i3, int i4, int[] iArr) {
        this.nmatrices = i2;
        this.rows = i3;
        this.columns = i4;
        this.data = iArr;
    }

    public int getColumns() {
        return this.columns;
    }

    public int[] getData() {
        return this.data;
    }

    public int getNmatrices() {
        return this.nmatrices;
    }

    public int getRows() {
        return this.rows;
    }

    public int getSize() {
        return this.rows * this.columns;
    }
}
