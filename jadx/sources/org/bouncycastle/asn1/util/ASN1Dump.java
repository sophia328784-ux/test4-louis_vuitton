package org.bouncycastle.asn1.util;

import defpackage.d21;
import defpackage.n00;
import org.bouncycastle.asn1.ASN1BMPString;
import org.bouncycastle.asn1.ASN1BitString;
import org.bouncycastle.asn1.ASN1Boolean;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Enumerated;
import org.bouncycastle.asn1.ASN1External;
import org.bouncycastle.asn1.ASN1GeneralizedTime;
import org.bouncycastle.asn1.ASN1GraphicString;
import org.bouncycastle.asn1.ASN1IA5String;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Null;
import org.bouncycastle.asn1.ASN1NumericString;
import org.bouncycastle.asn1.ASN1ObjectDescriptor;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1PrintableString;
import org.bouncycastle.asn1.ASN1RelativeOID;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1Set;
import org.bouncycastle.asn1.ASN1T61String;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.ASN1UTCTime;
import org.bouncycastle.asn1.ASN1UTF8String;
import org.bouncycastle.asn1.ASN1Util;
import org.bouncycastle.asn1.ASN1VideotexString;
import org.bouncycastle.asn1.ASN1VisibleString;
import org.bouncycastle.asn1.BEROctetString;
import org.bouncycastle.asn1.BERSequence;
import org.bouncycastle.asn1.BERSet;
import org.bouncycastle.asn1.BERTaggedObject;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERSet;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.DLBitString;
import org.bouncycastle.util.Strings;
import org.bouncycastle.util.encoders.Hex;

/* JADX INFO: loaded from: classes3.dex */
public class ASN1Dump {
    private static final int SAMPLE_SIZE = 32;
    private static final String TAB = "    ";

    public static void _dumpAsString(String str, boolean z, ASN1Primitive aSN1Primitive, StringBuffer stringBuffer) {
        String str2;
        StringBuilder sbU;
        int length;
        String str3;
        String str4;
        String str5;
        String strLineSeparator = Strings.lineSeparator();
        if (aSN1Primitive instanceof ASN1Null) {
            stringBuffer.append(str);
            stringBuffer.append("NULL");
            stringBuffer.append(strLineSeparator);
            return;
        }
        int i2 = 0;
        if (aSN1Primitive instanceof ASN1Sequence) {
            stringBuffer.append(str);
            if (aSN1Primitive instanceof BERSequence) {
                str5 = "BER Sequence";
            } else {
                str5 = aSN1Primitive instanceof DERSequence ? "DER Sequence" : "Sequence";
            }
            stringBuffer.append(str5);
            stringBuffer.append(strLineSeparator);
            ASN1Sequence aSN1Sequence = (ASN1Sequence) aSN1Primitive;
            String strJ = d21.j(str, TAB);
            int size = aSN1Sequence.size();
            while (i2 < size) {
                _dumpAsString(strJ, z, aSN1Sequence.getObjectAt(i2).toASN1Primitive(), stringBuffer);
                i2++;
            }
            return;
        }
        if (aSN1Primitive instanceof ASN1Set) {
            stringBuffer.append(str);
            if (aSN1Primitive instanceof BERSet) {
                str4 = "BER Set";
            } else {
                str4 = aSN1Primitive instanceof DERSet ? "DER Set" : "Set";
            }
            stringBuffer.append(str4);
            stringBuffer.append(strLineSeparator);
            ASN1Set aSN1Set = (ASN1Set) aSN1Primitive;
            String strJ2 = d21.j(str, TAB);
            int size2 = aSN1Set.size();
            while (i2 < size2) {
                _dumpAsString(strJ2, z, aSN1Set.getObjectAt(i2).toASN1Primitive(), stringBuffer);
                i2++;
            }
            return;
        }
        if (aSN1Primitive instanceof ASN1TaggedObject) {
            stringBuffer.append(str);
            if (aSN1Primitive instanceof BERTaggedObject) {
                str3 = "BER Tagged ";
            } else {
                str3 = aSN1Primitive instanceof DERTaggedObject ? "DER Tagged " : "Tagged ";
            }
            stringBuffer.append(str3);
            ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) aSN1Primitive;
            stringBuffer.append(ASN1Util.getTagText(aSN1TaggedObject));
            if (!aSN1TaggedObject.isExplicit()) {
                stringBuffer.append(" IMPLICIT ");
            }
            stringBuffer.append(strLineSeparator);
            _dumpAsString(str + TAB, z, aSN1TaggedObject.getBaseObject().toASN1Primitive(), stringBuffer);
            return;
        }
        if (aSN1Primitive instanceof ASN1OctetString) {
            ASN1OctetString aSN1OctetString = (ASN1OctetString) aSN1Primitive;
            if (aSN1Primitive instanceof BEROctetString) {
                sbU = n00.u(str, "BER Constructed Octet String[");
                length = aSN1OctetString.getOctets().length;
            } else {
                sbU = n00.u(str, "DER Octet String[");
                length = aSN1OctetString.getOctets().length;
            }
            sbU.append(length);
            sbU.append("] ");
            stringBuffer.append(sbU.toString());
            if (z) {
                stringBuffer.append(dumpBinaryDataAsString(str, aSN1OctetString.getOctets()));
                return;
            } else {
                stringBuffer.append(strLineSeparator);
                return;
            }
        }
        if (aSN1Primitive instanceof ASN1ObjectIdentifier) {
            StringBuilder sbU2 = n00.u(str, "ObjectIdentifier(");
            sbU2.append(((ASN1ObjectIdentifier) aSN1Primitive).getId());
            sbU2.append(")");
            sbU2.append(strLineSeparator);
            stringBuffer.append(sbU2.toString());
            return;
        }
        if (aSN1Primitive instanceof ASN1RelativeOID) {
            StringBuilder sbU3 = n00.u(str, "RelativeOID(");
            sbU3.append(((ASN1RelativeOID) aSN1Primitive).getId());
            sbU3.append(")");
            sbU3.append(strLineSeparator);
            stringBuffer.append(sbU3.toString());
            return;
        }
        if (aSN1Primitive instanceof ASN1Boolean) {
            StringBuilder sbU4 = n00.u(str, "Boolean(");
            sbU4.append(((ASN1Boolean) aSN1Primitive).isTrue());
            sbU4.append(")");
            sbU4.append(strLineSeparator);
            stringBuffer.append(sbU4.toString());
            return;
        }
        if (aSN1Primitive instanceof ASN1Integer) {
            StringBuilder sbU5 = n00.u(str, "Integer(");
            sbU5.append(((ASN1Integer) aSN1Primitive).getValue());
            sbU5.append(")");
            sbU5.append(strLineSeparator);
            stringBuffer.append(sbU5.toString());
            return;
        }
        if (aSN1Primitive instanceof ASN1BitString) {
            ASN1BitString aSN1BitString = (ASN1BitString) aSN1Primitive;
            byte[] bytes = aSN1BitString.getBytes();
            int padBits = aSN1BitString.getPadBits();
            if (aSN1BitString instanceof DERBitString) {
                str2 = "DER Bit String[";
            } else {
                str2 = aSN1BitString instanceof DLBitString ? "DL Bit String[" : "BER Bit String[";
            }
            StringBuilder sbU6 = n00.u(str, str2);
            sbU6.append(bytes.length);
            sbU6.append(", ");
            sbU6.append(padBits);
            sbU6.append("] ");
            stringBuffer.append(sbU6.toString());
            if (z) {
                stringBuffer.append(dumpBinaryDataAsString(str, bytes));
                return;
            } else {
                stringBuffer.append(strLineSeparator);
                return;
            }
        }
        if (aSN1Primitive instanceof ASN1IA5String) {
            StringBuilder sbU7 = n00.u(str, "IA5String(");
            sbU7.append(((ASN1IA5String) aSN1Primitive).getString());
            sbU7.append(") ");
            sbU7.append(strLineSeparator);
            stringBuffer.append(sbU7.toString());
            return;
        }
        if (aSN1Primitive instanceof ASN1UTF8String) {
            StringBuilder sbU8 = n00.u(str, "UTF8String(");
            sbU8.append(((ASN1UTF8String) aSN1Primitive).getString());
            sbU8.append(") ");
            sbU8.append(strLineSeparator);
            stringBuffer.append(sbU8.toString());
            return;
        }
        if (aSN1Primitive instanceof ASN1NumericString) {
            StringBuilder sbU9 = n00.u(str, "NumericString(");
            sbU9.append(((ASN1NumericString) aSN1Primitive).getString());
            sbU9.append(") ");
            sbU9.append(strLineSeparator);
            stringBuffer.append(sbU9.toString());
            return;
        }
        if (aSN1Primitive instanceof ASN1PrintableString) {
            StringBuilder sbU10 = n00.u(str, "PrintableString(");
            sbU10.append(((ASN1PrintableString) aSN1Primitive).getString());
            sbU10.append(") ");
            sbU10.append(strLineSeparator);
            stringBuffer.append(sbU10.toString());
            return;
        }
        if (aSN1Primitive instanceof ASN1VisibleString) {
            StringBuilder sbU11 = n00.u(str, "VisibleString(");
            sbU11.append(((ASN1VisibleString) aSN1Primitive).getString());
            sbU11.append(") ");
            sbU11.append(strLineSeparator);
            stringBuffer.append(sbU11.toString());
            return;
        }
        if (aSN1Primitive instanceof ASN1BMPString) {
            StringBuilder sbU12 = n00.u(str, "BMPString(");
            sbU12.append(((ASN1BMPString) aSN1Primitive).getString());
            sbU12.append(") ");
            sbU12.append(strLineSeparator);
            stringBuffer.append(sbU12.toString());
            return;
        }
        if (aSN1Primitive instanceof ASN1T61String) {
            StringBuilder sbU13 = n00.u(str, "T61String(");
            sbU13.append(((ASN1T61String) aSN1Primitive).getString());
            sbU13.append(") ");
            sbU13.append(strLineSeparator);
            stringBuffer.append(sbU13.toString());
            return;
        }
        if (aSN1Primitive instanceof ASN1GraphicString) {
            StringBuilder sbU14 = n00.u(str, "GraphicString(");
            sbU14.append(((ASN1GraphicString) aSN1Primitive).getString());
            sbU14.append(") ");
            sbU14.append(strLineSeparator);
            stringBuffer.append(sbU14.toString());
            return;
        }
        if (aSN1Primitive instanceof ASN1VideotexString) {
            StringBuilder sbU15 = n00.u(str, "VideotexString(");
            sbU15.append(((ASN1VideotexString) aSN1Primitive).getString());
            sbU15.append(") ");
            sbU15.append(strLineSeparator);
            stringBuffer.append(sbU15.toString());
            return;
        }
        if (aSN1Primitive instanceof ASN1UTCTime) {
            StringBuilder sbU16 = n00.u(str, "UTCTime(");
            sbU16.append(((ASN1UTCTime) aSN1Primitive).getTime());
            sbU16.append(") ");
            sbU16.append(strLineSeparator);
            stringBuffer.append(sbU16.toString());
            return;
        }
        if (aSN1Primitive instanceof ASN1GeneralizedTime) {
            StringBuilder sbU17 = n00.u(str, "GeneralizedTime(");
            sbU17.append(((ASN1GeneralizedTime) aSN1Primitive).getTime());
            sbU17.append(") ");
            sbU17.append(strLineSeparator);
            stringBuffer.append(sbU17.toString());
            return;
        }
        if (aSN1Primitive instanceof ASN1Enumerated) {
            StringBuilder sbU18 = n00.u(str, "DER Enumerated(");
            sbU18.append(((ASN1Enumerated) aSN1Primitive).getValue());
            sbU18.append(")");
            sbU18.append(strLineSeparator);
            stringBuffer.append(sbU18.toString());
            return;
        }
        if (aSN1Primitive instanceof ASN1ObjectDescriptor) {
            StringBuilder sbU19 = n00.u(str, "ObjectDescriptor(");
            sbU19.append(((ASN1ObjectDescriptor) aSN1Primitive).getBaseGraphicString().getString());
            sbU19.append(") ");
            sbU19.append(strLineSeparator);
            stringBuffer.append(sbU19.toString());
            return;
        }
        if (!(aSN1Primitive instanceof ASN1External)) {
            StringBuilder sbT = n00.t(str);
            sbT.append(aSN1Primitive.toString());
            sbT.append(strLineSeparator);
            stringBuffer.append(sbT.toString());
            return;
        }
        ASN1External aSN1External = (ASN1External) aSN1Primitive;
        stringBuffer.append(str + "External " + strLineSeparator);
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(TAB);
        String string = sb.toString();
        if (aSN1External.getDirectReference() != null) {
            StringBuilder sbU20 = n00.u(string, "Direct Reference: ");
            sbU20.append(aSN1External.getDirectReference().getId());
            sbU20.append(strLineSeparator);
            stringBuffer.append(sbU20.toString());
        }
        if (aSN1External.getIndirectReference() != null) {
            StringBuilder sbU21 = n00.u(string, "Indirect Reference: ");
            sbU21.append(aSN1External.getIndirectReference().toString());
            sbU21.append(strLineSeparator);
            stringBuffer.append(sbU21.toString());
        }
        if (aSN1External.getDataValueDescriptor() != null) {
            _dumpAsString(string, z, aSN1External.getDataValueDescriptor(), stringBuffer);
        }
        StringBuilder sbU22 = n00.u(string, "Encoding: ");
        sbU22.append(aSN1External.getEncoding());
        sbU22.append(strLineSeparator);
        stringBuffer.append(sbU22.toString());
        _dumpAsString(string, z, aSN1External.getExternalContent(), stringBuffer);
    }

    private static String calculateAscString(byte[] bArr, int i2, int i3) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i4 = i2; i4 != i2 + i3; i4++) {
            byte b2 = bArr[i4];
            if (b2 >= 32 && b2 <= 126) {
                stringBuffer.append((char) b2);
            }
        }
        return stringBuffer.toString();
    }

    public static String dumpAsString(Object obj, boolean z) {
        ASN1Primitive aSN1Primitive;
        if (obj instanceof ASN1Primitive) {
            aSN1Primitive = (ASN1Primitive) obj;
        } else {
            if (!(obj instanceof ASN1Encodable)) {
                return "unknown object type " + obj.toString();
            }
            aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
        }
        StringBuffer stringBuffer = new StringBuffer();
        _dumpAsString("", z, aSN1Primitive, stringBuffer);
        return stringBuffer.toString();
    }

    private static String dumpBinaryDataAsString(String str, byte[] bArr) {
        String strCalculateAscString;
        String strLineSeparator = Strings.lineSeparator();
        StringBuffer stringBuffer = new StringBuffer();
        String str2 = str + TAB;
        stringBuffer.append(strLineSeparator);
        for (int i2 = 0; i2 < bArr.length; i2 += 32) {
            int length = bArr.length - i2;
            stringBuffer.append(str2);
            if (length > 32) {
                stringBuffer.append(Strings.fromByteArray(Hex.encode(bArr, i2, 32)));
                stringBuffer.append(TAB);
                strCalculateAscString = calculateAscString(bArr, i2, 32);
            } else {
                stringBuffer.append(Strings.fromByteArray(Hex.encode(bArr, i2, bArr.length - i2)));
                for (int length2 = bArr.length - i2; length2 != 32; length2++) {
                    stringBuffer.append("  ");
                }
                stringBuffer.append(TAB);
                strCalculateAscString = calculateAscString(bArr, i2, bArr.length - i2);
            }
            stringBuffer.append(strCalculateAscString);
            stringBuffer.append(strLineSeparator);
        }
        return stringBuffer.toString();
    }

    public static String dumpAsString(Object obj) {
        return dumpAsString(obj, false);
    }
}
