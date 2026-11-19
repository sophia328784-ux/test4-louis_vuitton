package org.spongycastle.jce.provider;

import defpackage.n00;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.Provider;
import java.util.HashMap;
import java.util.HashSet;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.ClassUtil;
import org.spongycastle.jcajce.provider.util.AlgorithmProvider;
import org.spongycastle.jcajce.provider.util.AsymmetricKeyInfoConverter;
import org.spongycastle.pqc.asn1.PQCObjectIdentifiers;
import org.spongycastle.pqc.jcajce.provider.mceliece.McElieceCCA2KeyFactorySpi;
import org.spongycastle.pqc.jcajce.provider.mceliece.McElieceKeyFactorySpi;
import org.spongycastle.pqc.jcajce.provider.newhope.NHKeyFactorySpi;
import org.spongycastle.pqc.jcajce.provider.rainbow.RainbowKeyFactorySpi;
import org.spongycastle.pqc.jcajce.provider.sphincs.Sphincs256KeyFactorySpi;
import org.spongycastle.pqc.jcajce.provider.xmss.XMSSKeyFactorySpi;
import org.spongycastle.pqc.jcajce.provider.xmss.XMSSMTKeyFactorySpi;

/* JADX INFO: loaded from: classes5.dex */
public final class BouncyCastleProvider extends Provider implements ConfigurableProvider {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final HashMap f77905b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String[] f77906c;
    public static final String[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String[] f77907e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String[] f77908f;
    public static final String[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String[] f77909h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String[] f77910i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String[] f77911j;

    static {
        new ThreadLocal();
        new ThreadLocal();
        new HashSet();
        new HashMap();
        f77905b = new HashMap();
        f77906c = new String[]{"PBEPBKDF1", "PBEPBKDF2", "PBEPKCS12", "TLSKDF"};
        d = new String[]{"SipHash", "Poly1305"};
        f77907e = new String[]{"AES", "ARC4", "ARIA", "Blowfish", "Camellia", "CAST5", "CAST6", "ChaCha", "DES", "DESede", "GOST28147", "Grainv1", "Grain128", "HC128", "HC256", "IDEA", "Noekeon", "RC2", "RC5", "RC6", "Rijndael", "Salsa20", "SEED", "Serpent", "Shacal2", "Skipjack", "SM4", "TEA", "Twofish", "Threefish", "VMPC", "VMPCKSA3", "XTEA", "XSalsa20", "OpenSSLPBKDF", "DSTU7624"};
        f77908f = new String[]{"X509", "IES"};
        g = new String[]{"DSA", "DH", "EC", "RSA", "GOST", "ECGOST", "ElGamal", "DSTU4145", "GM"};
        f77909h = new String[]{"GOST3411", "Keccak", "MD2", "MD4", "MD5", "SHA1", "RIPEMD128", "RIPEMD160", "RIPEMD256", "RIPEMD320", "SHA224", "SHA256", "SHA384", "SHA512", "SHA3", "Skein", "SM3", "Tiger", "Whirlpool", "Blake2b", "DSTU7564"};
        f77910i = new String[]{org.bouncycastle.jce.provider.BouncyCastleProvider.PROVIDER_NAME, "BCFKS", "PKCS12"};
        f77911j = new String[]{"DRBG"};
    }

    public BouncyCastleProvider() {
        super("SC", 1.58d, "BouncyCastle Security Provider v1.58");
        AccessController.doPrivileged(new PrivilegedAction() { // from class: org.spongycastle.jce.provider.BouncyCastleProvider.1
            @Override // java.security.PrivilegedAction
            public final Object run() {
                String[] strArr = BouncyCastleProvider.f77909h;
                BouncyCastleProvider bouncyCastleProvider = BouncyCastleProvider.this;
                bouncyCastleProvider.c("org.spongycastle.jcajce.provider.digest.", strArr);
                bouncyCastleProvider.c("org.spongycastle.jcajce.provider.symmetric.", BouncyCastleProvider.f77906c);
                bouncyCastleProvider.c("org.spongycastle.jcajce.provider.symmetric.", BouncyCastleProvider.d);
                bouncyCastleProvider.c("org.spongycastle.jcajce.provider.symmetric.", BouncyCastleProvider.f77907e);
                bouncyCastleProvider.c("org.spongycastle.jcajce.provider.asymmetric.", BouncyCastleProvider.f77908f);
                bouncyCastleProvider.c("org.spongycastle.jcajce.provider.asymmetric.", BouncyCastleProvider.g);
                bouncyCastleProvider.c("org.spongycastle.jcajce.provider.keystore.", BouncyCastleProvider.f77910i);
                bouncyCastleProvider.c("org.spongycastle.jcajce.provider.drbg.", BouncyCastleProvider.f77911j);
                BouncyCastleProvider.a(PQCObjectIdentifiers.d, new Sphincs256KeyFactorySpi());
                BouncyCastleProvider.a(PQCObjectIdentifiers.f78069e, new NHKeyFactorySpi());
                BouncyCastleProvider.a(PQCObjectIdentifiers.f78070f, new XMSSKeyFactorySpi());
                BouncyCastleProvider.a(PQCObjectIdentifiers.g, new XMSSMTKeyFactorySpi());
                BouncyCastleProvider.a(PQCObjectIdentifiers.f78067b, new McElieceKeyFactorySpi());
                BouncyCastleProvider.a(PQCObjectIdentifiers.f78068c, new McElieceCCA2KeyFactorySpi());
                BouncyCastleProvider.a(PQCObjectIdentifiers.f78066a, new RainbowKeyFactorySpi());
                bouncyCastleProvider.put("X509Store.CERTIFICATE/COLLECTION", "org.spongycastle.jce.provider.X509StoreCertCollection");
                bouncyCastleProvider.put("X509Store.ATTRIBUTECERTIFICATE/COLLECTION", "org.spongycastle.jce.provider.X509StoreAttrCertCollection");
                bouncyCastleProvider.put("X509Store.CRL/COLLECTION", "org.spongycastle.jce.provider.X509StoreCRLCollection");
                bouncyCastleProvider.put("X509Store.CERTIFICATEPAIR/COLLECTION", "org.spongycastle.jce.provider.X509StoreCertPairCollection");
                bouncyCastleProvider.put("X509Store.CERTIFICATE/LDAP", "org.spongycastle.jce.provider.X509StoreLDAPCerts");
                bouncyCastleProvider.put("X509Store.CRL/LDAP", "org.spongycastle.jce.provider.X509StoreLDAPCRLs");
                bouncyCastleProvider.put("X509Store.ATTRIBUTECERTIFICATE/LDAP", "org.spongycastle.jce.provider.X509StoreLDAPAttrCerts");
                bouncyCastleProvider.put("X509Store.CERTIFICATEPAIR/LDAP", "org.spongycastle.jce.provider.X509StoreLDAPCertPairs");
                bouncyCastleProvider.put("X509StreamParser.CERTIFICATE", "org.spongycastle.jce.provider.X509CertParser");
                bouncyCastleProvider.put("X509StreamParser.ATTRIBUTECERTIFICATE", "org.spongycastle.jce.provider.X509AttrCertParser");
                bouncyCastleProvider.put("X509StreamParser.CRL", "org.spongycastle.jce.provider.X509CRLParser");
                bouncyCastleProvider.put("X509StreamParser.CERTIFICATEPAIR", "org.spongycastle.jce.provider.X509CertPairParser");
                bouncyCastleProvider.put("Cipher.BROKENPBEWITHMD5ANDDES", "org.spongycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithMD5AndDES");
                bouncyCastleProvider.put("Cipher.BROKENPBEWITHSHA1ANDDES", "org.spongycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithSHA1AndDES");
                bouncyCastleProvider.put("Cipher.OLDPBEWITHSHAANDTWOFISH-CBC", "org.spongycastle.jce.provider.BrokenJCEBlockCipher$OldPBEWithSHAAndTwofish");
                bouncyCastleProvider.put("CertPathValidator.RFC3281", "org.spongycastle.jce.provider.PKIXAttrCertPathValidatorSpi");
                bouncyCastleProvider.put("CertPathBuilder.RFC3281", "org.spongycastle.jce.provider.PKIXAttrCertPathBuilderSpi");
                bouncyCastleProvider.put("CertPathValidator.RFC3280", "org.spongycastle.jce.provider.PKIXCertPathValidatorSpi");
                bouncyCastleProvider.put("CertPathBuilder.RFC3280", "org.spongycastle.jce.provider.PKIXCertPathBuilderSpi");
                bouncyCastleProvider.put("CertPathValidator.PKIX", "org.spongycastle.jce.provider.PKIXCertPathValidatorSpi");
                bouncyCastleProvider.put("CertPathBuilder.PKIX", "org.spongycastle.jce.provider.PKIXCertPathBuilderSpi");
                bouncyCastleProvider.put("CertStore.Collection", "org.spongycastle.jce.provider.CertStoreCollectionSpi");
                bouncyCastleProvider.put("CertStore.LDAP", "org.spongycastle.jce.provider.X509LDAPCertStoreSpi");
                bouncyCastleProvider.put("CertStore.Multi", "org.spongycastle.jce.provider.MultiCertStoreSpi");
                bouncyCastleProvider.put("Alg.Alias.CertStore.X509LDAP", "LDAP");
                return null;
            }
        });
    }

    public static void a(ASN1ObjectIdentifier aSN1ObjectIdentifier, AsymmetricKeyInfoConverter asymmetricKeyInfoConverter) {
        HashMap map = f77905b;
        synchronized (map) {
            map.put(aSN1ObjectIdentifier, asymmetricKeyInfoConverter);
        }
    }

    public final void c(String str, String[] strArr) {
        for (int i2 = 0; i2 != strArr.length; i2++) {
            StringBuilder sbT = n00.t(str);
            sbT.append(strArr[i2]);
            sbT.append("$Mappings");
            Class clsA = ClassUtil.a(sbT.toString());
            if (clsA != null) {
                try {
                    ((AlgorithmProvider) clsA.newInstance()).a();
                } catch (Exception e2) {
                    throw new InternalError("cannot create instance of " + str + strArr[i2] + "$Mappings : " + e2);
                }
            }
        }
    }
}
