package org.spongycastle.asn1;

import defpackage.az;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ASN1Primitive extends ASN1Object {
    public static ASN1Primitive n(byte[] bArr) throws IOException {
        ASN1InputStream aSN1InputStream = new ASN1InputStream(bArr);
        try {
            ASN1Primitive aSN1PrimitiveJ = aSN1InputStream.j();
            if (aSN1InputStream.available() == 0) {
                return aSN1PrimitiveJ;
            }
            throw new IOException("Extra data detected in stream");
        } catch (ClassCastException unused) {
            az.o("cannot recognise object in stream");
            return null;
        }
    }

    @Override // org.spongycastle.asn1.ASN1Object
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ASN1Encodable) && i(((ASN1Encodable) obj).toASN1Primitive());
    }

    @Override // org.spongycastle.asn1.ASN1Object
    public abstract int hashCode();

    public abstract boolean i(ASN1Primitive aSN1Primitive);

    public abstract void l(ASN1OutputStream aSN1OutputStream);

    public abstract int m();

    public abstract boolean o();

    public ASN1Primitive p() {
        return this;
    }

    public ASN1Primitive q() {
        return this;
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public final ASN1Primitive toASN1Primitive() {
        return this;
    }
}
