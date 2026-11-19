package org.bouncycastle.crypto.digests;

import defpackage.b21;
import defpackage.md;
import defpackage.mt;
import defpackage.n00;
import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.crypto.engines.SparkleEngine;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class SparkleDigest implements ExtendedDigest {
    private static final int RATE_BYTES = 16;
    private static final int RATE_WORDS = 4;
    private final int DIGEST_BYTES;
    private final int SPARKLE_STEPS_BIG;
    private final int SPARKLE_STEPS_SLIM;
    private final int STATE_WORDS;
    private String algorithmName;
    private final byte[] m_buf = new byte[16];
    private int m_bufPos = 0;
    private final int[] state;

    /* JADX INFO: renamed from: org.bouncycastle.crypto.digests.SparkleDigest$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$crypto$digests$SparkleDigest$SparkleParameters;

        static {
            int[] iArr = new int[SparkleParameters.values().length];
            $SwitchMap$org$bouncycastle$crypto$digests$SparkleDigest$SparkleParameters = iArr;
            try {
                iArr[SparkleParameters.ESCH256.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$digests$SparkleDigest$SparkleParameters[SparkleParameters.ESCH384.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static class Friend {
        private static final Friend INSTANCE = new Friend();

        private Friend() {
        }
    }

    public enum SparkleParameters {
        ESCH256,
        ESCH384
    }

    public SparkleDigest(SparkleParameters sparkleParameters) {
        int i2 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$digests$SparkleDigest$SparkleParameters[sparkleParameters.ordinal()];
        if (i2 == 1) {
            this.algorithmName = "ESCH-256";
            this.DIGEST_BYTES = 32;
            this.SPARKLE_STEPS_SLIM = 7;
            this.SPARKLE_STEPS_BIG = 11;
            this.STATE_WORDS = 12;
        } else {
            if (i2 != 2) {
                md.n("Invalid definition of SCHWAEMM instance");
                throw null;
            }
            this.algorithmName = "ESCH-384";
            this.DIGEST_BYTES = 48;
            this.SPARKLE_STEPS_SLIM = 8;
            this.SPARKLE_STEPS_BIG = 12;
            this.STATE_WORDS = 16;
        }
        this.state = new int[this.STATE_WORDS];
    }

    private static int ELL(int i2) {
        return (i2 & 65535) ^ Integers.rotateRight(i2, 16);
    }

    private void processBlock(byte[] bArr, int i2, int i3) {
        int iLittleEndianToInt = Pack.littleEndianToInt(bArr, i2);
        int iLittleEndianToInt2 = Pack.littleEndianToInt(bArr, i2 + 4);
        int iLittleEndianToInt3 = Pack.littleEndianToInt(bArr, i2 + 8);
        int iLittleEndianToInt4 = Pack.littleEndianToInt(bArr, i2 + 12);
        int iELL = ELL(iLittleEndianToInt ^ iLittleEndianToInt3);
        int iELL2 = ELL(iLittleEndianToInt2 ^ iLittleEndianToInt4);
        int[] iArr = this.state;
        iArr[0] = (iLittleEndianToInt ^ iELL2) ^ iArr[0];
        iArr[1] = (iLittleEndianToInt2 ^ iELL) ^ iArr[1];
        iArr[2] = iArr[2] ^ (iLittleEndianToInt3 ^ iELL2);
        iArr[3] = (iLittleEndianToInt4 ^ iELL) ^ iArr[3];
        iArr[4] = iArr[4] ^ iELL2;
        iArr[5] = iArr[5] ^ iELL;
        if (this.STATE_WORDS != 16) {
            SparkleEngine.sparkle_opt12(Friend.INSTANCE, this.state, i3);
            return;
        }
        iArr[6] = iArr[6] ^ iELL2;
        iArr[7] = iELL ^ iArr[7];
        SparkleEngine.sparkle_opt16(Friend.INSTANCE, this.state, i3);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i2) {
        if (i2 > bArr.length - this.DIGEST_BYTES) {
            mt.n(n00.r(this.algorithmName, " input buffer too short", new StringBuilder()));
            return 0;
        }
        int i3 = this.m_bufPos;
        int[] iArr = this.state;
        if (i3 < 16) {
            int i4 = (this.STATE_WORDS >> 1) - 1;
            iArr[i4] = iArr[i4] ^ 16777216;
            this.m_buf[i3] = -128;
            while (true) {
                int i5 = this.m_bufPos + 1;
                this.m_bufPos = i5;
                if (i5 >= 16) {
                    break;
                }
                this.m_buf[i5] = 0;
            }
        } else {
            int i6 = (this.STATE_WORDS >> 1) - 1;
            iArr[i6] = iArr[i6] ^ 33554432;
        }
        processBlock(this.m_buf, 0, this.SPARKLE_STEPS_BIG);
        Pack.intToLittleEndian(this.state, 0, 4, bArr, i2);
        if (this.STATE_WORDS == 16) {
            SparkleEngine.sparkle_opt16(Friend.INSTANCE, this.state, this.SPARKLE_STEPS_SLIM);
            Pack.intToLittleEndian(this.state, 0, 4, bArr, i2 + 16);
            SparkleEngine.sparkle_opt16(Friend.INSTANCE, this.state, this.SPARKLE_STEPS_SLIM);
            Pack.intToLittleEndian(this.state, 0, 4, bArr, i2 + 32);
        } else {
            SparkleEngine.sparkle_opt12(Friend.INSTANCE, this.state, this.SPARKLE_STEPS_SLIM);
            Pack.intToLittleEndian(this.state, 0, 4, bArr, i2 + 16);
        }
        reset();
        return this.DIGEST_BYTES;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return this.algorithmName;
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return this.DIGEST_BYTES;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        Arrays.fill(this.state, 0);
        Arrays.fill(this.m_buf, (byte) 0);
        this.m_bufPos = 0;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i2, int i3) {
        if (i2 > bArr.length - i3) {
            b21.q(n00.r(this.algorithmName, " input buffer too short", new StringBuilder()));
            return;
        }
        if (i3 < 1) {
            return;
        }
        int i4 = this.m_bufPos;
        int i5 = 16 - i4;
        if (i3 <= i5) {
            System.arraycopy(bArr, i2, this.m_buf, i4, i3);
            this.m_bufPos += i3;
            return;
        }
        if (i4 > 0) {
            System.arraycopy(bArr, i2, this.m_buf, i4, i5);
            processBlock(this.m_buf, 0, this.SPARKLE_STEPS_SLIM);
        } else {
            i5 = 0;
        }
        while (true) {
            int i6 = i3 - i5;
            if (i6 <= 16) {
                System.arraycopy(bArr, i2 + i5, this.m_buf, 0, i6);
                this.m_bufPos = i6;
                return;
            } else {
                processBlock(bArr, i2 + i5, this.SPARKLE_STEPS_SLIM);
                i5 += 16;
            }
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b2) {
        if (this.m_bufPos == 16) {
            processBlock(this.m_buf, 0, this.SPARKLE_STEPS_SLIM);
            this.m_bufPos = 0;
        }
        byte[] bArr = this.m_buf;
        int i2 = this.m_bufPos;
        this.m_bufPos = i2 + 1;
        bArr[i2] = b2;
    }
}
