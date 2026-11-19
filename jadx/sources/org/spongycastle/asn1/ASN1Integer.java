package org.spongycastle.asn1;

import defpackage.a;
import defpackage.md;
import java.io.IOException;
import java.math.BigInteger;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Properties;

/* JADX INFO: loaded from: classes5.dex */
public class ASN1Integer extends ASN1Primitive {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f77709b;

    public ASN1Integer(byte[] bArr, boolean z) {
        if (Properties.a() || !t(bArr)) {
            this.f77709b = z ? Arrays.c(bArr) : bArr;
        } else {
            md.n("malformed integer");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ASN1Integer r(ASN1Encodable aSN1Encodable) {
        if (aSN1Encodable == 0 || (aSN1Encodable instanceof ASN1Integer)) {
            return (ASN1Integer) aSN1Encodable;
        }
        if (!(aSN1Encodable instanceof byte[])) {
            md.n("illegal object in getInstance: ".concat(aSN1Encodable.getClass().getName()));
            return null;
        }
        try {
            return (ASN1Integer) ASN1Primitive.n((byte[]) aSN1Encodable);
        } catch (Exception e2) {
            md.n(a.j(e2, new StringBuilder("encoding error in getInstance: ")));
            return null;
        }
    }

    public static boolean t(byte[] bArr) {
        if (bArr.length > 1) {
            byte b2 = bArr[0];
            if (b2 == 0 && (bArr[1] & 128) == 0) {
                return true;
            }
            if (b2 == -1 && (bArr[1] & 128) != 0) {
                return true;
            }
        }
        return false;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive, org.spongycastle.asn1.ASN1Object
    public final int hashCode() {
        int i2 = 0;
        int i3 = 0;
        while (true) {
            byte[] bArr = this.f77709b;
            if (i2 == bArr.length) {
                return i3;
            }
            i3 ^= (bArr[i2] & 255) << (i2 % 4);
            i2++;
        }
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean i(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof ASN1Integer) {
            return Arrays.a(this.f77709b, ((ASN1Integer) aSN1Primitive).f77709b);
        }
        return false;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final void l(ASN1OutputStream aSN1OutputStream) throws IOException {
        aSN1OutputStream.d(2, this.f77709b);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final int m() {
        byte[] bArr = this.f77709b;
        return StreamUtil.a(bArr.length) + 1 + bArr.length;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean o() {
        return false;
    }

    public final BigInteger s() {
        return new BigInteger(this.f77709b);
    }

    public final String toString() {
        return s().toString();
    }

    public ASN1Integer(BigInteger bigInteger) {
        this.f77709b = bigInteger.toByteArray();
    }

    public ASN1Integer(long j2) {
        this.f77709b = BigInteger.valueOf(j2).toByteArray();
    }

    public ASN1Integer(byte[] bArr) {
        this(bArr, true);
    }
}
