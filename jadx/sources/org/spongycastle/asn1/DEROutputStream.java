package org.spongycastle.asn1;

import defpackage.az;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes5.dex */
public class DEROutputStream extends ASN1OutputStream {
    public DEROutputStream(OutputStream outputStream) {
        super(outputStream);
    }

    @Override // org.spongycastle.asn1.ASN1OutputStream
    public final DEROutputStream a() {
        return this;
    }

    @Override // org.spongycastle.asn1.ASN1OutputStream
    public final ASN1OutputStream b() {
        return this;
    }

    @Override // org.spongycastle.asn1.ASN1OutputStream
    public final void g(ASN1Encodable aSN1Encodable) {
        if (aSN1Encodable != null) {
            aSN1Encodable.toASN1Primitive().p().l(this);
        } else {
            az.o("null object detected");
        }
    }
}
