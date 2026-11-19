package org.bouncycastle.crypto.digests;

import defpackage.b21;
import defpackage.md;
import defpackage.mt;
import java.io.ByteArrayOutputStream;
import org.bouncycastle.crypto.Xof;

/* JADX INFO: loaded from: classes5.dex */
public class AsconXof implements Xof {
    private final int ASCON_PB_ROUNDS;
    private final String algorithmName;
    AsconParameters asconParameters;
    private long x0;
    private long x1;
    private long x2;
    private long x3;
    private long x4;
    private final ByteArrayOutputStream buffer = new ByteArrayOutputStream();
    private final int CRYPTO_BYTES = 32;

    /* JADX INFO: renamed from: org.bouncycastle.crypto.digests.AsconXof$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$crypto$digests$AsconXof$AsconParameters;

        static {
            int[] iArr = new int[AsconParameters.values().length];
            $SwitchMap$org$bouncycastle$crypto$digests$AsconXof$AsconParameters = iArr;
            try {
                iArr[AsconParameters.AsconXof.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$digests$AsconXof$AsconParameters[AsconParameters.AsconXofA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public enum AsconParameters {
        AsconXof,
        AsconXofA
    }

    public AsconXof(AsconParameters asconParameters) {
        String str;
        this.asconParameters = asconParameters;
        int i2 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$digests$AsconXof$AsconParameters[asconParameters.ordinal()];
        if (i2 == 1) {
            this.ASCON_PB_ROUNDS = 12;
            str = "Ascon-Xof";
        } else {
            if (i2 != 2) {
                md.n("Invalid parameter settings for Ascon Hash");
                throw null;
            }
            this.ASCON_PB_ROUNDS = 8;
            str = "Ascon-XofA";
        }
        this.algorithmName = str;
        reset();
    }

    private long LOADBYTES(byte[] bArr, int i2, int i3) {
        long j2 = 0;
        for (int i4 = 0; i4 < i3; i4++) {
            j2 |= (((long) bArr[i4 + i2]) & 255) << ((7 - i4) << 3);
        }
        return j2;
    }

    private void P(int i2) {
        if (i2 == 12) {
            ROUND(240L);
            ROUND(225L);
            ROUND(210L);
            ROUND(195L);
        }
        if (i2 >= 8) {
            ROUND(180L);
            ROUND(165L);
        }
        ROUND(150L);
        ROUND(135L);
        ROUND(120L);
        ROUND(105L);
        ROUND(90L);
        ROUND(75L);
    }

    private long PAD(int i2) {
        return 128 << (56 - (i2 << 3));
    }

    private long ROR(long j2, int i2) {
        return (j2 << (64 - i2)) | (j2 >>> i2);
    }

    private void ROUND(long j2) {
        long j3 = this.x0;
        long j4 = this.x1;
        long j5 = this.x2;
        long j6 = this.x3;
        long j7 = this.x4;
        long j8 = ((((j3 ^ j4) ^ j5) ^ j6) ^ j2) ^ ((((j3 ^ j5) ^ j7) ^ j2) & j4);
        long j9 = ((((j3 ^ j5) ^ j6) ^ j7) ^ j2) ^ (((j4 ^ j5) ^ j2) & (j4 ^ j6));
        long j10 = (((j4 ^ j5) ^ j7) ^ j2) ^ (j6 & j7);
        long j11 = ((j5 ^ (j3 ^ j4)) ^ j2) ^ ((~j3) & (j6 ^ j7));
        long j12 = ((j3 ^ j7) & j4) ^ ((j4 ^ j6) ^ j7);
        this.x0 = ROR(j8, 28) ^ (ROR(j8, 19) ^ j8);
        this.x1 = (ROR(j9, 39) ^ j9) ^ ROR(j9, 61);
        this.x2 = ~(ROR(j10, 6) ^ (ROR(j10, 1) ^ j10));
        this.x3 = (ROR(j11, 10) ^ j11) ^ ROR(j11, 17);
        this.x4 = ROR(j12, 41) ^ (ROR(j12, 7) ^ j12);
    }

    private void STOREBYTES(byte[] bArr, int i2, long j2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            bArr[i4 + i2] = (byte) (j2 >>> ((7 - i4) << 3));
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i2) {
        return doOutput(bArr, i2, getDigestSize());
    }

    @Override // org.bouncycastle.crypto.Xof
    public int doOutput(byte[] bArr, int i2, int i3) {
        long j2;
        int i4 = 0;
        if (i2 + 32 > bArr.length) {
            mt.n("output buffer is too short");
            return 0;
        }
        byte[] byteArray = this.buffer.toByteArray();
        int size = this.buffer.size();
        while (true) {
            j2 = this.x0;
            if (size < 8) {
                break;
            }
            this.x0 = j2 ^ LOADBYTES(byteArray, i4, 8);
            P(this.ASCON_PB_ROUNDS);
            i4 += 8;
            size -= 8;
        }
        long jLOADBYTES = j2 ^ LOADBYTES(byteArray, i4, size);
        this.x0 = jLOADBYTES;
        this.x0 = jLOADBYTES ^ PAD(size);
        P(12);
        int i5 = i2;
        int i6 = 32;
        while (true) {
            long j3 = this.x0;
            if (i6 <= 8) {
                AsconXof asconXof = this;
                asconXof.STOREBYTES(bArr, i5, j3, i6);
                asconXof.reset();
                return 32;
            }
            AsconXof asconXof2 = this;
            asconXof2.STOREBYTES(bArr, i5, j3, 8);
            asconXof2.P(asconXof2.ASCON_PB_ROUNDS);
            i5 += 8;
            i6 -= 8;
            this = asconXof2;
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return this.algorithmName;
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 8;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 32;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        long j2;
        this.buffer.reset();
        int i2 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$digests$AsconXof$AsconParameters[this.asconParameters.ordinal()];
        if (i2 == 1) {
            this.x0 = -5368810569253202922L;
            this.x1 = 3121280575360345120L;
            this.x2 = 7395939140700676632L;
            this.x3 = 6533890155656471820L;
            j2 = 5710016986865767350L;
        } else {
            if (i2 != 2) {
                return;
            }
            this.x0 = 4940560291654768690L;
            this.x1 = -3635129828240960206L;
            this.x2 = -597534922722107095L;
            this.x3 = 2623493988082852443L;
            j2 = -6283826724160825537L;
        }
        this.x4 = j2;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i2, int i3) {
        if (i2 + i3 <= bArr.length) {
            this.buffer.write(bArr, i2, i3);
        } else {
            b21.q("input buffer too short");
        }
    }

    @Override // org.bouncycastle.crypto.Xof
    public int doFinal(byte[] bArr, int i2, int i3) {
        return doOutput(bArr, i2, i3);
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b2) {
        this.buffer.write(b2);
    }
}
