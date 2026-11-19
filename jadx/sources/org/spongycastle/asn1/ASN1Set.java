package org.spongycastle.asn1;

import java.util.Enumeration;
import java.util.Iterator;
import java.util.Vector;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Iterable;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ASN1Set extends ASN1Primitive implements Iterable<ASN1Encodable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Vector f77719b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f77720c;

    public ASN1Set(ASN1EncodableVector aSN1EncodableVector, boolean z) {
        this.f77719b = new Vector();
        this.f77720c = false;
        for (int i2 = 0; i2 != aSN1EncodableVector.f77702a.size(); i2++) {
            this.f77719b.addElement(aSN1EncodableVector.b(i2));
        }
        if (z) {
            r();
        }
    }

    @Override // org.spongycastle.asn1.ASN1Primitive, org.spongycastle.asn1.ASN1Object
    public final int hashCode() {
        Enumeration enumerationElements = this.f77719b.elements();
        int size = this.f77719b.size();
        while (enumerationElements.hasMoreElements()) {
            Object obj = (ASN1Encodable) enumerationElements.nextElement();
            if (obj == null) {
                obj = DERNull.f77751b;
            }
            size = (size * 17) ^ obj.hashCode();
        }
        return size;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean i(ASN1Primitive aSN1Primitive) {
        if (!(aSN1Primitive instanceof ASN1Set)) {
            return false;
        }
        ASN1Set aSN1Set = (ASN1Set) aSN1Primitive;
        if (this.f77719b.size() != aSN1Set.f77719b.size()) {
            return false;
        }
        Enumeration enumerationElements = this.f77719b.elements();
        Enumeration enumerationElements2 = aSN1Set.f77719b.elements();
        while (enumerationElements.hasMoreElements()) {
            ASN1Encodable aSN1Encodable = (ASN1Encodable) enumerationElements.nextElement();
            if (aSN1Encodable == null) {
                aSN1Encodable = DERNull.f77751b;
            }
            ASN1Encodable aSN1Encodable2 = (ASN1Encodable) enumerationElements2.nextElement();
            if (aSN1Encodable2 == null) {
                aSN1Encodable2 = DERNull.f77751b;
            }
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
        ASN1Encodable[] aSN1EncodableArr = new ASN1Encodable[this.f77719b.size()];
        for (int i2 = 0; i2 != this.f77719b.size(); i2++) {
            aSN1EncodableArr[i2] = (ASN1Encodable) this.f77719b.elementAt(i2);
        }
        return new Arrays.Iterator(aSN1EncodableArr);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean o() {
        return true;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final ASN1Primitive p() {
        if (this.f77720c) {
            DERSet dERSet = new DERSet();
            dERSet.f77719b = this.f77719b;
            return dERSet;
        }
        Vector vector = new Vector();
        for (int i2 = 0; i2 != this.f77719b.size(); i2++) {
            vector.addElement(this.f77719b.elementAt(i2));
        }
        DERSet dERSet2 = new DERSet();
        dERSet2.f77719b = vector;
        dERSet2.r();
        return dERSet2;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final ASN1Primitive q() {
        DLSet dLSet = new DLSet();
        dLSet.f77719b = this.f77719b;
        return dLSet;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0062  */
    /* JADX WARN: Code duplicated, block: B:25:0x0064  */
    /*  JADX ERROR: JadxOverflowException in pass: LoopRegionVisitor
        jadx.core.utils.exceptions.JadxOverflowException: LoopRegionVisitor.assignOnlyInLoop endless recursion
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final void r() {
        /*
            r15 = this;
            java.lang.String r0 = "cannot encode object added to SET"
            java.lang.String r1 = "DER"
            boolean r2 = r15.f77720c
            if (r2 != 0) goto L86
            r2 = 1
            r15.f77720c = r2
            java.util.Vector r3 = r15.f77719b
            int r3 = r3.size()
            if (r3 <= r2) goto L86
            java.util.Vector r3 = r15.f77719b
            int r3 = r3.size()
            int r3 = r3 - r2
            r4 = r2
        L1b:
            if (r4 == 0) goto L86
            java.util.Vector r4 = r15.f77719b
            r5 = 0
            java.lang.Object r4 = r4.elementAt(r5)
            org.spongycastle.asn1.ASN1Encodable r4 = (org.spongycastle.asn1.ASN1Encodable) r4
            org.spongycastle.asn1.ASN1Primitive r4 = r4.toASN1Primitive()     // Catch: java.io.IOException -> L83
            byte[] r4 = r4.h(r1)     // Catch: java.io.IOException -> L83
            r7 = r4
            r4 = r5
            r6 = r4
            r8 = r6
        L32:
            if (r8 == r3) goto L80
            java.util.Vector r9 = r15.f77719b
            int r10 = r8 + 1
            java.lang.Object r9 = r9.elementAt(r10)
            org.spongycastle.asn1.ASN1Encodable r9 = (org.spongycastle.asn1.ASN1Encodable) r9
            org.spongycastle.asn1.ASN1Primitive r9 = r9.toASN1Primitive()     // Catch: java.io.IOException -> L7c
            byte[] r9 = r9.h(r1)     // Catch: java.io.IOException -> L7c
            int r11 = r7.length
            int r12 = r9.length
            int r11 = java.lang.Math.min(r11, r12)
            r12 = r5
        L4d:
            if (r12 == r11) goto L5f
            r13 = r7[r12]
            r14 = r9[r12]
            if (r13 == r14) goto L5c
            r11 = r13 & 255(0xff, float:3.57E-43)
            r12 = r14 & 255(0xff, float:3.57E-43)
            if (r11 >= r12) goto L64
            goto L62
        L5c:
            int r12 = r12 + 1
            goto L4d
        L5f:
            int r12 = r7.length
            if (r11 != r12) goto L64
        L62:
            r7 = r9
            goto L7a
        L64:
            java.util.Vector r4 = r15.f77719b
            java.lang.Object r4 = r4.elementAt(r8)
            java.util.Vector r6 = r15.f77719b
            java.lang.Object r9 = r6.elementAt(r10)
            r6.setElementAt(r9, r8)
            java.util.Vector r6 = r15.f77719b
            r6.setElementAt(r4, r10)
            r6 = r2
            r4 = r8
        L7a:
            r8 = r10
            goto L32
        L7c:
            defpackage.md.n(r0)
            return
        L80:
            r3 = r4
            r4 = r6
            goto L1b
        L83:
            defpackage.md.n(r0)
        L86:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.asn1.ASN1Set.r():void");
    }

    public final String toString() {
        return this.f77719b.toString();
    }

    public ASN1Set(ASN1Encodable aSN1Encodable) {
        Vector vector = new Vector();
        this.f77719b = vector;
        this.f77720c = false;
        vector.addElement(aSN1Encodable);
    }

    public ASN1Set() {
        this.f77719b = new Vector();
        this.f77720c = false;
    }

    public ASN1Set(ASN1Encodable[] aSN1EncodableArr, boolean z) {
        this.f77719b = new Vector();
        this.f77720c = false;
        for (int i2 = 0; i2 != aSN1EncodableArr.length; i2++) {
            this.f77719b.addElement(aSN1EncodableArr[i2]);
        }
        if (z) {
            r();
        }
    }
}
