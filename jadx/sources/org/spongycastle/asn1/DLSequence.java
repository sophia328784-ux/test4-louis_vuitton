package org.spongycastle.asn1;

import java.io.IOException;
import java.util.Enumeration;

/* JADX INFO: loaded from: classes5.dex */
public class DLSequence extends ASN1Sequence {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f77765c;

    public DLSequence() {
        this.f77765c = -1;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final void l(ASN1OutputStream aSN1OutputStream) throws IOException {
        ASN1OutputStream aSN1OutputStreamB = aSN1OutputStream.b();
        int iV = v();
        aSN1OutputStream.c(48);
        aSN1OutputStream.f(iV);
        Enumeration enumerationElements = this.f77718b.elements();
        while (enumerationElements.hasMoreElements()) {
            aSN1OutputStreamB.g((ASN1Encodable) enumerationElements.nextElement());
        }
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final int m() {
        int iV = v();
        return StreamUtil.a(iV) + 1 + iV;
    }

    public final int v() {
        if (this.f77765c < 0) {
            Enumeration enumerationElements = this.f77718b.elements();
            int iM = 0;
            while (enumerationElements.hasMoreElements()) {
                iM += ((ASN1Encodable) enumerationElements.nextElement()).toASN1Primitive().q().m();
            }
            this.f77765c = iM;
        }
        return this.f77765c;
    }

    public DLSequence(ASN1Encodable aSN1Encodable) {
        super(aSN1Encodable);
        this.f77765c = -1;
    }

    public DLSequence(ASN1EncodableVector aSN1EncodableVector) {
        super(aSN1EncodableVector);
        this.f77765c = -1;
    }

    public DLSequence(ASN1Encodable[] aSN1EncodableArr) {
        super(aSN1EncodableArr);
        this.f77765c = -1;
    }
}
