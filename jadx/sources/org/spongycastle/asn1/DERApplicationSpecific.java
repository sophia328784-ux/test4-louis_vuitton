package org.spongycastle.asn1;

import defpackage.o60;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.spongycastle.util.Strings;
import org.spongycastle.util.encoders.Hex;

/* JADX INFO: loaded from: classes5.dex */
public class DERApplicationSpecific extends ASN1ApplicationSpecific {
    public DERApplicationSpecific(int i2, ASN1EncodableVector aSN1EncodableVector) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (int i3 = 0; i3 != aSN1EncodableVector.f77702a.size(); i3++) {
            try {
                byteArrayOutputStream.write(((ASN1Object) aSN1EncodableVector.b(i3)).h(org.bouncycastle.asn1.ASN1Encoding.DER));
            } catch (IOException e2) {
                throw new ASN1ParsingException(o60.m("malformed object: ", e2), e2);
            }
        }
        super(i2, byteArrayOutputStream.toByteArray(), true);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final void l(ASN1OutputStream aSN1OutputStream) throws IOException {
        aSN1OutputStream.h(this.f77694b ? 96 : 64, this.f77695c);
        byte[] bArr = this.d;
        aSN1OutputStream.f(bArr.length);
        aSN1OutputStream.f77715a.write(bArr);
    }

    public final String toString() {
        StringBuffer stringBuffer = new StringBuffer("[");
        if (this.f77694b) {
            stringBuffer.append("CONSTRUCTED ");
        }
        stringBuffer.append("APPLICATION ");
        stringBuffer.append(Integer.toString(this.f77695c));
        stringBuffer.append("]");
        byte[] bArr = this.d;
        if (bArr != null) {
            stringBuffer.append(" #");
            stringBuffer.append(Strings.a(Hex.b(bArr.length, bArr)));
        } else {
            stringBuffer.append(" #null");
        }
        stringBuffer.append(" ");
        return stringBuffer.toString();
    }

    public DERApplicationSpecific(int i2, ASN1Encodable aSN1Encodable) throws IOException {
        this(true, i2, aSN1Encodable);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public DERApplicationSpecific(boolean z, int i2, ASN1Encodable aSN1Encodable) throws IOException {
        boolean z2 = z || aSN1Encodable.toASN1Primitive().o();
        byte[] bArrH = aSN1Encodable.toASN1Primitive().h(org.bouncycastle.asn1.ASN1Encoding.DER);
        if (!z) {
            int iR = ASN1ApplicationSpecific.r(bArrH);
            int length = bArrH.length - iR;
            byte[] bArr = new byte[length];
            System.arraycopy(bArrH, iR, bArr, 0, length);
            bArrH = bArr;
        }
        super(i2, bArrH, z2);
    }

    public DERApplicationSpecific(int i2, byte[] bArr) {
        super(i2, bArr, false);
    }
}
