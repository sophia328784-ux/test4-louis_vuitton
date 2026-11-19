package org.spongycastle.pqc.asn1;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.pqc.crypto.rainbow.Layer;
import org.spongycastle.pqc.crypto.rainbow.util.RainbowUtil;

/* JADX INFO: loaded from: classes5.dex */
public class RainbowPrivateKey extends ASN1Object {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ASN1Integer f78071b = new ASN1Integer(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ASN1ObjectIdentifier f78072c;
    public byte[][] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte[] f78073e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte[][] f78074f;
    public byte[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte[] f78075h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Layer[] f78076i;

    public RainbowPrivateKey(short[][] sArr, short[] sArr2, short[][] sArr3, short[] sArr4, int[] iArr, Layer[] layerArr) {
        this.d = RainbowUtil.c(sArr);
        this.f78073e = RainbowUtil.a(sArr2);
        this.f78074f = RainbowUtil.c(sArr3);
        this.g = RainbowUtil.a(sArr4);
        byte[] bArr = new byte[iArr.length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            bArr[i2] = (byte) iArr[i2];
        }
        this.f78075h = bArr;
        this.f78076i = layerArr;
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public final ASN1Primitive toASN1Primitive() {
        Layer[] layerArr = this.f78076i;
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        ASN1Integer aSN1Integer = this.f78071b;
        if (aSN1Integer != null) {
            aSN1EncodableVector.a(aSN1Integer);
        } else {
            aSN1EncodableVector.a(this.f78072c);
        }
        ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
        int i2 = 0;
        while (true) {
            byte[][] bArr = this.d;
            if (i2 >= bArr.length) {
                break;
            }
            aSN1EncodableVector2.a(new DEROctetString(bArr[i2]));
            i2++;
        }
        aSN1EncodableVector.a(new DERSequence(aSN1EncodableVector2));
        ASN1EncodableVector aSN1EncodableVector3 = new ASN1EncodableVector();
        aSN1EncodableVector3.a(new DEROctetString(this.f78073e));
        aSN1EncodableVector.a(new DERSequence(aSN1EncodableVector3));
        ASN1EncodableVector aSN1EncodableVector4 = new ASN1EncodableVector();
        int i3 = 0;
        while (true) {
            byte[][] bArr2 = this.f78074f;
            if (i3 >= bArr2.length) {
                break;
            }
            aSN1EncodableVector4.a(new DEROctetString(bArr2[i3]));
            i3++;
        }
        aSN1EncodableVector.a(new DERSequence(aSN1EncodableVector4));
        ASN1EncodableVector aSN1EncodableVector5 = new ASN1EncodableVector();
        aSN1EncodableVector5.a(new DEROctetString(this.g));
        aSN1EncodableVector.a(new DERSequence(aSN1EncodableVector5));
        ASN1EncodableVector aSN1EncodableVector6 = new ASN1EncodableVector();
        aSN1EncodableVector6.a(new DEROctetString(this.f78075h));
        aSN1EncodableVector.a(new DERSequence(aSN1EncodableVector6));
        ASN1EncodableVector aSN1EncodableVector7 = new ASN1EncodableVector();
        for (int i4 = 0; i4 < layerArr.length; i4++) {
            ASN1EncodableVector aSN1EncodableVector8 = new ASN1EncodableVector();
            byte[][][] bArrE = RainbowUtil.e(layerArr[i4].d);
            ASN1EncodableVector aSN1EncodableVector9 = new ASN1EncodableVector();
            for (byte[][] bArr3 : bArrE) {
                ASN1EncodableVector aSN1EncodableVector10 = new ASN1EncodableVector();
                int i5 = 0;
                while (true) {
                    if (i5 < bArr3.length) {
                        aSN1EncodableVector10.a(new DEROctetString(bArr3[i5]));
                        i5++;
                    }
                }
                aSN1EncodableVector9.a(new DERSequence(aSN1EncodableVector10));
            }
            aSN1EncodableVector8.a(new DERSequence(aSN1EncodableVector9));
            byte[][][] bArrE2 = RainbowUtil.e(layerArr[i4].f78120e);
            ASN1EncodableVector aSN1EncodableVector11 = new ASN1EncodableVector();
            for (byte[][] bArr4 : bArrE2) {
                ASN1EncodableVector aSN1EncodableVector12 = new ASN1EncodableVector();
                int i6 = 0;
                while (true) {
                    if (i6 < bArr4.length) {
                        aSN1EncodableVector12.a(new DEROctetString(bArr4[i6]));
                        i6++;
                    }
                }
                aSN1EncodableVector11.a(new DERSequence(aSN1EncodableVector12));
            }
            aSN1EncodableVector8.a(new DERSequence(aSN1EncodableVector11));
            byte[][] bArrC = RainbowUtil.c(layerArr[i4].f78121f);
            ASN1EncodableVector aSN1EncodableVector13 = new ASN1EncodableVector();
            for (byte[] bArr5 : bArrC) {
                aSN1EncodableVector13.a(new DEROctetString(bArr5));
            }
            aSN1EncodableVector8.a(new DERSequence(aSN1EncodableVector13));
            aSN1EncodableVector8.a(new DEROctetString(RainbowUtil.a(layerArr[i4].g)));
            aSN1EncodableVector7.a(new DERSequence(aSN1EncodableVector8));
        }
        aSN1EncodableVector.a(new DERSequence(aSN1EncodableVector7));
        return new DERSequence(aSN1EncodableVector);
    }
}
