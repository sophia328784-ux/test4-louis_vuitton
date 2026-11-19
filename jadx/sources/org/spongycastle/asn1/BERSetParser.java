package org.spongycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public class BERSetParser implements ASN1SetParser {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ASN1StreamParser f77735b;

    public BERSetParser(ASN1StreamParser aSN1StreamParser) {
        this.f77735b = aSN1StreamParser;
    }

    @Override // org.spongycastle.asn1.InMemoryRepresentable
    public final ASN1Primitive getLoadedObject() {
        return new BERSet(this.f77735b.c());
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
