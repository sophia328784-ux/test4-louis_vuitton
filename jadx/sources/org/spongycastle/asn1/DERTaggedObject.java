package org.spongycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public class DERTaggedObject extends ASN1TaggedObject {
    public DERTaggedObject(int i2, ASN1Encodable aSN1Encodable) {
        super(true, i2, aSN1Encodable);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final void l(ASN1OutputStream aSN1OutputStream) throws IOException {
        ASN1Primitive aSN1PrimitiveP = this.d.toASN1Primitive().p();
        boolean z = this.f77725c;
        int i2 = this.f77724b;
        if (!z) {
            aSN1OutputStream.h(aSN1PrimitiveP.o() ? 160 : 128, i2);
            aSN1OutputStream.e(aSN1PrimitiveP);
        } else {
            aSN1OutputStream.h(160, i2);
            aSN1OutputStream.f(aSN1PrimitiveP.m());
            aSN1OutputStream.g(aSN1PrimitiveP);
        }
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final int m() {
        int iB;
        int iM = this.d.toASN1Primitive().p().m();
        boolean z = this.f77725c;
        int i2 = this.f77724b;
        if (z) {
            iB = StreamUtil.b(i2) + StreamUtil.a(iM);
        } else {
            iM--;
            iB = StreamUtil.b(i2);
        }
        return iB + iM;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean o() {
        if (this.f77725c) {
            return true;
        }
        return this.d.toASN1Primitive().p().o();
    }

    public DERTaggedObject(boolean z, int i2, ASN1Encodable aSN1Encodable) {
        super(z, i2, aSN1Encodable);
    }
}
