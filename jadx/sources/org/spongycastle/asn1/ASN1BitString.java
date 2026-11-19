package org.spongycastle.asn1;

import com.sightcall.advancedannotations.domain.parser.ColorParser;
import com.sightcall.advancedannotations.domain.parser.DeleteParser;
import defpackage.md;
import defpackage.n00;
import defpackage.r81;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ASN1BitString extends ASN1Primitive implements ASN1String {
    public static final char[] d = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', ColorParser.ColorInstruction, DeleteParser.DeleteInstruction, 'E', 'F'};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f77696b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f77697c;

    public ASN1BitString(byte[] bArr, int i2) {
        if (bArr == null) {
            r81.d("data cannot be null");
            throw null;
        }
        if (bArr.length == 0 && i2 != 0) {
            md.n("zero length data with non-zero pad bits");
            throw null;
        }
        if (i2 > 7 || i2 < 0) {
            md.n("pad bits cannot be greater than 7 or less than 0");
            throw null;
        }
        this.f77696b = Arrays.c(bArr);
        this.f77697c = i2;
    }

    public static byte[] s(int i2) {
        if (i2 == 0) {
            return new byte[0];
        }
        int i3 = 4;
        for (int i4 = 3; i4 >= 1 && ((255 << (i4 * 8)) & i2) == 0; i4--) {
            i3--;
        }
        byte[] bArr = new byte[i3];
        for (int i5 = 0; i5 < i3; i5++) {
            bArr[i5] = (byte) ((i2 >> (i5 * 8)) & 255);
        }
        return bArr;
    }

    public static int t(int i2) {
        int i3;
        int i4 = 3;
        while (true) {
            if (i4 < 0) {
                i3 = 0;
                break;
            }
            if (i4 != 0) {
                int i5 = i2 >> (i4 * 8);
                if (i5 != 0) {
                    i3 = i5 & 255;
                    break;
                }
                i4--;
            } else {
                if (i2 != 0) {
                    i3 = i2 & 255;
                    break;
                }
                i4--;
            }
        }
        if (i3 == 0) {
            return 0;
        }
        int i6 = 1;
        while (true) {
            i3 <<= 1;
            if ((i3 & 255) == 0) {
                return 8 - i6;
            }
            i6++;
        }
    }

    @Override // org.spongycastle.asn1.ASN1Primitive, org.spongycastle.asn1.ASN1Object
    public final int hashCode() {
        return this.f77697c ^ Arrays.g(r());
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean i(ASN1Primitive aSN1Primitive) {
        if (!(aSN1Primitive instanceof ASN1BitString)) {
            return false;
        }
        ASN1BitString aSN1BitString = (ASN1BitString) aSN1Primitive;
        return this.f77697c == aSN1BitString.f77697c && Arrays.a(r(), aSN1BitString.r());
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final ASN1Primitive p() {
        return new DERBitString(this.f77696b, this.f77697c);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final ASN1Primitive q() {
        return new DLBitString(this.f77696b, this.f77697c);
    }

    public final byte[] r() {
        byte[] bArr = this.f77696b;
        byte[] bArrC = Arrays.c(bArr);
        int i2 = this.f77697c;
        if (i2 > 0) {
            int length = bArr.length - 1;
            bArrC[length] = (byte) ((255 << i2) & bArrC[length]);
        }
        return bArrC;
    }

    public final String toString() {
        StringBuffer stringBuffer = new StringBuffer("#");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            new ASN1OutputStream(byteArrayOutputStream).g(this);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            for (int i2 = 0; i2 != byteArray.length; i2++) {
                int i3 = (byteArray[i2] >>> 4) & 15;
                char[] cArr = d;
                stringBuffer.append(cArr[i3]);
                stringBuffer.append(cArr[byteArray[i2] & 15]);
            }
            return stringBuffer.toString();
        } catch (IOException e2) {
            throw new ASN1ParsingException(n00.o(e2, new StringBuilder("Internal error encoding BitString: ")), e2);
        }
    }
}
