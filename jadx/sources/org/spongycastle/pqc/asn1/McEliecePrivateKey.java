package org.spongycastle.pqc.asn1;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.pqc.math.linearalgebra.GF2Matrix;
import org.spongycastle.pqc.math.linearalgebra.GF2mField;
import org.spongycastle.pqc.math.linearalgebra.Permutation;
import org.spongycastle.pqc.math.linearalgebra.PolynomialGF2mSmallM;

/* JADX INFO: loaded from: classes5.dex */
public class McEliecePrivateKey extends ASN1Object {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f78059b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f78060c;
    public byte[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte[] f78061e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte[] f78062f;
    public byte[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte[] f78063h;

    public McEliecePrivateKey(int i2, int i3, GF2mField gF2mField, PolynomialGF2mSmallM polynomialGF2mSmallM, Permutation permutation, Permutation permutation2, GF2Matrix gF2Matrix) {
        this.f78059b = i2;
        this.f78060c = i3;
        int i4 = gF2mField.f78249b;
        this.d = new byte[]{(byte) i4, (byte) (i4 >>> 8), (byte) (i4 >>> 16), (byte) (i4 >>> 24)};
        this.f78061e = polynomialGF2mSmallM.e();
        this.f78062f = gF2Matrix.b();
        this.g = permutation.a();
        this.f78063h = permutation2.a();
    }

    public static McEliecePrivateKey i(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive == null) {
            return null;
        }
        ASN1Sequence aSN1SequenceR = ASN1Sequence.r(aSN1Primitive);
        McEliecePrivateKey mcEliecePrivateKey = new McEliecePrivateKey();
        mcEliecePrivateKey.f78059b = ((ASN1Integer) aSN1SequenceR.s(0)).s().intValue();
        mcEliecePrivateKey.f78060c = ((ASN1Integer) aSN1SequenceR.s(1)).s().intValue();
        mcEliecePrivateKey.d = ((ASN1OctetString) aSN1SequenceR.s(2)).s();
        mcEliecePrivateKey.f78061e = ((ASN1OctetString) aSN1SequenceR.s(3)).s();
        mcEliecePrivateKey.g = ((ASN1OctetString) aSN1SequenceR.s(4)).s();
        mcEliecePrivateKey.f78063h = ((ASN1OctetString) aSN1SequenceR.s(5)).s();
        mcEliecePrivateKey.f78062f = ((ASN1OctetString) aSN1SequenceR.s(6)).s();
        return mcEliecePrivateKey;
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public final ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.a(new ASN1Integer(this.f78059b));
        aSN1EncodableVector.a(new ASN1Integer(this.f78060c));
        aSN1EncodableVector.a(new DEROctetString(this.d));
        aSN1EncodableVector.a(new DEROctetString(this.f78061e));
        aSN1EncodableVector.a(new DEROctetString(this.g));
        aSN1EncodableVector.a(new DEROctetString(this.f78063h));
        aSN1EncodableVector.a(new DEROctetString(this.f78062f));
        return new DERSequence(aSN1EncodableVector);
    }
}
