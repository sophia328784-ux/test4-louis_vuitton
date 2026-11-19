package org.bouncycastle.asn1;

import defpackage.fc;
import defpackage.md;
import defpackage.n00;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ASN1Util {
    public static ASN1TaggedObject checkContextTag(ASN1TaggedObject aSN1TaggedObject, int i2) {
        return checkTag(aSN1TaggedObject, 128, i2);
    }

    public static ASN1TaggedObject checkContextTagClass(ASN1TaggedObject aSN1TaggedObject) {
        return checkTagClass(aSN1TaggedObject, 128);
    }

    public static ASN1TaggedObject checkTag(ASN1TaggedObject aSN1TaggedObject, int i2, int i3) {
        if (aSN1TaggedObject.hasTag(i2, i3)) {
            return aSN1TaggedObject;
        }
        md.k(fc.i("Expected ", getTagText(i2, i3), " tag but found ", getTagText(aSN1TaggedObject)));
        return null;
    }

    public static ASN1TaggedObject checkTagClass(ASN1TaggedObject aSN1TaggedObject, int i2) {
        if (aSN1TaggedObject.hasTagClass(i2)) {
            return aSN1TaggedObject;
        }
        md.k(fc.i("Expected ", getTagClassText(i2), " tag but found ", getTagClassText(aSN1TaggedObject)));
        return null;
    }

    public static ASN1Primitive getBaseUniversal(ASN1TaggedObject aSN1TaggedObject, int i2, int i3, boolean z, int i4) {
        return checkTag(aSN1TaggedObject, i2, i3).getBaseUniversal(z, i4);
    }

    public static ASN1Primitive getContextBaseUniversal(ASN1TaggedObject aSN1TaggedObject, int i2, boolean z, int i3) {
        return getBaseUniversal(aSN1TaggedObject, 128, i2, z, i3);
    }

    public static ASN1Object getExplicitBaseObject(ASN1TaggedObject aSN1TaggedObject, int i2, int i3) {
        return checkTag(aSN1TaggedObject, i2, i3).getExplicitBaseObject();
    }

    public static ASN1TaggedObject getExplicitBaseTagged(ASN1TaggedObject aSN1TaggedObject, int i2) {
        return checkTagClass(aSN1TaggedObject, i2).getExplicitBaseTagged();
    }

    public static ASN1Object getExplicitContextBaseObject(ASN1TaggedObject aSN1TaggedObject, int i2) {
        return getExplicitBaseObject(aSN1TaggedObject, 128, i2);
    }

    public static ASN1TaggedObject getExplicitContextBaseTagged(ASN1TaggedObject aSN1TaggedObject) {
        return getExplicitBaseTagged(aSN1TaggedObject, 128);
    }

    public static ASN1TaggedObject getImplicitBaseTagged(ASN1TaggedObject aSN1TaggedObject, int i2, int i3, int i4, int i5) {
        return checkTag(aSN1TaggedObject, i2, i3).getImplicitBaseTagged(i4, i5);
    }

    public static ASN1TaggedObject getImplicitContextBaseTagged(ASN1TaggedObject aSN1TaggedObject, int i2, int i3, int i4) {
        return getImplicitBaseTagged(aSN1TaggedObject, 128, i2, i3, i4);
    }

    public static String getTagClassText(int i2) {
        if (i2 == 64) {
            return "APPLICATION";
        }
        if (i2 != 128) {
            return i2 != 192 ? "UNIVERSAL" : "PRIVATE";
        }
        return "CONTEXT";
    }

    public static String getTagText(int i2, int i3) {
        String str;
        if (i2 == 64) {
            str = "[APPLICATION ";
        } else if (i2 != 128) {
            str = i2 != 192 ? "[UNIVERSAL " : "[PRIVATE ";
        } else {
            str = "[CONTEXT ";
        }
        return n00.m(i3, str, "]");
    }

    public static ASN1Encodable parseBaseUniversal(ASN1TaggedObjectParser aSN1TaggedObjectParser, int i2, int i3, boolean z, int i4) throws IOException {
        return checkTag(aSN1TaggedObjectParser, i2, i3).parseBaseUniversal(z, i4);
    }

    public static ASN1Encodable parseContextBaseUniversal(ASN1TaggedObjectParser aSN1TaggedObjectParser, int i2, boolean z, int i3) throws IOException {
        return parseBaseUniversal(aSN1TaggedObjectParser, 128, i2, z, i3);
    }

    public static ASN1Encodable parseExplicitBaseObject(ASN1TaggedObjectParser aSN1TaggedObjectParser, int i2, int i3) throws IOException {
        return checkTag(aSN1TaggedObjectParser, i2, i3).parseExplicitBaseObject();
    }

    public static ASN1TaggedObjectParser parseExplicitBaseTagged(ASN1TaggedObjectParser aSN1TaggedObjectParser, int i2) throws IOException {
        return checkTagClass(aSN1TaggedObjectParser, i2).parseExplicitBaseTagged();
    }

    public static ASN1Encodable parseExplicitContextBaseObject(ASN1TaggedObjectParser aSN1TaggedObjectParser, int i2) throws IOException {
        return parseExplicitBaseObject(aSN1TaggedObjectParser, 128, i2);
    }

    public static ASN1TaggedObjectParser parseExplicitContextBaseTagged(ASN1TaggedObjectParser aSN1TaggedObjectParser) throws IOException {
        return parseExplicitBaseTagged(aSN1TaggedObjectParser, 128);
    }

    public static ASN1TaggedObjectParser parseImplicitBaseTagged(ASN1TaggedObjectParser aSN1TaggedObjectParser, int i2, int i3, int i4, int i5) throws IOException {
        return checkTag(aSN1TaggedObjectParser, i2, i3).parseImplicitBaseTagged(i4, i5);
    }

    public static ASN1TaggedObjectParser parseImplicitContextBaseTagged(ASN1TaggedObjectParser aSN1TaggedObjectParser, int i2, int i3, int i4) throws IOException {
        return parseImplicitBaseTagged(aSN1TaggedObjectParser, 128, i2, i3, i4);
    }

    public static ASN1Primitive tryGetBaseUniversal(ASN1TaggedObject aSN1TaggedObject, int i2, int i3, boolean z, int i4) {
        if (aSN1TaggedObject.hasTag(i2, i3)) {
            return aSN1TaggedObject.getBaseUniversal(z, i4);
        }
        return null;
    }

    public static ASN1Primitive tryGetContextBaseUniversal(ASN1TaggedObject aSN1TaggedObject, int i2, boolean z, int i3) {
        return tryGetBaseUniversal(aSN1TaggedObject, 128, i2, z, i3);
    }

    public static ASN1Object tryGetExplicitBaseObject(ASN1TaggedObject aSN1TaggedObject, int i2, int i3) {
        if (aSN1TaggedObject.hasTag(i2, i3)) {
            return aSN1TaggedObject.getExplicitBaseObject();
        }
        return null;
    }

    public static ASN1TaggedObject tryGetExplicitBaseTagged(ASN1TaggedObject aSN1TaggedObject, int i2) {
        if (aSN1TaggedObject.hasTagClass(i2)) {
            return aSN1TaggedObject.getExplicitBaseTagged();
        }
        return null;
    }

    public static ASN1Object tryGetExplicitContextBaseObject(ASN1TaggedObject aSN1TaggedObject, int i2) {
        return tryGetExplicitBaseObject(aSN1TaggedObject, 128, i2);
    }

    public static ASN1TaggedObject tryGetExplicitContextBaseTagged(ASN1TaggedObject aSN1TaggedObject) {
        return tryGetExplicitBaseTagged(aSN1TaggedObject, 128);
    }

    public static ASN1TaggedObject tryGetImplicitBaseTagged(ASN1TaggedObject aSN1TaggedObject, int i2, int i3, int i4, int i5) {
        if (aSN1TaggedObject.hasTag(i2, i3)) {
            return aSN1TaggedObject.getImplicitBaseTagged(i4, i5);
        }
        return null;
    }

    public static ASN1TaggedObject tryGetImplicitContextBaseTagged(ASN1TaggedObject aSN1TaggedObject, int i2, int i3, int i4) {
        return tryGetImplicitBaseTagged(aSN1TaggedObject, 128, i2, i3, i4);
    }

    public static ASN1Encodable tryParseBaseUniversal(ASN1TaggedObjectParser aSN1TaggedObjectParser, int i2, int i3, boolean z, int i4) throws IOException {
        if (aSN1TaggedObjectParser.hasTag(i2, i3)) {
            return aSN1TaggedObjectParser.parseBaseUniversal(z, i4);
        }
        return null;
    }

    public static ASN1Encodable tryParseContextBaseUniversal(ASN1TaggedObjectParser aSN1TaggedObjectParser, int i2, boolean z, int i3) throws IOException {
        return tryParseBaseUniversal(aSN1TaggedObjectParser, 128, i2, z, i3);
    }

    public static ASN1Encodable tryParseExplicitBaseObject(ASN1TaggedObjectParser aSN1TaggedObjectParser, int i2, int i3) throws IOException {
        if (aSN1TaggedObjectParser.hasTag(i2, i3)) {
            return aSN1TaggedObjectParser.parseExplicitBaseObject();
        }
        return null;
    }

    public static ASN1TaggedObjectParser tryParseExplicitBaseTagged(ASN1TaggedObjectParser aSN1TaggedObjectParser, int i2) throws IOException {
        if (aSN1TaggedObjectParser.hasTagClass(i2)) {
            return aSN1TaggedObjectParser.parseExplicitBaseTagged();
        }
        return null;
    }

    public static ASN1Encodable tryParseExplicitContextBaseObject(ASN1TaggedObjectParser aSN1TaggedObjectParser, int i2) throws IOException {
        return tryParseExplicitBaseObject(aSN1TaggedObjectParser, 128, i2);
    }

    public static ASN1TaggedObjectParser tryParseExplicitContextBaseTagged(ASN1TaggedObjectParser aSN1TaggedObjectParser) throws IOException {
        return tryParseExplicitBaseTagged(aSN1TaggedObjectParser, 128);
    }

    public static ASN1TaggedObjectParser tryParseImplicitBaseTagged(ASN1TaggedObjectParser aSN1TaggedObjectParser, int i2, int i3, int i4, int i5) throws IOException {
        if (aSN1TaggedObjectParser.hasTag(i2, i3)) {
            return aSN1TaggedObjectParser.parseImplicitBaseTagged(i4, i5);
        }
        return null;
    }

    public static ASN1TaggedObjectParser tryParseImplicitContextBaseTagged(ASN1TaggedObjectParser aSN1TaggedObjectParser, int i2, int i3, int i4) throws IOException {
        return tryParseImplicitBaseTagged(aSN1TaggedObjectParser, 128, i2, i3, i4);
    }

    public static ASN1TaggedObjectParser checkContextTag(ASN1TaggedObjectParser aSN1TaggedObjectParser, int i2) {
        return checkTag(aSN1TaggedObjectParser, 128, i2);
    }

    public static ASN1TaggedObjectParser checkContextTagClass(ASN1TaggedObjectParser aSN1TaggedObjectParser) {
        return checkTagClass(aSN1TaggedObjectParser, 128);
    }

    public static ASN1TaggedObject getExplicitContextBaseTagged(ASN1TaggedObject aSN1TaggedObject, int i2) {
        return getExplicitBaseTagged(aSN1TaggedObject, 128, i2);
    }

    public static ASN1TaggedObjectParser parseExplicitContextBaseTagged(ASN1TaggedObjectParser aSN1TaggedObjectParser, int i2) throws IOException {
        return parseExplicitBaseTagged(aSN1TaggedObjectParser, 128, i2);
    }

    public static ASN1TaggedObject tryGetExplicitContextBaseTagged(ASN1TaggedObject aSN1TaggedObject, int i2) {
        return tryGetExplicitBaseTagged(aSN1TaggedObject, 128, i2);
    }

    public static ASN1TaggedObjectParser tryParseExplicitContextBaseTagged(ASN1TaggedObjectParser aSN1TaggedObjectParser, int i2) throws IOException {
        return tryParseExplicitBaseTagged(aSN1TaggedObjectParser, 128, i2);
    }

    public static ASN1TaggedObject getExplicitBaseTagged(ASN1TaggedObject aSN1TaggedObject, int i2, int i3) {
        return checkTag(aSN1TaggedObject, i2, i3).getExplicitBaseTagged();
    }

    public static ASN1TaggedObjectParser parseExplicitBaseTagged(ASN1TaggedObjectParser aSN1TaggedObjectParser, int i2, int i3) throws IOException {
        return checkTag(aSN1TaggedObjectParser, i2, i3).parseExplicitBaseTagged();
    }

    public static ASN1TaggedObject tryGetExplicitBaseTagged(ASN1TaggedObject aSN1TaggedObject, int i2, int i3) {
        if (aSN1TaggedObject.hasTag(i2, i3)) {
            return aSN1TaggedObject.getExplicitBaseTagged();
        }
        return null;
    }

    public static ASN1TaggedObjectParser tryParseExplicitBaseTagged(ASN1TaggedObjectParser aSN1TaggedObjectParser, int i2, int i3) throws IOException {
        if (aSN1TaggedObjectParser.hasTag(i2, i3)) {
            return aSN1TaggedObjectParser.parseExplicitBaseTagged();
        }
        return null;
    }

    public static String getTagClassText(ASN1Tag aSN1Tag) {
        return getTagClassText(aSN1Tag.getTagClass());
    }

    public static String getTagClassText(ASN1TaggedObject aSN1TaggedObject) {
        return getTagClassText(aSN1TaggedObject.getTagClass());
    }

    public static String getTagClassText(ASN1TaggedObjectParser aSN1TaggedObjectParser) {
        return getTagClassText(aSN1TaggedObjectParser.getTagClass());
    }

    public static ASN1TaggedObjectParser checkTag(ASN1TaggedObjectParser aSN1TaggedObjectParser, int i2, int i3) {
        if (aSN1TaggedObjectParser.hasTag(i2, i3)) {
            return aSN1TaggedObjectParser;
        }
        md.k(fc.i("Expected ", getTagText(i2, i3), " tag but found ", getTagText(aSN1TaggedObjectParser)));
        return null;
    }

    public static ASN1TaggedObjectParser checkTagClass(ASN1TaggedObjectParser aSN1TaggedObjectParser, int i2) {
        if (aSN1TaggedObjectParser.hasTagClass(i2)) {
            return aSN1TaggedObjectParser;
        }
        md.k(fc.i("Expected ", getTagClassText(i2), " tag but found ", getTagClassText(aSN1TaggedObjectParser)));
        return null;
    }

    public static String getTagText(ASN1Tag aSN1Tag) {
        return getTagText(aSN1Tag.getTagClass(), aSN1Tag.getTagNumber());
    }

    public static String getTagText(ASN1TaggedObject aSN1TaggedObject) {
        return getTagText(aSN1TaggedObject.getTagClass(), aSN1TaggedObject.getTagNo());
    }

    public static String getTagText(ASN1TaggedObjectParser aSN1TaggedObjectParser) {
        return getTagText(aSN1TaggedObjectParser.getTagClass(), aSN1TaggedObjectParser.getTagNo());
    }
}
