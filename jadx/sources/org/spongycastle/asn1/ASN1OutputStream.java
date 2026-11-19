package org.spongycastle.asn1;

import defpackage.az;
import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes5.dex */
public class ASN1OutputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final OutputStream f77715a;

    public class ImplicitOutputStream extends ASN1OutputStream {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f77716b;

        public ImplicitOutputStream(ASN1OutputStream aSN1OutputStream, OutputStream outputStream) {
            super(outputStream);
            this.f77716b = true;
        }

        @Override // org.spongycastle.asn1.ASN1OutputStream
        public final void c(int i2) throws IOException {
            if (this.f77716b) {
                this.f77716b = false;
            } else {
                super.c(i2);
            }
        }
    }

    public ASN1OutputStream(OutputStream outputStream) {
        this.f77715a = outputStream;
    }

    public DEROutputStream a() {
        return new DEROutputStream(this.f77715a);
    }

    public ASN1OutputStream b() {
        return new DLOutputStream(this.f77715a);
    }

    public void c(int i2) throws IOException {
        this.f77715a.write(i2);
    }

    public final void d(int i2, byte[] bArr) throws IOException {
        c(i2);
        f(bArr.length);
        this.f77715a.write(bArr);
    }

    public final void e(ASN1Primitive aSN1Primitive) {
        aSN1Primitive.l(new ImplicitOutputStream(this, this.f77715a));
    }

    public final void f(int i2) throws IOException {
        if (i2 <= 127) {
            c((byte) i2);
            return;
        }
        int i3 = i2;
        int i4 = 1;
        while (true) {
            i3 >>>= 8;
            if (i3 == 0) {
                break;
            } else {
                i4++;
            }
        }
        c((byte) (i4 | 128));
        for (int i5 = (i4 - 1) * 8; i5 >= 0; i5 -= 8) {
            c((byte) (i2 >> i5));
        }
    }

    public void g(ASN1Encodable aSN1Encodable) {
        if (aSN1Encodable != null) {
            aSN1Encodable.toASN1Primitive().l(this);
        } else {
            az.o("null object detected");
        }
    }

    public final void h(int i2, int i3) throws IOException {
        if (i3 < 31) {
            c(i2 | i3);
            return;
        }
        c(i2 | 31);
        if (i3 < 128) {
            c(i3);
            return;
        }
        byte[] bArr = new byte[5];
        int i4 = 4;
        bArr[4] = (byte) (i3 & CertificateBody.profileType);
        do {
            i3 >>= 7;
            i4--;
            bArr[i4] = (byte) ((i3 & CertificateBody.profileType) | 128);
        } while (i3 > 127);
        this.f77715a.write(bArr, i4, 5 - i4);
    }
}
