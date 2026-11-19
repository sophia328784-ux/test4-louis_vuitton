package org.spongycastle.asn1;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ASN1Null extends ASN1Primitive {
    @Override // org.spongycastle.asn1.ASN1Primitive, org.spongycastle.asn1.ASN1Object
    public final int hashCode() {
        return -1;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean i(ASN1Primitive aSN1Primitive) {
        return aSN1Primitive instanceof ASN1Null;
    }

    public final String toString() {
        return "NULL";
    }
}
