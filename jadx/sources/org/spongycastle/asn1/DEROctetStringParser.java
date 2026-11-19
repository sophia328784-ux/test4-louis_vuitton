package org.spongycastle.asn1;

import defpackage.n00;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
public class DEROctetStringParser implements ASN1OctetStringParser {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public DefiniteLengthInputStream f77754b;

    @Override // org.spongycastle.asn1.InMemoryRepresentable
    public final ASN1Primitive getLoadedObject() {
        return new DEROctetString(this.f77754b.k());
    }

    @Override // org.spongycastle.asn1.ASN1OctetStringParser
    public final InputStream getOctetStream() {
        return this.f77754b;
    }

    @Override // org.spongycastle.asn1.ASN1Encodable
    public final ASN1Primitive toASN1Primitive() {
        try {
            return getLoadedObject();
        } catch (IOException e2) {
            throw new ASN1ParsingException(n00.o(e2, new StringBuilder("IOException converting stream to byte array: ")), e2);
        }
    }
}
