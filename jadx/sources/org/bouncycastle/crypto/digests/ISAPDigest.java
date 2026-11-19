package org.bouncycastle.crypto.digests;

import defpackage.b21;
import defpackage.mt;
import java.io.ByteArrayOutputStream;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class ISAPDigest implements Digest {
    private ByteArrayOutputStream buffer = new ByteArrayOutputStream();
    private long t0;
    private long t1;
    private long t2;
    private long t3;
    private long t4;
    private long x0;
    private long x1;
    private long x2;
    private long x3;
    private long x4;

    private void P12() {
        ROUND(240L);
        ROUND(225L);
        ROUND(210L);
        ROUND(195L);
        ROUND(180L);
        ROUND(165L);
        ROUND(150L);
        ROUND(135L);
        ROUND(120L);
        ROUND(105L);
        ROUND(90L);
        ROUND(75L);
    }

    private long ROTR(long j2, long j3) {
        return (j2 << ((int) (64 - j3))) | (j2 >>> ((int) j3));
    }

    private void ROUND(long j2) {
        long j3 = this.x0;
        long j4 = this.x1;
        long j5 = this.x2;
        long j6 = this.x3;
        long j7 = this.x4;
        long j8 = ((((j3 ^ j4) ^ j5) ^ j6) ^ j2) ^ ((((j3 ^ j5) ^ j7) ^ j2) & j4);
        this.t0 = j8;
        this.t1 = ((((j3 ^ j5) ^ j6) ^ j7) ^ j2) ^ (((j4 ^ j5) ^ j2) & (j4 ^ j6));
        this.t2 = (((j4 ^ j5) ^ j7) ^ j2) ^ (j6 & j7);
        this.t3 = ((j5 ^ (j3 ^ j4)) ^ j2) ^ ((~j3) & (j6 ^ j7));
        this.t4 = ((j3 ^ j7) & j4) ^ ((j4 ^ j6) ^ j7);
        this.x0 = (ROTR(j8, 19L) ^ j8) ^ ROTR(this.t0, 28L);
        long j9 = this.t1;
        this.x1 = (j9 ^ ROTR(j9, 39L)) ^ ROTR(this.t1, 61L);
        long j10 = this.t2;
        this.x2 = ~((j10 ^ ROTR(j10, 1L)) ^ ROTR(this.t2, 6L));
        long j11 = this.t3;
        this.x3 = (j11 ^ ROTR(j11, 10L)) ^ ROTR(this.t3, 17L);
        long j12 = this.t4;
        this.x4 = (j12 ^ ROTR(j12, 7L)) ^ ROTR(this.t4, 41L);
    }

    public long U64BIG(long j2) {
        return (ROTR(j2, 56L) & 1095216660735L) | (ROTR(j2, 8L) & (-72057589759737856L)) | (ROTR(j2, 24L) & 71776119077928960L) | (ROTR(j2, 40L) & 280375465148160L);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i2) {
        long j2;
        int i3 = 0;
        if (i2 + 32 > bArr.length) {
            mt.n("output buffer is too short");
            return 0;
        }
        this.t4 = 0L;
        this.t3 = 0L;
        this.t2 = 0L;
        this.t1 = 0L;
        this.t0 = 0L;
        this.x0 = -1255492011513352131L;
        this.x1 = -8380609354527731710L;
        this.x2 = -5437372128236807582L;
        this.x3 = 4834782570098516968L;
        this.x4 = 3787428097924915520L;
        byte[] byteArray = this.buffer.toByteArray();
        int length = byteArray.length;
        int i4 = length >> 3;
        long[] jArr = new long[i4];
        Pack.littleEndianToLong(byteArray, 0, jArr, 0, i4);
        int i5 = 0;
        while (true) {
            j2 = this.x0;
            if (length < 8) {
                break;
            }
            this.x0 = j2 ^ U64BIG(jArr[i5]);
            P12();
            length -= 8;
            i5++;
        }
        long j3 = j2 ^ (128 << ((7 - length) << 3));
        while (true) {
            this.x0 = j3;
            if (length <= 0) {
                break;
            }
            length--;
            j3 = this.x0 ^ ((((long) byteArray[(i5 << 3) + length]) & 255) << ((7 - length) << 3));
        }
        P12();
        long[] jArr2 = new long[4];
        while (true) {
            long jU64BIG = U64BIG(this.x0);
            if (i3 >= 3) {
                jArr2[i3] = jU64BIG;
                Pack.longToLittleEndian(jArr2, bArr, i2);
                this.buffer.reset();
                return 32;
            }
            jArr2[i3] = jU64BIG;
            P12();
            i3++;
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "ISAP Hash";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 32;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.buffer.reset();
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i2, int i3) {
        if (i2 + i3 <= bArr.length) {
            this.buffer.write(bArr, i2, i3);
        } else {
            b21.q("input buffer too short");
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b2) {
        this.buffer.write(b2);
    }
}
