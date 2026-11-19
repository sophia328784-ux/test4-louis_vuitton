package org.bouncycastle.crypto.generators;

import defpackage.a;
import defpackage.b21;
import defpackage.md;
import java.math.BigInteger;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.MacDerivationFunction;
import org.bouncycastle.crypto.params.KDFDoublePipelineIterationParameters;
import org.bouncycastle.crypto.params.KeyParameter;

/* JADX INFO: loaded from: classes5.dex */
public class KDFDoublePipelineIterationBytesGenerator implements MacDerivationFunction {
    private static final BigInteger INTEGER_MAX = BigInteger.valueOf(2147483647L);
    private static final BigInteger TWO = BigInteger.valueOf(2);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private byte[] f77621a;
    private byte[] fixedInputData;
    private int generatedBytes;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f77622h;
    private byte[] ios;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private byte[] f77623k;
    private int maxSizeExcl;
    private final Mac prf;
    private boolean useCounter;

    public KDFDoublePipelineIterationBytesGenerator(Mac mac) {
        this.prf = mac;
        int macSize = mac.getMacSize();
        this.f77622h = macSize;
        this.f77621a = new byte[macSize];
        this.f77623k = new byte[macSize];
    }

    private void generateNext() {
        int i2 = this.generatedBytes;
        Mac mac = this.prf;
        if (i2 == 0) {
            byte[] bArr = this.fixedInputData;
            mac.update(bArr, 0, bArr.length);
            this.prf.doFinal(this.f77621a, 0);
        } else {
            byte[] bArr2 = this.f77621a;
            mac.update(bArr2, 0, bArr2.length);
            this.prf.doFinal(this.f77621a, 0);
        }
        Mac mac2 = this.prf;
        byte[] bArr3 = this.f77621a;
        mac2.update(bArr3, 0, bArr3.length);
        if (this.useCounter) {
            int i3 = (this.generatedBytes / this.f77622h) + 1;
            byte[] bArr4 = this.ios;
            int length = bArr4.length;
            if (length != 1) {
                if (length != 2) {
                    if (length != 3) {
                        if (length != 4) {
                            md.k("Unsupported size of counter i");
                            return;
                        }
                        bArr4[0] = (byte) (i3 >>> 24);
                    }
                    bArr4[bArr4.length - 3] = (byte) (i3 >>> 16);
                }
                bArr4[bArr4.length - 2] = (byte) (i3 >>> 8);
            }
            bArr4[bArr4.length - 1] = (byte) i3;
            this.prf.update(bArr4, 0, bArr4.length);
        }
        Mac mac3 = this.prf;
        byte[] bArr5 = this.fixedInputData;
        mac3.update(bArr5, 0, bArr5.length);
        this.prf.doFinal(this.f77623k, 0);
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int i2, int i3) throws DataLengthException, IllegalArgumentException {
        int i4 = this.generatedBytes;
        int i5 = i4 + i3;
        if (i5 < 0 || i5 >= this.maxSizeExcl) {
            b21.q(a.i(this.maxSizeExcl, " bytes", new StringBuilder("Current KDFCTR may only be used for ")));
            return 0;
        }
        if (i4 % this.f77622h == 0) {
            generateNext();
        }
        int i6 = this.generatedBytes;
        int i7 = this.f77622h;
        int i8 = i6 % i7;
        int iMin = Math.min(i7 - (i6 % i7), i3);
        System.arraycopy(this.f77623k, i8, bArr, i2, iMin);
        this.generatedBytes += iMin;
        int i9 = i3 - iMin;
        while (true) {
            i2 += iMin;
            if (i9 <= 0) {
                return i3;
            }
            generateNext();
            iMin = Math.min(this.f77622h, i9);
            System.arraycopy(this.f77623k, 0, bArr, i2, iMin);
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
        if (!(derivationParameters instanceof KDFDoublePipelineIterationParameters)) {
            md.n("Wrong type of arguments given");
            return;
        }
        KDFDoublePipelineIterationParameters kDFDoublePipelineIterationParameters = (KDFDoublePipelineIterationParameters) derivationParameters;
        this.prf.init(new KeyParameter(kDFDoublePipelineIterationParameters.getKI()));
        this.fixedInputData = kDFDoublePipelineIterationParameters.getFixedInputData();
        int r = kDFDoublePipelineIterationParameters.getR();
        this.ios = new byte[r / 8];
        int iIntValue = Integer.MAX_VALUE;
        if (kDFDoublePipelineIterationParameters.useCounter()) {
            BigInteger bigIntegerMultiply = TWO.pow(r).multiply(BigInteger.valueOf(this.f77622h));
            if (bigIntegerMultiply.compareTo(INTEGER_MAX) != 1) {
                iIntValue = bigIntegerMultiply.intValue();
            }
        }
        this.maxSizeExcl = iIntValue;
        this.useCounter = kDFDoublePipelineIterationParameters.useCounter();
        this.generatedBytes = 0;
    }
}
