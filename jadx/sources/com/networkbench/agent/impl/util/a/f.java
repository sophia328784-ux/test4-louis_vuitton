package com.networkbench.agent.impl.util.a;

import java.io.IOException;
import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import java.security.spec.ECFieldFp;
import java.security.spec.ECParameterSpec;
import java.security.spec.EllipticCurve;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.engines.SM2Engine;
import org.bouncycastle.crypto.params.ECDomainParameters;
import org.bouncycastle.crypto.params.ECPrivateKeyParameters;
import org.bouncycastle.crypto.params.ECPublicKeyParameters;
import org.bouncycastle.crypto.params.ParametersWithID;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.crypto.signers.SM2Signer;
import org.bouncycastle.jcajce.provider.asymmetric.ec.BCECPrivateKey;
import org.bouncycastle.jcajce.provider.asymmetric.ec.BCECPublicKey;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.math.ec.custom.gm.SM2P256V1Curve;

/* JADX INFO: loaded from: classes5.dex */
public class f extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SM2P256V1Curve f38284a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final BigInteger f38285b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final BigInteger f38286c;
    public static final BigInteger d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final BigInteger f38287e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final BigInteger f38288f;
    public static final BigInteger g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final BigInteger f38289h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final ECPoint f38290i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final ECDomainParameters f38291j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f38292k;
    public static final EllipticCurve l;
    public static final java.security.spec.ECPoint m;
    public static final ECParameterSpec n;
    public static final int o = 32;

    static {
        SM2P256V1Curve sM2P256V1Curve = new SM2P256V1Curve();
        f38284a = sM2P256V1Curve;
        BigInteger q = sM2P256V1Curve.getQ();
        f38285b = q;
        BigInteger bigInteger = sM2P256V1Curve.getA().toBigInteger();
        f38286c = bigInteger;
        BigInteger bigInteger2 = sM2P256V1Curve.getB().toBigInteger();
        d = bigInteger2;
        BigInteger order = sM2P256V1Curve.getOrder();
        f38287e = order;
        BigInteger cofactor = sM2P256V1Curve.getCofactor();
        f38288f = cofactor;
        BigInteger bigInteger3 = new BigInteger("32C4AE2C1F1981195F9904466A39C9948FE30BBFF2660BE1715A4589334C74C7", 16);
        g = bigInteger3;
        BigInteger bigInteger4 = new BigInteger("BC3736A2F4F6779C59BDCEE36B692153D0A9877CC62A474002DF32E52139F0A0", 16);
        f38289h = bigInteger4;
        ECPoint eCPointCreatePoint = sM2P256V1Curve.createPoint(bigInteger3, bigInteger4);
        f38290i = eCPointCreatePoint;
        ECDomainParameters eCDomainParameters = new ECDomainParameters(sM2P256V1Curve, eCPointCreatePoint, order, cofactor);
        f38291j = eCDomainParameters;
        f38292k = a.a(eCDomainParameters);
        EllipticCurve ellipticCurve = new EllipticCurve(new ECFieldFp(q), bigInteger, bigInteger2);
        l = ellipticCurve;
        java.security.spec.ECPoint eCPoint = new java.security.spec.ECPoint(eCPointCreatePoint.getAffineXCoord().toBigInteger(), eCPointCreatePoint.getAffineYCoord().toBigInteger());
        m = eCPoint;
        n = new ECParameterSpec(ellipticCurve, eCPoint, order, cofactor.intValue());
    }

    public static c a(SM2Engine.Mode mode, int i2, int i3, byte[] bArr) throws Exception {
        int i4 = (i2 * 2) + 1;
        byte[] bArr2 = new byte[i4];
        int length = (bArr.length - i4) - i3;
        byte[] bArr3 = new byte[length];
        byte[] bArr4 = new byte[i3];
        System.arraycopy(bArr, 0, bArr2, 0, i4);
        if (mode == SM2Engine.Mode.C1C2C3) {
            System.arraycopy(bArr, i4, bArr3, 0, length);
            System.arraycopy(bArr, i4 + length, bArr4, 0, i3);
        } else {
            if (mode != SM2Engine.Mode.C1C3C2) {
                throw new Exception("Unsupported mode:" + mode);
            }
            System.arraycopy(bArr, i4, bArr4, 0, i3);
            System.arraycopy(bArr, i4 + i3, bArr3, 0, length);
        }
        c cVar = new c();
        cVar.a(bArr2);
        cVar.b(bArr3);
        cVar.c(bArr4);
        cVar.d(bArr);
        return cVar;
    }

    public static byte[] b(SM2Engine.Mode mode, int i2, int i3, byte[] bArr) throws Exception {
        byte[] bArr2 = new byte[i2];
        byte[] bArr3 = new byte[i2];
        int length = (((bArr.length - i2) - i2) - 1) - i3;
        byte[] bArr4 = new byte[length];
        byte[] bArr5 = new byte[i3];
        System.arraycopy(bArr, 1, bArr2, 0, i2);
        int i4 = i2 + 1;
        System.arraycopy(bArr, i4, bArr3, 0, i2);
        int i5 = i4 + i2;
        SM2Engine.Mode mode2 = SM2Engine.Mode.C1C2C3;
        if (mode == mode2) {
            System.arraycopy(bArr, i5, bArr4, 0, length);
            System.arraycopy(bArr, i5 + length, bArr5, 0, i3);
        } else {
            if (mode != SM2Engine.Mode.C1C3C2) {
                throw new Exception("Unsupported mode:" + mode);
            }
            System.arraycopy(bArr, i5, bArr5, 0, i3);
            System.arraycopy(bArr, i5 + i3, bArr4, 0, length);
        }
        ASN1Encodable[] aSN1EncodableArr = new ASN1Encodable[4];
        aSN1EncodableArr[0] = new ASN1Integer(new BigInteger(1, bArr2));
        aSN1EncodableArr[1] = new ASN1Integer(new BigInteger(1, bArr3));
        if (mode == mode2) {
            aSN1EncodableArr[2] = new DEROctetString(bArr4);
            aSN1EncodableArr[3] = new DEROctetString(bArr5);
        } else if (mode == SM2Engine.Mode.C1C3C2) {
            aSN1EncodableArr[2] = new DEROctetString(bArr5);
            aSN1EncodableArr[3] = new DEROctetString(bArr4);
        }
        return new DERSequence(aSN1EncodableArr).getEncoded(ASN1Encoding.DER);
    }

    public static byte[] c(SM2Engine.Mode mode, byte[] bArr) throws Exception {
        byte[] octets;
        byte[] octets2;
        ASN1Sequence aSN1Sequence = ASN1Sequence.getInstance(bArr);
        byte[] byteArray = ((ASN1Integer) aSN1Sequence.getObjectAt(0)).getValue().toByteArray();
        byte[] byteArray2 = ((ASN1Integer) aSN1Sequence.getObjectAt(1)).getValue().toByteArray();
        byte[] bArrF = f(byteArray);
        byte[] bArrF2 = f(byteArray2);
        SM2Engine.Mode mode2 = SM2Engine.Mode.C1C2C3;
        if (mode == mode2) {
            octets = ((DEROctetString) aSN1Sequence.getObjectAt(2)).getOctets();
            octets2 = ((DEROctetString) aSN1Sequence.getObjectAt(3)).getOctets();
        } else {
            if (mode != SM2Engine.Mode.C1C3C2) {
                throw new Exception("Unsupported mode:" + mode);
            }
            byte[] octets3 = ((DEROctetString) aSN1Sequence.getObjectAt(2)).getOctets();
            octets = ((DEROctetString) aSN1Sequence.getObjectAt(3)).getOctets();
            octets2 = octets3;
        }
        byte[] bArr2 = new byte[bArrF.length + 1 + bArrF2.length + octets.length + octets2.length];
        bArr2[0] = 4;
        System.arraycopy(bArrF, 0, bArr2, 1, bArrF.length);
        int length = 1 + bArrF.length;
        System.arraycopy(bArrF2, 0, bArr2, length, bArrF2.length);
        int length2 = length + bArrF2.length;
        if (mode == mode2) {
            System.arraycopy(octets, 0, bArr2, length2, octets.length);
            System.arraycopy(octets2, 0, bArr2, length2 + octets.length, octets2.length);
            return bArr2;
        }
        if (mode == SM2Engine.Mode.C1C3C2) {
            System.arraycopy(octets2, 0, bArr2, length2, octets2.length);
            System.arraycopy(octets, 0, bArr2, length2 + octets2.length, octets.length);
        }
        return bArr2;
    }

    public static byte[] d(byte[] bArr) {
        ASN1Sequence aSN1Sequence = ASN1Sequence.getInstance(bArr);
        byte[] byteArray = ((ASN1Integer) aSN1Sequence.getObjectAt(0)).getValue().toByteArray();
        byte[] byteArray2 = ((ASN1Integer) aSN1Sequence.getObjectAt(1)).getValue().toByteArray();
        byte[] bArrF = f(byteArray);
        byte[] bArrF2 = f(byteArray2);
        byte[] bArr2 = new byte[bArrF.length + bArrF2.length];
        System.arraycopy(bArrF, 0, bArr2, 0, bArrF.length);
        System.arraycopy(bArrF2, 0, bArr2, bArrF.length, bArrF2.length);
        return bArr2;
    }

    public static byte[] e(byte[] bArr) throws IOException {
        BigInteger bigInteger = new BigInteger(1, a(bArr, 0, 32));
        BigInteger bigInteger2 = new BigInteger(1, a(bArr, 32, 32));
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(new ASN1Integer(bigInteger));
        aSN1EncodableVector.add(new ASN1Integer(bigInteger2));
        return new DERSequence(aSN1EncodableVector).getEncoded(ASN1Encoding.DER);
    }

    private static byte[] f(byte[] bArr) {
        int length = bArr.length;
        int i2 = f38292k;
        if (length == i2) {
            return bArr;
        }
        byte[] bArr2 = new byte[i2];
        if (bArr.length > i2) {
            System.arraycopy(bArr, bArr.length - i2, bArr2, 0, i2);
            return bArr2;
        }
        System.arraycopy(bArr, 0, bArr2, i2 - bArr.length, bArr.length);
        return bArr2;
    }

    public static byte[] a(BCECPrivateKey bCECPrivateKey) {
        return f(bCECPrivateKey.getD().toByteArray());
    }

    public static byte[] a(BCECPublicKey bCECPublicKey) {
        byte[] encoded = bCECPublicKey.getQ().getEncoded(false);
        int i2 = f38292k * 2;
        byte[] bArr = new byte[i2];
        System.arraycopy(encoded, 1, bArr, 0, i2);
        return bArr;
    }

    public static byte[] a(BCECPublicKey bCECPublicKey, byte[] bArr) throws InvalidCipherTextException {
        return a(SM2Engine.Mode.C1C3C2, a.a(bCECPublicKey), bArr);
    }

    public static byte[] a(SM2Engine.Mode mode, BCECPublicKey bCECPublicKey, byte[] bArr) throws InvalidCipherTextException {
        return a(mode, a.a(bCECPublicKey), bArr);
    }

    public static byte[] a(ECPublicKeyParameters eCPublicKeyParameters, byte[] bArr) throws InvalidCipherTextException {
        return a(SM2Engine.Mode.C1C3C2, eCPublicKeyParameters, bArr);
    }

    public static byte[] a(SM2Engine.Mode mode, ECPublicKeyParameters eCPublicKeyParameters, byte[] bArr) throws InvalidCipherTextException {
        SM2Engine sM2Engine = new SM2Engine(mode);
        sM2Engine.init(true, new ParametersWithRandom(eCPublicKeyParameters, new SecureRandom()));
        return sM2Engine.processBlock(bArr, 0, bArr.length);
    }

    public static byte[] a(BCECPrivateKey bCECPrivateKey, byte[] bArr) throws InvalidCipherTextException {
        return a(SM2Engine.Mode.C1C3C2, a.a(bCECPrivateKey), bArr);
    }

    public static byte[] a(SM2Engine.Mode mode, BCECPrivateKey bCECPrivateKey, byte[] bArr) throws InvalidCipherTextException {
        return a(mode, a.a(bCECPrivateKey), bArr);
    }

    public static byte[] a(ECPrivateKeyParameters eCPrivateKeyParameters, byte[] bArr) throws InvalidCipherTextException {
        return a(SM2Engine.Mode.C1C3C2, eCPrivateKeyParameters, bArr);
    }

    public static byte[] a(SM2Engine.Mode mode, ECPrivateKeyParameters eCPrivateKeyParameters, byte[] bArr) throws InvalidCipherTextException {
        SM2Engine sM2Engine = new SM2Engine(mode);
        sM2Engine.init(false, eCPrivateKeyParameters);
        return sM2Engine.processBlock(bArr, 0, bArr.length);
    }

    public static c a(byte[] bArr) throws Exception {
        return a(SM2Engine.Mode.C1C3C2, a.a(f38291j), 32, bArr);
    }

    public static c a(SM2Engine.Mode mode, byte[] bArr) throws Exception {
        return a(mode, a.a(f38291j), 32, bArr);
    }

    public static c a(int i2, int i3, byte[] bArr) throws Exception {
        return a(SM2Engine.Mode.C1C3C2, i2, i3, bArr);
    }

    public static AsymmetricCipherKeyPair a() {
        return a.a(f38291j, new SecureRandom());
    }

    public static byte[] a(BCECPrivateKey bCECPrivateKey, byte[] bArr, byte[] bArr2) throws CryptoException {
        return a(a.a(bCECPrivateKey), bArr, bArr2);
    }

    public static byte[] a(ECPrivateKeyParameters eCPrivateKeyParameters, byte[] bArr, byte[] bArr2) throws CryptoException {
        SM2Signer sM2Signer = new SM2Signer();
        CipherParameters parametersWithRandom = new ParametersWithRandom(eCPrivateKeyParameters, new SecureRandom());
        if (bArr != null) {
            parametersWithRandom = new ParametersWithID(parametersWithRandom, bArr);
        }
        sM2Signer.init(true, parametersWithRandom);
        sM2Signer.update(bArr2, 0, bArr2.length);
        return sM2Signer.generateSignature();
    }

    public static boolean a(BCECPublicKey bCECPublicKey, byte[] bArr, byte[] bArr2) {
        return a(a.a(bCECPublicKey), (byte[]) null, bArr, bArr2);
    }

    public static boolean a(ECPublicKeyParameters eCPublicKeyParameters, byte[] bArr, byte[] bArr2) {
        return a(eCPublicKeyParameters, (byte[]) null, bArr, bArr2);
    }

    public static boolean a(BCECPublicKey bCECPublicKey, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        return a(a.a(bCECPublicKey), bArr, bArr2, bArr3);
    }

    public static boolean a(ECPublicKeyParameters eCPublicKeyParameters, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        SM2Signer sM2Signer = new SM2Signer();
        CipherParameters parametersWithID = eCPublicKeyParameters;
        if (bArr != null) {
            parametersWithID = new ParametersWithID(eCPublicKeyParameters, bArr);
        }
        sM2Signer.init(false, parametersWithID);
        sM2Signer.update(bArr2, 0, bArr2.length);
        return sM2Signer.verifySignature(bArr3);
    }

    private static byte[] a(byte[] bArr, int i2, int i3) {
        byte[] bArr2 = new byte[i3];
        System.arraycopy(bArr, i2, bArr2, 0, i3);
        return bArr2;
    }

    public static byte[] b(byte[] bArr) throws Exception {
        return b(SM2Engine.Mode.C1C3C2, a.a(f38291j), 32, bArr);
    }

    public static byte[] b(SM2Engine.Mode mode, byte[] bArr) throws Exception {
        return b(mode, a.a(f38291j), 32, bArr);
    }

    public static byte[] b(int i2, int i3, byte[] bArr) throws Exception {
        return b(SM2Engine.Mode.C1C3C2, i2, i3, bArr);
    }

    public static KeyPair b() throws NoSuchAlgorithmException, NoSuchProviderException, InvalidAlgorithmParameterException {
        return a.b(f38291j, new SecureRandom());
    }

    public static byte[] b(BCECPrivateKey bCECPrivateKey, byte[] bArr) throws CryptoException {
        return a(a.a(bCECPrivateKey), (byte[]) null, bArr);
    }

    public static byte[] b(ECPrivateKeyParameters eCPrivateKeyParameters, byte[] bArr) throws CryptoException {
        return a(eCPrivateKeyParameters, (byte[]) null, bArr);
    }

    public static byte[] c(byte[] bArr) throws Exception {
        return c(SM2Engine.Mode.C1C3C2, bArr);
    }
}
