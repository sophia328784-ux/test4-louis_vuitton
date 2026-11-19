package org.bouncycastle.tsp.ers;

/* JADX INFO: loaded from: classes5.dex */
class IndexedHash {
    final byte[] digest;
    final int order;

    public IndexedHash(int i2, byte[] bArr) {
        this.order = i2;
        this.digest = bArr;
    }
}
