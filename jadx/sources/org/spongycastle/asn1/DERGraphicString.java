package org.spongycastle.asn1;

import java.io.IOException;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class DERGraphicString extends ASN1Primitive implements ASN1String {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f77749b;

    public DERGraphicString(byte[] bArr) {
        this.f77749b = Arrays.c(bArr);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive, org.spongycastle.asn1.ASN1Object
    public final int hashCode() {
        return Arrays.g(this.f77749b);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean i(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof DERGraphicString) {
            return Arrays.a(this.f77749b, ((DERGraphicString) aSN1Primitive).f77749b);
        }
        return false;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final void l(ASN1OutputStream aSN1OutputStream) throws IOException {
        aSN1OutputStream.d(25, this.f77749b);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final int m() {
        byte[] bArr = this.f77749b;
        return StreamUtil.a(bArr.length) + 1 + bArr.length;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean o() {
        return false;
    }
}
