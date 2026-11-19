package org.bouncycastle.crypto.macs;

import defpackage.md;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class SipHash implements Mac {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final int f77627c;
    protected final int d;
    protected long k0;
    protected long k1;
    protected long m;
    protected long v0;
    protected long v1;
    protected long v2;
    protected long v3;
    protected int wordCount;
    protected int wordPos;

    public SipHash() {
        this.m = 0L;
        this.wordPos = 0;
        this.wordCount = 0;
        this.f77627c = 2;
        this.d = 4;
    }

    public static long rotateLeft(long j2, int i2) {
        return (j2 >>> (-i2)) | (j2 << i2);
    }

    public void applySipRounds(int i2) {
        long jRotateLeft = this.v0;
        long jRotateLeft2 = this.v1;
        long jRotateLeft3 = this.v2;
        long jRotateLeft4 = this.v3;
        for (int i3 = 0; i3 < i2; i3++) {
            long j2 = jRotateLeft + jRotateLeft2;
            long j3 = jRotateLeft3 + jRotateLeft4;
            long jRotateLeft5 = rotateLeft(jRotateLeft2, 13) ^ j2;
            long jRotateLeft6 = rotateLeft(jRotateLeft4, 16) ^ j3;
            long j4 = j3 + jRotateLeft5;
            jRotateLeft = rotateLeft(j2, 32) + jRotateLeft6;
            jRotateLeft2 = rotateLeft(jRotateLeft5, 17) ^ j4;
            jRotateLeft4 = rotateLeft(jRotateLeft6, 21) ^ jRotateLeft;
            jRotateLeft3 = rotateLeft(j4, 32);
        }
        this.v0 = jRotateLeft;
        this.v1 = jRotateLeft2;
        this.v2 = jRotateLeft3;
        this.v3 = jRotateLeft4;
    }

    public long doFinal() throws IllegalStateException, DataLengthException {
        long j2 = this.m;
        int i2 = this.wordPos;
        this.m = ((j2 >>> ((7 - i2) << 3)) >>> 8) | ((((long) ((this.wordCount << 3) + i2)) & 255) << 56);
        processMessageWord();
        this.v2 ^= 255;
        applySipRounds(this.d);
        long j3 = ((this.v0 ^ this.v1) ^ this.v2) ^ this.v3;
        reset();
        return j3;
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return "SipHash-" + this.f77627c + "-" + this.d;
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return 8;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) throws IllegalArgumentException {
        if (!(cipherParameters instanceof KeyParameter)) {
            md.n("'params' must be an instance of KeyParameter");
            return;
        }
        byte[] key = ((KeyParameter) cipherParameters).getKey();
        if (key.length != 16) {
            md.n("'params' must be a 128-bit key");
            return;
        }
        this.k0 = Pack.littleEndianToLong(key, 0);
        this.k1 = Pack.littleEndianToLong(key, 8);
        reset();
    }

    public void processMessageWord() {
        this.wordCount++;
        this.v3 ^= this.m;
        applySipRounds(this.f77627c);
        this.v0 ^= this.m;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() {
        long j2 = this.k0;
        this.v0 = 8317987319222330741L ^ j2;
        long j3 = this.k1;
        this.v1 = 7237128888997146477L ^ j3;
        this.v2 = j2 ^ 7816392313619706465L;
        this.v3 = 8387220255154660723L ^ j3;
        this.m = 0L;
        this.wordPos = 0;
        this.wordCount = 0;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int i2, int i3) throws IllegalStateException, DataLengthException {
        int i4 = i3 & (-8);
        int i5 = this.wordPos;
        char c2 = '8';
        long j2 = 255;
        int i6 = 0;
        if (i5 == 0) {
            while (i6 < i4) {
                this.m = Pack.littleEndianToLong(bArr, i2 + i6);
                processMessageWord();
                i6 += 8;
            }
            while (i6 < i3) {
                long j3 = this.m >>> 8;
                this.m = j3;
                this.m = j3 | ((((long) bArr[i2 + i6]) & 255) << 56);
                i6++;
            }
            this.wordPos = i3 - i4;
            return;
        }
        int i7 = i5 << 3;
        int i8 = 0;
        while (i8 < i4) {
            long jLittleEndianToLong = Pack.littleEndianToLong(bArr, i2 + i8);
            this.m = (this.m >>> (-i7)) | (jLittleEndianToLong << i7);
            processMessageWord();
            this.m = jLittleEndianToLong;
            i8 += 8;
            c2 = c2;
            j2 = j2;
        }
        char c3 = c2;
        long j4 = j2;
        while (i8 < i3) {
            long j5 = this.m >>> 8;
            this.m = j5;
            this.m = j5 | ((((long) bArr[i2 + i8]) & j4) << c3);
            int i9 = this.wordPos + 1;
            this.wordPos = i9;
            if (i9 == 8) {
                processMessageWord();
                this.wordPos = 0;
            }
            i8++;
        }
    }

    public SipHash(int i2, int i3) {
        this.m = 0L;
        this.wordPos = 0;
        this.wordCount = 0;
        this.f77627c = i2;
        this.d = i3;
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i2) throws IllegalStateException, DataLengthException {
        Pack.longToLittleEndian(doFinal(), bArr, i2);
        return 8;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b2) throws IllegalStateException {
        this.m = (this.m >>> 8) | ((((long) b2) & 255) << 56);
        int i2 = this.wordPos + 1;
        this.wordPos = i2;
        if (i2 == 8) {
            processMessageWord();
            this.wordPos = 0;
        }
    }
}
