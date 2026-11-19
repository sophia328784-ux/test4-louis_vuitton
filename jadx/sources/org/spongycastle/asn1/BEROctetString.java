package org.spongycastle.asn1;

import defpackage.md;
import defpackage.v7;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Vector;

/* JADX INFO: loaded from: classes5.dex */
public class BEROctetString extends ASN1OctetString {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ASN1OctetString[] f77730c;

    public BEROctetString(ASN1OctetString[] aSN1OctetStringArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (int i2 = 0; i2 != aSN1OctetStringArr.length; i2++) {
            try {
                byteArrayOutputStream.write(((DEROctetString) aSN1OctetStringArr[i2]).f77714b);
            } catch (IOException e2) {
                v7.g(e2, "exception converting octets ");
                throw null;
            } catch (ClassCastException unused) {
                md.n(aSN1OctetStringArr[i2].getClass().getName().concat(" found in input should only contain DEROctetString"));
                throw null;
            }
        }
        super(byteArrayOutputStream.toByteArray());
        this.f77730c = aSN1OctetStringArr;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final void l(ASN1OutputStream aSN1OutputStream) throws IOException {
        aSN1OutputStream.c(36);
        aSN1OutputStream.c(128);
        Enumeration enumerationT = t();
        while (enumerationT.hasMoreElements()) {
            aSN1OutputStream.g((ASN1Encodable) enumerationT.nextElement());
        }
        aSN1OutputStream.c(0);
        aSN1OutputStream.c(0);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final int m() {
        Enumeration enumerationT = t();
        int iM = 0;
        while (enumerationT.hasMoreElements()) {
            iM += ((ASN1Encodable) enumerationT.nextElement()).toASN1Primitive().m();
        }
        return iM + 4;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean o() {
        return true;
    }

    @Override // org.spongycastle.asn1.ASN1OctetString
    public final byte[] s() {
        return this.f77714b;
    }

    public final Enumeration t() {
        if (this.f77730c != null) {
            return new Enumeration() { // from class: org.spongycastle.asn1.BEROctetString.1

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public int f77731a = 0;

                @Override // java.util.Enumeration
                public final boolean hasMoreElements() {
                    return this.f77731a < BEROctetString.this.f77730c.length;
                }

                @Override // java.util.Enumeration
                public final Object nextElement() {
                    ASN1OctetString[] aSN1OctetStringArr = BEROctetString.this.f77730c;
                    int i2 = this.f77731a;
                    this.f77731a = i2 + 1;
                    return aSN1OctetStringArr[i2];
                }
            };
        }
        Vector vector = new Vector();
        int i2 = 0;
        while (true) {
            byte[] bArr = this.f77714b;
            if (i2 >= bArr.length) {
                return vector.elements();
            }
            int i3 = i2 + 1000;
            int length = (i3 > bArr.length ? bArr.length : i3) - i2;
            byte[] bArr2 = new byte[length];
            System.arraycopy(bArr, i2, bArr2, 0, length);
            vector.addElement(new DEROctetString(bArr2));
            i2 = i3;
        }
    }

    public BEROctetString(byte[] bArr) {
        super(bArr);
    }
}
