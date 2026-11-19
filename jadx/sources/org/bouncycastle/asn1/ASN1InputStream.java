package org.bouncycastle.asn1;

import defpackage.az;
import defpackage.d20;
import defpackage.n00;
import defpackage.o60;
import defpackage.r81;
import defpackage.x1;
import java.io.ByteArrayInputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.bouncycastle.util.io.Streams;

/* JADX INFO: loaded from: classes3.dex */
public class ASN1InputStream extends FilterInputStream implements BERTags {
    private final boolean lazyEvaluate;
    private final int limit;
    private final byte[][] tmpBuffers;

    private ASN1InputStream(InputStream inputStream, int i2, boolean z, byte[][] bArr) {
        super(inputStream);
        this.limit = i2;
        this.lazyEvaluate = z;
        this.tmpBuffers = bArr;
    }

    public static ASN1Primitive createPrimitiveDERObject(int i2, DefiniteLengthInputStream definiteLengthInputStream, byte[][] bArr) throws IOException {
        try {
            switch (i2) {
                case 1:
                    return ASN1Boolean.createPrimitive(getBuffer(definiteLengthInputStream, bArr));
                case 2:
                    return ASN1Integer.createPrimitive(definiteLengthInputStream.toByteArray());
                case 3:
                    return ASN1BitString.createPrimitive(definiteLengthInputStream.toByteArray());
                case 4:
                    return ASN1OctetString.createPrimitive(definiteLengthInputStream.toByteArray());
                case 5:
                    return ASN1Null.createPrimitive(definiteLengthInputStream.toByteArray());
                case 6:
                    ASN1ObjectIdentifier.checkContentsLength(definiteLengthInputStream.getRemaining());
                    return ASN1ObjectIdentifier.createPrimitive(getBuffer(definiteLengthInputStream, bArr), true);
                case 7:
                    return ASN1ObjectDescriptor.createPrimitive(definiteLengthInputStream.toByteArray());
                case 8:
                case 9:
                case 11:
                case 15:
                case 16:
                case 17:
                case 29:
                default:
                    throw new IOException("unknown tag " + i2 + " encountered");
                case 10:
                    return ASN1Enumerated.createPrimitive(getBuffer(definiteLengthInputStream, bArr), true);
                case 12:
                    return ASN1UTF8String.createPrimitive(definiteLengthInputStream.toByteArray());
                case 13:
                    ASN1RelativeOID.checkContentsLength(definiteLengthInputStream.getRemaining());
                    return ASN1RelativeOID.createPrimitive(getBuffer(definiteLengthInputStream, bArr), true);
                case 14:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                    throw new IOException("unsupported tag " + i2 + " encountered");
                case 18:
                    return ASN1NumericString.createPrimitive(definiteLengthInputStream.toByteArray());
                case 19:
                    return ASN1PrintableString.createPrimitive(definiteLengthInputStream.toByteArray());
                case 20:
                    return ASN1T61String.createPrimitive(definiteLengthInputStream.toByteArray());
                case 21:
                    return ASN1VideotexString.createPrimitive(definiteLengthInputStream.toByteArray());
                case 22:
                    return ASN1IA5String.createPrimitive(definiteLengthInputStream.toByteArray());
                case 23:
                    return ASN1UTCTime.createPrimitive(definiteLengthInputStream.toByteArray());
                case 24:
                    return ASN1GeneralizedTime.createPrimitive(definiteLengthInputStream.toByteArray());
                case 25:
                    return ASN1GraphicString.createPrimitive(definiteLengthInputStream.toByteArray());
                case 26:
                    return ASN1VisibleString.createPrimitive(definiteLengthInputStream.toByteArray());
                case 27:
                    return ASN1GeneralString.createPrimitive(definiteLengthInputStream.toByteArray());
                case 28:
                    return ASN1UniversalString.createPrimitive(definiteLengthInputStream.toByteArray());
                case 30:
                    return ASN1BMPString.createPrimitive(getBMPCharBuffer(definiteLengthInputStream));
            }
        } catch (IllegalArgumentException e2) {
            throw new ASN1Exception(e2.getMessage(), e2);
        } catch (IllegalStateException e3) {
            throw new ASN1Exception(e3.getMessage(), e3);
        }
    }

    private static char[] getBMPCharBuffer(DefiniteLengthInputStream definiteLengthInputStream) throws IOException {
        int remaining = definiteLengthInputStream.getRemaining();
        if ((remaining & 1) != 0) {
            az.o("malformed BMPString encoding encountered");
            return null;
        }
        int i2 = remaining / 2;
        char[] cArr = new char[i2];
        byte[] bArr = new byte[8];
        int i3 = 0;
        int i4 = 0;
        while (remaining >= 8) {
            if (Streams.readFully(definiteLengthInputStream, bArr, 0, 8) != 8) {
                d20.g("EOF encountered in middle of BMPString");
                return null;
            }
            cArr[i4] = (char) ((bArr[0] << 8) | (bArr[1] & 255));
            cArr[i4 + 1] = (char) ((bArr[2] << 8) | (bArr[3] & 255));
            cArr[i4 + 2] = (char) ((bArr[4] << 8) | (bArr[5] & 255));
            cArr[i4 + 3] = (char) ((bArr[6] << 8) | (bArr[7] & 255));
            i4 += 4;
            remaining -= 8;
        }
        if (remaining > 0) {
            if (Streams.readFully(definiteLengthInputStream, bArr, 0, remaining) != remaining) {
                d20.g("EOF encountered in middle of BMPString");
                return null;
            }
            do {
                int i5 = i3 + 1;
                int i6 = bArr[i3] << 8;
                i3 += 2;
                cArr[i4] = (char) ((bArr[i5] & 255) | i6);
                i4++;
            } while (i3 < remaining);
        }
        if (definiteLengthInputStream.getRemaining() == 0 && i2 == i4) {
            return cArr;
        }
        r81.b();
        return null;
    }

    private static byte[] getBuffer(DefiniteLengthInputStream definiteLengthInputStream, byte[][] bArr) throws IOException {
        int remaining = definiteLengthInputStream.getRemaining();
        if (remaining >= bArr.length) {
            return definiteLengthInputStream.toByteArray();
        }
        byte[] bArr2 = bArr[remaining];
        if (bArr2 == null) {
            bArr2 = new byte[remaining];
            bArr[remaining] = bArr2;
        }
        definiteLengthInputStream.readAllIntoByteArray(bArr2);
        return bArr2;
    }

    public static int readLength(InputStream inputStream, int i2, boolean z) throws IOException {
        int i3 = inputStream.read();
        if ((i3 >>> 7) == 0) {
            return i3;
        }
        if (128 == i3) {
            return -1;
        }
        if (i3 < 0) {
            d20.g("EOF found when length expected");
            return 0;
        }
        if (255 == i3) {
            az.o("invalid long form definite-length 0xFF");
            return 0;
        }
        int i4 = i3 & CertificateBody.profileType;
        int i5 = 0;
        int i6 = 0;
        do {
            int i7 = inputStream.read();
            if (i7 < 0) {
                d20.g("EOF found reading length");
                return 0;
            }
            if ((i5 >>> 23) != 0) {
                az.o("long form definite-length more than 31 bits");
                return 0;
            }
            i5 = (i5 << 8) + i7;
            i6++;
        } while (i6 < i4);
        if (i5 < i2 || z) {
            return i5;
        }
        az.o(o60.h(i5, i2, "corrupted stream - out of bounds length found: ", " >= "));
        return 0;
    }

    public static int readTagNumber(InputStream inputStream, int i2) throws IOException {
        String str;
        int i3 = i2 & 31;
        if (i3 != 31) {
            return i3;
        }
        int i4 = inputStream.read();
        if (i4 >= 31) {
            int i5 = i4 & CertificateBody.profileType;
            if (i5 != 0) {
                while ((i4 & 128) != 0) {
                    if ((i5 >>> 24) == 0) {
                        int i6 = i5 << 7;
                        int i7 = inputStream.read();
                        if (i7 < 0) {
                            d20.g("EOF found inside tag value.");
                            return 0;
                        }
                        i5 = i6 | (i7 & CertificateBody.profileType);
                        i4 = i7;
                    } else {
                        str = "Tag number more than 31 bits";
                    }
                }
                return i5;
            }
            str = "corrupted stream - invalid high tag number found";
        } else {
            if (i4 < 0) {
                d20.g("EOF found inside tag value.");
                return 0;
            }
            str = "corrupted stream - high tag number < 31 found";
        }
        az.o(str);
        return 0;
    }

    public ASN1BitString buildConstructedBitString(ASN1EncodableVector aSN1EncodableVector) throws IOException {
        int size = aSN1EncodableVector.size();
        ASN1BitString[] aSN1BitStringArr = new ASN1BitString[size];
        for (int i2 = 0; i2 != size; i2++) {
            ASN1Encodable aSN1Encodable = aSN1EncodableVector.get(i2);
            if (!(aSN1Encodable instanceof ASN1BitString)) {
                x1.k(aSN1Encodable.getClass(), "unknown object encountered in constructed BIT STRING: ");
                return null;
            }
            aSN1BitStringArr[i2] = (ASN1BitString) aSN1Encodable;
        }
        return new BERBitString(aSN1BitStringArr);
    }

    public ASN1OctetString buildConstructedOctetString(ASN1EncodableVector aSN1EncodableVector) throws IOException {
        int size = aSN1EncodableVector.size();
        ASN1OctetString[] aSN1OctetStringArr = new ASN1OctetString[size];
        for (int i2 = 0; i2 != size; i2++) {
            ASN1Encodable aSN1Encodable = aSN1EncodableVector.get(i2);
            if (!(aSN1Encodable instanceof ASN1OctetString)) {
                x1.k(aSN1Encodable.getClass(), "unknown object encountered in constructed OCTET STRING: ");
                return null;
            }
            aSN1OctetStringArr[i2] = (ASN1OctetString) aSN1Encodable;
        }
        return new BEROctetString(aSN1OctetStringArr);
    }

    public ASN1Primitive buildObject(int i2, int i3, int i4) throws IOException {
        DefiniteLengthInputStream definiteLengthInputStream = new DefiniteLengthInputStream(this, i4, this.limit);
        if ((i2 & BERTags.FLAGS) == 0) {
            return createPrimitiveDERObject(i3, definiteLengthInputStream, this.tmpBuffers);
        }
        int i5 = i2 & 192;
        if (i5 != 0) {
            return readTaggedObjectDL(i5, i3, (i2 & 32) != 0, definiteLengthInputStream);
        }
        if (i3 == 3) {
            return buildConstructedBitString(readVector(definiteLengthInputStream));
        }
        if (i3 == 4) {
            return buildConstructedOctetString(readVector(definiteLengthInputStream));
        }
        if (i3 == 8) {
            return DLFactory.createSequence(readVector(definiteLengthInputStream)).toASN1External();
        }
        if (i3 == 16) {
            if (definiteLengthInputStream.getRemaining() < 1) {
                return DLFactory.EMPTY_SEQUENCE;
            }
            return this.lazyEvaluate ? new LazyEncodedSequence(definiteLengthInputStream.toByteArray()) : DLFactory.createSequence(readVector(definiteLengthInputStream));
        }
        if (i3 == 17) {
            return DLFactory.createSet(readVector(definiteLengthInputStream));
        }
        az.o(n00.m(i3, "unknown tag ", " encountered"));
        return null;
    }

    public int getLimit() {
        return this.limit;
    }

    public void readFully(byte[] bArr) throws IOException {
        if (Streams.readFully(this, bArr, 0, bArr.length) == bArr.length) {
            return;
        }
        d20.g("EOF encountered in middle of object");
    }

    public ASN1Primitive readObject() throws IOException {
        String str;
        int i2 = read();
        if (i2 > 0) {
            int tagNumber = readTagNumber(this, i2);
            int length = readLength();
            if (length >= 0) {
                try {
                    return buildObject(i2, tagNumber, length);
                } catch (IllegalArgumentException e2) {
                    throw new ASN1Exception("corrupted stream detected", e2);
                }
            }
            if ((i2 & 32) != 0) {
                ASN1StreamParser aSN1StreamParser = new ASN1StreamParser(new IndefiniteLengthInputStream(this, this.limit), this.limit, this.tmpBuffers);
                int i3 = i2 & 192;
                if (i3 != 0) {
                    return aSN1StreamParser.loadTaggedIL(i3, tagNumber);
                }
                if (tagNumber == 3) {
                    return BERBitStringParser.parse(aSN1StreamParser);
                }
                if (tagNumber == 4) {
                    return BEROctetStringParser.parse(aSN1StreamParser);
                }
                if (tagNumber == 8) {
                    return DERExternalParser.parse(aSN1StreamParser);
                }
                if (tagNumber == 16) {
                    return BERSequenceParser.parse(aSN1StreamParser);
                }
                if (tagNumber == 17) {
                    return BERSetParser.parse(aSN1StreamParser);
                }
                str = "unknown BER object encountered";
            } else {
                str = "indefinite-length primitive encoding encountered";
            }
        } else {
            if (i2 != 0) {
                return null;
            }
            str = "unexpected end-of-contents marker";
        }
        az.o(str);
        return null;
    }

    public ASN1Primitive readTaggedObjectDL(int i2, int i3, boolean z, DefiniteLengthInputStream definiteLengthInputStream) throws IOException {
        return !z ? ASN1TaggedObject.createPrimitive(i2, i3, definiteLengthInputStream.toByteArray()) : ASN1TaggedObject.createConstructedDL(i2, i3, readVector(definiteLengthInputStream));
    }

    public ASN1EncodableVector readVector() throws IOException {
        ASN1Primitive object = readObject();
        if (object == null) {
            return new ASN1EncodableVector(0);
        }
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        do {
            aSN1EncodableVector.add(object);
            object = readObject();
        } while (object != null);
        return aSN1EncodableVector;
    }

    public ASN1InputStream(InputStream inputStream, int i2) {
        this(inputStream, i2, false);
    }

    public ASN1InputStream(InputStream inputStream, int i2, boolean z) {
        this(inputStream, i2, z, new byte[11][]);
    }

    public ASN1InputStream(InputStream inputStream) {
        this(inputStream, StreamUtil.findLimit(inputStream));
    }

    public ASN1InputStream(InputStream inputStream, boolean z) {
        this(inputStream, StreamUtil.findLimit(inputStream), z);
    }

    public ASN1InputStream(byte[] bArr) {
        this(new ByteArrayInputStream(bArr), bArr.length);
    }

    public ASN1InputStream(byte[] bArr, boolean z) {
        this(new ByteArrayInputStream(bArr), bArr.length, z);
    }

    public ASN1EncodableVector readVector(DefiniteLengthInputStream definiteLengthInputStream) throws IOException {
        int remaining = definiteLengthInputStream.getRemaining();
        return remaining < 1 ? new ASN1EncodableVector(0) : new ASN1InputStream(definiteLengthInputStream, remaining, this.lazyEvaluate, this.tmpBuffers).readVector();
    }

    public int readLength() throws IOException {
        return readLength(this, this.limit, false);
    }
}
