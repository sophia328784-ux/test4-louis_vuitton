package org.spongycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public class DERExternalParser implements ASN1Encodable, InMemoryRepresentable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ASN1StreamParser f77745b;

    public DERExternalParser(ASN1StreamParser aSN1StreamParser) {
        this.f77745b = aSN1StreamParser;
    }

    @Override // org.spongycastle.asn1.InMemoryRepresentable
    public final ASN1Primitive getLoadedObject() throws ASN1Exception {
        try {
            return new DERExternal(this.f77745b.c());
        } catch (IllegalArgumentException e2) {
            throw new ASN1Exception(e2.getMessage(), e2);
        }
    }

    @Override // org.spongycastle.asn1.ASN1Encodable
    public final ASN1Primitive toASN1Primitive() {
        try {
            return getLoadedObject();
        } catch (IOException e2) {
            throw new ASN1ParsingException("unable to get DER object", e2);
        } catch (IllegalArgumentException e3) {
            throw new ASN1ParsingException("unable to get DER object", e3);
        }
    }
}
