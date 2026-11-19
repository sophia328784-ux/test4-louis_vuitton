package org.spongycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public class DLTaggedObject extends ASN1TaggedObject {
    public DLTaggedObject(boolean z, int i2, ASN1Encodable aSN1Encodable) {
        super(z, i2, aSN1Encodable);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final void l(ASN1OutputStream aSN1OutputStream) throws IOException {
        ASN1Primitive aSN1PrimitiveQ = this.d.toASN1Primitive().q();
        boolean z = this.f77725c;
        int i2 = this.f77724b;
        if (!z) {
            aSN1OutputStream.h(aSN1PrimitiveQ.o() ? 160 : 128, i2);
            aSN1OutputStream.e(aSN1PrimitiveQ);
        } else {
            aSN1OutputStream.h(160, i2);
            aSN1OutputStream.f(aSN1PrimitiveQ.m());
            aSN1OutputStream.g(aSN1PrimitiveQ);
        }
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final int m() {
        int iB;
        int iM = this.d.toASN1Primitive().q().m();
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
        return this.d.toASN1Primitive().q().o();
    }
}
