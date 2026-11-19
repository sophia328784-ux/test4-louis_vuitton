package org.spongycastle.asn1;

import defpackage.md;
import defpackage.n00;
import defpackage.o60;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Vector;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Iterable;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ASN1Sequence extends ASN1Primitive implements Iterable<ASN1Encodable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Vector f77718b;

    public ASN1Sequence(ASN1EncodableVector aSN1EncodableVector) {
        this.f77718b = new Vector();
        for (int i2 = 0; i2 != aSN1EncodableVector.f77702a.size(); i2++) {
            this.f77718b.addElement(aSN1EncodableVector.b(i2));
        }
    }

    public static ASN1Sequence r(Object obj) {
        if (obj == null || (obj instanceof ASN1Sequence)) {
            return (ASN1Sequence) obj;
        }
        if (obj instanceof ASN1SequenceParser) {
            return r(((ASN1SequenceParser) obj).toASN1Primitive());
        }
        if (obj instanceof byte[]) {
            try {
                return r(ASN1Primitive.n((byte[]) obj));
            } catch (IOException e2) {
                md.n(n00.o(e2, new StringBuilder("failed to construct sequence from byte[]: ")));
                return null;
            }
        }
        if (obj instanceof ASN1Encodable) {
            ASN1Primitive aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
            if (aSN1Primitive instanceof ASN1Sequence) {
                return (ASN1Sequence) aSN1Primitive;
            }
        }
        md.n(o60.l(obj, "unknown object in getInstance: "));
        return null;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive, org.spongycastle.asn1.ASN1Object
    public final int hashCode() {
        Enumeration enumerationT = t();
        int size = size();
        while (enumerationT.hasMoreElements()) {
            size = (size * 17) ^ ((ASN1Encodable) enumerationT.nextElement()).hashCode();
        }
        return size;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean i(ASN1Primitive aSN1Primitive) {
        if (!(aSN1Primitive instanceof ASN1Sequence)) {
            return false;
        }
        ASN1Sequence aSN1Sequence = (ASN1Sequence) aSN1Primitive;
        if (size() != aSN1Sequence.size()) {
            return false;
        }
        Enumeration enumerationT = t();
        Enumeration enumerationT2 = aSN1Sequence.t();
        while (enumerationT.hasMoreElements()) {
            ASN1Encodable aSN1Encodable = (ASN1Encodable) enumerationT.nextElement();
            ASN1Encodable aSN1Encodable2 = (ASN1Encodable) enumerationT2.nextElement();
            ASN1Primitive aSN1Primitive2 = aSN1Encodable.toASN1Primitive();
            ASN1Primitive aSN1Primitive3 = aSN1Encodable2.toASN1Primitive();
            if (aSN1Primitive2 != aSN1Primitive3 && !aSN1Primitive2.equals(aSN1Primitive3)) {
                return false;
            }
        }
        return true;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new Arrays.Iterator(u());
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean o() {
        return true;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public ASN1Primitive p() {
        DERSequence dERSequence = new DERSequence();
        dERSequence.f77718b = this.f77718b;
        return dERSequence;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public ASN1Primitive q() {
        DLSequence dLSequence = new DLSequence();
        dLSequence.f77718b = this.f77718b;
        return dLSequence;
    }

    public ASN1Encodable s(int i2) {
        return (ASN1Encodable) this.f77718b.elementAt(i2);
    }

    public int size() {
        return this.f77718b.size();
    }

    public Enumeration t() {
        return this.f77718b.elements();
    }

    public final String toString() {
        return this.f77718b.toString();
    }

    public final ASN1Encodable[] u() {
        ASN1Encodable[] aSN1EncodableArr = new ASN1Encodable[size()];
        for (int i2 = 0; i2 != size(); i2++) {
            aSN1EncodableArr[i2] = s(i2);
        }
        return aSN1EncodableArr;
    }

    public ASN1Sequence(ASN1Encodable aSN1Encodable) {
        Vector vector = new Vector();
        this.f77718b = vector;
        vector.addElement(aSN1Encodable);
    }

    public ASN1Sequence() {
        this.f77718b = new Vector();
    }

    public ASN1Sequence(ASN1Encodable[] aSN1EncodableArr) {
        this.f77718b = new Vector();
        for (int i2 = 0; i2 != aSN1EncodableArr.length; i2++) {
            this.f77718b.addElement(aSN1EncodableArr[i2]);
        }
    }
}
