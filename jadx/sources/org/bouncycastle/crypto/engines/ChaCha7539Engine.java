package org.bouncycastle.crypto.engines;

import defpackage.a61;
import defpackage.md;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class ChaCha7539Engine extends Salsa20Engine {
    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    public void advanceCounter(long j2) {
        int i2 = (int) (j2 >>> 32);
        int i3 = (int) j2;
        if (i2 > 0) {
            md.k("attempt to increase counter past 2^32.");
            return;
        }
        int[] iArr = this.engineState;
        int i4 = iArr[12];
        int i5 = i3 + i4;
        iArr[12] = i5;
        if (i4 == 0 || i5 >= i4) {
            return;
        }
        md.k("attempt to increase counter past 2^32.");
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    public void generateKeyStream(byte[] bArr) {
        ChaChaEngine.chachaCore(this.rounds, this.engineState, this.x);
        Pack.intToLittleEndian(this.x, bArr, 0);
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine, org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "ChaCha7539";
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    public long getCounter() {
        return ((long) this.engineState[12]) & BodyPartID.bodyIdMax;
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    public int getNonceSize() {
        return 12;
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    public void resetCounter() {
        this.engineState[12] = 0;
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    public void retreatCounter(long j2) {
        int i2 = (int) (j2 >>> 32);
        int i3 = (int) j2;
        if (i2 != 0) {
            md.k("attempt to reduce counter past zero.");
            return;
        }
        int[] iArr = this.engineState;
        int i4 = iArr[12];
        if ((((long) i4) & BodyPartID.bodyIdMax) >= (BodyPartID.bodyIdMax & ((long) i3))) {
            iArr[12] = i4 - i3;
        } else {
            md.k("attempt to reduce counter past zero.");
        }
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    public void setKey(byte[] bArr, byte[] bArr2) {
        if (bArr != null) {
            if (bArr.length != 32) {
                a61.l(getAlgorithmName(), " requires 256 bit key");
                return;
            } else {
                packTauOrSigma(bArr.length, this.engineState, 0);
                Pack.littleEndianToInt(bArr, 0, this.engineState, 4, 8);
            }
        }
        Pack.littleEndianToInt(bArr2, 0, this.engineState, 13, 3);
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    public void advanceCounter() {
        int[] iArr = this.engineState;
        int i2 = iArr[12] + 1;
        iArr[12] = i2;
        if (i2 != 0) {
            return;
        }
        md.k("attempt to increase counter past 2^32.");
    }

    @Override // org.bouncycastle.crypto.engines.Salsa20Engine
    public void retreatCounter() {
        int[] iArr = this.engineState;
        int i2 = iArr[12];
        if (i2 != 0) {
            iArr[12] = i2 - 1;
        } else {
            md.k("attempt to reduce counter past zero.");
        }
    }
}
