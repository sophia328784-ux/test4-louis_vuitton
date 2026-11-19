package org.spongycastle.asn1.x9;

import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class X9ECPoint extends ASN1Object {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DEROctetString f77837b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ECCurve f77838c;
    public ECPoint d;

    public X9ECPoint(ECPoint eCPoint, boolean z) {
        byte[] bArr;
        byte[] bArr2;
        this.d = eCPoint.j();
        if (eCPoint.g()) {
            bArr2 = new byte[1];
        } else {
            ECPoint eCPointJ = eCPoint.j();
            byte[] bArrE = eCPointJ.f77939b.e();
            if (z) {
                bArr = new byte[bArrE.length + 1];
                bArr[0] = (byte) (eCPointJ.c() ? 3 : 2);
                System.arraycopy(bArrE, 0, bArr, 1, bArrE.length);
            } else {
                byte[] bArrE2 = eCPointJ.e().e();
                bArr = new byte[bArrE.length + bArrE2.length + 1];
                bArr[0] = 4;
                System.arraycopy(bArrE, 0, bArr, 1, bArrE.length);
                System.arraycopy(bArrE2, 0, bArr, bArrE.length + 1, bArrE2.length);
            }
            bArr2 = bArr;
        }
        this.f77837b = new DEROctetString(bArr2);
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public final ASN1Primitive toASN1Primitive() {
        return this.f77837b;
    }

    public X9ECPoint(ECPoint eCPoint) {
        this(eCPoint, false);
    }

    public X9ECPoint(ECCurve eCCurve, byte[] bArr) {
        this.f77838c = eCCurve;
        this.f77837b = new DEROctetString(Arrays.c(bArr));
    }

    public X9ECPoint(ECCurve eCCurve, ASN1OctetString aSN1OctetString) {
        this(eCCurve, aSN1OctetString.s());
    }
}
