package org.spongycastle.asn1;

import java.io.IOException;
import java.util.Enumeration;

/* JADX INFO: loaded from: classes5.dex */
public class BERTaggedObject extends ASN1TaggedObject {
    public BERTaggedObject(int i2) {
        super(false, i2, new BERSequence());
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final void l(ASN1OutputStream aSN1OutputStream) throws IOException {
        Enumeration enumerationElements;
        aSN1OutputStream.h(160, this.f77724b);
        aSN1OutputStream.c(128);
        boolean z = this.f77725c;
        ASN1Encodable aSN1Encodable = this.d;
        if (z) {
            aSN1OutputStream.g(aSN1Encodable);
        } else {
            if (aSN1Encodable instanceof ASN1OctetString) {
                enumerationElements = aSN1Encodable instanceof BEROctetString ? ((BEROctetString) aSN1Encodable).t() : new BEROctetString(((ASN1OctetString) aSN1Encodable).s()).t();
            } else if (aSN1Encodable instanceof ASN1Sequence) {
                enumerationElements = ((ASN1Sequence) aSN1Encodable).t();
            } else {
                if (!(aSN1Encodable instanceof ASN1Set)) {
                    throw new ASN1Exception("not implemented: ".concat(aSN1Encodable.getClass().getName()));
                }
                enumerationElements = ((ASN1Set) aSN1Encodable).f77719b.elements();
            }
            while (enumerationElements.hasMoreElements()) {
                aSN1OutputStream.g((ASN1Encodable) enumerationElements.nextElement());
            }
        }
        aSN1OutputStream.c(0);
        aSN1OutputStream.c(0);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final int m() {
        int iB;
        int iM = this.d.toASN1Primitive().m();
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

    public BERTaggedObject(boolean z, int i2, ASN1Encodable aSN1Encodable) {
        super(z, i2, aSN1Encodable);
    }

    public BERTaggedObject(int i2, ASN1Encodable aSN1Encodable) {
        super(true, i2, aSN1Encodable);
    }
}
