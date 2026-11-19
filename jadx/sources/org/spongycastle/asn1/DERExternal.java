package org.spongycastle.asn1;

import defpackage.md;
import defpackage.pq0;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public class DERExternal extends ASN1Primitive {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ASN1ObjectIdentifier f77741b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ASN1Integer f77742c;
    public final ASN1Primitive d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f77743e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ASN1Primitive f77744f;

    public DERExternal(ASN1EncodableVector aSN1EncodableVector) {
        int i2 = 0;
        ASN1Primitive aSN1PrimitiveR = r(0, aSN1EncodableVector);
        if (aSN1PrimitiveR instanceof ASN1ObjectIdentifier) {
            this.f77741b = (ASN1ObjectIdentifier) aSN1PrimitiveR;
            aSN1PrimitiveR = r(1, aSN1EncodableVector);
            i2 = 1;
        }
        if (aSN1PrimitiveR instanceof ASN1Integer) {
            this.f77742c = (ASN1Integer) aSN1PrimitiveR;
            i2++;
            aSN1PrimitiveR = r(i2, aSN1EncodableVector);
        }
        if (!(aSN1PrimitiveR instanceof ASN1TaggedObject)) {
            this.d = aSN1PrimitiveR;
            i2++;
            aSN1PrimitiveR = r(i2, aSN1EncodableVector);
        }
        if (aSN1EncodableVector.f77702a.size() != i2 + 1) {
            md.n("input vector too large");
            throw null;
        }
        if (!(aSN1PrimitiveR instanceof ASN1TaggedObject)) {
            md.n("No tagged object found in vector. Structure doesn't seem to be of type External");
            throw null;
        }
        ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) aSN1PrimitiveR;
        int i3 = aSN1TaggedObject.f77724b;
        if (i3 < 0 || i3 > 2) {
            md.n(pq0.k(i3, "invalid encoding value: "));
            throw null;
        }
        this.f77743e = i3;
        this.f77744f = aSN1TaggedObject.s();
    }

    public static ASN1Primitive r(int i2, ASN1EncodableVector aSN1EncodableVector) {
        if (aSN1EncodableVector.f77702a.size() > i2) {
            return aSN1EncodableVector.b(i2).toASN1Primitive();
        }
        md.n("too few objects in input vector");
        return null;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive, org.spongycastle.asn1.ASN1Object
    public final int hashCode() {
        ASN1ObjectIdentifier aSN1ObjectIdentifier = this.f77741b;
        int iHashCode = aSN1ObjectIdentifier != null ? aSN1ObjectIdentifier.f77710b.hashCode() : 0;
        ASN1Integer aSN1Integer = this.f77742c;
        if (aSN1Integer != null) {
            iHashCode ^= aSN1Integer.hashCode();
        }
        ASN1Primitive aSN1Primitive = this.d;
        if (aSN1Primitive != null) {
            iHashCode ^= aSN1Primitive.hashCode();
        }
        return this.f77744f.hashCode() ^ iHashCode;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean i(ASN1Primitive aSN1Primitive) {
        ASN1Primitive aSN1Primitive2;
        ASN1Integer aSN1Integer;
        ASN1ObjectIdentifier aSN1ObjectIdentifier;
        if (!(aSN1Primitive instanceof DERExternal)) {
            return false;
        }
        if (this == aSN1Primitive) {
            return true;
        }
        DERExternal dERExternal = (DERExternal) aSN1Primitive;
        ASN1ObjectIdentifier aSN1ObjectIdentifier2 = this.f77741b;
        if (aSN1ObjectIdentifier2 != null && ((aSN1ObjectIdentifier = dERExternal.f77741b) == null || !aSN1ObjectIdentifier.equals(aSN1ObjectIdentifier2))) {
            return false;
        }
        ASN1Integer aSN1Integer2 = this.f77742c;
        if (aSN1Integer2 != null && ((aSN1Integer = dERExternal.f77742c) == null || !aSN1Integer.equals(aSN1Integer2))) {
            return false;
        }
        ASN1Primitive aSN1Primitive3 = this.d;
        if (aSN1Primitive3 == null || ((aSN1Primitive2 = dERExternal.d) != null && aSN1Primitive2.equals(aSN1Primitive3))) {
            return this.f77744f.equals(dERExternal.f77744f);
        }
        return false;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final void l(ASN1OutputStream aSN1OutputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ASN1ObjectIdentifier aSN1ObjectIdentifier = this.f77741b;
        if (aSN1ObjectIdentifier != null) {
            byteArrayOutputStream.write(aSN1ObjectIdentifier.h(org.bouncycastle.asn1.ASN1Encoding.DER));
        }
        ASN1Integer aSN1Integer = this.f77742c;
        if (aSN1Integer != null) {
            byteArrayOutputStream.write(aSN1Integer.h(org.bouncycastle.asn1.ASN1Encoding.DER));
        }
        ASN1Primitive aSN1Primitive = this.d;
        if (aSN1Primitive != null) {
            byteArrayOutputStream.write(aSN1Primitive.h(org.bouncycastle.asn1.ASN1Encoding.DER));
        }
        byteArrayOutputStream.write(new DERTaggedObject(true, this.f77743e, this.f77744f).h(org.bouncycastle.asn1.ASN1Encoding.DER));
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        aSN1OutputStream.h(32, 8);
        aSN1OutputStream.f(byteArray.length);
        aSN1OutputStream.f77715a.write(byteArray);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final int m() {
        return f().length;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean o() {
        return true;
    }

    public DERExternal(ASN1ObjectIdentifier aSN1ObjectIdentifier, ASN1Integer aSN1Integer, ASN1Primitive aSN1Primitive, int i2, ASN1Primitive aSN1Primitive2) {
        this.f77741b = aSN1ObjectIdentifier;
        this.f77742c = aSN1Integer;
        this.d = aSN1Primitive;
        if (i2 >= 0 && i2 <= 2) {
            this.f77743e = i2;
            aSN1Primitive2.getClass();
            this.f77744f = aSN1Primitive2;
            return;
        }
        md.n(pq0.k(i2, "invalid encoding value: "));
        throw null;
    }

    public DERExternal(ASN1ObjectIdentifier aSN1ObjectIdentifier, ASN1Integer aSN1Integer, ASN1Primitive aSN1Primitive, DERTaggedObject dERTaggedObject) {
        this(aSN1ObjectIdentifier, aSN1Integer, aSN1Primitive, dERTaggedObject.f77724b, dERTaggedObject);
    }
}
