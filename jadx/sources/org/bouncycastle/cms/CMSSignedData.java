package org.bouncycastle.cms;

import defpackage.md;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1Set;
import org.bouncycastle.asn1.BERSequence;
import org.bouncycastle.asn1.DLSet;
import org.bouncycastle.asn1.cms.ContentInfo;
import org.bouncycastle.asn1.cms.SignedData;
import org.bouncycastle.asn1.cms.SignerInfo;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.cert.X509AttributeCertificateHolder;
import org.bouncycastle.cert.X509CRLHolder;
import org.bouncycastle.cert.X509CertificateHolder;
import org.bouncycastle.operator.DefaultDigestAlgorithmIdentifierFinder;
import org.bouncycastle.operator.DigestAlgorithmIdentifierFinder;
import org.bouncycastle.operator.OperatorCreationException;
import org.bouncycastle.util.Encodable;
import org.bouncycastle.util.Store;

/* JADX INFO: loaded from: classes3.dex */
public class CMSSignedData implements Encodable {
    ContentInfo contentInfo;
    private Map hashes;
    CMSTypedData signedContent;
    SignedData signedData;
    SignerInformationStore signerInfoStore;
    private static final CMSSignedHelper HELPER = CMSSignedHelper.INSTANCE;
    private static final DefaultDigestAlgorithmIdentifierFinder DIGEST_ALG_ID_FINDER = new DefaultDigestAlgorithmIdentifierFinder();

    public CMSSignedData(ContentInfo contentInfo) throws CMSException {
        this.contentInfo = contentInfo;
        SignedData signedData = getSignedData();
        this.signedData = signedData;
        ASN1Encodable content = signedData.getEncapContentInfo().getContent();
        if (content == null) {
            this.signedContent = null;
            return;
        }
        boolean z = content instanceof ASN1OctetString;
        SignedData signedData2 = this.signedData;
        if (z) {
            this.signedContent = new CMSProcessableByteArray(signedData2.getEncapContentInfo().getContentType(), ((ASN1OctetString) content).getOctets());
        } else {
            this.signedContent = new PKCS7ProcessableObject(signedData2.getEncapContentInfo().getContentType(), content);
        }
    }

    public static CMSSignedData addDigestAlgorithm(CMSSignedData cMSSignedData, AlgorithmIdentifier algorithmIdentifier, DigestAlgorithmIdentifierFinder digestAlgorithmIdentifierFinder) {
        Set<AlgorithmIdentifier> digestAlgorithmIDs = cMSSignedData.getDigestAlgorithmIDs();
        AlgorithmIdentifier algorithmIdentifierFixDigestAlgID = HELPER.fixDigestAlgID(algorithmIdentifier, digestAlgorithmIdentifierFinder);
        if (digestAlgorithmIDs.contains(algorithmIdentifierFixDigestAlgID)) {
            return cMSSignedData;
        }
        CMSSignedData cMSSignedData2 = new CMSSignedData(cMSSignedData);
        HashSet hashSet = new HashSet();
        Iterator<AlgorithmIdentifier> it = digestAlgorithmIDs.iterator();
        while (it.hasNext()) {
            hashSet.add(HELPER.fixDigestAlgID(it.next(), digestAlgorithmIdentifierFinder));
        }
        hashSet.add(algorithmIdentifierFixDigestAlgID);
        ASN1Set aSN1SetConvertToDlSet = CMSUtils.convertToDlSet(hashSet);
        ASN1Sequence aSN1Sequence = (ASN1Sequence) cMSSignedData.signedData.toASN1Primitive();
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector(aSN1Sequence.size());
        aSN1EncodableVector.add(aSN1Sequence.getObjectAt(0));
        aSN1EncodableVector.add(aSN1SetConvertToDlSet);
        for (int i2 = 2; i2 != aSN1Sequence.size(); i2++) {
            aSN1EncodableVector.add(aSN1Sequence.getObjectAt(i2));
        }
        cMSSignedData2.signedData = SignedData.getInstance(new BERSequence(aSN1EncodableVector));
        cMSSignedData2.contentInfo = new ContentInfo(cMSSignedData2.contentInfo.getContentType(), cMSSignedData2.signedData);
        return cMSSignedData2;
    }

    private SignedData getSignedData() throws CMSException {
        try {
            return SignedData.getInstance(this.contentInfo.getContent());
        } catch (ClassCastException | IllegalArgumentException e2) {
            md.l("Malformed content.", e2);
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x002d  */
    /* JADX WARN: Code duplicated, block: B:18:0x0040  */
    public static CMSSignedData replaceCertificatesAndCRLs(CMSSignedData cMSSignedData, Store store, Store store2, Store store3) throws CMSException {
        ASN1Set aSN1Set;
        ASN1Set aSN1Set2;
        CMSSignedData cMSSignedData2 = new CMSSignedData(cMSSignedData);
        if (store == null && store2 == null) {
            aSN1Set = null;
        } else {
            ArrayList arrayList = new ArrayList();
            if (store != null) {
                arrayList.addAll(CMSUtils.getCertificatesFromStore(store));
            }
            if (store2 != null) {
                arrayList.addAll(CMSUtils.getAttributeCertificatesFromStore(store2));
            }
            ASN1Set aSN1SetCreateBerSetFromList = CMSUtils.createBerSetFromList(arrayList);
            if (aSN1SetCreateBerSetFromList.size() != 0) {
                aSN1Set = aSN1SetCreateBerSetFromList;
            } else {
                aSN1Set = null;
            }
        }
        if (store3 != null) {
            ASN1Set aSN1SetCreateBerSetFromList2 = CMSUtils.createBerSetFromList(CMSUtils.getCRLsFromStore(store3));
            if (aSN1SetCreateBerSetFromList2.size() != 0) {
                aSN1Set2 = aSN1SetCreateBerSetFromList2;
            } else {
                aSN1Set2 = null;
            }
        } else {
            aSN1Set2 = null;
        }
        cMSSignedData2.signedData = new SignedData(cMSSignedData.signedData.getDigestAlgorithms(), cMSSignedData.signedData.getEncapContentInfo(), aSN1Set, aSN1Set2, cMSSignedData.signedData.getSignerInfos());
        cMSSignedData2.contentInfo = new ContentInfo(cMSSignedData2.contentInfo.getContentType(), cMSSignedData2.signedData);
        return cMSSignedData2;
    }

    public static CMSSignedData replaceSigners(CMSSignedData cMSSignedData, SignerInformationStore signerInformationStore, DigestAlgorithmIdentifierFinder digestAlgorithmIdentifierFinder) {
        CMSSignedData cMSSignedData2 = new CMSSignedData(cMSSignedData);
        cMSSignedData2.signerInfoStore = signerInformationStore;
        HashSet hashSet = new HashSet();
        Collection<SignerInformation> signers = signerInformationStore.getSigners();
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector(signers.size());
        for (SignerInformation signerInformation : signers) {
            CMSUtils.addDigestAlgs(hashSet, signerInformation, digestAlgorithmIdentifierFinder);
            aSN1EncodableVector.add(signerInformation.toASN1Structure());
        }
        ASN1Set aSN1SetConvertToDlSet = CMSUtils.convertToDlSet(hashSet);
        DLSet dLSet = new DLSet(aSN1EncodableVector);
        ASN1Sequence aSN1Sequence = (ASN1Sequence) cMSSignedData.signedData.toASN1Primitive();
        ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector(aSN1Sequence.size());
        aSN1EncodableVector2.add(aSN1Sequence.getObjectAt(0));
        aSN1EncodableVector2.add(aSN1SetConvertToDlSet);
        for (int i2 = 2; i2 != aSN1Sequence.size() - 1; i2++) {
            aSN1EncodableVector2.add(aSN1Sequence.getObjectAt(i2));
        }
        aSN1EncodableVector2.add(dLSet);
        cMSSignedData2.signedData = SignedData.getInstance(new BERSequence(aSN1EncodableVector2));
        cMSSignedData2.contentInfo = new ContentInfo(cMSSignedData2.contentInfo.getContentType(), cMSSignedData2.signedData);
        return cMSSignedData2;
    }

    private boolean verifyCounterSignature(SignerInformation signerInformation, SignerInformationVerifierProvider signerInformationVerifierProvider) throws CMSException, OperatorCreationException {
        if (!signerInformation.verify(signerInformationVerifierProvider.get(signerInformation.getSID()))) {
            return false;
        }
        Iterator<SignerInformation> it = signerInformation.getCounterSignatures().getSigners().iterator();
        while (it.hasNext()) {
            if (!verifyCounterSignature(it.next(), signerInformationVerifierProvider)) {
                return false;
            }
        }
        return true;
    }

    public Store<X509AttributeCertificateHolder> getAttributeCertificates() {
        return HELPER.getAttributeCertificates(this.signedData.getCertificates());
    }

    public Store<X509CRLHolder> getCRLs() {
        return HELPER.getCRLs(this.signedData.getCRLs());
    }

    public Store<X509CertificateHolder> getCertificates() {
        return HELPER.getCertificates(this.signedData.getCertificates());
    }

    public Set<AlgorithmIdentifier> getDigestAlgorithmIDs() {
        HashSet hashSet = new HashSet();
        Enumeration objects = this.signedData.getDigestAlgorithms().getObjects();
        while (objects.hasMoreElements()) {
            hashSet.add(AlgorithmIdentifier.getInstance(objects.nextElement()));
        }
        return Collections.unmodifiableSet(hashSet);
    }

    @Override // org.bouncycastle.util.Encodable
    public byte[] getEncoded() throws IOException {
        return this.contentInfo.getEncoded();
    }

    public Store getOtherRevocationInfo(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return HELPER.getOtherRevocationInfo(aSN1ObjectIdentifier, this.signedData.getCRLs());
    }

    public CMSTypedData getSignedContent() {
        return this.signedContent;
    }

    public String getSignedContentTypeOID() {
        return this.signedData.getEncapContentInfo().getContentType().getId();
    }

    public SignerInformationStore getSignerInfos() {
        if (this.signerInfoStore == null) {
            ASN1Set signerInfos = this.signedData.getSignerInfos();
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 != signerInfos.size(); i2++) {
                SignerInfo signerInfo = SignerInfo.getInstance(signerInfos.getObjectAt(i2));
                ASN1ObjectIdentifier contentType = this.signedData.getEncapContentInfo().getContentType();
                Map map = this.hashes;
                if (map == null) {
                    arrayList.add(new SignerInformation(signerInfo, contentType, this.signedContent, null));
                } else {
                    arrayList.add(new SignerInformation(signerInfo, contentType, null, (byte[]) this.hashes.get(map.keySet().iterator().next() instanceof String ? signerInfo.getDigestAlgorithm().getAlgorithm().getId() : signerInfo.getDigestAlgorithm().getAlgorithm())));
                }
            }
            this.signerInfoStore = new SignerInformationStore(arrayList);
        }
        return this.signerInfoStore;
    }

    public int getVersion() {
        return this.signedData.getVersion().intValueExact();
    }

    public boolean isCertificateManagementMessage() {
        return this.signedData.getEncapContentInfo().getContent() == null && this.signedData.getSignerInfos().size() == 0;
    }

    public boolean isDetachedSignature() {
        return this.signedData.getEncapContentInfo().getContent() == null && this.signedData.getSignerInfos().size() > 0;
    }

    public ContentInfo toASN1Structure() {
        return this.contentInfo;
    }

    public boolean verifySignatures(SignerInformationVerifierProvider signerInformationVerifierProvider, boolean z) throws CMSException {
        for (SignerInformation signerInformation : getSignerInfos().getSigners()) {
            try {
                if (!signerInformation.verify(signerInformationVerifierProvider.get(signerInformation.getSID()))) {
                    return false;
                }
                if (!z) {
                    Iterator<SignerInformation> it = signerInformation.getCounterSignatures().getSigners().iterator();
                    while (it.hasNext()) {
                        if (!verifyCounterSignature(it.next(), signerInformationVerifierProvider)) {
                            return false;
                        }
                    }
                }
            } catch (OperatorCreationException e2) {
                throw new CMSException("failure in verifier provider: " + e2.getMessage(), e2);
            }
        }
        return true;
    }

    public byte[] getEncoded(String str) throws IOException {
        return this.contentInfo.getEncoded(str);
    }

    public CMSSignedData(Map map, ContentInfo contentInfo) throws CMSException {
        this.hashes = map;
        this.contentInfo = contentInfo;
        this.signedData = getSignedData();
    }

    public CMSSignedData(Map map, byte[] bArr) throws CMSException {
        this(map, CMSUtils.readContentInfo(bArr));
    }

    public CMSSignedData(InputStream inputStream) throws CMSException {
        this(CMSUtils.readContentInfo(inputStream));
    }

    public CMSSignedData(CMSProcessable cMSProcessable, InputStream inputStream) throws CMSException {
        this(cMSProcessable, CMSUtils.readContentInfo((InputStream) new ASN1InputStream(inputStream)));
    }

    public CMSSignedData(final CMSProcessable cMSProcessable, ContentInfo contentInfo) throws CMSException {
        if (cMSProcessable instanceof CMSTypedData) {
            this.signedContent = (CMSTypedData) cMSProcessable;
        } else {
            this.signedContent = new CMSTypedData() { // from class: org.bouncycastle.cms.CMSSignedData.1
                @Override // org.bouncycastle.cms.CMSProcessable
                public Object getContent() {
                    return cMSProcessable.getContent();
                }

                @Override // org.bouncycastle.cms.CMSTypedData
                public ASN1ObjectIdentifier getContentType() {
                    return CMSSignedData.this.signedData.getEncapContentInfo().getContentType();
                }

                @Override // org.bouncycastle.cms.CMSProcessable
                public void write(OutputStream outputStream) throws CMSException, IOException {
                    cMSProcessable.write(outputStream);
                }
            };
        }
        this.contentInfo = contentInfo;
        this.signedData = getSignedData();
    }

    public CMSSignedData(CMSProcessable cMSProcessable, byte[] bArr) throws CMSException {
        this(cMSProcessable, CMSUtils.readContentInfo(bArr));
    }

    private CMSSignedData(CMSSignedData cMSSignedData) {
        this.signedData = cMSSignedData.signedData;
        this.contentInfo = cMSSignedData.contentInfo;
        this.signedContent = cMSSignedData.signedContent;
        this.signerInfoStore = cMSSignedData.signerInfoStore;
    }

    public CMSSignedData(byte[] bArr) throws CMSException {
        this(CMSUtils.readContentInfo(bArr));
    }

    public boolean verifySignatures(SignerInformationVerifierProvider signerInformationVerifierProvider) throws CMSException {
        return verifySignatures(signerInformationVerifierProvider, false);
    }

    public static CMSSignedData addDigestAlgorithm(CMSSignedData cMSSignedData, AlgorithmIdentifier algorithmIdentifier) {
        return addDigestAlgorithm(cMSSignedData, algorithmIdentifier, DIGEST_ALG_ID_FINDER);
    }

    public static CMSSignedData replaceSigners(CMSSignedData cMSSignedData, SignerInformationStore signerInformationStore) {
        return replaceSigners(cMSSignedData, signerInformationStore, DIGEST_ALG_ID_FINDER);
    }
}
