package org.spongycastle.asn1;

import java.io.IOException;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class DERBitString extends ASN1BitString {
    public DERBitString(ASN1Encodable aSN1Encodable) throws IOException {
        super(aSN1Encodable.toASN1Primitive().h(org.bouncycastle.asn1.ASN1Encoding.DER), 0);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final void l(ASN1OutputStream aSN1OutputStream) throws IOException {
        byte[] bArr = this.f77696b;
        byte[] bArrC = Arrays.c(bArr);
        int i2 = this.f77697c;
        if (i2 > 0) {
            int length = bArr.length - 1;
            bArrC[length] = (byte) (bArrC[length] & (255 << i2));
        }
        int length2 = bArrC.length;
        byte[] bArr2 = new byte[length2 + 1];
        bArr2[0] = (byte) i2;
        System.arraycopy(bArrC, 0, bArr2, 1, length2);
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

    public DERBitString(byte[] bArr) {
        this(bArr, 0);
    }

    public DERBitString(int i2) {
        super(ASN1BitString.s(i2), ASN1BitString.t(i2));
    }

    public DERBitString(byte[] bArr, int i2) {
        super(bArr, i2);
    }
}
