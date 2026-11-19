package org.bouncycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public class DLTaggedObject extends ASN1TaggedObject {
    public DLTaggedObject(int i2, int i3, ASN1Encodable aSN1Encodable) {
        super(true, i2, i3, aSN1Encodable);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public void encode(ASN1OutputStream aSN1OutputStream, boolean z) throws IOException {
        ASN1Primitive dLObject = this.obj.toASN1Primitive().toDLObject();
        boolean zIsExplicit = isExplicit();
        if (z) {
            int i2 = this.tagClass;
            if (zIsExplicit || dLObject.encodeConstructed()) {
                i2 |= 32;
            }
            aSN1OutputStream.writeIdentifier(true, i2, this.tagNo);
        }
        if (zIsExplicit) {
            aSN1OutputStream.writeDL(dLObject.encodedLength(true));
        }
        dLObject.encode(aSN1OutputStream.getDLSubStream(), zIsExplicit);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean encodeConstructed() {
        return isExplicit() || this.obj.toASN1Primitive().toDLObject().encodeConstructed();
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public int encodedLength(boolean z) throws IOException {
        ASN1Primitive dLObject = this.obj.toASN1Primitive().toDLObject();
        boolean zIsExplicit = isExplicit();
        int iEncodedLength = dLObject.encodedLength(zIsExplicit);
        if (zIsExplicit) {
            iEncodedLength += ASN1OutputStream.getLengthOfDL(iEncodedLength);
        }
        return iEncodedLength + (z ? ASN1OutputStream.getLengthOfIdentifier(this.tagNo) : 0);
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObject
    public ASN1Sequence rebuildConstructed(ASN1Primitive aSN1Primitive) {
        return new DLSequence(aSN1Primitive);
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObject
    public ASN1TaggedObject replaceTag(int i2, int i3) {
        return new DLTaggedObject(this.explicitness, i2, i3, this.obj);
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObject, org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDLObject() {
        return this;
    }

    public DLTaggedObject(int i2, int i3, int i4, ASN1Encodable aSN1Encodable) {
        super(i2, i3, i4, aSN1Encodable);
    }

    public DLTaggedObject(int i2, ASN1Encodable aSN1Encodable) {
        super(true, i2, aSN1Encodable);
    }

    public DLTaggedObject(boolean z, int i2, int i3, ASN1Encodable aSN1Encodable) {
        super(z, i2, i3, aSN1Encodable);
    }

    public DLTaggedObject(boolean z, int i2, ASN1Encodable aSN1Encodable) {
        super(z, i2, aSN1Encodable);
    }
}
