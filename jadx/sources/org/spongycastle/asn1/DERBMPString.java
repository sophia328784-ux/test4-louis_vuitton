package org.spongycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public class DERBMPString extends ASN1Primitive implements ASN1String {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final char[] f77740b;

    public DERBMPString(String str) {
        this.f77740b = str.toCharArray();
    }

    @Override // org.spongycastle.asn1.ASN1Primitive, org.spongycastle.asn1.ASN1Object
    public final int hashCode() {
        char[] cArr = this.f77740b;
        if (cArr == null) {
            return 0;
        }
        int length = cArr.length;
        int i2 = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return i2;
            }
            i2 = (i2 * 257) ^ cArr[length];
        }
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean i(ASN1Primitive aSN1Primitive) {
        if (!(aSN1Primitive instanceof DERBMPString)) {
            return false;
        }
        char[] cArr = ((DERBMPString) aSN1Primitive).f77740b;
        char[] cArr2 = this.f77740b;
        if (cArr2 == cArr) {
            return true;
        }
        if (cArr2 != null && cArr != null && cArr2.length == cArr.length) {
            for (int i2 = 0; i2 != cArr2.length; i2++) {
                if (cArr2[i2] == cArr[i2]) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final void l(ASN1OutputStream aSN1OutputStream) throws IOException {
        aSN1OutputStream.c(30);
        char[] cArr = this.f77740b;
        aSN1OutputStream.f(cArr.length * 2);
        for (int i2 = 0; i2 != cArr.length; i2++) {
            char c2 = cArr[i2];
            aSN1OutputStream.c((byte) (c2 >> '\b'));
            aSN1OutputStream.c((byte) c2);
        }
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final int m() {
        char[] cArr = this.f77740b;
        return (cArr.length * 2) + StreamUtil.a(cArr.length * 2) + 1;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean o() {
        return false;
    }

    public final String toString() {
        return new String(this.f77740b);
    }

    public DERBMPString(char[] cArr) {
        this.f77740b = cArr;
    }
}
