package org.spongycastle.asn1;

import defpackage.md;
import defpackage.n00;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ASN1TaggedObject extends ASN1Primitive implements ASN1TaggedObjectParser {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f77724b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f77725c;
    public final ASN1Encodable d;

    public ASN1TaggedObject(boolean z, int i2, ASN1Encodable aSN1Encodable) {
        this.f77725c = true;
        this.d = null;
        if (aSN1Encodable instanceof ASN1Choice) {
            this.f77725c = true;
        } else {
            this.f77725c = z;
        }
        this.f77724b = i2;
        if (this.f77725c) {
            this.d = aSN1Encodable;
        } else {
            aSN1Encodable.toASN1Primitive();
            this.d = aSN1Encodable;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ASN1TaggedObject r(ASN1Encodable aSN1Encodable) {
        if (aSN1Encodable == 0 || (aSN1Encodable instanceof ASN1TaggedObject)) {
            return (ASN1TaggedObject) aSN1Encodable;
        }
        if (!(aSN1Encodable instanceof byte[])) {
            md.n("unknown object in getInstance: ".concat(aSN1Encodable.getClass().getName()));
            return null;
        }
        try {
            return r(ASN1Primitive.n((byte[]) aSN1Encodable));
        } catch (IOException e2) {
            md.n(n00.o(e2, new StringBuilder("failed to construct tagged object from byte[]: ")));
            return null;
        }
    }

    @Override // org.spongycastle.asn1.InMemoryRepresentable
    public final ASN1Primitive getLoadedObject() {
        return this;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive, org.spongycastle.asn1.ASN1Object
    public final int hashCode() {
        int i2 = this.f77724b;
        ASN1Encodable aSN1Encodable = this.d;
        return aSN1Encodable != null ? aSN1Encodable.hashCode() ^ i2 : i2;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean i(ASN1Primitive aSN1Primitive) {
        if (!(aSN1Primitive instanceof ASN1TaggedObject)) {
            return false;
        }
        ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) aSN1Primitive;
        ASN1Encodable aSN1Encodable = aSN1TaggedObject.d;
        if (this.f77724b != aSN1TaggedObject.f77724b || this.f77725c != aSN1TaggedObject.f77725c) {
            return false;
        }
        ASN1Encodable aSN1Encodable2 = this.d;
        if (aSN1Encodable2 == null) {
            return aSN1Encodable == null;
        }
        return aSN1Encodable2.toASN1Primitive().equals(aSN1Encodable.toASN1Primitive());
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final ASN1Primitive p() {
        return new DERTaggedObject(this.f77725c, this.f77724b, this.d);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final ASN1Primitive q() {
        return new DLTaggedObject(this.f77725c, this.f77724b, this.d);
    }

    public final ASN1Primitive s() {
        ASN1Encodable aSN1Encodable = this.d;
        if (aSN1Encodable != null) {
            return aSN1Encodable.toASN1Primitive();
        }
        return null;
    }

    public final String toString() {
        return "[" + this.f77724b + "]" + this.d;
    }
}
