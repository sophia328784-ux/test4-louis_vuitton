package org.bouncycastle.asn1;

import defpackage.az;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
class DLTaggedObjectParser extends BERTaggedObjectParser {
    private final boolean _constructed;

    public DLTaggedObjectParser(int i2, int i3, boolean z, ASN1StreamParser aSN1StreamParser) {
        super(i2, i3, aSN1StreamParser);
        this._constructed = z;
    }

    private ASN1StreamParser checkConstructed() throws IOException {
        if (this._constructed) {
            return this._parser;
        }
        az.o("Explicit tags must be constructed (see X.690 8.14.2)");
        return null;
    }

    @Override // org.bouncycastle.asn1.BERTaggedObjectParser, org.bouncycastle.asn1.InMemoryRepresentable
    public ASN1Primitive getLoadedObject() throws IOException {
        return this._parser.loadTaggedDL(this._tagClass, this._tagNo, this._constructed);
    }

    @Override // org.bouncycastle.asn1.BERTaggedObjectParser, org.bouncycastle.asn1.ASN1TaggedObjectParser
    public ASN1Encodable parseBaseUniversal(boolean z, int i2) throws IOException {
        if (z) {
            return checkConstructed().parseObject(i2);
        }
        boolean z2 = this._constructed;
        ASN1StreamParser aSN1StreamParser = this._parser;
        return z2 ? aSN1StreamParser.parseImplicitConstructedDL(i2) : aSN1StreamParser.parseImplicitPrimitive(i2);
    }

    @Override // org.bouncycastle.asn1.BERTaggedObjectParser, org.bouncycastle.asn1.ASN1TaggedObjectParser
    public ASN1Encodable parseExplicitBaseObject() throws IOException {
        return checkConstructed().readObject();
    }

    @Override // org.bouncycastle.asn1.BERTaggedObjectParser, org.bouncycastle.asn1.ASN1TaggedObjectParser
    public ASN1TaggedObjectParser parseExplicitBaseTagged() throws IOException {
        return checkConstructed().parseTaggedObject();
    }

    @Override // org.bouncycastle.asn1.BERTaggedObjectParser, org.bouncycastle.asn1.ASN1TaggedObjectParser
    public ASN1TaggedObjectParser parseImplicitBaseTagged(int i2, int i3) throws IOException {
        return new DLTaggedObjectParser(i2, i3, this._constructed, this._parser);
    }
}
