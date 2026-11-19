package org.bouncycastle.asn1;

import defpackage.az;
import defpackage.md;
import defpackage.pq0;
import defpackage.x1;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public class ASN1StreamParser {
    private final InputStream _in;
    private final int _limit;
    private final byte[][] tmpBuffers;

    public ASN1StreamParser(InputStream inputStream, int i2, byte[][] bArr) {
        this._in = inputStream;
        this._limit = i2;
        this.tmpBuffers = bArr;
    }

    private void set00Check(boolean z) {
        InputStream inputStream = this._in;
        if (inputStream instanceof IndefiniteLengthInputStream) {
            ((IndefiniteLengthInputStream) inputStream).setEofOn00(z);
        }
    }

    public ASN1Encodable implParseObject(int i2) throws IOException {
        set00Check(false);
        int tagNumber = ASN1InputStream.readTagNumber(this._in, i2);
        int length = ASN1InputStream.readLength(this._in, this._limit, tagNumber == 3 || tagNumber == 4 || tagNumber == 16 || tagNumber == 17 || tagNumber == 8);
        if (length < 0) {
            if ((i2 & 32) == 0) {
                az.o("indefinite-length primitive encoding encountered");
                return null;
            }
            ASN1StreamParser aSN1StreamParser = new ASN1StreamParser(new IndefiniteLengthInputStream(this._in, this._limit), this._limit, this.tmpBuffers);
            int i3 = i2 & 192;
            return i3 != 0 ? new BERTaggedObjectParser(i3, tagNumber, aSN1StreamParser) : aSN1StreamParser.parseImplicitConstructedIL(tagNumber);
        }
        DefiniteLengthInputStream definiteLengthInputStream = new DefiniteLengthInputStream(this._in, length, this._limit);
        if ((i2 & BERTags.FLAGS) == 0) {
            return parseImplicitPrimitive(tagNumber, definiteLengthInputStream);
        }
        ASN1StreamParser aSN1StreamParser2 = new ASN1StreamParser(definiteLengthInputStream, definiteLengthInputStream.getLimit(), this.tmpBuffers);
        int i4 = i2 & 192;
        if (i4 != 0) {
            return new DLTaggedObjectParser(i4, tagNumber, (i2 & 32) != 0, aSN1StreamParser2);
        }
        return aSN1StreamParser2.parseImplicitConstructedDL(tagNumber);
    }

    public ASN1Primitive loadTaggedDL(int i2, int i3, boolean z) throws IOException {
        return !z ? ASN1TaggedObject.createPrimitive(i2, i3, ((DefiniteLengthInputStream) this._in).toByteArray()) : ASN1TaggedObject.createConstructedDL(i2, i3, readVector());
    }

    public ASN1Primitive loadTaggedIL(int i2, int i3) throws IOException {
        return ASN1TaggedObject.createConstructedIL(i2, i3, readVector());
    }

    public ASN1Encodable parseImplicitConstructedDL(int i2) throws IOException {
        if (i2 == 3) {
            return new BERBitStringParser(this);
        }
        if (i2 == 4) {
            return new BEROctetStringParser(this);
        }
        if (i2 == 8) {
            return new DERExternalParser(this);
        }
        if (i2 == 16) {
            return new DLSequenceParser(this);
        }
        if (i2 == 17) {
            return new DLSetParser(this);
        }
        x1.k(Integer.toHexString(i2), "unknown DL object encountered: 0x");
        return null;
    }

    public ASN1Encodable parseImplicitConstructedIL(int i2) throws IOException {
        if (i2 == 3) {
            return new BERBitStringParser(this);
        }
        if (i2 == 4) {
            return new BEROctetStringParser(this);
        }
        if (i2 == 8) {
            return new DERExternalParser(this);
        }
        if (i2 == 16) {
            return new BERSequenceParser(this);
        }
        if (i2 == 17) {
            return new BERSetParser(this);
        }
        x1.k(Integer.toHexString(i2), "unknown BER object encountered: 0x");
        return null;
    }

    public ASN1Encodable parseImplicitPrimitive(int i2, DefiniteLengthInputStream definiteLengthInputStream) throws IOException {
        if (i2 == 3) {
            return new DLBitStringParser(definiteLengthInputStream);
        }
        if (i2 == 4) {
            return new DEROctetStringParser(definiteLengthInputStream);
        }
        if (i2 == 8) {
            throw new ASN1Exception("externals must use constructed encoding (see X.690 8.18)");
        }
        if (i2 == 16) {
            throw new ASN1Exception("sets must use constructed encoding (see X.690 8.11.1/8.12.1)");
        }
        if (i2 == 17) {
            throw new ASN1Exception("sequences must use constructed encoding (see X.690 8.9.1/8.10.1)");
        }
        try {
            return ASN1InputStream.createPrimitiveDERObject(i2, definiteLengthInputStream, this.tmpBuffers);
        } catch (IllegalArgumentException e2) {
            throw new ASN1Exception("corrupted stream detected", e2);
        }
    }

    public ASN1Encodable parseObject(int i2) throws IOException {
        if (i2 < 0 || i2 > 30) {
            md.n(pq0.k(i2, "invalid universal tag number: "));
            return null;
        }
        int i3 = this._in.read();
        if (i3 < 0) {
            return null;
        }
        if ((i3 & (-33)) == i2) {
            return implParseObject(i3);
        }
        az.o(pq0.k(i3, "unexpected identifier encountered: "));
        return null;
    }

    public ASN1TaggedObjectParser parseTaggedObject() throws IOException {
        int i2 = this._in.read();
        if (i2 < 0) {
            return null;
        }
        if ((i2 & 192) != 0) {
            return (ASN1TaggedObjectParser) implParseObject(i2);
        }
        throw new ASN1Exception("no tagged object found");
    }

    public ASN1Encodable readObject() throws IOException {
        int i2 = this._in.read();
        if (i2 < 0) {
            return null;
        }
        return implParseObject(i2);
    }

    public ASN1EncodableVector readVector() throws IOException {
        int i2 = this._in.read();
        if (i2 < 0) {
            return new ASN1EncodableVector(0);
        }
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        do {
            ASN1Encodable aSN1EncodableImplParseObject = implParseObject(i2);
            aSN1EncodableVector.add(aSN1EncodableImplParseObject instanceof InMemoryRepresentable ? ((InMemoryRepresentable) aSN1EncodableImplParseObject).getLoadedObject() : aSN1EncodableImplParseObject.toASN1Primitive());
            i2 = this._in.read();
        } while (i2 >= 0);
        return aSN1EncodableVector;
    }

    public ASN1StreamParser(InputStream inputStream, int i2) {
        this(inputStream, i2, new byte[11][]);
    }

    public ASN1StreamParser(InputStream inputStream) {
        this(inputStream, StreamUtil.findLimit(inputStream));
    }

    public ASN1StreamParser(byte[] bArr) {
        this(new ByteArrayInputStream(bArr), bArr.length);
    }

    public ASN1Encodable parseImplicitPrimitive(int i2) throws IOException {
        return parseImplicitPrimitive(i2, (DefiniteLengthInputStream) this._in);
    }
}
