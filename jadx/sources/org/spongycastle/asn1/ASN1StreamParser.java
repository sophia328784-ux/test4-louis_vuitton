package org.spongycastle.asn1;

import defpackage.az;
import defpackage.n00;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Vector;

/* JADX INFO: loaded from: classes5.dex */
public class ASN1StreamParser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InputStream f77721a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f77722b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[][] f77723c;

    public ASN1StreamParser(InputStream inputStream, int i2) {
        this.f77721a = inputStream;
        this.f77722b = i2;
        this.f77723c = new byte[11][];
    }

    public final ASN1Encodable a() throws IOException {
        InputStream inputStream = this.f77721a;
        int i2 = inputStream.read();
        if (i2 == -1) {
            return null;
        }
        if (inputStream instanceof IndefiniteLengthInputStream) {
            IndefiniteLengthInputStream indefiniteLengthInputStream = (IndefiniteLengthInputStream) inputStream;
            indefiniteLengthInputStream.g = false;
            indefiniteLengthInputStream.k();
        }
        int iK = ASN1InputStream.k(inputStream, i2);
        boolean z = (i2 & 32) != 0;
        int i3 = this.f77722b;
        int iH = ASN1InputStream.h(inputStream, i3);
        if (iH < 0) {
            if (!z) {
                az.o("indefinite-length primitive encoding encountered");
                return null;
            }
            ASN1StreamParser aSN1StreamParser = new ASN1StreamParser(new IndefiniteLengthInputStream(inputStream, i3), i3);
            if ((i2 & 64) != 0) {
                return new BERApplicationSpecificParser(iK, aSN1StreamParser);
            }
            if ((i2 & 128) != 0) {
                return new BERTaggedObjectParser(true, iK, aSN1StreamParser);
            }
            if (iK == 4) {
                return new BEROctetStringParser(aSN1StreamParser);
            }
            if (iK == 8) {
                return new DERExternalParser(aSN1StreamParser);
            }
            if (iK == 16) {
                return new BERSequenceParser(aSN1StreamParser);
            }
            if (iK == 17) {
                return new BERSetParser(aSN1StreamParser);
            }
            throw new ASN1Exception("unknown BER object encountered: 0x" + Integer.toHexString(iK));
        }
        DefiniteLengthInputStream definiteLengthInputStream = new DefiniteLengthInputStream(inputStream, iH);
        if ((i2 & 64) != 0) {
            return new DERApplicationSpecific(iK, definiteLengthInputStream.k(), z);
        }
        if ((i2 & 128) != 0) {
            return new BERTaggedObjectParser(z, iK, new ASN1StreamParser(definiteLengthInputStream));
        }
        if (!z) {
            if (iK != 4) {
                try {
                    return ASN1InputStream.e(iK, definiteLengthInputStream, this.f77723c);
                } catch (IllegalArgumentException e2) {
                    throw new ASN1Exception("corrupted stream detected", e2);
                }
            }
            DEROctetStringParser dEROctetStringParser = new DEROctetStringParser();
            dEROctetStringParser.f77754b = definiteLengthInputStream;
            return dEROctetStringParser;
        }
        if (iK == 4) {
            return new BEROctetStringParser(new ASN1StreamParser(definiteLengthInputStream));
        }
        if (iK == 8) {
            return new DERExternalParser(new ASN1StreamParser(definiteLengthInputStream));
        }
        if (iK == 16) {
            ASN1StreamParser aSN1StreamParser2 = new ASN1StreamParser(definiteLengthInputStream);
            DERSequenceParser dERSequenceParser = new DERSequenceParser();
            dERSequenceParser.f77757b = aSN1StreamParser2;
            return dERSequenceParser;
        }
        if (iK != 17) {
            az.o(n00.m(iK, "unknown tag ", " encountered"));
            return null;
        }
        ASN1StreamParser aSN1StreamParser3 = new ASN1StreamParser(definiteLengthInputStream);
        DERSetParser dERSetParser = new DERSetParser();
        dERSetParser.f77758b = aSN1StreamParser3;
        return dERSetParser;
    }

    public final ASN1TaggedObject b(int i2, boolean z) {
        InputStream inputStream = this.f77721a;
        if (!z) {
            return new DERTaggedObject(false, i2, new DEROctetString(((DefiniteLengthInputStream) inputStream).k()));
        }
        ASN1EncodableVector aSN1EncodableVectorC = c();
        Vector vector = aSN1EncodableVectorC.f77702a;
        if (inputStream instanceof IndefiniteLengthInputStream) {
            if (vector.size() == 1) {
                return new BERTaggedObject(true, i2, aSN1EncodableVectorC.b(0));
            }
            BERSequence bERSequence = BERFactory.f77729a;
            return new BERTaggedObject(false, i2, vector.size() < 1 ? BERFactory.f77729a : new BERSequence(aSN1EncodableVectorC));
        }
        if (vector.size() == 1) {
            return new DERTaggedObject(true, i2, aSN1EncodableVectorC.b(0));
        }
        DERSequence dERSequence = DERFactory.f77746a;
        return new DERTaggedObject(false, i2, vector.size() < 1 ? DERFactory.f77746a : new DLSequence(aSN1EncodableVectorC));
    }

    public final ASN1EncodableVector c() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        while (true) {
            ASN1Encodable aSN1EncodableA = a();
            if (aSN1EncodableA == null) {
                return aSN1EncodableVector;
            }
            if (aSN1EncodableA instanceof InMemoryRepresentable) {
                aSN1EncodableVector.a(((InMemoryRepresentable) aSN1EncodableA).getLoadedObject());
            } else {
                aSN1EncodableVector.a(aSN1EncodableA.toASN1Primitive());
            }
        }
    }

    public ASN1StreamParser(InputStream inputStream) {
        this(inputStream, StreamUtil.c(inputStream));
    }

    public ASN1StreamParser(byte[] bArr) {
        this(new ByteArrayInputStream(bArr), bArr.length);
    }
}
