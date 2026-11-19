package org.bouncycastle.pqc.asn1;

import defpackage.fc;
import defpackage.md;
import defpackage.tr;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEROctetString;

/* JADX INFO: loaded from: classes5.dex */
public class SABERPrivateKey extends ASN1Object {
    private SABERPublicKey PublicKey;
    private byte[] hpk;
    private byte[] s;
    private int version;
    private byte[] z;

    private SABERPrivateKey(ASN1Sequence aSN1Sequence) {
        int iD = fc.d(aSN1Sequence, 0);
        this.version = iD;
        if (iD != 0) {
            md.n("unrecognized version");
            throw null;
        }
        this.z = fc.C(aSN1Sequence, 1);
        this.s = fc.C(aSN1Sequence, 2);
        this.PublicKey = SABERPublicKey.getInstance(aSN1Sequence.getObjectAt(3));
        this.hpk = fc.C(aSN1Sequence, 4);
    }

    public static SABERPrivateKey getInstance(Object obj) {
        if (obj instanceof SABERPrivateKey) {
            return (SABERPrivateKey) obj;
        }
        if (obj != null) {
            return new SABERPrivateKey(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public byte[] getHpk() {
        return this.hpk;
    }

    public SABERPublicKey getPublicKey() {
        return this.PublicKey;
    }

    public byte[] getS() {
        return this.s;
    }

    public int getVersion() {
        return this.version;
    }

    public byte[] getZ() {
        return this.z;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(new ASN1Integer(this.version));
        aSN1EncodableVector.add(new DEROctetString(this.z));
        aSN1EncodableVector.add(new DEROctetString(this.s));
        return tr.s(aSN1EncodableVector, new DEROctetString(this.hpk), aSN1EncodableVector);
    }

    public SABERPrivateKey(int i2, byte[] bArr, byte[] bArr2, byte[] bArr3, SABERPublicKey sABERPublicKey) {
        this.version = i2;
        if (i2 != 0) {
            md.n("unrecognized version");
            throw null;
        }
        this.z = bArr;
        this.s = bArr2;
        this.hpk = bArr3;
        this.PublicKey = sABERPublicKey;
    }

    public SABERPrivateKey(int i2, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        this.version = i2;
        if (i2 != 0) {
            md.n("unrecognized version");
            throw null;
        }
        this.z = bArr;
        this.s = bArr2;
        this.hpk = bArr3;
    }
}
