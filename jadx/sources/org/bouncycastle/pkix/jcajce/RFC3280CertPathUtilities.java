package org.bouncycastle.pkix.jcajce;

import defpackage.o60;
import java.io.IOException;
import java.security.PublicKey;
import java.security.cert.CertPathBuilder;
import java.security.cert.CertPathBuilderException;
import java.security.cert.CertPathValidatorException;
import java.security.cert.Certificate;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLSelector;
import java.security.cert.X509CertSelector;
import java.security.cert.X509Certificate;
import java.security.cert.X509Extension;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.asn1.x509.BasicConstraints;
import org.bouncycastle.asn1.x509.CRLDistPoint;
import org.bouncycastle.asn1.x509.DistributionPoint;
import org.bouncycastle.asn1.x509.DistributionPointName;
import org.bouncycastle.asn1.x509.Extension;
import org.bouncycastle.asn1.x509.GeneralName;
import org.bouncycastle.asn1.x509.GeneralNames;
import org.bouncycastle.asn1.x509.IssuingDistributionPoint;
import org.bouncycastle.jcajce.PKIXCRLStoreSelector;
import org.bouncycastle.jcajce.PKIXCertStoreSelector;
import org.bouncycastle.jcajce.PKIXExtendedBuilderParameters;
import org.bouncycastle.jcajce.PKIXExtendedParameters;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
class RFC3280CertPathUtilities {
    protected static final int CRL_SIGN = 6;
    protected static final int KEY_CERT_SIGN = 5;
    public static final String ISSUING_DISTRIBUTION_POINT = Extension.issuingDistributionPoint.getId();
    public static final String FRESHEST_CRL = Extension.freshestCRL.getId();
    public static final String DELTA_CRL_INDICATOR = Extension.deltaCRLIndicator.getId();
    public static final String BASIC_CONSTRAINTS = Extension.basicConstraints.getId();
    public static final String AUTHORITY_KEY_IDENTIFIER = Extension.authorityKeyIdentifier.getId();

    public static void checkCRL(DistributionPoint distributionPoint, PKIXExtendedParameters pKIXExtendedParameters, Date date, Date date2, X509Certificate x509Certificate, X509Certificate x509Certificate2, PublicKey publicKey, CertStatus certStatus, ReasonsMask reasonsMask, List list, JcaJceHelper jcaJceHelper) throws AnnotatedException, CRLNotFoundException {
        Set<String> criticalExtensionOIDs;
        if (date2.getTime() > date.getTime()) {
            throw new AnnotatedException("Validation time is in future.");
        }
        Iterator it = RevocationUtilities.getCompleteCRLs(distributionPoint, x509Certificate, date2, pKIXExtendedParameters.getCertStores(), pKIXExtendedParameters.getCRLStores()).iterator();
        boolean z = false;
        AnnotatedException e2 = null;
        while (it.hasNext() && certStatus.getCertStatus() == 11 && !reasonsMask.isAllReasons()) {
            try {
                X509CRL x509crl = (X509CRL) it.next();
                ReasonsMask reasonsMaskProcessCRLD = processCRLD(x509crl, distributionPoint);
                if (reasonsMaskProcessCRLD.hasNewReasons(reasonsMask)) {
                    try {
                        X509CRL x509crlProcessCRLH = pKIXExtendedParameters.isUseDeltasEnabled() ? processCRLH(RevocationUtilities.getDeltaCRLs(date2, x509crl, pKIXExtendedParameters.getCertStores(), pKIXExtendedParameters.getCRLStores()), processCRLG(x509crl, processCRLF(x509crl, x509Certificate, x509Certificate2, publicKey, pKIXExtendedParameters, list, jcaJceHelper))) : null;
                        if (pKIXExtendedParameters.getValidityModel() != 1 && x509Certificate.getNotAfter().getTime() < x509crl.getThisUpdate().getTime()) {
                            throw new AnnotatedException("No valid CRL for current time found.");
                        }
                        processCRLB1(distributionPoint, x509Certificate, x509crl);
                        processCRLB2(distributionPoint, x509Certificate, x509crl);
                        processCRLC(x509crlProcessCRLH, x509crl, pKIXExtendedParameters);
                        processCRLI(date2, x509crlProcessCRLH, x509Certificate, certStatus, pKIXExtendedParameters);
                        processCRLJ(date2, x509crl, x509Certificate, certStatus);
                        if (certStatus.getCertStatus() == 8) {
                            certStatus.setCertStatus(11);
                        }
                        reasonsMask.addReasons(reasonsMaskProcessCRLD);
                        Set<String> criticalExtensionOIDs2 = x509crl.getCriticalExtensionOIDs();
                        if (criticalExtensionOIDs2 != null) {
                            HashSet hashSet = new HashSet(criticalExtensionOIDs2);
                            hashSet.remove(Extension.issuingDistributionPoint.getId());
                            hashSet.remove(Extension.deltaCRLIndicator.getId());
                            if (!hashSet.isEmpty()) {
                                throw new AnnotatedException("CRL contains unsupported critical extensions.");
                            }
                        }
                        if (x509crlProcessCRLH != null && (criticalExtensionOIDs = x509crlProcessCRLH.getCriticalExtensionOIDs()) != null) {
                            HashSet hashSet2 = new HashSet(criticalExtensionOIDs);
                            hashSet2.remove(Extension.issuingDistributionPoint.getId());
                            hashSet2.remove(Extension.deltaCRLIndicator.getId());
                            if (!hashSet2.isEmpty()) {
                                throw new AnnotatedException("Delta CRL contains unsupported critical extension.");
                            }
                        }
                        z = true;
                    } catch (AnnotatedException e3) {
                        e2 = e3;
                    }
                } else {
                    continue;
                }
            } catch (AnnotatedException e4) {
                e2 = e4;
            }
        }
        if (!z) {
            throw e2;
        }
    }

    public static Set processCRLA1i(PKIXExtendedParameters pKIXExtendedParameters, Date date, X509Certificate x509Certificate, X509CRL x509crl) throws AnnotatedException {
        String str;
        HashSet hashSet = new HashSet();
        if (pKIXExtendedParameters.isUseDeltasEnabled()) {
            try {
                ASN1ObjectIdentifier aSN1ObjectIdentifier = Extension.freshestCRL;
                CRLDistPoint cRLDistPoint = CRLDistPoint.getInstance(RevocationUtilities.getExtensionValue(x509Certificate, aSN1ObjectIdentifier));
                if (cRLDistPoint == null) {
                    try {
                        cRLDistPoint = CRLDistPoint.getInstance(RevocationUtilities.getExtensionValue(x509crl, aSN1ObjectIdentifier));
                    } catch (AnnotatedException e2) {
                        e = e2;
                        str = "Freshest CRL extension could not be decoded from CRL.";
                        a.a(str, e);
                        return null;
                    }
                }
                if (cRLDistPoint != null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.addAll(pKIXExtendedParameters.getCRLStores());
                    try {
                        arrayList.addAll(RevocationUtilities.getAdditionalStoresFromCRLDistributionPoint(cRLDistPoint, pKIXExtendedParameters.getNamedCRLStoreMap()));
                        try {
                            hashSet.addAll(RevocationUtilities.getDeltaCRLs(date, x509crl, pKIXExtendedParameters.getCertStores(), arrayList));
                            return hashSet;
                        } catch (AnnotatedException e3) {
                            e = e3;
                            str = "Exception obtaining delta CRLs.";
                            a.a(str, e);
                            return null;
                        }
                    } catch (AnnotatedException e4) {
                        e = e4;
                        str = "No new delta CRL locations could be added from Freshest CRL extension.";
                    }
                }
            } catch (AnnotatedException e5) {
                e = e5;
                str = "Freshest CRL extension could not be decoded from certificate.";
            }
        }
        return hashSet;
    }

    public static Set[] processCRLA1ii(PKIXExtendedParameters pKIXExtendedParameters, Date date, Date date2, X509Certificate x509Certificate, X509CRL x509crl) throws AnnotatedException {
        X509CRLSelector x509CRLSelector = new X509CRLSelector();
        x509CRLSelector.setCertificateChecking(x509Certificate);
        try {
            x509CRLSelector.addIssuerName(x509crl.getIssuerX500Principal().getEncoded());
            Set setFindCRLs = PKIXCRLUtil.findCRLs(new PKIXCRLStoreSelector.Builder(x509CRLSelector).setCompleteCRLEnabled(true).build(), date2, pKIXExtendedParameters.getCertStores(), pKIXExtendedParameters.getCRLStores());
            HashSet hashSet = new HashSet();
            if (pKIXExtendedParameters.isUseDeltasEnabled()) {
                try {
                    hashSet.addAll(RevocationUtilities.getDeltaCRLs(date2, x509crl, pKIXExtendedParameters.getCertStores(), pKIXExtendedParameters.getCRLStores()));
                } catch (AnnotatedException e2) {
                    a.a("Exception obtaining delta CRLs.", e2);
                    return null;
                }
            }
            return new Set[]{setFindCRLs, hashSet};
        } catch (IOException e3) {
            throw new AnnotatedException(o60.m("Cannot extract issuer from CRL.", e3), e3);
        }
    }

    public static void processCRLB1(DistributionPoint distributionPoint, Object obj, X509CRL x509crl) throws AnnotatedException {
        ASN1Primitive extensionValue = RevocationUtilities.getExtensionValue(x509crl, Extension.issuingDistributionPoint);
        boolean z = true;
        boolean z2 = extensionValue != null && IssuingDistributionPoint.getInstance(extensionValue).isIndirectCRL();
        byte[] encoded = x509crl.getIssuerX500Principal().getEncoded();
        if (distributionPoint.getCRLIssuer() != null) {
            GeneralName[] names = distributionPoint.getCRLIssuer().getNames();
            boolean z3 = false;
            for (int i2 = 0; i2 < names.length; i2++) {
                if (names[i2].getTagNo() == 4) {
                    try {
                        if (Arrays.areEqual(names[i2].getName().toASN1Primitive().getEncoded(), encoded)) {
                            z3 = true;
                        }
                    } catch (IOException e2) {
                        a.a("CRL issuer information from distribution point cannot be decoded.", e2);
                        return;
                    }
                }
            }
            if (z3 && !z2) {
                throw new AnnotatedException("Distribution point contains cRLIssuer field but CRL is not indirect.");
            }
            if (!z3) {
                throw new AnnotatedException("CRL issuer of CRL does not match CRL issuer of distribution point.");
            }
            z = z3;
        } else if (!x509crl.getIssuerX500Principal().equals(((X509Certificate) obj).getIssuerX500Principal())) {
            z = false;
        }
        if (!z) {
            throw new AnnotatedException("Cannot find matching CRL issuer for certificate.");
        }
    }

    /* JADX WARN: Code duplicated, block: B:114:0x0134 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:115:0x0157 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:27:0x0092  */
    /* JADX WARN: Code duplicated, block: B:29:0x009c  */
    /* JADX WARN: Code duplicated, block: B:30:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:33:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:35:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:37:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:43:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:46:0x00fa A[LOOP:3: B:44:0x00f4->B:46:0x00fa, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:51:0x0125 A[LOOP:4: B:51:0x0125->B:56:0x0131, LOOP_START, PHI: r4
      0x0125: PHI (r4v3 int) = (r4v0 int), (r4v4 int) binds: [B:50:0x0123, B:56:0x0131] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:53:0x0128  */
    /* JADX WARN: Code duplicated, block: B:56:0x0131 A[LOOP:4: B:51:0x0125->B:56:0x0131, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:59:0x013a  */
    /* JADX WARN: Code duplicated, block: B:61:0x0140  */
    /* JADX WARN: Code duplicated, block: B:64:0x014b  */
    /* JADX WARN: Code duplicated, block: B:67:0x0154 A[LOOP:5: B:62:0x0148->B:67:0x0154, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:70:0x015d  */
    public static void processCRLB2(DistributionPoint distributionPoint, Object obj, X509CRL x509crl) throws AnnotatedException {
        String str;
        GeneralName[] names;
        DistributionPointName distributionPoint2;
        GeneralName[] names2;
        GeneralName[] names3;
        int i2;
        Enumeration objects;
        ASN1EncodableVector aSN1EncodableVector;
        try {
            IssuingDistributionPoint issuingDistributionPoint = IssuingDistributionPoint.getInstance(RevocationUtilities.getExtensionValue(x509crl, Extension.issuingDistributionPoint));
            if (issuingDistributionPoint == null) {
                return;
            }
            if (issuingDistributionPoint.getDistributionPoint() == null) {
                break;
            }
            DistributionPointName distributionPoint3 = IssuingDistributionPoint.getInstance(issuingDistributionPoint).getDistributionPoint();
            ArrayList arrayList = new ArrayList();
            int i3 = 0;
            if (distributionPoint3.getType() == 0) {
                for (GeneralName generalName : GeneralNames.getInstance(distributionPoint3.getName()).getNames()) {
                    arrayList.add(generalName);
                }
            }
            if (distributionPoint3.getType() == 1) {
                ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
                try {
                    Enumeration objects2 = ASN1Sequence.getInstance(x509crl.getIssuerX500Principal().getEncoded()).getObjects();
                    while (objects2.hasMoreElements()) {
                        aSN1EncodableVector2.add((ASN1Encodable) objects2.nextElement());
                    }
                    aSN1EncodableVector2.add(distributionPoint3.getName());
                    arrayList.add(new GeneralName(X500Name.getInstance(new DERSequence(aSN1EncodableVector2))));
                    if (distributionPoint.getDistributionPoint() != null) {
                        distributionPoint2 = distributionPoint.getDistributionPoint();
                        if (distributionPoint2.getType() == 0) {
                            names2 = GeneralNames.getInstance(distributionPoint2.getName()).getNames();
                        } else {
                            names2 = null;
                        }
                        if (distributionPoint2.getType() == 1) {
                            if (distributionPoint.getCRLIssuer() != null) {
                                names3 = distributionPoint.getCRLIssuer().getNames();
                            } else {
                                names3 = new GeneralName[1];
                                try {
                                    names3[0] = new GeneralName(X500Name.getInstance(((X509Certificate) obj).getIssuerX500Principal().getEncoded()));
                                } catch (Exception e2) {
                                    e = e2;
                                    str = "Could not read certificate issuer.";
                                }
                            }
                            names2 = names3;
                            for (i2 = 0; i2 < names2.length; i2++) {
                                objects = ASN1Sequence.getInstance(names2[i2].getName().toASN1Primitive()).getObjects();
                                aSN1EncodableVector = new ASN1EncodableVector();
                                while (objects.hasMoreElements()) {
                                    aSN1EncodableVector.add((ASN1Encodable) objects.nextElement());
                                }
                                aSN1EncodableVector.add(distributionPoint2.getName());
                                names2[i2] = new GeneralName(X500Name.getInstance(new DERSequence(aSN1EncodableVector)));
                            }
                        }
                        if (names2 != null) {
                            while (true) {
                                if (i3 < names2.length) {
                                    if (!arrayList.contains(names2[i3])) {
                                        break;
                                    } else {
                                        i3++;
                                    }
                                }
                            }
                        }
                        throw new AnnotatedException("No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point.");
                    }
                    if (distributionPoint.getCRLIssuer() != null) {
                        throw new AnnotatedException("Either the cRLIssuer or the distributionPoint field must be contained in DistributionPoint.");
                    }
                    names = distributionPoint.getCRLIssuer().getNames();
                    while (true) {
                        if (i3 < names.length) {
                            throw new AnnotatedException("No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point.");
                        }
                        if (!arrayList.contains(names[i3])) {
                            break;
                        } else {
                            i3++;
                        }
                    }
                } catch (Exception e3) {
                    e = e3;
                    str = "Could not read CRL issuer.";
                }
            } else {
                if (distributionPoint.getDistributionPoint() != null) {
                    distributionPoint2 = distributionPoint.getDistributionPoint();
                    if (distributionPoint2.getType() == 0) {
                        names2 = GeneralNames.getInstance(distributionPoint2.getName()).getNames();
                    } else {
                        names2 = null;
                    }
                    if (distributionPoint2.getType() == 1) {
                        if (distributionPoint.getCRLIssuer() != null) {
                            names3 = distributionPoint.getCRLIssuer().getNames();
                        } else {
                            names3 = new GeneralName[1];
                            names3[0] = new GeneralName(X500Name.getInstance(((X509Certificate) obj).getIssuerX500Principal().getEncoded()));
                        }
                        names2 = names3;
                        while (i2 < names2.length) {
                            objects = ASN1Sequence.getInstance(names2[i2].getName().toASN1Primitive()).getObjects();
                            aSN1EncodableVector = new ASN1EncodableVector();
                            while (objects.hasMoreElements()) {
                                aSN1EncodableVector.add((ASN1Encodable) objects.nextElement());
                            }
                            aSN1EncodableVector.add(distributionPoint2.getName());
                            names2[i2] = new GeneralName(X500Name.getInstance(new DERSequence(aSN1EncodableVector)));
                        }
                    }
                    if (names2 != null) {
                        while (true) {
                            if (i3 < names2.length) {
                                if (!arrayList.contains(names2[i3])) {
                                    break;
                                } else {
                                    i3++;
                                }
                            }
                        }
                    }
                    throw new AnnotatedException("No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point.");
                }
                if (distributionPoint.getCRLIssuer() != null) {
                    throw new AnnotatedException("Either the cRLIssuer or the distributionPoint field must be contained in DistributionPoint.");
                }
                names = distributionPoint.getCRLIssuer().getNames();
                while (true) {
                    if (i3 < names.length) {
                        throw new AnnotatedException("No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point.");
                    }
                    if (!arrayList.contains(names[i3])) {
                        break;
                    } else {
                        i3++;
                    }
                }
            }
            a.a(str, e);
            return;
            try {
                BasicConstraints basicConstraints = BasicConstraints.getInstance(RevocationUtilities.getExtensionValue((X509Extension) obj, Extension.basicConstraints));
                if (obj instanceof X509Certificate) {
                    if (issuingDistributionPoint.onlyContainsUserCerts() && basicConstraints != null && basicConstraints.isCA()) {
                        throw new AnnotatedException("CA Cert CRL only contains user certificates.");
                    }
                    if (issuingDistributionPoint.onlyContainsCACerts() && (basicConstraints == null || !basicConstraints.isCA())) {
                        throw new AnnotatedException("End CRL only contains CA certificates.");
                    }
                }
                if (issuingDistributionPoint.onlyContainsAttributeCerts()) {
                    throw new AnnotatedException("onlyContainsAttributeCerts boolean is asserted.");
                }
            } catch (Exception e4) {
                e = e4;
                str = "Basic constraints extension could not be decoded.";
            }
        } catch (Exception e5) {
            e = e5;
            str = "Issuing distribution point extension could not be decoded.";
        }
    }

    public static void processCRLC(X509CRL x509crl, X509CRL x509crl2, PKIXExtendedParameters pKIXExtendedParameters) throws AnnotatedException {
        String str;
        if (x509crl == null) {
            return;
        }
        try {
            ASN1ObjectIdentifier aSN1ObjectIdentifier = Extension.issuingDistributionPoint;
            IssuingDistributionPoint issuingDistributionPoint = IssuingDistributionPoint.getInstance(RevocationUtilities.getExtensionValue(x509crl2, aSN1ObjectIdentifier));
            if (!pKIXExtendedParameters.isUseDeltasEnabled()) {
                return;
            }
            if (!x509crl.getIssuerX500Principal().equals(x509crl2.getIssuerX500Principal())) {
                throw new AnnotatedException("complete CRL issuer does not match delta CRL issuer");
            }
            try {
                IssuingDistributionPoint issuingDistributionPoint2 = IssuingDistributionPoint.getInstance(RevocationUtilities.getExtensionValue(x509crl, aSN1ObjectIdentifier));
                if (issuingDistributionPoint != null ? !issuingDistributionPoint.equals(issuingDistributionPoint2) : issuingDistributionPoint2 != null) {
                    throw new AnnotatedException("Issuing distribution point extension from delta CRL and complete CRL does not match.");
                }
                try {
                    ASN1ObjectIdentifier aSN1ObjectIdentifier2 = Extension.authorityKeyIdentifier;
                    ASN1Primitive extensionValue = RevocationUtilities.getExtensionValue(x509crl2, aSN1ObjectIdentifier2);
                    try {
                        ASN1Primitive extensionValue2 = RevocationUtilities.getExtensionValue(x509crl, aSN1ObjectIdentifier2);
                        if (extensionValue == null) {
                            throw new AnnotatedException("CRL authority key identifier is null.");
                        }
                        if (extensionValue2 == null) {
                            throw new AnnotatedException("Delta CRL authority key identifier is null.");
                        }
                        if (!extensionValue.equals(extensionValue2)) {
                            throw new AnnotatedException("Delta CRL authority key identifier does not match complete CRL authority key identifier.");
                        }
                    } catch (AnnotatedException e2) {
                        e = e2;
                        str = "Authority key identifier extension could not be extracted from delta CRL.";
                        a.a(str, e);
                    }
                } catch (AnnotatedException e3) {
                    e = e3;
                    str = "Authority key identifier extension could not be extracted from complete CRL.";
                }
            } catch (Exception e4) {
                e = e4;
                str = "Issuing distribution point extension from delta CRL could not be decoded.";
            }
        } catch (Exception e5) {
            e = e5;
            str = "issuing distribution point extension could not be decoded.";
        }
    }

    public static ReasonsMask processCRLD(X509CRL x509crl, DistributionPoint distributionPoint) throws AnnotatedException {
        try {
            IssuingDistributionPoint issuingDistributionPoint = IssuingDistributionPoint.getInstance(RevocationUtilities.getExtensionValue(x509crl, Extension.issuingDistributionPoint));
            if (issuingDistributionPoint != null && issuingDistributionPoint.getOnlySomeReasons() != null && distributionPoint.getReasons() != null) {
                return new ReasonsMask(distributionPoint.getReasons()).intersect(new ReasonsMask(issuingDistributionPoint.getOnlySomeReasons()));
            }
            if ((issuingDistributionPoint == null || issuingDistributionPoint.getOnlySomeReasons() == null) && distributionPoint.getReasons() == null) {
                return ReasonsMask.allReasons;
            }
            return (distributionPoint.getReasons() == null ? ReasonsMask.allReasons : new ReasonsMask(distributionPoint.getReasons())).intersect(issuingDistributionPoint == null ? ReasonsMask.allReasons : new ReasonsMask(issuingDistributionPoint.getOnlySomeReasons()));
        } catch (Exception e2) {
            a.a("Issuing distribution point extension could not be decoded.", e2);
            return null;
        }
    }

    public static Set processCRLF(X509CRL x509crl, Object obj, X509Certificate x509Certificate, PublicKey publicKey, PKIXExtendedParameters pKIXExtendedParameters, List list, JcaJceHelper jcaJceHelper) throws AnnotatedException {
        String str;
        int i2;
        X509CertSelector x509CertSelector = new X509CertSelector();
        AnnotatedException annotatedException = null;
        try {
            x509CertSelector.setSubject(x509crl.getIssuerX500Principal().getEncoded());
            PKIXCertStoreSelector<? extends Certificate> pKIXCertStoreSelectorBuild = new PKIXCertStoreSelector.Builder(x509CertSelector).build();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            try {
                RevocationUtilities.findCertificates(linkedHashSet, pKIXCertStoreSelectorBuild, pKIXExtendedParameters.getCertificateStores());
                RevocationUtilities.findCertificates(linkedHashSet, pKIXCertStoreSelectorBuild, pKIXExtendedParameters.getCertStores());
                linkedHashSet.add(x509Certificate);
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                Iterator it = linkedHashSet.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    X509Certificate x509Certificate2 = (X509Certificate) it.next();
                    if (x509Certificate2.equals(x509Certificate)) {
                        arrayList.add(x509Certificate2);
                        arrayList2.add(publicKey);
                    } else {
                        try {
                            CertPathBuilder certPathBuilderCreateCertPathBuilder = jcaJceHelper.createCertPathBuilder("PKIX");
                            X509CertSelector x509CertSelector2 = new X509CertSelector();
                            x509CertSelector2.setCertificate(x509Certificate2);
                            PKIXExtendedParameters.Builder targetConstraints = new PKIXExtendedParameters.Builder(pKIXExtendedParameters).setTargetConstraints(new PKIXCertStoreSelector.Builder(x509CertSelector2).build());
                            if (list.contains(x509Certificate2)) {
                                targetConstraints.setRevocationEnabled(false);
                            } else {
                                targetConstraints.setRevocationEnabled(true);
                            }
                            List<? extends Certificate> certificates = certPathBuilderCreateCertPathBuilder.build(new PKIXExtendedBuilderParameters.Builder(targetConstraints.build()).build()).getCertPath().getCertificates();
                            arrayList.add(x509Certificate2);
                            arrayList2.add(RevocationUtilities.getNextWorkingKey(certificates, 0, jcaJceHelper));
                        } catch (CertPathBuilderException e2) {
                            e = e2;
                            str = "CertPath for CRL signer failed to validate.";
                            a.a(str, e);
                            return null;
                        } catch (CertPathValidatorException e3) {
                            e = e3;
                            str = "Public key of issuer certificate of CRL could not be retrieved.";
                            a.a(str, e);
                            return null;
                        } catch (Exception e4) {
                            throw new AnnotatedException(e4.getMessage());
                        }
                    }
                }
                HashSet hashSet = new HashSet();
                for (i2 = 0; i2 < arrayList.size(); i2++) {
                    boolean[] keyUsage = ((X509Certificate) arrayList.get(i2)).getKeyUsage();
                    if (keyUsage == null || (keyUsage.length > 6 && keyUsage[6])) {
                        hashSet.add(arrayList2.get(i2));
                    } else {
                        annotatedException = new AnnotatedException("Issuer certificate key usage extension does not permit CRL signing.");
                    }
                }
                if (hashSet.isEmpty() && annotatedException == null) {
                    throw new AnnotatedException("Cannot find a valid issuer certificate.");
                }
                if (!hashSet.isEmpty() || annotatedException == null) {
                    return hashSet;
                }
                throw annotatedException;
            } catch (AnnotatedException e5) {
                e = e5;
                str = "Issuer certificate for CRL cannot be searched.";
            }
        } catch (IOException e6) {
            e = e6;
            str = "subject criteria for certificate selector to find issuer certificate for CRL could not be set";
        }
    }

    public static PublicKey processCRLG(X509CRL x509crl, Set set) throws AnnotatedException {
        Iterator it = set.iterator();
        Exception e2 = null;
        while (it.hasNext()) {
            PublicKey publicKey = (PublicKey) it.next();
            try {
                x509crl.verify(publicKey);
                return publicKey;
            } catch (Exception e3) {
                e2 = e3;
            }
        }
        a.a("Cannot verify CRL.", e2);
        return null;
    }

    public static X509CRL processCRLH(Set set, PublicKey publicKey) throws AnnotatedException {
        Iterator it = set.iterator();
        Exception e2 = null;
        while (it.hasNext()) {
            X509CRL x509crl = (X509CRL) it.next();
            try {
                x509crl.verify(publicKey);
                return x509crl;
            } catch (Exception e3) {
                e2 = e3;
            }
        }
        if (e2 == null) {
            return null;
        }
        a.a("Cannot verify delta CRL.", e2);
        return null;
    }

    public static void processCRLI(Date date, X509CRL x509crl, Object obj, CertStatus certStatus, PKIXExtendedParameters pKIXExtendedParameters) throws AnnotatedException {
        if (!pKIXExtendedParameters.isUseDeltasEnabled() || x509crl == null) {
            return;
        }
        RevocationUtilities.getCertStatus(date, x509crl, obj, certStatus);
    }

    public static void processCRLJ(Date date, X509CRL x509crl, Object obj, CertStatus certStatus) throws AnnotatedException {
        if (certStatus.getCertStatus() == 11) {
            RevocationUtilities.getCertStatus(date, x509crl, obj, certStatus);
        }
    }
}
