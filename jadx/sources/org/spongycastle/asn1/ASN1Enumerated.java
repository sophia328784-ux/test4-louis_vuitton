package org.spongycastle.asn1;

import defpackage.md;
import java.io.IOException;
import java.math.BigInteger;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Properties;

/* JADX INFO: loaded from: classes5.dex */
public class ASN1Enumerated extends ASN1Primitive {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ASN1Enumerated[] f77703c = new ASN1Enumerated[12];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f77704b;

    public ASN1Enumerated(byte[] bArr) {
        if (Properties.a() || !ASN1Integer.t(bArr)) {
            this.f77704b = Arrays.c(bArr);
        } else {
            md.n("malformed enumerated");
            throw null;
        }
    }

    @Override // org.spongycastle.asn1.ASN1Primitive, org.spongycastle.asn1.ASN1Object
    public final int hashCode() {
        return Arrays.g(this.f77704b);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean i(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof ASN1Enumerated) {
            return Arrays.a(this.f77704b, ((ASN1Enumerated) aSN1Primitive).f77704b);
        }
        return false;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final void l(ASN1OutputStream aSN1OutputStream) throws IOException {
        aSN1OutputStream.d(10, this.f77704b);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final int m() {
        byte[] bArr = this.f77704b;
        return StreamUtil.a(bArr.length) + 1 + bArr.length;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean o() {
        return false;
    }

    public ASN1Enumerated(BigInteger bigInteger) {
        this.f77704b = bigInteger.toByteArray();
    }

    public ASN1Enumerated(int i2) {
        this.f77704b = BigInteger.valueOf(i2).toByteArray();
    }
}
