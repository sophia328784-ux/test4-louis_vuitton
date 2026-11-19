package org.spongycastle.asn1;

import defpackage.az;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes5.dex */
public class DLOutputStream extends ASN1OutputStream {
    public DLOutputStream(OutputStream outputStream) {
        super(outputStream);
    }

    @Override // org.spongycastle.asn1.ASN1OutputStream
    public final void g(ASN1Encodable aSN1Encodable) {
        if (aSN1Encodable != null) {
            aSN1Encodable.toASN1Primitive().q().l(this);
        } else {
            az.o("null object detected");
        }
    }
}
