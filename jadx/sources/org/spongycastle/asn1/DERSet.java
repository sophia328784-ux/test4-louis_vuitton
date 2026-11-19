package org.spongycastle.asn1;

import java.io.IOException;
import java.util.Enumeration;

/* JADX INFO: loaded from: classes5.dex */
public class DERSet extends ASN1Set {
    public int d;

    public DERSet(ASN1EncodableVector aSN1EncodableVector) {
        super(aSN1EncodableVector, true);
        this.d = -1;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final void l(ASN1OutputStream aSN1OutputStream) throws IOException {
        DEROutputStream dEROutputStreamA = aSN1OutputStream.a();
        int iS = s();
        aSN1OutputStream.c(49);
        aSN1OutputStream.f(iS);
        Enumeration enumerationElements = this.f77719b.elements();
        while (enumerationElements.hasMoreElements()) {
            dEROutputStreamA.g((ASN1Encodable) enumerationElements.nextElement());
        }
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final int m() {
        int iS = s();
        return StreamUtil.a(iS) + 1 + iS;
    }

    public final int s() {
        if (this.d < 0) {
            Enumeration enumerationElements = this.f77719b.elements();
            int iM = 0;
            while (enumerationElements.hasMoreElements()) {
                iM += ((ASN1Encodable) enumerationElements.nextElement()).toASN1Primitive().p().m();
            }
            this.d = iM;
        }
        return this.d;
    }

    public DERSet(ASN1Encodable aSN1Encodable) {
        super(aSN1Encodable);
        this.d = -1;
    }

    public DERSet() {
        this.d = -1;
    }

    public DERSet(ASN1Encodable[] aSN1EncodableArr) {
        super(aSN1EncodableArr, true);
        this.d = -1;
    }
}
