package org.bouncycastle.asn1;

import defpackage.md;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import defpackage.r81;
import java.io.IOException;
import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ASN1TaggedObject extends ASN1Primitive implements ASN1TaggedObjectParser {
    private static final int DECLARED_EXPLICIT = 1;
    private static final int DECLARED_IMPLICIT = 2;
    private static final int PARSED_EXPLICIT = 3;
    private static final int PARSED_IMPLICIT = 4;
    final int explicitness;
    final ASN1Encodable obj;
    final int tagClass;
    final int tagNo;

    public ASN1TaggedObject(int i2, int i3, int i4, ASN1Encodable aSN1Encodable) {
        if (aSN1Encodable == null) {
            r81.d("'obj' cannot be null");
            throw null;
        }
        if (i3 == 0 || (i3 & 192) != i3) {
            md.n(pq0.k(i3, "invalid tag class: "));
            throw null;
        }
        this.explicitness = aSN1Encodable instanceof ASN1Choice ? 1 : i2;
        this.tagClass = i3;
        this.tagNo = i4;
        this.obj = aSN1Encodable;
    }

    private static ASN1TaggedObject checkInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        if (!z) {
            md.n("this method not valid for implicitly tagged tagged objects");
            return null;
        }
        if (aSN1TaggedObject != null) {
            return aSN1TaggedObject;
        }
        r81.d("'taggedObject' cannot be null");
        return null;
    }

    private static ASN1TaggedObject checkedCast(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof ASN1TaggedObject) {
            return (ASN1TaggedObject) aSN1Primitive;
        }
        md.k("unexpected object: ".concat(aSN1Primitive.getClass().getName()));
        return null;
    }

    public static ASN1Primitive createConstructedDL(int i2, int i3, ASN1EncodableVector aSN1EncodableVector) {
        return aSN1EncodableVector.size() == 1 ? new DLTaggedObject(3, i2, i3, aSN1EncodableVector.get(0)) : new DLTaggedObject(4, i2, i3, DLFactory.createSequence(aSN1EncodableVector));
    }

    public static ASN1Primitive createConstructedIL(int i2, int i3, ASN1EncodableVector aSN1EncodableVector) {
        return aSN1EncodableVector.size() == 1 ? new BERTaggedObject(3, i2, i3, aSN1EncodableVector.get(0)) : new BERTaggedObject(4, i2, i3, BERFactory.createSequence(aSN1EncodableVector));
    }

    public static ASN1Primitive createPrimitive(int i2, int i3, byte[] bArr) {
        return new DLTaggedObject(4, i2, i3, new DEROctetString(bArr));
    }

    public static ASN1TaggedObject getInstance(Object obj) {
        String strO;
        if (obj == null || (obj instanceof ASN1TaggedObject)) {
            return (ASN1TaggedObject) obj;
        }
        if (!(obj instanceof ASN1Encodable)) {
            if (obj instanceof byte[]) {
                try {
                    return checkedCast(ASN1Primitive.fromByteArray((byte[]) obj));
                } catch (IOException e2) {
                    strO = n00.o(e2, new StringBuilder("failed to construct tagged object from byte[]: "));
                }
            }
            md.n(strO);
            return null;
        }
        ASN1Primitive aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
        if (aSN1Primitive instanceof ASN1TaggedObject) {
            return (ASN1TaggedObject) aSN1Primitive;
        }
        strO = o60.l(obj, "unknown object in getInstance: ");
        md.n(strO);
        return null;
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public final boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        if (!(aSN1Primitive instanceof ASN1TaggedObject)) {
            return false;
        }
        ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) aSN1Primitive;
        if (this.tagNo != aSN1TaggedObject.tagNo || this.tagClass != aSN1TaggedObject.tagClass) {
            return false;
        }
        if (this.explicitness != aSN1TaggedObject.explicitness && isExplicit() != aSN1TaggedObject.isExplicit()) {
            return false;
        }
        ASN1Primitive aSN1Primitive2 = this.obj.toASN1Primitive();
        ASN1Primitive aSN1Primitive3 = aSN1TaggedObject.obj.toASN1Primitive();
        if (aSN1Primitive2 == aSN1Primitive3) {
            return true;
        }
        if (isExplicit()) {
            return aSN1Primitive2.asn1Equals(aSN1Primitive3);
        }
        try {
            return Arrays.areEqual(getEncoded(), aSN1TaggedObject.getEncoded());
        } catch (IOException unused) {
            return false;
        }
    }

    public ASN1Object getBaseObject() {
        ASN1Encodable aSN1Encodable = this.obj;
        return aSN1Encodable instanceof ASN1Object ? (ASN1Object) aSN1Encodable : aSN1Encodable.toASN1Primitive();
    }

    public ASN1Primitive getBaseUniversal(boolean z, ASN1UniversalType aSN1UniversalType) {
        if (z) {
            if (isExplicit()) {
                return aSN1UniversalType.checkedCast(this.obj.toASN1Primitive());
            }
            md.k("object explicit - implicit expected.");
            return null;
        }
        if (1 == this.explicitness) {
            md.k("object explicit - implicit expected.");
            return null;
        }
        ASN1Primitive aSN1Primitive = this.obj.toASN1Primitive();
        int i2 = this.explicitness;
        if (i2 == 3) {
            return aSN1UniversalType.fromImplicitConstructed(rebuildConstructed(aSN1Primitive));
        }
        if (i2 != 4) {
            return aSN1UniversalType.checkedCast(aSN1Primitive);
        }
        return aSN1Primitive instanceof ASN1Sequence ? aSN1UniversalType.fromImplicitConstructed((ASN1Sequence) aSN1Primitive) : aSN1UniversalType.fromImplicitPrimitive((DEROctetString) aSN1Primitive);
    }

    public ASN1Object getExplicitBaseObject() {
        if (isExplicit()) {
            ASN1Encodable aSN1Encodable = this.obj;
            return aSN1Encodable instanceof ASN1Object ? (ASN1Object) aSN1Encodable : aSN1Encodable.toASN1Primitive();
        }
        md.k("object implicit - explicit expected.");
        return null;
    }

    public ASN1TaggedObject getExplicitBaseTagged() {
        if (isExplicit()) {
            return checkedCast(this.obj.toASN1Primitive());
        }
        md.k("object implicit - explicit expected.");
        return null;
    }

    public ASN1TaggedObject getImplicitBaseTagged(int i2, int i3) {
        if (i2 == 0 || (i2 & 192) != i2) {
            md.n(pq0.k(i2, "invalid base tag class: "));
            return null;
        }
        int i4 = this.explicitness;
        if (i4 != 1) {
            return i4 != 2 ? replaceTag(i2, i3) : ASN1Util.checkTag(checkedCast(this.obj.toASN1Primitive()), i2, i3);
        }
        md.k("object explicit - implicit expected.");
        return null;
    }

    @Override // org.bouncycastle.asn1.InMemoryRepresentable
    public final ASN1Primitive getLoadedObject() {
        return this;
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public int getTagClass() {
        return this.tagClass;
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public int getTagNo() {
        return this.tagNo;
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public boolean hasContextTag(int i2) {
        return this.tagClass == 128 && this.tagNo == i2;
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public boolean hasTag(int i2, int i3) {
        return this.tagClass == i2 && this.tagNo == i3;
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public boolean hasTagClass(int i2) {
        return this.tagClass == i2;
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive, org.bouncycastle.asn1.ASN1Object
    public int hashCode() {
        return this.obj.toASN1Primitive().hashCode() ^ (((this.tagClass * 7919) ^ this.tagNo) ^ (isExplicit() ? 15 : 240));
    }

    public boolean isExplicit() {
        int i2 = this.explicitness;
        return i2 == 1 || i2 == 3;
    }

    public boolean isParsed() {
        int i2 = this.explicitness;
        return i2 == 3 || i2 == 4;
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public ASN1Encodable parseBaseUniversal(boolean z, int i2) throws IOException {
        ASN1Primitive baseUniversal = getBaseUniversal(z, i2);
        if (i2 == 3) {
            return ((ASN1BitString) baseUniversal).parser();
        }
        if (i2 == 4) {
            return ((ASN1OctetString) baseUniversal).parser();
        }
        if (i2 != 16) {
            return i2 != 17 ? baseUniversal : ((ASN1Set) baseUniversal).parser();
        }
        return ((ASN1Sequence) baseUniversal).parser();
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public ASN1Encodable parseExplicitBaseObject() throws IOException {
        return getExplicitBaseObject();
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public ASN1TaggedObjectParser parseExplicitBaseTagged() throws IOException {
        return getExplicitBaseTagged();
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public ASN1TaggedObjectParser parseImplicitBaseTagged(int i2, int i3) throws IOException {
        return getImplicitBaseTagged(i2, i3);
    }

    public abstract ASN1Sequence rebuildConstructed(ASN1Primitive aSN1Primitive);

    public abstract ASN1TaggedObject replaceTag(int i2, int i3);

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDERObject() {
        return new DERTaggedObject(this.explicitness, this.tagClass, this.tagNo, this.obj);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDLObject() {
        return new DLTaggedObject(this.explicitness, this.tagClass, this.tagNo, this.obj);
    }

    public String toString() {
        return ASN1Util.getTagText(this.tagClass, this.tagNo) + this.obj;
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public boolean hasContextTag() {
        return this.tagClass == 128;
    }

    private static ASN1TaggedObject checkInstance(Object obj) {
        if (obj != null) {
            return getInstance(obj);
        }
        r81.d("'obj' cannot be null");
        return null;
    }

    public ASN1TaggedObject(boolean z, int i2, int i3, ASN1Encodable aSN1Encodable) {
        this(z ? 1 : 2, i2, i3, aSN1Encodable);
    }

    public ASN1TaggedObject(boolean z, int i2, ASN1Encodable aSN1Encodable) {
        this(z, 128, i2, aSN1Encodable);
    }

    public static ASN1TaggedObject getInstance(Object obj, int i2) {
        return ASN1Util.checkTagClass(checkInstance(obj), i2);
    }

    public static ASN1TaggedObject getInstance(Object obj, int i2, int i3) {
        return ASN1Util.checkTag(checkInstance(obj), i2, i3);
    }

    public static ASN1TaggedObject getInstance(ASN1TaggedObject aSN1TaggedObject, int i2, int i3, boolean z) {
        return ASN1Util.getExplicitBaseTagged(checkInstance(aSN1TaggedObject, z), i2, i3);
    }

    public static ASN1TaggedObject getInstance(ASN1TaggedObject aSN1TaggedObject, int i2, boolean z) {
        return ASN1Util.getExplicitBaseTagged(checkInstance(aSN1TaggedObject, z), i2);
    }

    public static ASN1TaggedObject getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return ASN1Util.getExplicitContextBaseTagged(checkInstance(aSN1TaggedObject, z));
    }

    public ASN1Primitive getBaseUniversal(boolean z, int i2) {
        ASN1UniversalType aSN1UniversalType = ASN1UniversalTypes.get(i2);
        if (aSN1UniversalType != null) {
            return getBaseUniversal(z, aSN1UniversalType);
        }
        md.n(pq0.k(i2, "unsupported UNIVERSAL tag number: "));
        return null;
    }
}
