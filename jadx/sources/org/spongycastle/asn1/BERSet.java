package org.spongycastle.asn1;

import java.io.IOException;
import java.util.Enumeration;

/* JADX INFO: loaded from: classes5.dex */
public class BERSet extends ASN1Set {
    public BERSet(ASN1EncodableVector aSN1EncodableVector) {
        super(aSN1EncodableVector, false);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final void l(ASN1OutputStream aSN1OutputStream) throws IOException {
        aSN1OutputStream.c(49);
        aSN1OutputStream.c(128);
        Enumeration enumerationElements = this.f77719b.elements();
        while (enumerationElements.hasMoreElements()) {
            aSN1OutputStream.g((ASN1Encodable) enumerationElements.nextElement());
        }
        aSN1OutputStream.c(0);
        aSN1OutputStream.c(0);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final int m() {
        Enumeration enumerationElements = this.f77719b.elements();
        int iM = 0;
        while (enumerationElements.hasMoreElements()) {
            iM += ((ASN1Encodable) enumerationElements.nextElement()).toASN1Primitive().m();
        }
        return iM + 4;
    }

    public BERSet(ASN1Encodable aSN1Encodable) {
        super(aSN1Encodable);
    }

    public BERSet() {
    }

    public BERSet(ASN1Encodable[] aSN1EncodableArr) {
        super(aSN1EncodableArr, false);
    }
}
