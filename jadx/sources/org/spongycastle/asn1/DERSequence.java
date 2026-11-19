package org.spongycastle.asn1;

import java.io.IOException;
import java.util.Enumeration;

/* JADX INFO: loaded from: classes5.dex */
public class DERSequence extends ASN1Sequence {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f77756c;

    public DERSequence() {
        this.f77756c = -1;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final void l(ASN1OutputStream aSN1OutputStream) throws IOException {
        DEROutputStream dEROutputStreamA = aSN1OutputStream.a();
        int iV = v();
        aSN1OutputStream.c(48);
        aSN1OutputStream.f(iV);
        Enumeration enumerationElements = this.f77718b.elements();
        while (enumerationElements.hasMoreElements()) {
            dEROutputStreamA.g((ASN1Encodable) enumerationElements.nextElement());
        }
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final int m() {
        int iV = v();
        return StreamUtil.a(iV) + 1 + iV;
    }

    public final int v() {
        if (this.f77756c < 0) {
            Enumeration enumerationElements = this.f77718b.elements();
            int iM = 0;
            while (enumerationElements.hasMoreElements()) {
                iM += ((ASN1Encodable) enumerationElements.nextElement()).toASN1Primitive().p().m();
            }
            this.f77756c = iM;
        }
        return this.f77756c;
    }

    public DERSequence(ASN1Encodable aSN1Encodable) {
        super(aSN1Encodable);
        this.f77756c = -1;
    }

    public DERSequence(ASN1EncodableVector aSN1EncodableVector) {
        super(aSN1EncodableVector);
        this.f77756c = -1;
    }

    public DERSequence(ASN1Encodable[] aSN1EncodableArr) {
        super(aSN1EncodableArr);
        this.f77756c = -1;
    }
}
