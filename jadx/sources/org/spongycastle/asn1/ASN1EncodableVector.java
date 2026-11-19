package org.spongycastle.asn1;

import java.util.Vector;

/* JADX INFO: loaded from: classes5.dex */
public class ASN1EncodableVector {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Vector f77702a = new Vector();

    public final void a(ASN1Encodable aSN1Encodable) {
        this.f77702a.addElement(aSN1Encodable);
    }

    public final ASN1Encodable b(int i2) {
        return (ASN1Encodable) this.f77702a.elementAt(i2);
    }
}
