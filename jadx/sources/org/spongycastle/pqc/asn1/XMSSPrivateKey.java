package org.spongycastle.pqc.asn1;

import defpackage.md;
import java.math.BigInteger;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class XMSSPrivateKey extends ASN1Object {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f78092b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f78093c;
    public final byte[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[] f78094e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final byte[] f78095f;
    public final byte[] g;

    public XMSSPrivateKey(ASN1Sequence aSN1Sequence) {
        if (!ASN1Integer.r(aSN1Sequence.s(0)).s().equals(BigInteger.valueOf(0L))) {
            md.n("unknown version of sequence");
            throw null;
        }
        if (aSN1Sequence.size() != 2 && aSN1Sequence.size() != 3) {
            md.n("key sequence wrong size");
            throw null;
        }
        ASN1Sequence aSN1SequenceR = ASN1Sequence.r(aSN1Sequence.s(1));
        this.f78092b = ASN1Integer.r(aSN1SequenceR.s(0)).s().intValue();
        this.f78093c = Arrays.c(ASN1OctetString.r(aSN1SequenceR.s(1)).s());
        this.d = Arrays.c(ASN1OctetString.r(aSN1SequenceR.s(2)).s());
        this.f78094e = Arrays.c(ASN1OctetString.r(aSN1SequenceR.s(3)).s());
        this.f78095f = Arrays.c(ASN1OctetString.r(aSN1SequenceR.s(4)).s());
        if (aSN1Sequence.size() == 3) {
            this.g = Arrays.c(ASN1OctetString.r(ASN1TaggedObject.r(aSN1Sequence.s(2)).s()).s());
        } else {
            this.g = null;
        }
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public final ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.a(new ASN1Integer(0L));
        ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
        aSN1EncodableVector2.a(new ASN1Integer(this.f78092b));
        aSN1EncodableVector2.a(new DEROctetString(this.f78093c));
        aSN1EncodableVector2.a(new DEROctetString(this.d));
        aSN1EncodableVector2.a(new DEROctetString(this.f78094e));
        aSN1EncodableVector2.a(new DEROctetString(this.f78095f));
        aSN1EncodableVector.a(new DERSequence(aSN1EncodableVector2));
        aSN1EncodableVector.a(new DERTaggedObject(true, 0, new DEROctetString(this.g)));
        return new DERSequence(aSN1EncodableVector);
    }

    public XMSSPrivateKey(int i2, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        this.f78092b = i2;
        this.f78093c = Arrays.c(bArr);
        this.d = Arrays.c(bArr2);
        this.f78094e = Arrays.c(bArr3);
        this.f78095f = Arrays.c(bArr4);
        this.g = Arrays.c(bArr5);
    }
}
