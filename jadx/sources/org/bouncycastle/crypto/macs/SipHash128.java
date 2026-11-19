package org.bouncycastle.crypto.macs;

import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class SipHash128 extends SipHash {
    public SipHash128() {
    }

    @Override // org.bouncycastle.crypto.macs.SipHash, org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i2) throws IllegalStateException, DataLengthException {
        long j2 = this.m;
        int i3 = this.wordPos;
        this.m = ((j2 >>> ((7 - i3) << 3)) >>> 8) | ((((long) ((this.wordCount << 3) + i3)) & 255) << 56);
        processMessageWord();
        this.v2 ^= 238;
        applySipRounds(this.d);
        long j3 = this.v0;
        long j4 = this.v1;
        long j5 = ((j3 ^ j4) ^ this.v2) ^ this.v3;
        this.v1 = j4 ^ 221;
        applySipRounds(this.d);
        long j6 = ((this.v0 ^ this.v1) ^ this.v2) ^ this.v3;
        reset();
        Pack.longToLittleEndian(j5, bArr, i2);
        Pack.longToLittleEndian(j6, bArr, i2 + 8);
        return 16;
    }

    @Override // org.bouncycastle.crypto.macs.SipHash, org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return "SipHash128-" + this.f77627c + "-" + this.d;
    }

    @Override // org.bouncycastle.crypto.macs.SipHash, org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.macs.SipHash, org.bouncycastle.crypto.Mac
    public void reset() {
        super.reset();
        this.v1 ^= 238;
    }

    public SipHash128(int i2, int i3) {
        super(i2, i3);
    }

    @Override // org.bouncycastle.crypto.macs.SipHash
    public long doFinal() throws IllegalStateException, DataLengthException {
        throw new UnsupportedOperationException("doFinal() is not supported");
    }
}
