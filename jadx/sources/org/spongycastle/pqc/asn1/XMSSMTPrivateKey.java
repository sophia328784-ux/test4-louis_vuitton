package org.spongycastle.pqc.asn1;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class XMSSMTPrivateKey extends ASN1Object {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f78088b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f78089c;
    public final byte[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[] f78090e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final byte[] f78091f;
    public final byte[] g;

    public XMSSMTPrivateKey(int i2, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        this.f78088b = i2;
        this.f78089c = Arrays.c(bArr);
        this.d = Arrays.c(bArr2);
        this.f78090e = Arrays.c(bArr3);
        this.f78091f = Arrays.c(bArr4);
        this.g = Arrays.c(bArr5);
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public final ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.a(new ASN1Integer(0L));
        ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
        aSN1EncodableVector2.a(new ASN1Integer(this.f78088b));
        aSN1EncodableVector2.a(new DEROctetString(this.f78089c));
        aSN1EncodableVector2.a(new DEROctetString(this.d));
        aSN1EncodableVector2.a(new DEROctetString(this.f78090e));
        aSN1EncodableVector2.a(new DEROctetString(this.f78091f));
        aSN1EncodableVector.a(new DERSequence(aSN1EncodableVector2));
        aSN1EncodableVector.a(new DERTaggedObject(true, 0, new DEROctetString(this.g)));
        return new DERSequence(aSN1EncodableVector);
    }
}
