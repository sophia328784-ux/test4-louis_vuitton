package org.bouncycastle.pqc.crypto.ntru;

/* JADX INFO: loaded from: classes5.dex */
class OWCPADecryptResult {
    final int fail;
    final byte[] rm;

    public OWCPADecryptResult(byte[] bArr, int i2) {
        this.rm = bArr;
        this.fail = i2;
    }
}
