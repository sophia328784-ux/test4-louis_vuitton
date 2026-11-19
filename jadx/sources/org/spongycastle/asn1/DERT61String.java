package org.spongycastle.asn1;

import java.io.IOException;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Strings;

/* JADX INFO: loaded from: classes5.dex */
public class DERT61String extends ASN1Primitive implements ASN1String {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f77759b;

    public DERT61String(String str) {
        this.f77759b = Strings.b(str);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive, org.spongycastle.asn1.ASN1Object
    public final int hashCode() {
        return Arrays.g(this.f77759b);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean i(ASN1Primitive aSN1Primitive) {
        if (!(aSN1Primitive instanceof DERT61String)) {
            return false;
        }
        return Arrays.a(this.f77759b, ((DERT61String) aSN1Primitive).f77759b);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final void l(ASN1OutputStream aSN1OutputStream) throws IOException {
        aSN1OutputStream.d(20, this.f77759b);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final int m() {
        byte[] bArr = this.f77759b;
        return StreamUtil.a(bArr.length) + 1 + bArr.length;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean o() {
        return false;
    }

    public final String toString() {
        return Strings.a(this.f77759b);
    }

    public DERT61String(byte[] bArr) {
        this.f77759b = Arrays.c(bArr);
    }
}
