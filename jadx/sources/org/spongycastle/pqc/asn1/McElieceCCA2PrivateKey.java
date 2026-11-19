package org.spongycastle.pqc.asn1;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.pqc.math.linearalgebra.GF2mField;
import org.spongycastle.pqc.math.linearalgebra.Permutation;
import org.spongycastle.pqc.math.linearalgebra.PolynomialGF2mSmallM;

/* JADX INFO: loaded from: classes5.dex */
public class McElieceCCA2PrivateKey extends ASN1Object {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f78052b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f78053c;
    public byte[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte[] f78054e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte[] f78055f;
    public AlgorithmIdentifier g;

    public McElieceCCA2PrivateKey(int i2, int i3, GF2mField gF2mField, PolynomialGF2mSmallM polynomialGF2mSmallM, Permutation permutation, AlgorithmIdentifier algorithmIdentifier) {
        this.f78052b = i2;
        this.f78053c = i3;
        int i4 = gF2mField.f78249b;
        this.d = new byte[]{(byte) i4, (byte) (i4 >>> 8), (byte) (i4 >>> 16), (byte) (i4 >>> 24)};
        this.f78054e = polynomialGF2mSmallM.e();
        this.f78055f = permutation.a();
        this.g = algorithmIdentifier;
    }

    public static McElieceCCA2PrivateKey i(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive == null) {
            return null;
        }
        ASN1Sequence aSN1SequenceR = ASN1Sequence.r(aSN1Primitive);
        McElieceCCA2PrivateKey mcElieceCCA2PrivateKey = new McElieceCCA2PrivateKey();
        mcElieceCCA2PrivateKey.f78052b = ((ASN1Integer) aSN1SequenceR.s(0)).s().intValue();
        mcElieceCCA2PrivateKey.f78053c = ((ASN1Integer) aSN1SequenceR.s(1)).s().intValue();
        mcElieceCCA2PrivateKey.d = ((ASN1OctetString) aSN1SequenceR.s(2)).s();
        mcElieceCCA2PrivateKey.f78054e = ((ASN1OctetString) aSN1SequenceR.s(3)).s();
        mcElieceCCA2PrivateKey.f78055f = ((ASN1OctetString) aSN1SequenceR.s(4)).s();
        mcElieceCCA2PrivateKey.g = AlgorithmIdentifier.i(aSN1SequenceR.s(5));
        return mcElieceCCA2PrivateKey;
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public final ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.a(new ASN1Integer(this.f78052b));
        aSN1EncodableVector.a(new ASN1Integer(this.f78053c));
        aSN1EncodableVector.a(new DEROctetString(this.d));
        aSN1EncodableVector.a(new DEROctetString(this.f78054e));
        aSN1EncodableVector.a(new DEROctetString(this.f78055f));
        aSN1EncodableVector.a(this.g);
        return new DERSequence(aSN1EncodableVector);
    }
}
