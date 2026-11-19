package org.spongycastle.asn1;

import defpackage.md;
import defpackage.r81;
import java.io.IOException;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Strings;

/* JADX INFO: loaded from: classes5.dex */
public class DERIA5String extends ASN1Primitive implements ASN1String {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f77750b;

    public DERIA5String(String str, boolean z) {
        if (str == null) {
            r81.d("string cannot be null");
            throw null;
        }
        if (z) {
            for (int length = str.length() - 1; length >= 0; length--) {
                if (str.charAt(length) > 127) {
                    md.n("string contains illegal characters");
                    throw null;
                }
            }
        }
        this.f77750b = Strings.b(str);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive, org.spongycastle.asn1.ASN1Object
    public final int hashCode() {
        return Arrays.g(this.f77750b);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean i(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof DERIA5String) {
            return Arrays.a(this.f77750b, ((DERIA5String) aSN1Primitive).f77750b);
        }
        return false;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final void l(ASN1OutputStream aSN1OutputStream) throws IOException {
        aSN1OutputStream.d(22, this.f77750b);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final int m() {
        byte[] bArr = this.f77750b;
        return StreamUtil.a(bArr.length) + 1 + bArr.length;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean o() {
        return false;
    }

    public final String toString() {
        return Strings.a(this.f77750b);
    }

    public DERIA5String(byte[] bArr) {
        this.f77750b = bArr;
    }

    public DERIA5String(String str) {
        this(str, false);
    }
}
