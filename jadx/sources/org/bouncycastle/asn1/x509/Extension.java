package org.bouncycastle.asn1.x509;

import defpackage.fc;
import defpackage.md;
import defpackage.o60;
import defpackage.tr;
import java.io.IOException;
import org.bouncycastle.asn1.ASN1Boolean;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public class Extension extends ASN1Object {
    private boolean critical;
    private ASN1ObjectIdentifier extnId;
    private ASN1OctetString value;
    public static final ASN1ObjectIdentifier subjectDirectoryAttributes = o60.w("2.5.29.9");
    public static final ASN1ObjectIdentifier subjectKeyIdentifier = o60.w("2.5.29.14");
    public static final ASN1ObjectIdentifier keyUsage = o60.w("2.5.29.15");
    public static final ASN1ObjectIdentifier privateKeyUsagePeriod = o60.w("2.5.29.16");
    public static final ASN1ObjectIdentifier subjectAlternativeName = o60.w("2.5.29.17");
    public static final ASN1ObjectIdentifier issuerAlternativeName = o60.w("2.5.29.18");
    public static final ASN1ObjectIdentifier basicConstraints = o60.w("2.5.29.19");
    public static final ASN1ObjectIdentifier cRLNumber = o60.w("2.5.29.20");
    public static final ASN1ObjectIdentifier reasonCode = o60.w("2.5.29.21");
    public static final ASN1ObjectIdentifier instructionCode = o60.w("2.5.29.23");
    public static final ASN1ObjectIdentifier invalidityDate = o60.w("2.5.29.24");
    public static final ASN1ObjectIdentifier deltaCRLIndicator = o60.w("2.5.29.27");
    public static final ASN1ObjectIdentifier issuingDistributionPoint = o60.w("2.5.29.28");
    public static final ASN1ObjectIdentifier certificateIssuer = o60.w("2.5.29.29");
    public static final ASN1ObjectIdentifier nameConstraints = o60.w("2.5.29.30");
    public static final ASN1ObjectIdentifier cRLDistributionPoints = o60.w("2.5.29.31");
    public static final ASN1ObjectIdentifier certificatePolicies = o60.w("2.5.29.32");
    public static final ASN1ObjectIdentifier policyMappings = o60.w("2.5.29.33");
    public static final ASN1ObjectIdentifier authorityKeyIdentifier = o60.w("2.5.29.35");
    public static final ASN1ObjectIdentifier policyConstraints = o60.w("2.5.29.36");
    public static final ASN1ObjectIdentifier extendedKeyUsage = o60.w("2.5.29.37");
    public static final ASN1ObjectIdentifier freshestCRL = o60.w("2.5.29.46");
    public static final ASN1ObjectIdentifier inhibitAnyPolicy = o60.w("2.5.29.54");
    public static final ASN1ObjectIdentifier authorityInfoAccess = o60.w("1.3.6.1.5.5.7.1.1");
    public static final ASN1ObjectIdentifier subjectInfoAccess = o60.w("1.3.6.1.5.5.7.1.11");
    public static final ASN1ObjectIdentifier logoType = o60.w("1.3.6.1.5.5.7.1.12");
    public static final ASN1ObjectIdentifier biometricInfo = o60.w("1.3.6.1.5.5.7.1.2");
    public static final ASN1ObjectIdentifier qCStatements = o60.w("1.3.6.1.5.5.7.1.3");
    public static final ASN1ObjectIdentifier auditIdentity = o60.w("1.3.6.1.5.5.7.1.4");
    public static final ASN1ObjectIdentifier noRevAvail = o60.w("2.5.29.56");
    public static final ASN1ObjectIdentifier targetInformation = o60.w("2.5.29.55");
    public static final ASN1ObjectIdentifier expiredCertsOnCRL = o60.w("2.5.29.60");
    public static final ASN1ObjectIdentifier subjectAltPublicKeyInfo = o60.w("2.5.29.72");
    public static final ASN1ObjectIdentifier altSignatureAlgorithm = o60.w("2.5.29.73");
    public static final ASN1ObjectIdentifier altSignatureValue = o60.w("2.5.29.74");
    public static final ASN1ObjectIdentifier deltaCertificateDescriptor = new ASN1ObjectIdentifier("2.16.840.1.114027.80.6.1");

    private Extension(ASN1Sequence aSN1Sequence) {
        ASN1Encodable objectAt;
        if (aSN1Sequence.size() == 2) {
            this.extnId = ASN1ObjectIdentifier.getInstance(aSN1Sequence.getObjectAt(0));
            this.critical = false;
            objectAt = aSN1Sequence.getObjectAt(1);
        } else {
            if (aSN1Sequence.size() != 3) {
                md.n(fc.o(aSN1Sequence, new StringBuilder("Bad sequence size: ")));
                throw null;
            }
            this.extnId = ASN1ObjectIdentifier.getInstance(aSN1Sequence.getObjectAt(0));
            this.critical = ASN1Boolean.getInstance(aSN1Sequence.getObjectAt(1)).isTrue();
            objectAt = aSN1Sequence.getObjectAt(2);
        }
        this.value = ASN1OctetString.getInstance(objectAt);
    }

    private static ASN1Primitive convertValueToObject(Extension extension) throws IllegalArgumentException {
        try {
            return ASN1Primitive.fromByteArray(extension.getExtnValue().getOctets());
        } catch (IOException e2) {
            md.n(o60.m("can't convert extension: ", e2));
            return null;
        }
    }

    public static Extension create(ASN1ObjectIdentifier aSN1ObjectIdentifier, boolean z, ASN1Encodable aSN1Encodable) throws IOException {
        return new Extension(aSN1ObjectIdentifier, z, aSN1Encodable.toASN1Primitive().getEncoded());
    }

    public static Extension getInstance(Object obj) {
        if (obj instanceof Extension) {
            return (Extension) obj;
        }
        if (obj != null) {
            return new Extension(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.ASN1Object
    public boolean equals(Object obj) {
        if (!(obj instanceof Extension)) {
            return false;
        }
        Extension extension = (Extension) obj;
        return extension.getExtnId().equals((ASN1Primitive) getExtnId()) && extension.getExtnValue().equals((ASN1Primitive) getExtnValue()) && extension.isCritical() == isCritical();
    }

    public ASN1ObjectIdentifier getExtnId() {
        return this.extnId;
    }

    public ASN1OctetString getExtnValue() {
        return this.value;
    }

    public ASN1Encodable getParsedValue() {
        return convertValueToObject(this);
    }

    @Override // org.bouncycastle.asn1.ASN1Object
    public int hashCode() {
        if (isCritical()) {
            return getExtnId().hashCode() ^ getExtnValue().hashCode();
        }
        return ~(getExtnId().hashCode() ^ getExtnValue().hashCode());
    }

    public boolean isCritical() {
        return this.critical;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector(3);
        aSN1EncodableVector.add(this.extnId);
        if (this.critical) {
            aSN1EncodableVector.add(ASN1Boolean.getInstance(true));
        }
        return tr.r(aSN1EncodableVector, this.value, aSN1EncodableVector);
    }

    public Extension(ASN1ObjectIdentifier aSN1ObjectIdentifier, boolean z, ASN1OctetString aSN1OctetString) {
        this.extnId = aSN1ObjectIdentifier;
        this.critical = z;
        this.value = aSN1OctetString;
    }

    public Extension(ASN1ObjectIdentifier aSN1ObjectIdentifier, boolean z, byte[] bArr) {
        this(aSN1ObjectIdentifier, z, new DEROctetString(Arrays.clone(bArr)));
    }

    public Extension(ASN1ObjectIdentifier aSN1ObjectIdentifier, ASN1Boolean aSN1Boolean, ASN1OctetString aSN1OctetString) {
        this(aSN1ObjectIdentifier, aSN1Boolean.isTrue(), aSN1OctetString);
    }
}
