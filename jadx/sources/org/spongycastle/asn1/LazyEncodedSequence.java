package org.spongycastle.asn1;

import java.io.IOException;
import java.util.Enumeration;

/* JADX INFO: loaded from: classes5.dex */
class LazyEncodedSequence extends ASN1Sequence {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte[] f77772c;

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final void l(ASN1OutputStream aSN1OutputStream) throws IOException {
        byte[] bArr = this.f77772c;
        if (bArr != null) {
            aSN1OutputStream.d(48, bArr);
        } else {
            super.q().l(aSN1OutputStream);
        }
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final int m() {
        byte[] bArr = this.f77772c;
        return bArr != null ? StreamUtil.a(bArr.length) + 1 + this.f77772c.length : super.q().m();
    }

    @Override // org.spongycastle.asn1.ASN1Sequence, org.spongycastle.asn1.ASN1Primitive
    public final ASN1Primitive p() {
        if (this.f77772c != null) {
            v();
        }
        return super.p();
    }

    @Override // org.spongycastle.asn1.ASN1Sequence, org.spongycastle.asn1.ASN1Primitive
    public final ASN1Primitive q() {
        if (this.f77772c != null) {
            v();
        }
        return super.q();
    }

    @Override // org.spongycastle.asn1.ASN1Sequence
    public final synchronized ASN1Encodable s(int i2) {
        try {
            if (this.f77772c != null) {
                v();
            }
        } catch (Throwable th) {
            throw th;
        }
        return super.s(i2);
    }

    @Override // org.spongycastle.asn1.ASN1Sequence
    public final synchronized int size() {
        try {
            if (this.f77772c != null) {
                v();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f77718b.size();
    }

    @Override // org.spongycastle.asn1.ASN1Sequence
    public final synchronized Enumeration t() {
        byte[] bArr = this.f77772c;
        if (bArr == null) {
            return this.f77718b.elements();
        }
        return new LazyConstructionEnumeration(bArr);
    }

    public final void v() {
        LazyConstructionEnumeration lazyConstructionEnumeration = new LazyConstructionEnumeration(this.f77772c);
        while (lazyConstructionEnumeration.hasMoreElements()) {
            this.f77718b.addElement(lazyConstructionEnumeration.nextElement());
        }
        this.f77772c = null;
    }
}
