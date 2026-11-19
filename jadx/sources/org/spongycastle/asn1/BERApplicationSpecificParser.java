package org.spongycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public class BERApplicationSpecificParser implements ASN1ApplicationSpecificParser {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f77727b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ASN1StreamParser f77728c;

    public BERApplicationSpecificParser(int i2, ASN1StreamParser aSN1StreamParser) {
        this.f77727b = i2;
        this.f77728c = aSN1StreamParser;
    }

    @Override // org.spongycastle.asn1.InMemoryRepresentable
    public final ASN1Primitive getLoadedObject() {
        return new BERApplicationSpecific(this.f77727b, this.f77728c.c());
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
