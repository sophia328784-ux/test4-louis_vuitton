package org.bouncycastle.asn1;

import defpackage.md;
import defpackage.mt;
import defpackage.n00;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public class DLBitStringParser implements ASN1BitStringParser {
    private int padBits = 0;
    private final DefiniteLengthInputStream stream;

    public DLBitStringParser(DefiniteLengthInputStream definiteLengthInputStream) {
        this.stream = definiteLengthInputStream;
    }

    private InputStream getBitStream(boolean z) throws IOException {
        String str;
        int remaining = this.stream.getRemaining();
        if (remaining >= 1) {
            int i2 = this.stream.read();
            this.padBits = i2;
            if (i2 > 0) {
                if (remaining < 2) {
                    str = "zero length data with non-zero pad bits";
                } else if (i2 > 7) {
                    str = "pad bits cannot be greater than 7 or less than 0";
                } else if (z) {
                    mt.e(this.padBits, "expected octet-aligned bitstring, but found padBits: ");
                    return null;
                }
            }
            return this.stream;
        }
        str = "content octets cannot be empty";
        md.k(str);
        return null;
    }

    @Override // org.bouncycastle.asn1.InMemoryRepresentable
    public ASN1Primitive getLoadedObject() throws IOException {
        return ASN1BitString.createPrimitive(this.stream.toByteArray());
    }

    @Override // org.bouncycastle.asn1.ASN1BitStringParser
    public InputStream getOctetStream() throws IOException {
        return getBitStream(true);
    }

    @Override // org.bouncycastle.asn1.ASN1BitStringParser
    public int getPadBits() {
        return this.padBits;
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        try {
            return getLoadedObject();
        } catch (IOException e2) {
            throw new ASN1ParsingException(n00.o(e2, new StringBuilder("IOException converting stream to byte array: ")), e2);
        }
    }

    @Override // org.bouncycastle.asn1.ASN1BitStringParser
    public InputStream getBitStream() throws IOException {
        return getBitStream(false);
    }
}
