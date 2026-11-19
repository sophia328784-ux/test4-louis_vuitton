package org.spongycastle.asn1;

import com.batch.android.x0.h;
import defpackage.md;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Strings;

/* JADX INFO: loaded from: classes5.dex */
public class DERUTF8String extends ASN1Primitive implements ASN1String {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f77760b;

    public DERUTF8String(String str) {
        int i2 = Strings.f78268a;
        char[] charArray = str.toCharArray();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            Strings.d(charArray, byteArrayOutputStream);
            this.f77760b = byteArrayOutputStream.toByteArray();
        } catch (IOException unused) {
            md.k("cannot encode string to byte array!");
            throw null;
        }
    }

    @Override // org.spongycastle.asn1.ASN1Primitive, org.spongycastle.asn1.ASN1Object
    public final int hashCode() {
        return Arrays.g(this.f77760b);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean i(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof DERUTF8String) {
            return Arrays.a(this.f77760b, ((DERUTF8String) aSN1Primitive).f77760b);
        }
        return false;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final void l(ASN1OutputStream aSN1OutputStream) throws IOException {
        aSN1OutputStream.d(12, this.f77760b);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final int m() {
        byte[] bArr = this.f77760b;
        return StreamUtil.a(bArr.length) + 1 + bArr.length;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean o() {
        return false;
    }

    public final String toString() {
        byte[] bArr;
        char c2;
        int i2 = Strings.f78268a;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            bArr = this.f77760b;
            if (i4 >= bArr.length) {
                break;
            }
            int i6 = i5 + 1;
            byte b2 = bArr[i4];
            if ((b2 & 240) == 240) {
                i5 += 2;
                i4 += 4;
            } else {
                if ((b2 & h.a.K) == 224) {
                    i4 += 3;
                } else {
                    i4 = (b2 & h.a.f24176e) == 192 ? i4 + 2 : i4 + 1;
                }
                i5 = i6;
            }
        }
        char[] cArr = new char[i5];
        int i7 = 0;
        while (i3 < bArr.length) {
            byte b3 = bArr[i3];
            if ((b3 & 240) == 240) {
                int i8 = (((((b3 & 3) << 18) | ((bArr[i3 + 1] & 63) << 12)) | ((bArr[i3 + 2] & 63) << 6)) | (bArr[i3 + 3] & 63)) - 65536;
                char c3 = (char) ((i8 >> 10) | 55296);
                c2 = (char) ((i8 & 1023) | 56320);
                cArr[i7] = c3;
                i3 += 4;
                i7++;
            } else if ((b3 & h.a.K) == 224) {
                c2 = (char) (((b3 & 15) << 12) | ((bArr[i3 + 1] & 63) << 6) | (bArr[i3 + 2] & 63));
                i3 += 3;
            } else if ((b3 & h.a.u) == 208 || (b3 & h.a.f24176e) == 192) {
                int i9 = (b3 & 31) << 6;
                byte b4 = bArr[i3 + 1];
                c2 = (char) (i9 | (b4 & 63));
                i3 += 2;
            } else {
                c2 = (char) (b3 & 255);
                i3++;
            }
            cArr[i7] = c2;
            i7++;
        }
        return new String(cArr);
    }

    public DERUTF8String(byte[] bArr) {
        this.f77760b = bArr;
    }
}
