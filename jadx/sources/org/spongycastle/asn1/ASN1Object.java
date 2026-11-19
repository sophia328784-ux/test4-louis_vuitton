package org.spongycastle.asn1;

import java.io.ByteArrayOutputStream;
import org.spongycastle.util.Encodable;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ASN1Object implements ASN1Encodable, Encodable {
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ASN1Encodable) {
            return toASN1Primitive().equals(((ASN1Encodable) obj).toASN1Primitive());
        }
        return false;
    }

    public final byte[] f() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        new ASN1OutputStream(byteArrayOutputStream).g(this);
        return byteArrayOutputStream.toByteArray();
    }

    public final byte[] h(String str) {
        if (str.equals(org.bouncycastle.asn1.ASN1Encoding.DER)) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            new DEROutputStream(byteArrayOutputStream).g(this);
            return byteArrayOutputStream.toByteArray();
        }
        if (!str.equals(org.bouncycastle.asn1.ASN1Encoding.DL)) {
            return f();
        }
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        new DLOutputStream(byteArrayOutputStream2).g(this);
        return byteArrayOutputStream2.toByteArray();
    }

    public int hashCode() {
        return toASN1Primitive().hashCode();
    }

    @Override // org.spongycastle.asn1.ASN1Encodable
    public abstract ASN1Primitive toASN1Primitive();
}
