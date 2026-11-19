package org.spongycastle.asn1;

import defpackage.md;
import java.io.IOException;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class ASN1Boolean extends ASN1Primitive {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final byte[] f77698c = {-1};
    public static final byte[] d = {0};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ASN1Boolean f77699e = new ASN1Boolean(false);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final ASN1Boolean f77700f = new ASN1Boolean(true);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f77701b;

    public ASN1Boolean(byte[] bArr) {
        if (bArr.length != 1) {
            md.n("byte value should have 1 byte in it");
            throw null;
        }
        byte b2 = bArr[0];
        if (b2 == 0) {
            this.f77701b = d;
        } else if ((b2 & 255) == 255) {
            this.f77701b = f77698c;
        } else {
            this.f77701b = Arrays.c(bArr);
        }
    }

    @Override // org.spongycastle.asn1.ASN1Primitive, org.spongycastle.asn1.ASN1Object
    public final int hashCode() {
        return this.f77701b[0];
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean i(ASN1Primitive aSN1Primitive) {
        return (aSN1Primitive instanceof ASN1Boolean) && this.f77701b[0] == ((ASN1Boolean) aSN1Primitive).f77701b[0];
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final void l(ASN1OutputStream aSN1OutputStream) throws IOException {
        aSN1OutputStream.d(1, this.f77701b);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final int m() {
        return 3;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean o() {
        return false;
    }

    public final String toString() {
        return this.f77701b[0] != 0 ? "TRUE" : "FALSE";
    }

    public ASN1Boolean(boolean z) {
        this.f77701b = z ? f77698c : d;
    }
}
