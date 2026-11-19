package org.bouncycastle.asn1.x509.qualified;

import defpackage.md;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.x509.GeneralName;

/* JADX INFO: loaded from: classes3.dex */
public class SemanticsInformation extends ASN1Object {
    private GeneralName[] nameRegistrationAuthorities;
    private ASN1ObjectIdentifier semanticsIdentifier;

    private SemanticsInformation(ASN1Sequence aSN1Sequence) {
        Enumeration objects = aSN1Sequence.getObjects();
        Object objNextElement = null;
        if (aSN1Sequence.size() < 1) {
            md.n("no objects in SemanticsInformation");
            throw null;
        }
        Object objNextElement2 = objects.nextElement();
        if (objNextElement2 instanceof ASN1ObjectIdentifier) {
            this.semanticsIdentifier = ASN1ObjectIdentifier.getInstance(objNextElement2);
            if (objects.hasMoreElements()) {
                objNextElement = objects.nextElement();
            }
        } else {
            objNextElement = objNextElement2;
        }
        if (objNextElement != null) {
            ASN1Sequence aSN1Sequence2 = ASN1Sequence.getInstance(objNextElement);
            this.nameRegistrationAuthorities = new GeneralName[aSN1Sequence2.size()];
            for (int i2 = 0; i2 < aSN1Sequence2.size(); i2++) {
                this.nameRegistrationAuthorities[i2] = GeneralName.getInstance(aSN1Sequence2.getObjectAt(i2));
            }
        }
    }

    private static GeneralName[] cloneNames(GeneralName[] generalNameArr) {
        if (generalNameArr == null) {
            return null;
        }
        GeneralName[] generalNameArr2 = new GeneralName[generalNameArr.length];
        System.arraycopy(generalNameArr, 0, generalNameArr2, 0, generalNameArr.length);
        return generalNameArr2;
    }

    public static SemanticsInformation getInstance(Object obj) {
        if (obj instanceof SemanticsInformation) {
            return (SemanticsInformation) obj;
        }
        if (obj != null) {
            return new SemanticsInformation(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public GeneralName[] getNameRegistrationAuthorities() {
        return cloneNames(this.nameRegistrationAuthorities);
    }

    public ASN1ObjectIdentifier getSemanticsIdentifier() {
        return this.semanticsIdentifier;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector(2);
        ASN1ObjectIdentifier aSN1ObjectIdentifier = this.semanticsIdentifier;
        if (aSN1ObjectIdentifier != null) {
            aSN1EncodableVector.add(aSN1ObjectIdentifier);
        }
        if (this.nameRegistrationAuthorities != null) {
            aSN1EncodableVector.add(new DERSequence(this.nameRegistrationAuthorities));
        }
        return new DERSequence(aSN1EncodableVector);
    }

    public SemanticsInformation(ASN1ObjectIdentifier aSN1ObjectIdentifier, GeneralName[] generalNameArr) {
        this.semanticsIdentifier = aSN1ObjectIdentifier;
        this.nameRegistrationAuthorities = cloneNames(generalNameArr);
    }

    public SemanticsInformation(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        this.semanticsIdentifier = aSN1ObjectIdentifier;
        this.nameRegistrationAuthorities = null;
    }

    public SemanticsInformation(GeneralName[] generalNameArr) {
        this.semanticsIdentifier = null;
        this.nameRegistrationAuthorities = cloneNames(generalNameArr);
    }
}
