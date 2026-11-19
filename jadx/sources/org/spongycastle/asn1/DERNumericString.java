package org.spongycastle.asn1;

import defpackage.md;
import java.io.IOException;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Strings;

/* JADX INFO: loaded from: classes5.dex */
public class DERNumericString extends ASN1Primitive implements ASN1String {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f77753b;

    public DERNumericString(String str, boolean z) {
        if (z) {
            for (int length = str.length() - 1; length >= 0; length--) {
                char cCharAt = str.charAt(length);
                if (cCharAt > 127 || (('0' > cCharAt || cCharAt > '9') && cCharAt != ' ')) {
                    md.n("string contains illegal characters");
                    throw null;
                }
            }
        }
        this.f77753b = Strings.b(str);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive, org.spongycastle.asn1.ASN1Object
    public final int hashCode() {
        return Arrays.g(this.f77753b);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean i(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof DERNumericString) {
            return Arrays.a(this.f77753b, ((DERNumericString) aSN1Primitive).f77753b);
        }
        return false;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final void l(ASN1OutputStream aSN1OutputStream) throws IOException {
        aSN1OutputStream.d(18, this.f77753b);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final int m() {
        byte[] bArr = this.f77753b;
        return StreamUtil.a(bArr.length) + 1 + bArr.length;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean o() {
        return false;
    }

    public final String toString() {
        return Strings.a(this.f77753b);
    }

    public DERNumericString(byte[] bArr) {
        this.f77753b = bArr;
    }

    public DERNumericString(String str) {
        this(str, false);
    }
}
