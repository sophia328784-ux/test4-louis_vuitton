package org.spongycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public class DLBitString extends ASN1BitString {
    public DLBitString(ASN1Encodable aSN1Encodable) throws IOException {
        super(aSN1Encodable.toASN1Primitive().h(org.bouncycastle.asn1.ASN1Encoding.DER), 0);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final void l(ASN1OutputStream aSN1OutputStream) throws IOException {
        byte[] bArr = this.f77696b;
        int length = bArr.length;
        byte[] bArr2 = new byte[length + 1];
        bArr2[0] = (byte) this.f77697c;
        System.arraycopy(bArr, 0, bArr2, 1, length);
        aSN1OutputStream.d(3, bArr2);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final int m() {
        byte[] bArr = this.f77696b;
        return StreamUtil.a(bArr.length + 1) + 1 + bArr.length + 1;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean o() {
        return false;
    }

    public DLBitString(byte[] bArr) {
        this(bArr, 0);
    }

    public DLBitString(int i2) {
        super(ASN1BitString.s(i2), ASN1BitString.t(i2));
    }

    public DLBitString(byte[] bArr, int i2) {
        super(bArr, i2);
    }
}
