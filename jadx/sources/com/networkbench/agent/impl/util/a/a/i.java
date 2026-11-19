package com.networkbench.agent.impl.util.a.a;

import defpackage.az;
import defpackage.md;
import java.math.BigInteger;
import java.security.KeyPair;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedList;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.DERIA5String;
import org.bouncycastle.asn1.x500.AttributeTypeAndValue;
import org.bouncycastle.asn1.x500.RDN;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.asn1.x500.style.BCStyle;
import org.bouncycastle.asn1.x500.style.IETFUtils;
import org.bouncycastle.asn1.x509.BasicConstraints;
import org.bouncycastle.asn1.x509.ExtendedKeyUsage;
import org.bouncycastle.asn1.x509.Extension;
import org.bouncycastle.asn1.x509.GeneralName;
import org.bouncycastle.asn1.x509.GeneralNames;
import org.bouncycastle.asn1.x509.KeyPurposeId;
import org.bouncycastle.asn1.x509.KeyUsage;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.cert.X509v3CertificateBuilder;
import org.bouncycastle.cert.jcajce.JcaX509CertificateConverter;
import org.bouncycastle.cert.jcajce.JcaX509ExtensionUtils;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.operator.jcajce.JcaContentSignerBuilder;
import org.bouncycastle.pkcs.PKCS10CertificationRequest;

/* JADX INFO: loaded from: classes5.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f38265a = "SM3withSM2";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f38266b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private X500Name f38267c;
    private com.networkbench.agent.impl.util.a.a.a d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private KeyPair f38268e;

    /* JADX INFO: renamed from: com.networkbench.agent.impl.util.a.a.i$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f38269a;

        static {
            int[] iArr = new int[a.values().length];
            f38269a = iArr;
            try {
                iArr[a.RootCA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f38269a[a.SubCA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public enum a {
        RootCA,
        SubCA,
        EndEntity
    }

    public i(KeyPair keyPair, long j2, X500Name x500Name, com.networkbench.agent.impl.util.a.a.a aVar) {
        this.f38268e = keyPair;
        this.f38266b = j2;
        this.f38267c = x500Name;
        this.d = aVar;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x0126  */
    /* JADX WARN: Code duplicated, block: B:45:0x012c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:46:0x012e  */
    /* JADX WARN: Code duplicated, block: B:47:0x0134  */
    /* JADX WARN: Code duplicated, block: B:50:0x0149  */
    /* JADX WARN: Code duplicated, block: B:52:0x0158  */
    /* JADX WARN: Code duplicated, block: B:56:0x0166 A[EDGE_INSN: B:56:0x0166->B:60:0x0181 BREAK  A[LOOP:1: B:51:0x0156->B:59:0x017b]] */
    /* JADX WARN: Code duplicated, block: B:57:0x0175  */
    /* JADX WARN: Code duplicated, block: B:59:0x017b A[LOOP:1: B:51:0x0156->B:59:0x017b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:62:0x0187  */
    /* JADX WARN: Code duplicated, block: B:71:0x0162 A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:50:0x0149, please report this as an issue */
    private X509Certificate a(a aVar, Integer num, byte[] bArr, KeyUsage keyUsage, KeyPurposeId[] keyPurposeIdArr) throws Exception {
        X500Name x500Name;
        boolean z;
        String str;
        X509v3CertificateBuilder x509v3CertificateBuilder;
        JcaX509ExtensionUtils jcaX509ExtensionUtils;
        BasicConstraints basicConstraints;
        int i2;
        X509Certificate x509Certificate = null;
        if (aVar == a.EndEntity && keyUsage.hasUsages(4)) {
            md.n("keyusage keyCertSign is not allowed in EndEntity Certificate");
            return null;
        }
        PKCS10CertificationRequest pKCS10CertificationRequest = new PKCS10CertificationRequest(bArr);
        SubjectPublicKeyInfo subjectPublicKeyInfo = pKCS10CertificationRequest.getSubjectPublicKeyInfo();
        PrivateKey privateKey = this.f38268e.getPrivate();
        PublicKey publicKey = this.f38268e.getPublic();
        X500Name subject = pKCS10CertificationRequest.getSubject();
        RDN[] rDNs = subject.getRDNs();
        ArrayList arrayList = new ArrayList(rDNs.length);
        String strValueToString = null;
        String strValueToString2 = null;
        int i3 = 0;
        while (i3 < rDNs.length) {
            RDN rdn = rDNs[i3];
            AttributeTypeAndValue first = rdn.getFirst();
            X509Certificate x509Certificate2 = x509Certificate;
            ASN1ObjectIdentifier type = first.getType();
            if (BCStyle.EmailAddress.equals((ASN1Primitive) type)) {
                strValueToString = IETFUtils.valueToString(first.getValue());
            } else {
                if (BCStyle.CN.equals((ASN1Primitive) type)) {
                    strValueToString2 = IETFUtils.valueToString(first.getValue());
                }
                arrayList.add(rdn);
            }
            i3++;
            x509Certificate = x509Certificate2;
        }
        X509Certificate x509Certificate3 = x509Certificate;
        LinkedList linkedList = new LinkedList();
        if (strValueToString != null) {
            subject = new X500Name((RDN[]) arrayList.toArray(new RDN[0]));
            linkedList.add(new GeneralName(1, new DERIA5String(strValueToString, true)));
        }
        int i4 = AnonymousClass1.f38269a[aVar.ordinal()];
        if (i4 != 1) {
            X500Name x500Name2 = this.f38267c;
            if (i4 != 2) {
                if (x500Name2.equals(subject)) {
                    x500Name = this.f38267c;
                    z = true;
                }
                BigInteger bigIntegerA = this.d.a();
                Date date = new Date();
                str = strValueToString2;
                x509v3CertificateBuilder = new X509v3CertificateBuilder(this.f38267c, bigIntegerA, date, new Date(date.getTime() + this.f38266b), x500Name, subjectPublicKeyInfo);
                jcaX509ExtensionUtils = new JcaX509ExtensionUtils();
                x509v3CertificateBuilder.addExtension(Extension.subjectKeyIdentifier, false, (ASN1Encodable) jcaX509ExtensionUtils.createSubjectKeyIdentifier(subjectPublicKeyInfo));
                if (aVar != a.RootCA && !z) {
                    x509v3CertificateBuilder.addExtension(Extension.authorityKeyIdentifier, false, (ASN1Encodable) jcaX509ExtensionUtils.createAuthorityKeyIdentifier(SubjectPublicKeyInfo.getInstance(publicKey.getEncoded())));
                }
                if (aVar == a.EndEntity) {
                    basicConstraints = new BasicConstraints(false);
                } else if (num == null) {
                    basicConstraints = new BasicConstraints(true);
                } else {
                    basicConstraints = new BasicConstraints(num.intValue());
                }
                x509v3CertificateBuilder.addExtension(Extension.basicConstraints, true, (ASN1Encodable) basicConstraints);
                x509v3CertificateBuilder.addExtension(Extension.keyUsage, true, (ASN1Encodable) keyUsage);
                if (keyPurposeIdArr != null) {
                    x509v3CertificateBuilder.addExtension(Extension.extendedKeyUsage, false, (ASN1Encodable) new ExtendedKeyUsage(keyPurposeIdArr));
                    for (KeyPurposeId keyPurposeId : keyPurposeIdArr) {
                        if (KeyPurposeId.id_kp_serverAuth.equals(keyPurposeId)) {
                            if (str != null) {
                                linkedList.add(new GeneralName(2, new DERIA5String(str, true)));
                                break;
                            }
                            md.n("commonName must not be null");
                            return x509Certificate3;
                        }
                    }
                }
                if (!linkedList.isEmpty()) {
                    x509v3CertificateBuilder.addExtension(Extension.subjectAlternativeName, false, (ASN1Encodable) new GeneralNames((GeneralName[]) linkedList.toArray(new GeneralName[0])));
                }
                X509Certificate certificate = new JcaX509CertificateConverter().setProvider(BouncyCastleProvider.PROVIDER_NAME).getCertificate(x509v3CertificateBuilder.build(a(publicKey).build(privateKey)));
                certificate.verify(publicKey);
                return certificate;
            }
            if (x500Name2.equals(subject)) {
                az.m(aVar, "subject MUST not equals issuer for certLevel ");
                return x509Certificate3;
            }
        } else {
            if (!this.f38267c.equals(subject)) {
                az.w(a.RootCA, "subject != issuer for certLevel ");
                return x509Certificate3;
            }
            subject = this.f38267c;
        }
        x500Name = subject;
        z = false;
        BigInteger bigIntegerA2 = this.d.a();
        Date date2 = new Date();
        str = strValueToString2;
        x509v3CertificateBuilder = new X509v3CertificateBuilder(this.f38267c, bigIntegerA2, date2, new Date(date2.getTime() + this.f38266b), x500Name, subjectPublicKeyInfo);
        jcaX509ExtensionUtils = new JcaX509ExtensionUtils();
        x509v3CertificateBuilder.addExtension(Extension.subjectKeyIdentifier, false, (ASN1Encodable) jcaX509ExtensionUtils.createSubjectKeyIdentifier(subjectPublicKeyInfo));
        if (aVar != a.RootCA) {
            x509v3CertificateBuilder.addExtension(Extension.authorityKeyIdentifier, false, (ASN1Encodable) jcaX509ExtensionUtils.createAuthorityKeyIdentifier(SubjectPublicKeyInfo.getInstance(publicKey.getEncoded())));
        }
        if (aVar == a.EndEntity) {
            basicConstraints = new BasicConstraints(false);
        } else if (num == null) {
            basicConstraints = new BasicConstraints(true);
        } else {
            basicConstraints = new BasicConstraints(num.intValue());
        }
        x509v3CertificateBuilder.addExtension(Extension.basicConstraints, true, (ASN1Encodable) basicConstraints);
        x509v3CertificateBuilder.addExtension(Extension.keyUsage, true, (ASN1Encodable) keyUsage);
        if (keyPurposeIdArr != null) {
            x509v3CertificateBuilder.addExtension(Extension.extendedKeyUsage, false, (ASN1Encodable) new ExtendedKeyUsage(keyPurposeIdArr));
            while (i2 < r1) {
                if (KeyPurposeId.id_kp_serverAuth.equals(keyPurposeId)) {
                    if (str != null) {
                        linkedList.add(new GeneralName(2, new DERIA5String(str, true)));
                        break;
                    }
                    md.n("commonName must not be null");
                    return x509Certificate3;
                }
            }
        }
        if (!linkedList.isEmpty()) {
            x509v3CertificateBuilder.addExtension(Extension.subjectAlternativeName, false, (ASN1Encodable) new GeneralNames((GeneralName[]) linkedList.toArray(new GeneralName[0])));
        }
        X509Certificate certificate2 = new JcaX509CertificateConverter().setProvider(BouncyCastleProvider.PROVIDER_NAME).getCertificate(x509v3CertificateBuilder.build(a(publicKey).build(privateKey)));
        certificate2.verify(publicKey);
        return certificate2;
    }

    public X509Certificate b(byte[] bArr) throws Exception {
        return a(a.SubCA, 0, bArr, new KeyUsage(6), null);
    }

    public X509Certificate c(byte[] bArr) throws Exception {
        return a(bArr, new KeyPurposeId[]{KeyPurposeId.id_kp_clientAuth, KeyPurposeId.id_kp_serverAuth});
    }

    public X509Certificate a(byte[] bArr, KeyPurposeId[] keyPurposeIdArr) throws Exception {
        return a(a.SubCA, null, bArr, new KeyUsage(184), keyPurposeIdArr);
    }

    public X509Certificate a(byte[] bArr) throws Exception {
        return a(a.RootCA, null, bArr, new KeyUsage(6), null);
    }

    private JcaContentSignerBuilder a(PublicKey publicKey) throws Exception {
        if (publicKey.getAlgorithm().equals("EC")) {
            JcaContentSignerBuilder jcaContentSignerBuilder = new JcaContentSignerBuilder(f38265a);
            jcaContentSignerBuilder.setProvider(BouncyCastleProvider.PROVIDER_NAME);
            return jcaContentSignerBuilder;
        }
        throw new Exception("Unsupported PublicKey Algorithm:" + publicKey.getAlgorithm());
    }
}
