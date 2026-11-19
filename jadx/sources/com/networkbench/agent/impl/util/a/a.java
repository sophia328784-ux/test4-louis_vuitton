package com.networkbench.agent.impl.util.a;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import java.security.spec.ECGenParameterSpec;
import java.security.spec.ECParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Null;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.DERNull;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.pkcs.PrivateKeyInfo;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.asn1.x9.X962Parameters;
import org.bouncycastle.asn1.x9.X9ECParameters;
import org.bouncycastle.asn1.x9.X9ECPoint;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;
import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.generators.ECKeyPairGenerator;
import org.bouncycastle.crypto.params.ECDomainParameters;
import org.bouncycastle.crypto.params.ECKeyGenerationParameters;
import org.bouncycastle.crypto.params.ECKeyParameters;
import org.bouncycastle.crypto.params.ECPrivateKeyParameters;
import org.bouncycastle.crypto.params.ECPublicKeyParameters;
import org.bouncycastle.jcajce.provider.asymmetric.ec.BCECPrivateKey;
import org.bouncycastle.jcajce.provider.asymmetric.ec.BCECPublicKey;
import org.bouncycastle.jcajce.provider.asymmetric.util.EC5Util;
import org.bouncycastle.jcajce.provider.asymmetric.util.ECUtil;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.jce.spec.ECNamedCurveSpec;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.FixedPointCombMultiplier;
import org.bouncycastle.pqc.legacy.math.linearalgebra.ByteUtils;
import org.bouncycastle.util.io.pem.PemObject;
import org.bouncycastle.util.io.pem.PemReader;
import org.bouncycastle.util.io.pem.PemWriter;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f38252a = "EC";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f38253b = "PUBLIC KEY";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f38254c = "EC PRIVATE KEY";

    public static X962Parameters a(ECParameterSpec eCParameterSpec, boolean z) {
        if (!(eCParameterSpec instanceof ECNamedCurveSpec)) {
            if (eCParameterSpec == null) {
                return new X962Parameters((ASN1Null) DERNull.INSTANCE);
            }
            ECCurve eCCurveConvertCurve = EC5Util.convertCurve(eCParameterSpec.getCurve());
            return new X962Parameters(new X9ECParameters(eCCurveConvertCurve, new X9ECPoint(EC5Util.convertPoint(eCCurveConvertCurve, eCParameterSpec.getGenerator()), z), eCParameterSpec.getOrder(), BigInteger.valueOf(eCParameterSpec.getCofactor()), eCParameterSpec.getCurve().getSeed()));
        }
        ECNamedCurveSpec eCNamedCurveSpec = (ECNamedCurveSpec) eCParameterSpec;
        ASN1ObjectIdentifier namedCurveOid = ECUtil.getNamedCurveOid(eCNamedCurveSpec.getName());
        if (namedCurveOid == null) {
            namedCurveOid = new ASN1ObjectIdentifier(eCNamedCurveSpec.getName());
        }
        return new X962Parameters(namedCurveOid);
    }

    public static KeyPair b(ECDomainParameters eCDomainParameters, SecureRandom secureRandom) throws NoSuchAlgorithmException, NoSuchProviderException, InvalidAlgorithmParameterException {
        KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance(f38252a, BouncyCastleProvider.PROVIDER_NAME);
        keyPairGenerator.initialize(new org.bouncycastle.jce.spec.ECParameterSpec(eCDomainParameters.getCurve(), eCDomainParameters.getG(), eCDomainParameters.getN(), eCDomainParameters.getH()), secureRandom);
        return keyPairGenerator.generateKeyPair();
    }

    public static X9ECParameters c(String str) {
        try {
            if (str.charAt(0) < '0' || str.charAt(0) > '2') {
                return str.indexOf(32) > 0 ? ECUtil.getNamedCurveByName(str.substring(str.indexOf(32) + 1)) : ECUtil.getNamedCurveByName(str);
            }
            return ECUtil.getNamedCurveByOid(new ASN1ObjectIdentifier(str));
        } catch (IllegalArgumentException unused) {
            return ECUtil.getNamedCurveByName(str);
        }
    }

    private static byte[] d(String str) throws IOException {
        PemReader pemReader = new PemReader(new InputStreamReader(new ByteArrayInputStream(str.getBytes())));
        try {
            return pemReader.readPemObject().getContent();
        } finally {
            pemReader.close();
        }
    }

    public static ECPrivateKeyParameters e(byte[] bArr) throws InvalidKeySpecException, NoSuchAlgorithmException, IOException, NoSuchProviderException {
        return a(d(bArr));
    }

    public static BCECPublicKey f(byte[] bArr) throws InvalidKeySpecException, NoSuchAlgorithmException, NoSuchProviderException {
        return (BCECPublicKey) KeyFactory.getInstance(f38252a, BouncyCastleProvider.PROVIDER_NAME).generatePublic(new X509EncodedKeySpec(bArr));
    }

    public static String g(byte[] bArr) throws IOException {
        return a("PUBLIC KEY", bArr);
    }

    public static BCECPrivateKey d(byte[] bArr) throws InvalidKeySpecException, NoSuchAlgorithmException, IOException, NoSuchProviderException {
        return (BCECPrivateKey) KeyFactory.getInstance(f38252a, BouncyCastleProvider.PROVIDER_NAME).generatePrivate(new PKCS8EncodedKeySpec(c(bArr)));
    }

    public static String b(byte[] bArr) throws IOException {
        return a("EC PRIVATE KEY", bArr);
    }

    public static byte[] b(ECPrivateKeyParameters eCPrivateKeyParameters, ECPublicKeyParameters eCPublicKeyParameters) throws IOException {
        return PrivateKeyInfo.getInstance(a(eCPrivateKeyParameters, eCPublicKeyParameters)).parsePrivateKey().toASN1Primitive().getEncoded();
    }

    public static byte[] b(String str) throws IOException {
        return d(str);
    }

    public static byte[] c(byte[] bArr) throws IOException {
        X962Parameters x962ParametersA = a(f.n, false);
        DEROctetString dEROctetString = new DEROctetString(bArr);
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(new ASN1Integer(0L));
        aSN1EncodableVector.add(new AlgorithmIdentifier(X9ObjectIdentifiers.id_ecPublicKey, x962ParametersA));
        aSN1EncodableVector.add(dEROctetString);
        return new DERSequence(aSN1EncodableVector).getEncoded(ASN1Encoding.DER);
    }

    public static int a(ECKeyParameters eCKeyParameters) {
        return a(eCKeyParameters.getParameters());
    }

    public static int a(ECDomainParameters eCDomainParameters) {
        return (eCDomainParameters.getCurve().getFieldSize() + 7) / 8;
    }

    public static byte[] a(int i2, byte[] bArr) {
        if (bArr.length == i2) {
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

    public static ECPrivateKeyParameters a(String str, ECDomainParameters eCDomainParameters) {
        return a(ByteUtils.fromHexString(str), eCDomainParameters);
    }

    public static ECPrivateKeyParameters a(byte[] bArr, ECDomainParameters eCDomainParameters) {
        return a(new BigInteger(1, bArr), eCDomainParameters);
    }

    public static ECPrivateKeyParameters a(BigInteger bigInteger, ECDomainParameters eCDomainParameters) {
        return new ECPrivateKeyParameters(bigInteger, eCDomainParameters);
    }

    public static ECPublicKeyParameters a(ECPrivateKeyParameters eCPrivateKeyParameters) {
        ECDomainParameters parameters = eCPrivateKeyParameters.getParameters();
        return new ECPublicKeyParameters(new FixedPointCombMultiplier().multiply(parameters.getG(), eCPrivateKeyParameters.getD()), parameters);
    }

    public static ECPublicKeyParameters a(BigInteger bigInteger, BigInteger bigInteger2, ECCurve eCCurve, ECDomainParameters eCDomainParameters) {
        return a(bigInteger.toByteArray(), bigInteger2.toByteArray(), eCCurve, eCDomainParameters);
    }

    public static ECPublicKeyParameters a(String str, String str2, ECCurve eCCurve, ECDomainParameters eCDomainParameters) {
        return a(ByteUtils.fromHexString(str), ByteUtils.fromHexString(str2), eCCurve, eCDomainParameters);
    }

    public static ECPublicKeyParameters a(byte[] bArr, byte[] bArr2, ECCurve eCCurve, ECDomainParameters eCDomainParameters) {
        int iA = a(eCDomainParameters);
        byte[] bArrA = a(iA, bArr);
        byte[] bArrA2 = a(iA, bArr2);
        byte[] bArr3 = new byte[bArrA.length + 1 + bArrA2.length];
        bArr3[0] = 4;
        System.arraycopy(bArrA, 0, bArr3, 1, bArrA.length);
        System.arraycopy(bArrA2, 0, bArr3, bArrA.length + 1, bArrA2.length);
        return new ECPublicKeyParameters(eCCurve.decodePoint(bArr3), eCDomainParameters);
    }

    public static ECPrivateKeyParameters a(BCECPrivateKey bCECPrivateKey) {
        org.bouncycastle.jce.spec.ECParameterSpec parameters = bCECPrivateKey.getParameters();
        return new ECPrivateKeyParameters(bCECPrivateKey.getD(), new ECDomainParameters(parameters.getCurve(), parameters.getG(), parameters.getN(), parameters.getH()));
    }

    public static ECPublicKeyParameters a(BCECPublicKey bCECPublicKey) {
        org.bouncycastle.jce.spec.ECParameterSpec parameters = bCECPublicKey.getParameters();
        return new ECPublicKeyParameters(bCECPublicKey.getQ(), new ECDomainParameters(parameters.getCurve(), parameters.getG(), parameters.getN(), parameters.getH()));
    }

    public static BCECPublicKey a(SubjectPublicKeyInfo subjectPublicKeyInfo) throws InvalidKeySpecException, NoSuchAlgorithmException, IOException, NoSuchProviderException {
        return f(subjectPublicKeyInfo.toASN1Primitive().getEncoded(ASN1Encoding.DER));
    }

    public static byte[] a(ECPrivateKeyParameters eCPrivateKeyParameters, ECPublicKeyParameters eCPublicKeyParameters) {
        ECDomainParameters parameters = eCPrivateKeyParameters.getParameters();
        org.bouncycastle.jce.spec.ECParameterSpec eCParameterSpec = new org.bouncycastle.jce.spec.ECParameterSpec(parameters.getCurve(), parameters.getG(), parameters.getN(), parameters.getH());
        return new BCECPrivateKey(f38252a, eCPrivateKeyParameters, eCPublicKeyParameters != null ? new BCECPublicKey(f38252a, eCPublicKeyParameters, eCParameterSpec, BouncyCastleProvider.CONFIGURATION) : null, eCParameterSpec, BouncyCastleProvider.CONFIGURATION).getEncoded();
    }

    public static BCECPrivateKey a(byte[] bArr) throws InvalidKeySpecException, NoSuchAlgorithmException, NoSuchProviderException {
        return (BCECPrivateKey) KeyFactory.getInstance(f38252a, BouncyCastleProvider.PROVIDER_NAME).generatePrivate(new PKCS8EncodedKeySpec(bArr));
    }

    public static byte[] a(String str) throws IOException {
        return d(str);
    }

    public static byte[] a(ECPublicKeyParameters eCPublicKeyParameters) {
        ECDomainParameters parameters = eCPublicKeyParameters.getParameters();
        return new BCECPublicKey(f38252a, eCPublicKeyParameters, new org.bouncycastle.jce.spec.ECParameterSpec(parameters.getCurve(), parameters.getG(), parameters.getN(), parameters.getH()), BouncyCastleProvider.CONFIGURATION).getEncoded();
    }

    public static X9ECParameters a(ECGenParameterSpec eCGenParameterSpec) {
        return c(eCGenParameterSpec.getName());
    }

    public static AsymmetricCipherKeyPair a(ECDomainParameters eCDomainParameters, SecureRandom secureRandom) {
        ECKeyGenerationParameters eCKeyGenerationParameters = new ECKeyGenerationParameters(eCDomainParameters, secureRandom);
        ECKeyPairGenerator eCKeyPairGenerator = new ECKeyPairGenerator();
        eCKeyPairGenerator.init(eCKeyGenerationParameters);
        return eCKeyPairGenerator.generateKeyPair();
    }

    private static String a(String str, byte[] bArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PemWriter pemWriter = new PemWriter(new OutputStreamWriter(byteArrayOutputStream));
        try {
            pemWriter.writeObject(new PemObject(str, bArr));
            return new String(byteArrayOutputStream.toByteArray());
        } finally {
            pemWriter.close();
        }
    }
}
