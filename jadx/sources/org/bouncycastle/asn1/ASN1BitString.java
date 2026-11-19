package org.bouncycastle.asn1;

import com.sightcall.advancedannotations.domain.parser.ColorParser;
import com.sightcall.advancedannotations.domain.parser.DeleteParser;
import defpackage.az;
import defpackage.md;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import defpackage.r81;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ASN1BitString extends ASN1Primitive implements ASN1String, ASN1BitStringParser {
    static final ASN1UniversalType TYPE = new ASN1UniversalType(ASN1BitString.class, 3) { // from class: org.bouncycastle.asn1.ASN1BitString.1
        @Override // org.bouncycastle.asn1.ASN1UniversalType
        public ASN1Primitive fromImplicitConstructed(ASN1Sequence aSN1Sequence) {
            return aSN1Sequence.toASN1BitString();
        }

        @Override // org.bouncycastle.asn1.ASN1UniversalType
        public ASN1Primitive fromImplicitPrimitive(DEROctetString dEROctetString) {
            return ASN1BitString.createPrimitive(dEROctetString.getOctets());
        }
    };
    private static final char[] table = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', ColorParser.ColorInstruction, DeleteParser.DeleteInstruction, 'E', 'F'};
    final byte[] contents;

    public ASN1BitString(byte[] bArr, boolean z) {
        if (z) {
            if (bArr == null) {
                r81.d("'contents' cannot be null");
                throw null;
            }
            if (bArr.length < 1) {
                md.n("'contents' cannot be empty");
                throw null;
            }
            int i2 = bArr[0] & 255;
            if (i2 > 0) {
                if (bArr.length < 2) {
                    md.n("zero length data with non-zero pad bits");
                    throw null;
                }
                if (i2 > 7) {
                    md.n("pad bits cannot be greater than 7 or less than 0");
                    throw null;
                }
            }
        }
        this.contents = bArr;
    }

    public static ASN1BitString createPrimitive(byte[] bArr) {
        String str;
        int length = bArr.length;
        if (length >= 1) {
            int i2 = bArr[0] & 255;
            if (i2 > 0) {
                if (i2 > 7 || length < 2) {
                    str = "invalid pad bits detected";
                } else {
                    byte b2 = bArr[length - 1];
                    if (b2 != ((byte) ((255 << i2) & b2))) {
                        return new DLBitString(bArr, false);
                    }
                }
            }
            return new DERBitString(bArr, false);
        }
        str = "truncated BIT STRING detected";
        md.n(str);
        return null;
    }

    public static byte[] getBytes(int i2) {
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

    public static ASN1BitString getInstance(Object obj) {
        String strO;
        if (obj == null || (obj instanceof ASN1BitString)) {
            return (ASN1BitString) obj;
        }
        if (!(obj instanceof ASN1Encodable)) {
            if (obj instanceof byte[]) {
                try {
                    return (ASN1BitString) TYPE.fromByteArray((byte[]) obj);
                } catch (IOException e2) {
                    strO = n00.o(e2, new StringBuilder("failed to construct BIT STRING from byte[]: "));
                }
            }
            md.n(strO);
            return null;
        }
        ASN1Primitive aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
        if (aSN1Primitive instanceof ASN1BitString) {
            return (ASN1BitString) aSN1Primitive;
        }
        strO = o60.l(obj, "illegal object in getInstance: ");
        md.n(strO);
        return null;
    }

    public static int getPadBits(int i2) {
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

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        if (!(aSN1Primitive instanceof ASN1BitString)) {
            return false;
        }
        byte[] bArr = this.contents;
        byte[] bArr2 = ((ASN1BitString) aSN1Primitive).contents;
        int length = bArr.length;
        if (bArr2.length != length) {
            return false;
        }
        if (length == 1) {
            return true;
        }
        int i2 = length - 1;
        for (int i3 = 0; i3 < i2; i3++) {
            if (bArr[i3] != bArr2[i3]) {
                return false;
            }
        }
        int i4 = 255 << (bArr[0] & 255);
        return ((byte) (bArr[i2] & i4)) == ((byte) (bArr2[i2] & i4));
    }

    @Override // org.bouncycastle.asn1.ASN1BitStringParser
    public InputStream getBitStream() throws IOException {
        byte[] bArr = this.contents;
        return new ByteArrayInputStream(bArr, 1, bArr.length - 1);
    }

    @Override // org.bouncycastle.asn1.InMemoryRepresentable
    public ASN1Primitive getLoadedObject() {
        return toASN1Primitive();
    }

    @Override // org.bouncycastle.asn1.ASN1BitStringParser
    public InputStream getOctetStream() throws IOException {
        int i2 = this.contents[0] & 255;
        if (i2 == 0) {
            return getBitStream();
        }
        az.o(pq0.k(i2, "expected octet-aligned bitstring, but found padBits: "));
        return null;
    }

    public byte[] getOctets() {
        byte[] bArr = this.contents;
        if (bArr[0] == 0) {
            return Arrays.copyOfRange(bArr, 1, bArr.length);
        }
        md.k("attempt to get non-octet aligned data from BIT STRING");
        return null;
    }

    @Override // org.bouncycastle.asn1.ASN1String
    public String getString() {
        try {
            byte[] encoded = getEncoded();
            StringBuffer stringBuffer = new StringBuffer((encoded.length * 2) + 1);
            stringBuffer.append('#');
            for (int i2 = 0; i2 != encoded.length; i2++) {
                byte b2 = encoded[i2];
                char[] cArr = table;
                stringBuffer.append(cArr[(b2 >>> 4) & 15]);
                stringBuffer.append(cArr[b2 & 15]);
            }
            return stringBuffer.toString();
        } catch (IOException e2) {
            throw new ASN1ParsingException(n00.o(e2, new StringBuilder("Internal error encoding BitString: ")), e2);
        }
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive, org.bouncycastle.asn1.ASN1Object
    public int hashCode() {
        byte[] bArr = this.contents;
        if (bArr.length < 2) {
            return 1;
        }
        int i2 = bArr[0] & 255;
        int length = bArr.length - 1;
        return (Arrays.hashCode(bArr, 0, length) * 257) ^ ((byte) ((255 << i2) & bArr[length]));
    }

    public int intValue() {
        int iMin = Math.min(5, this.contents.length - 1);
        int i2 = 0;
        for (int i3 = 1; i3 < iMin; i3++) {
            i2 |= (255 & this.contents[i3]) << ((i3 - 1) * 8);
        }
        if (1 > iMin || iMin >= 5) {
            return i2;
        }
        byte[] bArr = this.contents;
        return ((((byte) (bArr[iMin] & (255 << (bArr[0] & 255)))) & 255) << ((iMin - 1) * 8)) | i2;
    }

    public ASN1BitStringParser parser() {
        return this;
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDERObject() {
        return new DERBitString(this.contents, false);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDLObject() {
        return new DLBitString(this.contents, false);
    }

    public String toString() {
        return getString();
    }

    @Override // org.bouncycastle.asn1.ASN1BitStringParser
    public int getPadBits() {
        return this.contents[0] & 255;
    }

    public byte[] getBytes() {
        byte[] bArr = this.contents;
        if (bArr.length == 1) {
            return ASN1OctetString.EMPTY_OCTETS;
        }
        int i2 = bArr[0] & 255;
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 1, bArr.length);
        int length = bArrCopyOfRange.length - 1;
        bArrCopyOfRange[length] = (byte) (((byte) (255 << i2)) & bArrCopyOfRange[length]);
        return bArrCopyOfRange;
    }

    public ASN1BitString(byte[] bArr, int i2) {
        if (bArr == null) {
            r81.d("'data' cannot be null");
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
        this.contents = Arrays.prepend(bArr, (byte) i2);
    }

    public ASN1BitString(byte b2, int i2) {
        if (i2 > 7 || i2 < 0) {
            md.n("pad bits cannot be greater than 7 or less than 0");
            throw null;
        }
        this.contents = new byte[]{(byte) i2, b2};
    }

    public static ASN1BitString getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return (ASN1BitString) TYPE.getContextInstance(aSN1TaggedObject, z);
    }
}
