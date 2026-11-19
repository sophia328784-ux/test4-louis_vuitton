package org.spongycastle.pqc.asn1;

import defpackage.md;
import java.math.BigInteger;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class XMSSPublicKey extends ASN1Object {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f78096b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f78097c;

    public XMSSPublicKey(ASN1Sequence aSN1Sequence) {
        if (!ASN1Integer.r(aSN1Sequence.s(0)).s().equals(BigInteger.valueOf(0L))) {
            md.n("unknown version of sequence");
            throw null;
        }
        this.f78096b = Arrays.c(ASN1OctetString.r(aSN1Sequence.s(1)).s());
        this.f78097c = Arrays.c(ASN1OctetString.r(aSN1Sequence.s(2)).s());
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public final ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.a(new ASN1Integer(0L));
        aSN1EncodableVector.a(new DEROctetString(this.f78096b));
        aSN1EncodableVector.a(new DEROctetString(this.f78097c));
        return new DERSequence(aSN1EncodableVector);
    }

    public XMSSPublicKey(byte[] bArr, byte[] bArr2) {
        this.f78096b = Arrays.c(bArr);
        this.f78097c = Arrays.c(bArr2);
    }
}
