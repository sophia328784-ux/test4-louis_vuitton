package org.bouncycastle.pkix.jcajce;

import defpackage.md;
import defpackage.n00;
import defpackage.tr;
import defpackage.v7;
import java.net.URI;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.Provider;
import java.security.PublicKey;
import java.security.cert.CRL;
import java.security.cert.CertPathValidatorException;
import java.security.cert.CertStore;
import java.security.cert.CertStoreException;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.security.cert.PKIXCertPathChecker;
import java.security.cert.PKIXParameters;
import java.security.cert.TrustAnchor;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLSelector;
import java.security.cert.X509Certificate;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1String;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.asn1.x509.CRLDistPoint;
import org.bouncycastle.asn1.x509.DistributionPoint;
import org.bouncycastle.asn1.x509.DistributionPointName;
import org.bouncycastle.asn1.x509.Extension;
import org.bouncycastle.asn1.x509.GeneralName;
import org.bouncycastle.asn1.x509.GeneralNames;
import org.bouncycastle.jcajce.PKIXCRLStore;
import org.bouncycastle.jcajce.PKIXCRLStoreSelector;
import org.bouncycastle.jcajce.PKIXExtendedParameters;
import org.bouncycastle.jcajce.util.DefaultJcaJceHelper;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.jcajce.util.NamedJcaJceHelper;
import org.bouncycastle.jcajce.util.ProviderJcaJceHelper;
import org.bouncycastle.util.CollectionStore;
import org.bouncycastle.util.Iterable;
import org.bouncycastle.util.Selector;
import org.bouncycastle.util.Store;

/* JADX INFO: loaded from: classes5.dex */
public class X509RevocationChecker extends PKIXCertPathChecker {
    public static final int CHAIN_VALIDITY_MODEL = 1;
    public static final int PKIX_VALIDITY_MODEL = 0;
    private final boolean canSoftFail;
    private final List<CertStore> crlCertStores;
    private final List<Store<CRL>> crls;
    private Date currentDate;
    private final long failHardMaxTime;
    private final long failLogMaxTime;
    private final Map<X500Principal, Long> failures;
    private final JcaJceHelper helper;
    private final boolean isCheckEEOnly;
    private X509Certificate signingCert;
    private final Set<TrustAnchor> trustAnchors;
    private final Date validationDate;
    private final int validityModel;
    private X500Principal workingIssuerName;
    private PublicKey workingPublicKey;
    private static Logger LOG = Logger.getLogger(X509RevocationChecker.class.getName());
    protected static final String[] crlReasons = {"unspecified", "keyCompromise", "cACompromise", "affiliationChanged", "superseded", "cessationOfOperation", "certificateHold", "unknown", "removeFromCRL", "privilegeWithdrawn", "aACompromise"};

    public static class LocalCRLStore implements PKIXCRLStore<CRL>, Iterable<CRL> {
        private Collection<CRL> _local;

        public LocalCRLStore(Store<CRL> store) {
            this._local = new ArrayList(store.getMatches(null));
        }

        @Override // org.bouncycastle.jcajce.PKIXCRLStore, org.bouncycastle.util.Store
        public Collection<CRL> getMatches(Selector<CRL> selector) {
            if (selector == null) {
                return new ArrayList(this._local);
            }
            ArrayList arrayList = new ArrayList();
            for (CRL crl : this._local) {
                if (selector.match(crl)) {
                    arrayList.add(crl);
                }
            }
            return arrayList;
        }

        @Override // org.bouncycastle.util.Iterable, java.lang.Iterable
        public Iterator<CRL> iterator() {
            return getMatches(null).iterator();
        }
    }

    private X509RevocationChecker(Builder builder) {
        this.failures = new HashMap();
        this.crls = new ArrayList(builder.crls);
        this.crlCertStores = new ArrayList(builder.crlCertStores);
        this.isCheckEEOnly = builder.isCheckEEOnly;
        this.validityModel = builder.validityModel;
        this.trustAnchors = builder.trustAnchors;
        this.canSoftFail = builder.canSoftFail;
        this.failLogMaxTime = builder.failLogMaxTime;
        this.failHardMaxTime = builder.failHardMaxTime;
        this.validationDate = builder.validityDate;
        if (builder.provider != null) {
            this.helper = new ProviderJcaJceHelper(builder.provider);
        } else if (builder.providerName != null) {
            this.helper = new NamedJcaJceHelper(builder.providerName);
        } else {
            this.helper = new DefaultJcaJceHelper();
        }
    }

    private void addIssuers(final List<X500Principal> list, CertStore certStore) throws CertStoreException {
        certStore.getCRLs(new X509CRLSelector() { // from class: org.bouncycastle.pkix.jcajce.X509RevocationChecker.1
            @Override // java.security.cert.X509CRLSelector, java.security.cert.CRLSelector
            public boolean match(CRL crl) {
                if (!(crl instanceof X509CRL)) {
                    return false;
                }
                list.add(((X509CRL) crl).getIssuerX500Principal());
                return false;
            }
        });
    }

    private Set<CRL> downloadCRLs(X500Principal x500Principal, Date date, ASN1Primitive aSN1Primitive, JcaJceHelper jcaJceHelper) {
        URI uri;
        DistributionPoint[] distributionPoints = CRLDistPoint.getInstance(aSN1Primitive).getDistributionPoints();
        try {
            CertificateFactory certificateFactoryCreateCertificateFactory = jcaJceHelper.createCertificateFactory("X.509");
            X509CRLSelector x509CRLSelector = new X509CRLSelector();
            x509CRLSelector.addIssuer(x500Principal);
            PKIXCRLStoreSelector<? extends CRL> pKIXCRLStoreSelectorBuild = new PKIXCRLStoreSelector.Builder(x509CRLSelector).build();
            HashSet hashSet = new HashSet();
            for (int i2 = 0; i2 != distributionPoints.length; i2++) {
                DistributionPointName distributionPoint = distributionPoints[i2].getDistributionPoint();
                if (distributionPoint != null && distributionPoint.getType() == 0) {
                    GeneralName[] names = GeneralNames.getInstance(distributionPoint.getName()).getNames();
                    for (int i3 = 0; i3 != names.length; i3++) {
                        GeneralName generalName = names[i3];
                        if (generalName.getTagNo() == 6) {
                            try {
                                uri = new URI(((ASN1String) generalName.getName()).getString());
                                try {
                                    PKIXCRLStore crl = CrlCache.getCrl(certificateFactoryCreateCertificateFactory, this.validationDate, uri);
                                    if (crl != null) {
                                        try {
                                            hashSet.addAll(PKIXCRLUtil.findCRLs(pKIXCRLStoreSelectorBuild, date, Collections.EMPTY_LIST, Collections.singletonList(crl)));
                                        } catch (Exception e2) {
                                            e = e2;
                                            Logger logger = LOG;
                                            Level level = Level.FINE;
                                            if (logger.isLoggable(level)) {
                                                LOG.log(level, "CrlDP " + uri + " ignored: " + e.getMessage(), (Throwable) e);
                                            } else {
                                                LOG.log(Level.INFO, "CrlDP " + uri + " ignored: " + e.getMessage());
                                            }
                                        }
                                    }
                                } catch (Exception e3) {
                                    e = e3;
                                }
                            } catch (Exception e4) {
                                e = e4;
                                uri = null;
                            }
                        }
                    }
                }
            }
            return hashSet;
        } catch (Exception e5) {
            Logger logger2 = LOG;
            Level level2 = Level.FINE;
            if (logger2.isLoggable(level2)) {
                LOG.log(level2, "could not create certFact: " + e5.getMessage(), (Throwable) e5);
            } else {
                LOG.log(Level.INFO, "could not create certFact: " + e5.getMessage());
            }
            return null;
        }
    }

    public static List<PKIXCRLStore> getAdditionalStoresFromCRLDistributionPoint(CRLDistPoint cRLDistPoint, Map<GeneralName, PKIXCRLStore> map) throws AnnotatedException {
        if (cRLDistPoint == null) {
            return Collections.EMPTY_LIST;
        }
        try {
            DistributionPoint[] distributionPoints = cRLDistPoint.getDistributionPoints();
            ArrayList arrayList = new ArrayList();
            for (DistributionPoint distributionPoint : distributionPoints) {
                DistributionPointName distributionPoint2 = distributionPoint.getDistributionPoint();
                if (distributionPoint2 != null && distributionPoint2.getType() == 0) {
                    for (GeneralName generalName : GeneralNames.getInstance(distributionPoint2.getName()).getNames()) {
                        PKIXCRLStore pKIXCRLStore = map.get(generalName);
                        if (pKIXCRLStore != null) {
                            arrayList.add(pKIXCRLStore);
                        }
                    }
                }
            }
            return arrayList;
        } catch (Exception e2) {
            a.a("could not read distribution points could not be read", e2);
            return null;
        }
    }

    @Override // java.security.cert.PKIXCertPathChecker
    public void check(Certificate certificate, Collection<String> collection) throws CertPathValidatorException {
        X509RevocationChecker x509RevocationChecker;
        Logger logger;
        Level level;
        StringBuilder sb;
        X509Certificate x509Certificate = (X509Certificate) certificate;
        if (this.isCheckEEOnly && x509Certificate.getBasicConstraints() != -1) {
            this.workingIssuerName = x509Certificate.getSubjectX500Principal();
            this.workingPublicKey = x509Certificate.getPublicKey();
            this.signingCert = x509Certificate;
            return;
        }
        if (this.workingIssuerName == null) {
            this.workingIssuerName = x509Certificate.getIssuerX500Principal();
            TrustAnchor trustAnchor = null;
            for (TrustAnchor trustAnchor2 : this.trustAnchors) {
                if (this.workingIssuerName.equals(trustAnchor2.getCA()) || this.workingIssuerName.equals(trustAnchor2.getTrustedCert().getSubjectX500Principal())) {
                    trustAnchor = trustAnchor2;
                }
            }
            if (trustAnchor == null) {
                throw new CertPathValidatorException("no trust anchor found for " + this.workingIssuerName);
            }
            X509Certificate trustedCert = trustAnchor.getTrustedCert();
            this.signingCert = trustedCert;
            this.workingPublicKey = trustedCert.getPublicKey();
        }
        ArrayList arrayList = new ArrayList();
        try {
            PKIXParameters pKIXParameters = new PKIXParameters(this.trustAnchors);
            pKIXParameters.setRevocationEnabled(false);
            pKIXParameters.setDate(this.validationDate);
            for (int i2 = 0; i2 != this.crlCertStores.size(); i2++) {
                if (LOG.isLoggable(Level.INFO)) {
                    addIssuers(arrayList, this.crlCertStores.get(i2));
                }
                pKIXParameters.addCertStore(this.crlCertStores.get(i2));
            }
            PKIXExtendedParameters.Builder builder = new PKIXExtendedParameters.Builder(pKIXParameters);
            builder.setValidityModel(this.validityModel);
            for (int i3 = 0; i3 != this.crls.size(); i3++) {
                if (LOG.isLoggable(Level.INFO)) {
                    addIssuers(arrayList, this.crls.get(i3));
                }
                builder.addCRLStore(new LocalCRLStore(this.crls.get(i3)));
            }
            if (arrayList.isEmpty()) {
                LOG.log(Level.INFO, "configured with 0 pre-loaded CRLs");
            } else if (LOG.isLoggable(Level.FINE)) {
                for (int i4 = 0; i4 != arrayList.size(); i4++) {
                    LOG.log(Level.FINE, "configuring with CRL for issuer \"" + arrayList.get(i4) + "\"");
                }
            } else {
                LOG.log(Level.INFO, "configured with " + arrayList.size() + " pre-loaded CRLs");
            }
            PKIXExtendedParameters pKIXExtendedParametersBuild = builder.build();
            Date validityDate = RevocationUtilities.getValidityDate(pKIXExtendedParametersBuild, this.validationDate);
            try {
                try {
                    x509RevocationChecker = this;
                    try {
                        x509RevocationChecker.checkCRLs(pKIXExtendedParametersBuild, this.currentDate, validityDate, x509Certificate, this.signingCert, this.workingPublicKey, new ArrayList(), this.helper);
                    } catch (CRLNotFoundException e2) {
                        e = e2;
                        CRLNotFoundException cRLNotFoundException = e;
                        ASN1ObjectIdentifier aSN1ObjectIdentifier = Extension.cRLDistributionPoints;
                        if (x509Certificate.getExtensionValue(aSN1ObjectIdentifier.getId()) == null) {
                            throw cRLNotFoundException;
                        }
                        try {
                            Set<CRL> setDownloadCRLs = x509RevocationChecker.downloadCRLs(x509Certificate.getIssuerX500Principal(), validityDate, RevocationUtilities.getExtensionValue(x509Certificate, aSN1ObjectIdentifier), x509RevocationChecker.helper);
                            if (!setDownloadCRLs.isEmpty()) {
                                try {
                                    builder.addCRLStore(new LocalCRLStore(new CollectionStore(setDownloadCRLs)));
                                    PKIXExtendedParameters pKIXExtendedParametersBuild2 = builder.build();
                                    x509RevocationChecker.checkCRLs(pKIXExtendedParametersBuild2, x509RevocationChecker.currentDate, RevocationUtilities.getValidityDate(pKIXExtendedParametersBuild2, x509RevocationChecker.validationDate), x509Certificate, x509RevocationChecker.signingCert, x509RevocationChecker.workingPublicKey, new ArrayList(), x509RevocationChecker.helper);
                                } catch (AnnotatedException e3) {
                                    throw new CertPathValidatorException(e3.getMessage(), e3.getCause());
                                }
                            } else {
                                if (!x509RevocationChecker.canSoftFail) {
                                    throw cRLNotFoundException;
                                }
                                X500Principal issuerX500Principal = x509Certificate.getIssuerX500Principal();
                                Long l = x509RevocationChecker.failures.get(issuerX500Principal);
                                if (l != null) {
                                    long jCurrentTimeMillis = System.currentTimeMillis() - l.longValue();
                                    long j2 = x509RevocationChecker.failHardMaxTime;
                                    if (j2 != -1 && j2 < jCurrentTimeMillis) {
                                        throw cRLNotFoundException;
                                    }
                                    if (jCurrentTimeMillis < x509RevocationChecker.failLogMaxTime) {
                                        logger = LOG;
                                        level = Level.WARNING;
                                        sb = new StringBuilder("soft failing for issuer: \"");
                                    } else {
                                        logger = LOG;
                                        level = Level.SEVERE;
                                        sb = new StringBuilder("soft failing for issuer: \"");
                                    }
                                    sb.append(issuerX500Principal);
                                    sb.append("\"");
                                    logger.log(level, sb.toString());
                                } else {
                                    x509RevocationChecker.failures.put(issuerX500Principal, Long.valueOf(System.currentTimeMillis()));
                                }
                            }
                        } catch (AnnotatedException e4) {
                            throw new CertPathValidatorException(e4.getMessage(), e4.getCause());
                        }
                    }
                } catch (AnnotatedException e5) {
                    throw new CertPathValidatorException(e5.getMessage(), e5.getCause());
                }
            } catch (CRLNotFoundException e6) {
                e = e6;
                x509RevocationChecker = this;
            }
            x509RevocationChecker.signingCert = x509Certificate;
            x509RevocationChecker.workingPublicKey = x509Certificate.getPublicKey();
            x509RevocationChecker.workingIssuerName = x509Certificate.getSubjectX500Principal();
        } catch (GeneralSecurityException e7) {
            v7.h(tr.n(e7, new StringBuilder("error setting up baseParams: ")));
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x009c  */
    public void checkCRLs(PKIXExtendedParameters pKIXExtendedParameters, Date date, Date date2, X509Certificate x509Certificate, X509Certificate x509Certificate2, PublicKey publicKey, List list, JcaJceHelper jcaJceHelper) throws AnnotatedException, CertPathValidatorException {
        boolean z;
        AnnotatedException e2;
        Date date3;
        int i2;
        DistributionPoint[] distributionPointArr;
        try {
            X509Certificate x509Certificate3 = x509Certificate;
            CRLDistPoint cRLDistPoint = CRLDistPoint.getInstance(RevocationUtilities.getExtensionValue(x509Certificate3, Extension.cRLDistributionPoints));
            CertStatus certStatus = new CertStatus();
            ReasonsMask reasonsMask = new ReasonsMask();
            boolean z2 = true;
            if (cRLDistPoint != null) {
                try {
                    DistributionPoint[] distributionPoints = cRLDistPoint.getDistributionPoints();
                    if (distributionPoints != null) {
                        PKIXExtendedParameters.Builder builder = new PKIXExtendedParameters.Builder(pKIXExtendedParameters);
                        try {
                            Iterator<PKIXCRLStore> it = getAdditionalStoresFromCRLDistributionPoint(cRLDistPoint, pKIXExtendedParameters.getNamedCRLStoreMap()).iterator();
                            while (it.hasNext()) {
                                builder.addCRLStore(it.next());
                            }
                            PKIXExtendedParameters pKIXExtendedParametersBuild = builder.build();
                            Date date4 = date;
                            Date validityDate = RevocationUtilities.getValidityDate(pKIXExtendedParametersBuild, date4);
                            int i3 = 0;
                            z = false;
                            e2 = null;
                            while (i3 < distributionPoints.length && certStatus.getCertStatus() == 11 && !reasonsMask.isAllReasons()) {
                                DistributionPoint[] distributionPointArr2 = distributionPoints;
                                try {
                                    Date date5 = date4;
                                    date3 = validityDate;
                                    i2 = i3;
                                    distributionPointArr = distributionPointArr2;
                                    try {
                                        RFC3280CertPathUtilities.checkCRL(distributionPointArr2[i3], pKIXExtendedParametersBuild, date5, date3, x509Certificate3, x509Certificate2, publicKey, certStatus, reasonsMask, list, jcaJceHelper);
                                        z = true;
                                    } catch (AnnotatedException e3) {
                                        e2 = e3;
                                    }
                                } catch (AnnotatedException e4) {
                                    e2 = e4;
                                    date3 = validityDate;
                                    i2 = i3;
                                    distributionPointArr = distributionPointArr2;
                                }
                                i3 = i2 + 1;
                                x509Certificate3 = x509Certificate;
                                validityDate = date3;
                                distributionPoints = distributionPointArr;
                                date4 = date;
                            }
                        } catch (AnnotatedException e5) {
                            a.a("no additional CRL locations could be decoded from CRL distribution point extension", e5);
                            return;
                        }
                    } else {
                        z = false;
                        e2 = null;
                    }
                } catch (Exception e6) {
                    a.a("cannot read distribution points", e6);
                    return;
                }
            } else {
                z = false;
                e2 = null;
            }
            if (certStatus.getCertStatus() != 11 || reasonsMask.isAllReasons()) {
                z2 = z;
            } else {
                try {
                    RFC3280CertPathUtilities.checkCRL(new DistributionPoint(new DistributionPointName(0, new GeneralNames(new GeneralName(4, X500Name.getInstance(x509Certificate.getIssuerX500Principal().getEncoded())))), null, null), (PKIXExtendedParameters) pKIXExtendedParameters.clone(), date, date2, x509Certificate, x509Certificate2, publicKey, certStatus, reasonsMask, list, jcaJceHelper);
                } catch (AnnotatedException e7) {
                    e2 = e7;
                    z2 = z;
                }
            }
            if (!z2) {
                if (e2 == null) {
                    throw new CRLNotFoundException("no valid CRL found");
                }
                throw new CRLNotFoundException("no valid CRL found", e2);
            }
            if (certStatus.getCertStatus() == 11) {
                if (!reasonsMask.isAllReasons() && certStatus.getCertStatus() == 11) {
                    certStatus.setCertStatus(12);
                }
                if (certStatus.getCertStatus() == 12) {
                    throw new AnnotatedException("certificate status could not be determined");
                }
                return;
            }
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss Z");
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            StringBuilder sbU = n00.u("certificate [issuer=\"" + x509Certificate.getIssuerX500Principal() + "\",serialNumber=" + x509Certificate.getSerialNumber() + ",subject=\"" + x509Certificate.getSubjectX500Principal() + "\"] revoked after " + simpleDateFormat.format(certStatus.getRevocationDate()), ", reason: ");
            sbU.append(crlReasons[certStatus.getCertStatus()]);
            throw new AnnotatedException(sbU.toString());
        } catch (Exception e8) {
            a.a("cannot read CRL distribution point extension", e8);
        }
    }

    @Override // java.security.cert.PKIXCertPathChecker
    public Object clone() {
        return this;
    }

    @Override // java.security.cert.PKIXCertPathChecker
    public Set<String> getSupportedExtensions() {
        return null;
    }

    @Override // java.security.cert.PKIXCertPathChecker, java.security.cert.CertPathChecker
    public void init(boolean z) throws CertPathValidatorException {
        if (z) {
            md.n("forward processing not supported");
        } else {
            this.currentDate = new Date();
            this.workingIssuerName = null;
        }
    }

    @Override // java.security.cert.PKIXCertPathChecker, java.security.cert.CertPathChecker
    public boolean isForwardCheckingSupported() {
        return false;
    }

    public static class Builder {
        private boolean canSoftFail;
        private List<CertStore> crlCertStores;
        private List<Store<CRL>> crls;
        private long failHardMaxTime;
        private long failLogMaxTime;
        private boolean isCheckEEOnly;
        private Provider provider;
        private String providerName;
        private Set<TrustAnchor> trustAnchors;
        private Date validityDate;
        private int validityModel;

        public Builder(KeyStore keyStore) throws KeyStoreException {
            this.crlCertStores = new ArrayList();
            this.crls = new ArrayList();
            this.validityModel = 0;
            this.validityDate = new Date();
            this.trustAnchors = new HashSet();
            Enumeration<String> enumerationAliases = keyStore.aliases();
            while (enumerationAliases.hasMoreElements()) {
                String strNextElement = enumerationAliases.nextElement();
                if (keyStore.isCertificateEntry(strNextElement)) {
                    this.trustAnchors.add(new TrustAnchor((X509Certificate) keyStore.getCertificate(strNextElement), null));
                }
            }
        }

        public Builder addCrls(CertStore certStore) {
            this.crlCertStores.add(certStore);
            return this;
        }

        public X509RevocationChecker build() {
            return new X509RevocationChecker(this);
        }

        public Builder setCheckEndEntityOnly(boolean z) {
            this.isCheckEEOnly = z;
            return this;
        }

        public Builder setDate(Date date) {
            this.validityDate = new Date(date.getTime());
            return this;
        }

        public Builder setSoftFail(boolean z, long j2) {
            this.canSoftFail = z;
            this.failLogMaxTime = j2;
            this.failHardMaxTime = -1L;
            return this;
        }

        public Builder setSoftFailHardLimit(boolean z, long j2) {
            this.canSoftFail = z;
            this.failLogMaxTime = (3 * j2) / 4;
            this.failHardMaxTime = j2;
            return this;
        }

        public Builder setValidityModel(int i2) {
            this.validityModel = i2;
            return this;
        }

        public Builder usingProvider(String str) {
            this.providerName = str;
            return this;
        }

        public Builder usingProvider(Provider provider) {
            this.provider = provider;
            return this;
        }

        public Builder addCrls(Store<CRL> store) {
            this.crls.add(store);
            return this;
        }

        public Builder(TrustAnchor trustAnchor) {
            this.crlCertStores = new ArrayList();
            this.crls = new ArrayList();
            this.validityModel = 0;
            this.validityDate = new Date();
            this.trustAnchors = Collections.singleton(trustAnchor);
        }

        public Builder(Set<TrustAnchor> set) {
            this.crlCertStores = new ArrayList();
            this.crls = new ArrayList();
            this.validityModel = 0;
            this.validityDate = new Date();
            this.trustAnchors = new HashSet(set);
        }
    }

    private void addIssuers(final List<X500Principal> list, Store<CRL> store) {
        store.getMatches(new Selector<CRL>() { // from class: org.bouncycastle.pkix.jcajce.X509RevocationChecker.2
            @Override // org.bouncycastle.util.Selector
            public Object clone() {
                return this;
            }

            @Override // org.bouncycastle.util.Selector
            public boolean match(CRL crl) {
                if (!(crl instanceof X509CRL)) {
                    return false;
                }
                list.add(((X509CRL) crl).getIssuerX500Principal());
                return false;
            }
        });
    }
}
