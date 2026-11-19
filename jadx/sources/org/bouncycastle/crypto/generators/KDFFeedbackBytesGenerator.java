package org.bouncycastle.crypto.generators;

import defpackage.a;
import defpackage.b21;
import defpackage.md;
import java.math.BigInteger;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.MacDerivationFunction;
import org.bouncycastle.crypto.params.KDFFeedbackParameters;
import org.bouncycastle.crypto.params.KeyParameter;

/* JADX INFO: loaded from: classes5.dex */
public class KDFFeedbackBytesGenerator implements MacDerivationFunction {
    private static final BigInteger INTEGER_MAX = BigInteger.valueOf(2147483647L);
    private static final BigInteger TWO = BigInteger.valueOf(2);
    private byte[] fixedInputData;
    private int generatedBytes;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f77624h;
    private byte[] ios;
    private byte[] iv;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private byte[] f77625k;
    private int maxSizeExcl;
    private final Mac prf;
    private boolean useCounter;

    public KDFFeedbackBytesGenerator(Mac mac) {
        this.prf = mac;
        int macSize = mac.getMacSize();
        this.f77624h = macSize;
        this.f77625k = new byte[macSize];
    }

    private void generateNext() {
        int i2 = this.generatedBytes;
        Mac mac = this.prf;
        if (i2 == 0) {
            byte[] bArr = this.iv;
            mac.update(bArr, 0, bArr.length);
        } else {
            byte[] bArr2 = this.f77625k;
            mac.update(bArr2, 0, bArr2.length);
        }
        if (this.useCounter) {
            int i3 = (this.generatedBytes / this.f77624h) + 1;
            byte[] bArr3 = this.ios;
            int length = bArr3.length;
            if (length != 1) {
                if (length != 2) {
                    if (length != 3) {
                        if (length != 4) {
                            md.k("Unsupported size of counter i");
                            return;
                        }
                        bArr3[0] = (byte) (i3 >>> 24);
                    }
                    bArr3[bArr3.length - 3] = (byte) (i3 >>> 16);
                }
                bArr3[bArr3.length - 2] = (byte) (i3 >>> 8);
            }
            bArr3[bArr3.length - 1] = (byte) i3;
            this.prf.update(bArr3, 0, bArr3.length);
        }
        Mac mac2 = this.prf;
        byte[] bArr4 = this.fixedInputData;
        mac2.update(bArr4, 0, bArr4.length);
        this.prf.doFinal(this.f77625k, 0);
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int i2, int i3) throws DataLengthException, IllegalArgumentException {
        int i4 = this.generatedBytes;
        int i5 = i4 + i3;
        if (i5 < 0 || i5 >= this.maxSizeExcl) {
            b21.q(a.i(this.maxSizeExcl, " bytes", new StringBuilder("Current KDFCTR may only be used for ")));
            return 0;
        }
        if (i4 % this.f77624h == 0) {
            generateNext();
        }
        int i6 = this.generatedBytes;
        int i7 = this.f77624h;
        int i8 = i6 % i7;
        int iMin = Math.min(i7 - (i6 % i7), i3);
        System.arraycopy(this.f77625k, i8, bArr, i2, iMin);
        this.generatedBytes += iMin;
        int i9 = i3 - iMin;
        while (true) {
            i2 += iMin;
            if (i9 <= 0) {
                return i3;
            }
            generateNext();
            iMin = Math.min(this.f77624h, i9);
            System.arraycopy(this.f77625k, 0, bArr, i2, iMin);
            this.generatedBytes += iMin;
            i9 -= iMin;
        }
    }

    @Override // org.bouncycastle.crypto.MacDerivationFunction
    public Mac getMac() {
        return this.prf;
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public void init(DerivationParameters derivationParameters) {
        if (!(derivationParameters instanceof KDFFeedbackParameters)) {
            md.n("Wrong type of arguments given");
            return;
        }
        KDFFeedbackParameters kDFFeedbackParameters = (KDFFeedbackParameters) derivationParameters;
        this.prf.init(new KeyParameter(kDFFeedbackParameters.getKI()));
        this.fixedInputData = kDFFeedbackParameters.getFixedInputData();
        int r = kDFFeedbackParameters.getR();
        this.ios = new byte[r / 8];
        int iIntValue = Integer.MAX_VALUE;
        if (kDFFeedbackParameters.useCounter()) {
            BigInteger bigIntegerMultiply = TWO.pow(r).multiply(BigInteger.valueOf(this.f77624h));
            if (bigIntegerMultiply.compareTo(INTEGER_MAX) != 1) {
                iIntValue = bigIntegerMultiply.intValue();
            }
        }
        this.maxSizeExcl = iIntValue;
        this.iv = kDFFeedbackParameters.getIV();
        this.useCounter = kDFFeedbackParameters.useCounter();
        this.generatedBytes = 0;
    }
}
