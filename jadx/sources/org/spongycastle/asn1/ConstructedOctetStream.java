package org.spongycastle.asn1;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
class ConstructedOctetStream extends InputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ASN1StreamParser f77738b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f77739c = true;
    public InputStream d;

    public ConstructedOctetStream(ASN1StreamParser aSN1StreamParser) {
        this.f77738b = aSN1StreamParser;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i2, int i3) throws IOException {
        ASN1OctetStringParser aSN1OctetStringParser;
        InputStream inputStream = this.d;
        int i4 = 0;
        ASN1StreamParser aSN1StreamParser = this.f77738b;
        if (inputStream == null) {
            if (!this.f77739c || (aSN1OctetStringParser = (ASN1OctetStringParser) aSN1StreamParser.a()) == null) {
                return -1;
            }
            this.f77739c = false;
            this.d = aSN1OctetStringParser.getOctetStream();
        }
        while (true) {
            int i5 = this.d.read(bArr, i2 + i4, i3 - i4);
            if (i5 >= 0) {
                i4 += i5;
                if (i4 == i3) {
                    return i4;
                }
            } else {
                ASN1OctetStringParser aSN1OctetStringParser2 = (ASN1OctetStringParser) aSN1StreamParser.a();
                if (aSN1OctetStringParser2 == null) {
                    this.d = null;
                    if (i4 < 1) {
                        return -1;
                    }
                    return i4;
                }
                this.d = aSN1OctetStringParser2.getOctetStream();
            }
        }
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        ASN1OctetStringParser aSN1OctetStringParser;
        InputStream inputStream = this.d;
        ASN1StreamParser aSN1StreamParser = this.f77738b;
        if (inputStream == null) {
            if (!this.f77739c || (aSN1OctetStringParser = (ASN1OctetStringParser) aSN1StreamParser.a()) == null) {
                return -1;
            }
            this.f77739c = false;
            this.d = aSN1OctetStringParser.getOctetStream();
        }
        while (true) {
            int i2 = this.d.read();
            if (i2 >= 0) {
                return i2;
            }
            ASN1OctetStringParser aSN1OctetStringParser2 = (ASN1OctetStringParser) aSN1StreamParser.a();
            if (aSN1OctetStringParser2 == null) {
                this.d = null;
                return -1;
            }
            this.d = aSN1OctetStringParser2.getOctetStream();
        }
    }
}
