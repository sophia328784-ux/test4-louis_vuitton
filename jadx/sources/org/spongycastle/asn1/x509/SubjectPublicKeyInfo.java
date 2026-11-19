package org.spongycastle.asn1.x509;

import defpackage.a;
import defpackage.md;
import defpackage.o60;
import java.io.IOException;
import java.util.Enumeration;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DLBitString;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class SubjectPublicKeyInfo extends ASN1Object {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AlgorithmIdentifier f77824b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DERBitString f77825c;

    public SubjectPublicKeyInfo(ASN1Sequence aSN1Sequence) {
        DERBitString dERBitString;
        if (aSN1Sequence.size() != 2) {
            md.g(aSN1Sequence.size(), "Bad sequence size: ");
            throw null;
        }
        Enumeration enumerationT = aSN1Sequence.t();
        this.f77824b = AlgorithmIdentifier.i(enumerationT.nextElement());
        Object objNextElement = enumerationT.nextElement();
        if (objNextElement == null || (objNextElement instanceof DERBitString)) {
            dERBitString = (DERBitString) objNextElement;
        } else if (objNextElement instanceof DLBitString) {
            DLBitString dLBitString = (DLBitString) objNextElement;
            dERBitString = new DERBitString(dLBitString.f77696b, dLBitString.f77697c);
        } else {
            if (!(objNextElement instanceof byte[])) {
                md.n(o60.l(objNextElement, "illegal object in getInstance: "));
                throw null;
            }
            try {
                dERBitString = (DERBitString) ASN1Primitive.n((byte[]) objNextElement);
            } catch (Exception e2) {
                md.n(a.j(e2, new StringBuilder("encoding error in getInstance: ")));
                throw null;
            }
        }
        this.f77825c = dERBitString;
    }

    public static SubjectPublicKeyInfo i(Object obj) {
        if (obj instanceof SubjectPublicKeyInfo) {
            return (SubjectPublicKeyInfo) obj;
        }
        if (obj != null) {
            return new SubjectPublicKeyInfo(ASN1Sequence.r(obj));
        }
        return null;
    }

    public final ASN1Primitive m() {
        DERBitString dERBitString = this.f77825c;
        if (dERBitString.f77697c == 0) {
            return new ASN1InputStream(Arrays.c(dERBitString.f77696b)).j();
        }
        md.k("attempt to get non-octet aligned data from BIT STRING");
        return null;
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public final ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.a(this.f77824b);
        aSN1EncodableVector.a(this.f77825c);
        return new DERSequence(aSN1EncodableVector);
    }

    public SubjectPublicKeyInfo(AlgorithmIdentifier algorithmIdentifier, byte[] bArr) {
        this.f77825c = new DERBitString(bArr);
        this.f77824b = algorithmIdentifier;
    }

    public SubjectPublicKeyInfo(AlgorithmIdentifier algorithmIdentifier, ASN1Encodable aSN1Encodable) throws IOException {
        this.f77825c = new DERBitString(aSN1Encodable);
        this.f77824b = algorithmIdentifier;
    }
}
