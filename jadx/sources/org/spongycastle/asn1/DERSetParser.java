package org.spongycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public class DERSetParser implements ASN1SetParser {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ASN1StreamParser f77758b;

    @Override // org.spongycastle.asn1.InMemoryRepresentable
    public final ASN1Primitive getLoadedObject() {
        DERSet dERSet = new DERSet(this.f77758b.c(), false);
        dERSet.d = -1;
        return dERSet;
    }

    @Override // org.spongycastle.asn1.ASN1Encodable
    public final ASN1Primitive toASN1Primitive() {
        try {
            return getLoadedObject();
        } catch (IOException e2) {
            throw new ASN1ParsingException(e2.getMessage(), e2);
        }
    }
}
