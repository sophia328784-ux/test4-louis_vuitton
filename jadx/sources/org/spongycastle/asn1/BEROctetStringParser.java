package org.spongycastle.asn1;

import defpackage.n00;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
public class BEROctetStringParser implements ASN1OctetStringParser {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ASN1StreamParser f77733b;

    public BEROctetStringParser(ASN1StreamParser aSN1StreamParser) {
        this.f77733b = aSN1StreamParser;
    }

    @Override // org.spongycastle.asn1.InMemoryRepresentable
    public final ASN1Primitive getLoadedObject() throws IOException {
        InputStream octetStream = getOctetStream();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[4096];
        while (true) {
            int i2 = octetStream.read(bArr, 0, 4096);
            if (i2 < 0) {
                return new BEROctetString(byteArrayOutputStream.toByteArray());
            }
            byteArrayOutputStream.write(bArr, 0, i2);
        }
    }

    @Override // org.spongycastle.asn1.ASN1OctetStringParser
    public final InputStream getOctetStream() {
        return new ConstructedOctetStream(this.f77733b);
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
