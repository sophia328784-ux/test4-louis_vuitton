package com.networkbench.agent.impl.util.a;

import defpackage.n00;
import defpackage.v7;
import java.io.IOException;
import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoException;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.digests.SM3Digest;
import org.bouncycastle.crypto.params.ECDomainParameters;
import org.bouncycastle.crypto.params.ECKeyParameters;
import org.bouncycastle.crypto.params.ECPrivateKeyParameters;
import org.bouncycastle.crypto.params.ECPublicKeyParameters;
import org.bouncycastle.crypto.params.ParametersWithID;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.crypto.signers.DSAKCalculator;
import org.bouncycastle.crypto.signers.RandomDSAKCalculator;
import org.bouncycastle.math.ec.ECAlgorithms;
import org.bouncycastle.math.ec.ECConstants;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.ec.ECMultiplier;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.math.ec.FixedPointCombMultiplier;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.encoders.Hex;

/* JADX INFO: loaded from: classes5.dex */
public class e implements ECConstants {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f38279a = 32;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final DSAKCalculator f38280b = new RandomDSAKCalculator();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Digest f38281c = null;
    private ECDomainParameters d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ECPoint f38282e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ECKeyParameters f38283f;
    private byte[] g;

    private byte[] d(byte[] bArr) {
        this.f38281c.reset();
        a(this.f38281c, bArr);
        a(this.f38281c, this.d.getCurve().getA());
        a(this.f38281c, this.d.getCurve().getB());
        a(this.f38281c, this.d.getG().getAffineXCoord());
        a(this.f38281c, this.d.getG().getAffineYCoord());
        a(this.f38281c, this.f38282e.getAffineXCoord());
        a(this.f38281c, this.f38282e.getAffineYCoord());
        byte[] bArr2 = new byte[this.f38281c.getDigestSize()];
        this.f38281c.doFinal(bArr2, 0);
        return bArr2;
    }

    public void a(boolean z, Digest digest, CipherParameters cipherParameters) throws RuntimeException {
        if (digest.getDigestSize() != 32) {
            v7.h("Digest size must be 32");
            return;
        }
        this.f38281c = digest;
        if (cipherParameters instanceof ParametersWithID) {
            ParametersWithID parametersWithID = (ParametersWithID) cipherParameters;
            CipherParameters parameters = parametersWithID.getParameters();
            this.g = parametersWithID.getID();
            cipherParameters = parameters;
        } else {
            this.g = Hex.decode("31323334353637383132333435363738");
        }
        if (!z) {
            ECKeyParameters eCKeyParameters = (ECKeyParameters) cipherParameters;
            this.f38283f = eCKeyParameters;
            this.d = eCKeyParameters.getParameters();
            this.f38282e = ((ECPublicKeyParameters) this.f38283f).getQ();
            return;
        }
        if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            ECKeyParameters eCKeyParameters2 = (ECKeyParameters) parametersWithRandom.getParameters();
            this.f38283f = eCKeyParameters2;
            ECDomainParameters parameters2 = eCKeyParameters2.getParameters();
            this.d = parameters2;
            this.f38280b.init(parameters2.getN(), parametersWithRandom.getRandom());
        } else {
            ECKeyParameters eCKeyParameters3 = (ECKeyParameters) cipherParameters;
            this.f38283f = eCKeyParameters3;
            ECDomainParameters parameters3 = eCKeyParameters3.getParameters();
            this.d = parameters3;
            this.f38280b.init(parameters3.getN(), CryptoServicesRegistrar.getSecureRandom());
        }
        this.f38282e = b().multiply(this.d.getG(), ((ECPrivateKeyParameters) this.f38283f).getD()).normalize();
    }

    public BigInteger b(byte[] bArr) {
        return new BigInteger(1, bArr);
    }

    public BigInteger[] c(byte[] bArr) throws IOException {
        ASN1Sequence aSN1Sequence = ASN1Sequence.getInstance(ASN1Primitive.fromByteArray(bArr));
        if (aSN1Sequence.size() != 2) {
            return null;
        }
        BigInteger value = ASN1Integer.getInstance(aSN1Sequence.getObjectAt(0)).getValue();
        BigInteger value2 = ASN1Integer.getInstance(aSN1Sequence.getObjectAt(1)).getValue();
        if (Arrays.constantTimeAreEqual(a(value, value2), bArr)) {
            return new BigInteger[]{value, value2};
        }
        return null;
    }

    public ECMultiplier b() {
        return new FixedPointCombMultiplier();
    }

    private byte[] c() {
        byte[] bArr = new byte[this.f38281c.getDigestSize()];
        this.f38281c.doFinal(bArr, 0);
        a();
        return bArr;
    }

    public void a(boolean z, CipherParameters cipherParameters) {
        a(z, new SM3Digest(), cipherParameters);
    }

    public byte[] a(byte[] bArr, int i2, int i3) {
        byte[] bArrD = d(this.g);
        this.f38281c.update(bArrD, 0, bArrD.length);
        this.f38281c.update(bArr, i2, i3);
        byte[] bArr2 = new byte[32];
        this.f38281c.doFinal(bArr2, 0);
        return bArr2;
    }

    public boolean a(byte[] bArr, byte[] bArr2) {
        try {
            BigInteger[] bigIntegerArrC = c(bArr2);
            if (bigIntegerArrC != null) {
                return a(bArr, bigIntegerArrC[0], bigIntegerArrC[1]);
            }
        } catch (IOException unused) {
        }
        return false;
    }

    public void a() {
        this.f38281c.reset();
    }

    public byte[] a(byte[] bArr) throws CryptoException {
        BigInteger n = this.d.getN();
        BigInteger bigIntegerB = b(bArr);
        BigInteger d = ((ECPrivateKeyParameters) this.f38283f).getD();
        ECMultiplier eCMultiplierB = b();
        while (true) {
            BigInteger bigIntegerNextK = this.f38280b.nextK();
            BigInteger bigIntegerMod = bigIntegerB.add(eCMultiplierB.multiply(this.d.getG(), bigIntegerNextK).normalize().getAffineXCoord().toBigInteger()).mod(n);
            BigInteger bigInteger = ECConstants.ZERO;
            if (!bigIntegerMod.equals(bigInteger) && !bigIntegerMod.add(bigIntegerNextK).equals(n)) {
                BigInteger bigIntegerMod2 = d.add(ECConstants.ONE).modInverse(n).multiply(bigIntegerNextK.subtract(bigIntegerMod.multiply(d)).mod(n)).mod(n);
                if (!bigIntegerMod2.equals(bigInteger)) {
                    try {
                        return a(bigIntegerMod, bigIntegerMod2);
                    } catch (IOException e2) {
                        throw new CryptoException(n00.o(e2, new StringBuilder("unable to encode signature: ")), e2);
                    }
                }
            }
        }
    }

    private boolean a(byte[] bArr, BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger n = this.d.getN();
        BigInteger bigInteger3 = ECConstants.ONE;
        if (bigInteger.compareTo(bigInteger3) < 0 || bigInteger.compareTo(n) >= 0 || bigInteger2.compareTo(bigInteger3) < 0 || bigInteger2.compareTo(n) >= 0) {
            return false;
        }
        BigInteger bigIntegerB = b(bArr);
        BigInteger bigIntegerMod = bigInteger.add(bigInteger2).mod(n);
        if (bigIntegerMod.equals(ECConstants.ZERO)) {
            return false;
        }
        ECPoint eCPointNormalize = ECAlgorithms.sumOfTwoMultiplies(this.d.getG(), bigInteger2, ((ECPublicKeyParameters) this.f38283f).getQ(), bigIntegerMod).normalize();
        if (eCPointNormalize.isInfinity()) {
            return false;
        }
        return bigIntegerB.add(eCPointNormalize.getAffineXCoord().toBigInteger()).mod(n).equals(bigInteger);
    }

    private void a(Digest digest, byte[] bArr) {
        int length = bArr.length * 8;
        digest.update((byte) ((length >> 8) & 255));
        digest.update((byte) (length & 255));
        digest.update(bArr, 0, bArr.length);
    }

    private void a(Digest digest, ECFieldElement eCFieldElement) {
        byte[] encoded = eCFieldElement.getEncoded();
        digest.update(encoded, 0, encoded.length);
    }

    public byte[] a(BigInteger bigInteger, BigInteger bigInteger2) throws IOException {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(new ASN1Integer(bigInteger));
        aSN1EncodableVector.add(new ASN1Integer(bigInteger2));
        return new DERSequence(aSN1EncodableVector).getEncoded(ASN1Encoding.DER);
    }
}
