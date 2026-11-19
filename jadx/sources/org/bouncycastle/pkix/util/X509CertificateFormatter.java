package org.bouncycastle.pkix.util;

import defpackage.n00;
import java.io.FileReader;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.edec.EdECObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.x509.Extension;
import org.bouncycastle.asn1.x509.KeyPurposeId;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;
import org.bouncycastle.cert.X509CertificateHolder;
import org.bouncycastle.openssl.PEMParser;
import org.bouncycastle.util.encoders.Hex;

/* JADX INFO: loaded from: classes5.dex */
public class X509CertificateFormatter {
    private static final String spaceStr = "                                                              ";
    private static Map<ASN1ObjectIdentifier, String> oidMap = new HashMap();
    private static Map<ASN1ObjectIdentifier, String> keyAlgMap = new HashMap();
    private static Map<KeyPurposeId, String> extUsageMap = new HashMap();
    private static Map<Integer, String> usageMap = new HashMap();

    static {
        oidMap.put(Extension.subjectDirectoryAttributes, "subjectDirectoryAttributes");
        oidMap.put(Extension.subjectKeyIdentifier, "subjectKeyIdentifier");
        oidMap.put(Extension.keyUsage, "keyUsage");
        oidMap.put(Extension.privateKeyUsagePeriod, "privateKeyUsagePeriod");
        oidMap.put(Extension.subjectAlternativeName, "subjectAlternativeName");
        oidMap.put(Extension.issuerAlternativeName, "issuerAlternativeName");
        oidMap.put(Extension.basicConstraints, "basicConstraints");
        oidMap.put(Extension.cRLNumber, "cRLNumber");
        oidMap.put(Extension.reasonCode, "reasonCode");
        oidMap.put(Extension.instructionCode, "instructionCode");
        oidMap.put(Extension.invalidityDate, "invalidityDate");
        oidMap.put(Extension.deltaCRLIndicator, "deltaCRLIndicator");
        oidMap.put(Extension.issuingDistributionPoint, "issuingDistributionPoint");
        oidMap.put(Extension.certificateIssuer, "certificateIssuer");
        oidMap.put(Extension.nameConstraints, "nameConstraints");
        oidMap.put(Extension.cRLDistributionPoints, "cRLDistributionPoints");
        oidMap.put(Extension.certificatePolicies, "certificatePolicies");
        oidMap.put(Extension.policyMappings, "policyMappings");
        oidMap.put(Extension.authorityKeyIdentifier, "authorityKeyIdentifier");
        oidMap.put(Extension.policyConstraints, "policyConstraints");
        oidMap.put(Extension.extendedKeyUsage, "extendedKeyUsage");
        oidMap.put(Extension.freshestCRL, "freshestCRL");
        oidMap.put(Extension.inhibitAnyPolicy, "inhibitAnyPolicy");
        oidMap.put(Extension.authorityInfoAccess, "authorityInfoAccess");
        oidMap.put(Extension.subjectInfoAccess, "subjectInfoAccess");
        oidMap.put(Extension.logoType, "logoType");
        oidMap.put(Extension.biometricInfo, "biometricInfo");
        oidMap.put(Extension.qCStatements, "qCStatements");
        oidMap.put(Extension.auditIdentity, "auditIdentity");
        oidMap.put(Extension.noRevAvail, "noRevAvail");
        oidMap.put(Extension.targetInformation, "targetInformation");
        oidMap.put(Extension.expiredCertsOnCRL, "expiredCertsOnCRL");
        usageMap.put(128, "digitalSignature");
        usageMap.put(64, "nonRepudiation");
        usageMap.put(32, "keyEncipherment");
        usageMap.put(16, "dataEncipherment");
        usageMap.put(8, "keyAgreement");
        usageMap.put(4, "keyCertSign");
        usageMap.put(2, "cRLSign");
        usageMap.put(1, "encipherOnly");
        usageMap.put(32768, "decipherOnly");
        extUsageMap.put(KeyPurposeId.anyExtendedKeyUsage, "anyExtendedKeyUsage");
        extUsageMap.put(KeyPurposeId.id_kp_serverAuth, "id_kp_serverAuth");
        extUsageMap.put(KeyPurposeId.id_kp_clientAuth, "id_kp_clientAuth");
        extUsageMap.put(KeyPurposeId.id_kp_codeSigning, "id_kp_codeSigning");
        extUsageMap.put(KeyPurposeId.id_kp_emailProtection, "id_kp_emailProtection");
        extUsageMap.put(KeyPurposeId.id_kp_ipsecEndSystem, "id_kp_ipsecEndSystem");
        extUsageMap.put(KeyPurposeId.id_kp_ipsecTunnel, "id_kp_ipsecTunnel");
        extUsageMap.put(KeyPurposeId.id_kp_ipsecUser, "id_kp_ipsecUser");
        extUsageMap.put(KeyPurposeId.id_kp_timeStamping, "id_kp_timeStamping");
        extUsageMap.put(KeyPurposeId.id_kp_OCSPSigning, "id_kp_OCSPSigning");
        extUsageMap.put(KeyPurposeId.id_kp_dvcs, "id_kp_dvcs");
        extUsageMap.put(KeyPurposeId.id_kp_sbgpCertAAServerAuth, "id_kp_sbgpCertAAServerAuth");
        extUsageMap.put(KeyPurposeId.id_kp_scvp_responder, "id_kp_scvp_responder");
        extUsageMap.put(KeyPurposeId.id_kp_eapOverPPP, "id_kp_eapOverPPP");
        extUsageMap.put(KeyPurposeId.id_kp_eapOverLAN, "id_kp_eapOverLAN");
        extUsageMap.put(KeyPurposeId.id_kp_scvpServer, "id_kp_scvpServer");
        extUsageMap.put(KeyPurposeId.id_kp_scvpClient, "id_kp_scvpClient");
        extUsageMap.put(KeyPurposeId.id_kp_ipsecIKE, "id_kp_ipsecIKE");
        extUsageMap.put(KeyPurposeId.id_kp_capwapAC, "id_kp_capwapAC");
        extUsageMap.put(KeyPurposeId.id_kp_capwapWTP, "id_kp_capwapWTP");
        extUsageMap.put(KeyPurposeId.id_kp_cmcCA, "id_kp_cmcCA");
        extUsageMap.put(KeyPurposeId.id_kp_cmcRA, "id_kp_cmcRA");
        extUsageMap.put(KeyPurposeId.id_kp_cmKGA, "id_kp_cmKGA");
        extUsageMap.put(KeyPurposeId.id_kp_smartcardlogon, "id_kp_smartcardlogon");
        extUsageMap.put(KeyPurposeId.id_kp_macAddress, "id_kp_macAddress");
        extUsageMap.put(KeyPurposeId.id_kp_msSGC, "id_kp_msSGC");
        extUsageMap.put(KeyPurposeId.id_kp_nsSGC, "id_kp_nsSGC");
        keyAlgMap.put(PKCSObjectIdentifiers.rsaEncryption, "rsaEncryption");
        keyAlgMap.put(X9ObjectIdentifiers.id_ecPublicKey, "id_ecPublicKey");
        keyAlgMap.put(EdECObjectIdentifiers.id_Ed25519, "id_Ed25519");
        keyAlgMap.put(EdECObjectIdentifiers.id_Ed448, "id_Ed448");
    }

    /* JADX WARN: Code duplicated, block: B:11:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:16:0x0118 A[Catch: Exception -> 0x0225, TryCatch #0 {Exception -> 0x0225, blocks: (B:14:0x00d9, B:16:0x0118, B:18:0x0144, B:19:0x0166, B:20:0x0169, B:21:0x016e, B:24:0x017a, B:25:0x018f, B:27:0x0195, B:30:0x01a7, B:32:0x01ac, B:33:0x01b8, B:35:0x01c0, B:36:0x01d5, B:38:0x01db, B:41:0x01e9, B:43:0x01ee, B:44:0x01fa), top: B:49:0x00d9 }] */
    /* JADX WARN: Code duplicated, block: B:24:0x017a A[Catch: Exception -> 0x0225, TRY_ENTER, TryCatch #0 {Exception -> 0x0225, blocks: (B:14:0x00d9, B:16:0x0118, B:18:0x0144, B:19:0x0166, B:20:0x0169, B:21:0x016e, B:24:0x017a, B:25:0x018f, B:27:0x0195, B:30:0x01a7, B:32:0x01ac, B:33:0x01b8, B:35:0x01c0, B:36:0x01d5, B:38:0x01db, B:41:0x01e9, B:43:0x01ee, B:44:0x01fa), top: B:49:0x00d9 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x0195 A[Catch: Exception -> 0x0225, TryCatch #0 {Exception -> 0x0225, blocks: (B:14:0x00d9, B:16:0x0118, B:18:0x0144, B:19:0x0166, B:20:0x0169, B:21:0x016e, B:24:0x017a, B:25:0x018f, B:27:0x0195, B:30:0x01a7, B:32:0x01ac, B:33:0x01b8, B:35:0x01c0, B:36:0x01d5, B:38:0x01db, B:41:0x01e9, B:43:0x01ee, B:44:0x01fa), top: B:49:0x00d9 }] */
    /* JADX WARN: Code duplicated, block: B:30:0x01a7 A[Catch: Exception -> 0x0225, TryCatch #0 {Exception -> 0x0225, blocks: (B:14:0x00d9, B:16:0x0118, B:18:0x0144, B:19:0x0166, B:20:0x0169, B:21:0x016e, B:24:0x017a, B:25:0x018f, B:27:0x0195, B:30:0x01a7, B:32:0x01ac, B:33:0x01b8, B:35:0x01c0, B:36:0x01d5, B:38:0x01db, B:41:0x01e9, B:43:0x01ee, B:44:0x01fa), top: B:49:0x00d9 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:33:0x01b8 A[Catch: Exception -> 0x0225, TryCatch #0 {Exception -> 0x0225, blocks: (B:14:0x00d9, B:16:0x0118, B:18:0x0144, B:19:0x0166, B:20:0x0169, B:21:0x016e, B:24:0x017a, B:25:0x018f, B:27:0x0195, B:30:0x01a7, B:32:0x01ac, B:33:0x01b8, B:35:0x01c0, B:36:0x01d5, B:38:0x01db, B:41:0x01e9, B:43:0x01ee, B:44:0x01fa), top: B:49:0x00d9 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x01c0 A[Catch: Exception -> 0x0225, TryCatch #0 {Exception -> 0x0225, blocks: (B:14:0x00d9, B:16:0x0118, B:18:0x0144, B:19:0x0166, B:20:0x0169, B:21:0x016e, B:24:0x017a, B:25:0x018f, B:27:0x0195, B:30:0x01a7, B:32:0x01ac, B:33:0x01b8, B:35:0x01c0, B:36:0x01d5, B:38:0x01db, B:41:0x01e9, B:43:0x01ee, B:44:0x01fa), top: B:49:0x00d9 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x01db A[Catch: Exception -> 0x0225, TryCatch #0 {Exception -> 0x0225, blocks: (B:14:0x00d9, B:16:0x0118, B:18:0x0144, B:19:0x0166, B:20:0x0169, B:21:0x016e, B:24:0x017a, B:25:0x018f, B:27:0x0195, B:30:0x01a7, B:32:0x01ac, B:33:0x01b8, B:35:0x01c0, B:36:0x01d5, B:38:0x01db, B:41:0x01e9, B:43:0x01ee, B:44:0x01fa), top: B:49:0x00d9 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x01e9 A[Catch: Exception -> 0x0225, TryCatch #0 {Exception -> 0x0225, blocks: (B:14:0x00d9, B:16:0x0118, B:18:0x0144, B:19:0x0166, B:20:0x0169, B:21:0x016e, B:24:0x017a, B:25:0x018f, B:27:0x0195, B:30:0x01a7, B:32:0x01ac, B:33:0x01b8, B:35:0x01c0, B:36:0x01d5, B:38:0x01db, B:41:0x01e9, B:43:0x01ee, B:44:0x01fa), top: B:49:0x00d9 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x01ed  */
    /* JADX WARN: Code duplicated, block: B:44:0x01fa A[Catch: Exception -> 0x0225, TRY_LEAVE, TryCatch #0 {Exception -> 0x0225, blocks: (B:14:0x00d9, B:16:0x0118, B:18:0x0144, B:19:0x0166, B:20:0x0169, B:21:0x016e, B:24:0x017a, B:25:0x018f, B:27:0x0195, B:30:0x01a7, B:32:0x01ac, B:33:0x01b8, B:35:0x01c0, B:36:0x01d5, B:38:0x01db, B:41:0x01e9, B:43:0x01ee, B:44:0x01fa), top: B:49:0x00d9 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00b3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:0x0144 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x016e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x00cc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x00b6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x01a5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x018f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:67:0x01e7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:69:0x01d5 A[SYNTHETIC] */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:46:0x0225
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1478)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    public static java.lang.String asString(org.bouncycastle.cert.X509CertificateHolder r14) {
        /*
            Method dump skipped, instruction units count: 584
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.pkix.util.X509CertificateFormatter.asString(org.bouncycastle.cert.X509CertificateHolder):java.lang.String");
    }

    public static void format(StringBuilder sb, byte[] bArr, String str) {
        int i2 = 20;
        while (i2 < bArr.length) {
            int length = bArr.length - 20;
            sb.append("                       ");
            sb.append(i2 < length ? Hex.toHexString(bArr, i2, 20) : Hex.toHexString(bArr, i2, bArr.length - i2));
            sb.append(str);
            i2 += 20;
        }
    }

    private static String indent(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder();
        String strSubstring = str2.substring(0, str2.length() - str3.length());
        while (true) {
            int iIndexOf = strSubstring.indexOf(str3);
            if (iIndexOf <= 0) {
                break;
            }
            n00.A(0, iIndexOf, strSubstring, str3, sb);
            sb.append(str);
            if (strSubstring.length() > 0) {
                strSubstring = strSubstring.substring(str3.length() + iIndexOf);
            }
        }
        if (sb.length() == 0) {
            return strSubstring;
        }
        sb.append(strSubstring);
        return sb.toString();
    }

    private static String keyAlgToLabel(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        String str = keyAlgMap.get(aSN1ObjectIdentifier);
        return str != null ? str : aSN1ObjectIdentifier.getId();
    }

    public static void main(String[] strArr) throws Exception {
        System.out.println(asString((X509CertificateHolder) new PEMParser(new FileReader(strArr[0])).readObject()));
    }

    private static String oidToLabel(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        String str = oidMap.get(aSN1ObjectIdentifier);
        return str != null ? str : aSN1ObjectIdentifier.getId();
    }

    public static void prettyPrintData(byte[] bArr, StringBuilder sb, String str) {
        if (bArr.length <= 20) {
            sb.append(Hex.toHexString(bArr));
            sb.append(str);
        } else {
            sb.append(Hex.toHexString(bArr, 0, 20));
            sb.append(str);
            format(sb, bArr, str);
        }
    }

    private static String spaces(int i2) {
        return spaceStr.substring(0, i2);
    }
}
