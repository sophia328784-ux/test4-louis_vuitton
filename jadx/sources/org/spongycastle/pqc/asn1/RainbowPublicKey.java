package org.spongycastle.pqc.asn1;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.pqc.crypto.rainbow.util.RainbowUtil;

/* JADX INFO: loaded from: classes5.dex */
public class RainbowPublicKey extends ASN1Object {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ASN1Integer f78077b = new ASN1Integer(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ASN1ObjectIdentifier f78078c;
    public ASN1Integer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte[][] f78079e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte[][] f78080f;
    public byte[] g;

    public RainbowPublicKey(int i2, short[][] sArr, short[][] sArr2, short[] sArr3) {
        this.d = new ASN1Integer(i2);
        this.f78079e = RainbowUtil.c(sArr);
        this.f78080f = RainbowUtil.c(sArr2);
        this.g = RainbowUtil.a(sArr3);
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public final ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        ASN1Integer aSN1Integer = this.f78077b;
        if (aSN1Integer != null) {
            aSN1EncodableVector.a(aSN1Integer);
        } else {
            aSN1EncodableVector.a(this.f78078c);
        }
        aSN1EncodableVector.a(this.d);
        ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            byte[][] bArr = this.f78079e;
            if (i3 >= bArr.length) {
                break;
            }
            aSN1EncodableVector2.a(new DEROctetString(bArr[i3]));
            i3++;
        }
        aSN1EncodableVector.a(new DERSequence(aSN1EncodableVector2));
        ASN1EncodableVector aSN1EncodableVector3 = new ASN1EncodableVector();
        while (true) {
            byte[][] bArr2 = this.f78080f;
            if (i2 >= bArr2.length) {
                aSN1EncodableVector.a(new DERSequence(aSN1EncodableVector3));
                ASN1EncodableVector aSN1EncodableVector4 = new ASN1EncodableVector();
                aSN1EncodableVector4.a(new DEROctetString(this.g));
                aSN1EncodableVector.a(new DERSequence(aSN1EncodableVector4));
                return new DERSequence(aSN1EncodableVector);
            }
            aSN1EncodableVector3.a(new DEROctetString(bArr2[i2]));
            i2++;
        }
    }
}
