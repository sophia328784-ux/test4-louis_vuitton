package org.spongycastle.asn1;

import defpackage.md;
import defpackage.pq0;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ASN1ApplicationSpecific extends ASN1Primitive {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f77694b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f77695c;
    public final byte[] d;

    public ASN1ApplicationSpecific(int i2, byte[] bArr, boolean z) {
        this.f77694b = z;
        this.f77695c = i2;
        this.d = Arrays.c(bArr);
    }

    public static int r(byte[] bArr) {
        byte b2 = bArr[1];
        int i2 = b2 & 255;
        if (i2 == 128 || i2 <= 127) {
            return 2;
        }
        int i3 = b2 & 127;
        if (i3 <= 4) {
            return i3 + 2;
        }
        md.k(pq0.k(i3, "DER length more than 4 bytes: "));
        return 0;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive, org.spongycastle.asn1.ASN1Object
    public final int hashCode() {
        boolean z = this.f77694b;
        return Arrays.g(this.d) ^ ((z ? 1 : 0) ^ this.f77695c);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean i(ASN1Primitive aSN1Primitive) {
        if (!(aSN1Primitive instanceof ASN1ApplicationSpecific)) {
            return false;
        }
        ASN1ApplicationSpecific aSN1ApplicationSpecific = (ASN1ApplicationSpecific) aSN1Primitive;
        return this.f77694b == aSN1ApplicationSpecific.f77694b && this.f77695c == aSN1ApplicationSpecific.f77695c && Arrays.a(this.d, aSN1ApplicationSpecific.d);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final int m() {
        int iB = StreamUtil.b(this.f77695c);
        byte[] bArr = this.d;
        return iB + StreamUtil.a(bArr.length) + bArr.length;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean o() {
        return this.f77694b;
    }
}
