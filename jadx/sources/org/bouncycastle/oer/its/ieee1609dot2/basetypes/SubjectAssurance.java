package org.bouncycastle.oer.its.ieee1609dot2.basetypes;

import defpackage.md;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.DEROctetString;

/* JADX INFO: loaded from: classes5.dex */
public class SubjectAssurance extends DEROctetString {
    public SubjectAssurance(byte[] bArr) {
        super(bArr);
        if (bArr.length == 1) {
            return;
        }
        md.n("length is not 1");
        throw null;
    }

    public static SubjectAssurance getInstance(Object obj) {
        if (obj instanceof SubjectAssurance) {
            return (SubjectAssurance) obj;
        }
        if (obj != null) {
            return new SubjectAssurance(ASN1OctetString.getInstance(obj));
        }
        return null;
    }

    private SubjectAssurance(ASN1OctetString aSN1OctetString) {
        this(aSN1OctetString.getOctets());
    }
}
