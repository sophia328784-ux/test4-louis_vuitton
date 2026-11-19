package org.spongycastle.asn1;

import defpackage.o60;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public class BERApplicationSpecific extends ASN1ApplicationSpecific {
    public BERApplicationSpecific(int i2, ASN1EncodableVector aSN1EncodableVector) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (int i3 = 0; i3 != aSN1EncodableVector.f77702a.size(); i3++) {
            try {
                byteArrayOutputStream.write(((ASN1Object) aSN1EncodableVector.b(i3)).h(org.bouncycastle.asn1.ASN1Encoding.BER));
            } catch (IOException e2) {
                throw new ASN1ParsingException(o60.m("malformed object: ", e2), e2);
            }
        }
        super(i2, byteArrayOutputStream.toByteArray(), true);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final void l(ASN1OutputStream aSN1OutputStream) throws IOException {
        aSN1OutputStream.h(this.f77694b ? 96 : 64, this.f77695c);
        aSN1OutputStream.c(128);
        aSN1OutputStream.f77715a.write(this.d);
        aSN1OutputStream.c(0);
        aSN1OutputStream.c(0);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public BERApplicationSpecific(boolean z, int i2, ASN1Encodable aSN1Encodable) throws IOException {
        boolean z2 = z || aSN1Encodable.toASN1Primitive().o();
        byte[] bArrH = aSN1Encodable.toASN1Primitive().h(org.bouncycastle.asn1.ASN1Encoding.BER);
        if (!z) {
            int iR = ASN1ApplicationSpecific.r(bArrH);
            int length = bArrH.length - iR;
            byte[] bArr = new byte[length];
            System.arraycopy(bArrH, iR, bArr, 0, length);
            bArrH = bArr;
        }
        super(i2, bArrH, z2);
    }

    public BERApplicationSpecific(int i2, ASN1Encodable aSN1Encodable) throws IOException {
        this(true, i2, aSN1Encodable);
    }
}
