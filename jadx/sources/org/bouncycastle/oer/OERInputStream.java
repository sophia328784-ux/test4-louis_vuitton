package org.bouncycastle.oer;

import com.linkplay.medialib.ContentTree;
import defpackage.az;
import defpackage.ct0;
import defpackage.d20;
import defpackage.fc;
import defpackage.md;
import java.io.ByteArrayInputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.util.Iterator;
import java.util.List;
import org.bouncycastle.asn1.ASN1Boolean;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Enumerated;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.DERIA5String;
import org.bouncycastle.asn1.DERNull;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.DERUTF8String;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.bouncycastle.util.BigIntegers;
import org.bouncycastle.util.Strings;
import org.bouncycastle.util.encoders.Hex;
import org.bouncycastle.util.io.Streams;
import org.teleal.cling.support.contentdirectory.callback.Browse;

/* JADX INFO: loaded from: classes5.dex */
public class OERInputStream extends FilterInputStream {
    private static final int[] bits = {1, 2, 4, 8, 16, 32, 64, 128};
    private static final int[] bitsR = {128, 64, 32, 16, 8, 4, 2, 1};
    protected PrintWriter debugOutput;
    protected PrintWriter debugStream;
    private int maxByteAllocation;

    /* JADX INFO: renamed from: org.bouncycastle.oer.OERInputStream$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType;

        static {
            int[] iArr = new int[OERDefinition.BaseType.values().length];
            $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType = iArr;
            try {
                iArr[OERDefinition.BaseType.OPAQUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.Switch.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.Supplier.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.SEQ_OF.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.SEQ.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.CHOICE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.ENUM.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.INT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.OCTET_STRING.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.IA5String.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.UTF8_STRING.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.BIT_STRING.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.NULL.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.EXTENSION.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[OERDefinition.BaseType.BOOLEAN.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
        }
    }

    public static class Choice extends OERInputStream {
        final int preamble;
        final int tag;
        final int tagClass;

        public Choice(InputStream inputStream) throws IOException {
            int i2;
            super(inputStream);
            int i3 = read();
            this.preamble = i3;
            if (i3 < 0) {
                d20.g("expecting preamble byte of choice");
                throw null;
            }
            this.tagClass = i3 & 192;
            int i4 = i3 & 63;
            if (i4 >= 63) {
                i4 = 0;
                do {
                    i2 = inputStream.read();
                    if (i2 < 0) {
                        d20.g("expecting further tag bytes");
                        throw null;
                    }
                    i4 = (i4 << 7) | (i2 & CertificateBody.profileType);
                } while ((i2 & 128) != 0);
            }
            this.tag = i4;
        }

        public int getTag() {
            return this.tag;
        }

        public int getTagClass() {
            return this.tagClass;
        }

        public boolean isApplicationTagClass() {
            return this.tagClass == 64;
        }

        public boolean isContextSpecific() {
            return this.tagClass == 128;
        }

        public boolean isPrivateTagClass() {
            return this.tagClass == 192;
        }

        public boolean isUniversalTagClass() {
            return this.tagClass == 0;
        }

        public String toString() {
            String str;
            StringBuilder sb = new StringBuilder("CHOICE(");
            int i2 = this.tagClass;
            if (i2 == 0) {
                str = "Universal ";
            } else if (i2 == 64) {
                str = "Application ";
            } else {
                if (i2 != 128) {
                    if (i2 == 192) {
                        str = "Private ";
                    }
                    sb.append("Tag = " + this.tag);
                    sb.append(")");
                    return sb.toString();
                }
                str = "ContextSpecific ";
            }
            sb.append(str);
            sb.append("Tag = " + this.tag);
            sb.append(")");
            return sb.toString();
        }
    }

    public static final class LengthInfo {
        private final BigInteger length;
        private final boolean shortForm;

        public LengthInfo(BigInteger bigInteger, boolean z) {
            this.length = bigInteger;
            this.shortForm = z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int intLength() {
            return BigIntegers.intValueExact(this.length);
        }
    }

    public static class Sequence extends OERInputStream {
        private final boolean extensionFlagSet;
        private final int preamble;
        private final boolean[] valuePresent;

        public Sequence(InputStream inputStream, Element element) throws IOException {
            int i2;
            super(inputStream);
            if (!element.hasPopulatedExtension() && element.getOptionals() <= 0 && !element.hasDefaultChildren()) {
                this.preamble = 0;
                this.extensionFlagSet = false;
                this.valuePresent = null;
                return;
            }
            int i3 = ((FilterInputStream) this).in.read();
            this.preamble = i3;
            if (i3 < 0) {
                d20.g("expecting preamble byte of sequence");
                throw null;
            }
            this.extensionFlagSet = element.hasPopulatedExtension() && (i3 & 128) == 128;
            this.valuePresent = new boolean[element.getChildren().size()];
            int i4 = element.hasPopulatedExtension() ? 6 : 7;
            int i5 = 0;
            for (Element element2 : element.getChildren()) {
                if (element2.getBaseType() != OERDefinition.BaseType.EXTENSION) {
                    if (element2.getBlock() != 0) {
                        return;
                    }
                    if (element2.isExplicit()) {
                        i2 = i5 + 1;
                        this.valuePresent[i5] = true;
                    } else {
                        if (i4 < 0) {
                            i3 = inputStream.read();
                            if (i3 < 0) {
                                d20.g("expecting mask byte sequence");
                                throw null;
                            }
                            i4 = 7;
                        }
                        i2 = i5 + 1;
                        this.valuePresent[i5] = (OERInputStream.bits[i4] & i3) > 0;
                        i4--;
                    }
                    i5 = i2;
                }
            }
        }

        public boolean hasExtension() {
            return this.extensionFlagSet;
        }

        public boolean hasOptional(int i2) {
            return this.valuePresent[i2];
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("SEQ(");
            sb.append(hasExtension() ? "Ext " : "");
            if (this.valuePresent != null) {
                int i2 = 0;
                while (true) {
                    boolean[] zArr = this.valuePresent;
                    if (i2 >= zArr.length) {
                        break;
                    }
                    sb.append(zArr[i2] ? "1" : ContentTree.ROOT_ID);
                    i2++;
                }
            } else {
                sb.append(Browse.CAPS_WILDCARD);
            }
            sb.append(")");
            return sb.toString();
        }
    }

    public OERInputStream(InputStream inputStream) {
        super(inputStream);
        this.debugOutput = null;
        this.maxByteAllocation = 1048576;
        this.debugStream = null;
    }

    private ASN1Encodable absent(Element element) {
        debugPrint(element + "Absent");
        return OEROptional.ABSENT;
    }

    private byte[] allocateArray(int i2) {
        if (i2 <= this.maxByteAllocation) {
            return new byte[i2];
        }
        StringBuilder sbQ = fc.q(i2, "required byte array size ", " was greater than ");
        sbQ.append(this.maxByteAllocation);
        throw new IllegalArgumentException(sbQ.toString());
    }

    private int countOptionalChildTypes(Element element) {
        Iterator<Element> it = element.getChildren().iterator();
        int i2 = 0;
        while (it.hasNext()) {
            i2 += !it.next().isExplicit() ? 1 : 0;
        }
        return i2;
    }

    public Choice choice() throws IOException {
        return new Choice(this);
    }

    public void debugPrint(String str) {
        if (this.debugOutput == null) {
            return;
        }
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        int i2 = -1;
        for (int i3 = 0; i3 != stackTrace.length; i3++) {
            StackTraceElement stackTraceElement = stackTrace[i3];
            if (stackTraceElement.getMethodName().equals("debugPrint")) {
                i2 = 0;
            } else if (stackTraceElement.getClassName().contains("OERInput")) {
                i2++;
            }
        }
        while (true) {
            PrintWriter printWriter = this.debugOutput;
            if (i2 <= 0) {
                printWriter.append((CharSequence) str).append((CharSequence) "\n");
                this.debugOutput.flush();
                return;
            } else {
                printWriter.append((CharSequence) "    ");
                i2--;
            }
        }
    }

    public BigInteger enumeration() throws IOException {
        int i2 = read();
        if (i2 == -1) {
            d20.g("expecting prefix of enumeration");
            return null;
        }
        if ((i2 & 128) != 128) {
            return BigInteger.valueOf(i2);
        }
        int i3 = i2 & CertificateBody.profileType;
        if (i3 == 0) {
            return BigInteger.ZERO;
        }
        byte[] bArr = new byte[i3];
        if (Streams.readFully(this, bArr) == i3) {
            return new BigInteger(1, bArr);
        }
        d20.g("unable to fully read integer component of enumeration");
        return null;
    }

    public BigInteger int16() throws Exception {
        return parseInt(false, 2);
    }

    public BigInteger int32() throws Exception {
        return parseInt(false, 4);
    }

    public BigInteger int64() throws Exception {
        return parseInt(false, 8);
    }

    public BigInteger int8() throws Exception {
        return parseInt(false, 1);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0278 A[PHI: r1
      0x0278: PHI (r1v21 byte[]) = (r1v20 byte[]), (r1v22 byte[]) binds: [B:99:0x0276, B:95:0x025c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:144:0x03ef  */
    /* JADX WARN: Code duplicated, block: B:159:0x0428  */
    /* JADX WARN: Code duplicated, block: B:161:0x043d  */
    /* JADX WARN: Code duplicated, block: B:167:0x0450  */
    /* JADX WARN: Code duplicated, block: B:168:0x0457  */
    /* JADX WARN: Code duplicated, block: B:170:0x045a  */
    /* JADX WARN: Code duplicated, block: B:172:0x0467  */
    /* JADX WARN: Code duplicated, block: B:175:0x0473 A[LOOP:4: B:173:0x046f->B:175:0x0473, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:176:0x0479  */
    /* JADX WARN: Code duplicated, block: B:181:0x0490  */
    /* JADX WARN: Code duplicated, block: B:183:0x0496  */
    /* JADX WARN: Code duplicated, block: B:187:0x04a4  */
    /* JADX WARN: Code duplicated, block: B:219:0x049e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:220:0x0499 A[SYNTHETIC] */
    public ASN1Object parse(Element element) throws Throwable {
        byte[] bArrAllocateArray;
        int length;
        Element element2;
        ASN1Encodable openType;
        int iIntLength;
        Element elementResult;
        ASN1Encodable defaultValue;
        byte[] bArrAllocateArray2;
        BigInteger bigInteger;
        int i2 = 8;
        switch (AnonymousClass1.$SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType[element.getBaseType().ordinal()]) {
            case 1:
                return parse(new Element(element.resolveSupplier().build(), element));
            case 2:
                md.k("A switch element should only be found within a sequence.");
                return null;
            case 3:
                return parse(new Element(element.getElementSupplier().build(), element));
            case 4:
                byte[] bArrAllocateArray3 = allocateArray(readLength().intLength());
                if (Streams.readFully(this, bArrAllocateArray3) != bArrAllocateArray3.length) {
                    az.o("could not read all of count of seq-of values");
                    return null;
                }
                int iIntValue = BigIntegers.fromUnsignedByteArray(bArrAllocateArray3).intValue();
                debugPrint(element + "(len = " + iIntValue + ")");
                ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
                if (element.getChildren().get(0).getaSwitch() != null) {
                    md.k("element def for item in SEQ OF has a switch, switches only supported in sequences");
                    return null;
                }
                for (int i3 = 0; i3 < iIntValue; i3++) {
                    aSN1EncodableVector.add(parse(Element.expandDeferredDefinition(element.getChildren().get(0), element)));
                }
                return new DERSequence(aSN1EncodableVector);
            case 5:
                Sequence sequence = new Sequence(((FilterInputStream) this).in, element);
                debugPrint(element + sequence.toString());
                ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
                List<Element> children = element.getChildren();
                int i4 = 0;
                while (i4 < children.size()) {
                    Element element3 = children.get(i4);
                    if (element3.getBaseType() != OERDefinition.BaseType.EXTENSION) {
                        if (element3.getBlock() > 0) {
                            if (sequence.extensionFlagSet) {
                                bArrAllocateArray = allocateArray(readLength().intLength());
                                if (Streams.readFully(((FilterInputStream) this).in, bArrAllocateArray) == bArrAllocateArray.length) {
                                    az.o("did not fully read presence list.");
                                    return null;
                                }
                                length = (bArrAllocateArray.length * 8) - bArrAllocateArray[0];
                                while (true) {
                                    if (i4 >= children.size() || i2 < length) {
                                        if (i4 < children.size()) {
                                            element2 = children.get(i4);
                                        } else {
                                            element2 = null;
                                        }
                                        if (element2 == null) {
                                            if (i2 >= length && (bArrAllocateArray[i2 / 8] & bitsR[i2 % 8]) != 0) {
                                                openType = parseOpenType(element2);
                                            } else {
                                                if (element2.isExplicit()) {
                                                    az.o("extension is marked as explicit but is not defined in presence list");
                                                    return null;
                                                }
                                                openType = OEROptional.ABSENT;
                                            }
                                            aSN1EncodableVector2.add(openType);
                                        } else if ((bArrAllocateArray[i2 / 8] & bitsR[i2 % 8]) != 0) {
                                            iIntLength = readLength().intLength();
                                            while (true) {
                                                iIntLength--;
                                                if (iIntLength >= 0) {
                                                    ((FilterInputStream) this).in.read();
                                                }
                                            }
                                        }
                                        i2++;
                                        i4++;
                                    }
                                }
                            }
                            return new DERSequence(aSN1EncodableVector2);
                        }
                        Element elementExpandDeferredDefinition = Element.expandDeferredDefinition(element3, element);
                        if (elementExpandDeferredDefinition.getaSwitch() != null) {
                            elementResult = elementExpandDeferredDefinition.getaSwitch().result(new SwitchIndexer.Asn1EncodableVectorIndexer(aSN1EncodableVector2));
                            if (elementResult.getParent() != element) {
                                elementResult = new Element(elementResult, element);
                            }
                        } else {
                            elementResult = elementExpandDeferredDefinition;
                        }
                        if (sequence.valuePresent == null) {
                            defaultValue = parse(elementResult);
                        } else if (!sequence.valuePresent[i4]) {
                            defaultValue = elementResult.getDefaultValue() != null ? elementExpandDeferredDefinition.getDefaultValue() : absent(elementExpandDeferredDefinition);
                        } else if (elementResult.isExplicit()) {
                            defaultValue = parse(elementResult);
                        } else {
                            defaultValue = OEROptional.getInstance(parse(elementResult));
                        }
                        aSN1EncodableVector2.add(defaultValue);
                    }
                    i4++;
                }
                if (sequence.extensionFlagSet) {
                    bArrAllocateArray = allocateArray(readLength().intLength());
                    if (Streams.readFully(((FilterInputStream) this).in, bArrAllocateArray) == bArrAllocateArray.length) {
                        az.o("did not fully read presence list.");
                        return null;
                    }
                    length = (bArrAllocateArray.length * 8) - bArrAllocateArray[0];
                    while (true) {
                        if (i4 >= children.size()) {
                        }
                        if (i4 < children.size()) {
                            element2 = children.get(i4);
                        } else {
                            element2 = null;
                        }
                        if (element2 == null) {
                            if (i2 >= length) {
                                if (element2.isExplicit()) {
                                    az.o("extension is marked as explicit but is not defined in presence list");
                                    return null;
                                }
                                openType = OEROptional.ABSENT;
                            } else {
                                if (element2.isExplicit()) {
                                    az.o("extension is marked as explicit but is not defined in presence list");
                                    return null;
                                }
                                openType = OEROptional.ABSENT;
                            }
                            aSN1EncodableVector2.add(openType);
                        } else if ((bArrAllocateArray[i2 / 8] & bitsR[i2 % 8]) != 0) {
                            iIntLength = readLength().intLength();
                            while (true) {
                                iIntLength--;
                                if (iIntLength >= 0) {
                                    ((FilterInputStream) this).in.read();
                                }
                            }
                        }
                        i2++;
                        i4++;
                    }
                }
                return new DERSequence(aSN1EncodableVector2);
            case 6:
                Choice choice = choice();
                debugPrint(choice.toString() + " " + choice.tag);
                if (!choice.isContextSpecific()) {
                    if (choice.isApplicationTagClass()) {
                        md.k("Unimplemented tag type");
                        return null;
                    }
                    if (choice.isPrivateTagClass()) {
                        md.k("Unimplemented tag type");
                        return null;
                    }
                    choice.isUniversalTagClass();
                    md.k("Unimplemented tag type");
                    return null;
                }
                Element elementExpandDeferredDefinition2 = Element.expandDeferredDefinition(element.getChildren().get(choice.getTag()), element);
                if (elementExpandDeferredDefinition2.getBlock() > 0) {
                    debugPrint("Chosen (Ext): " + elementExpandDeferredDefinition2);
                    return new DERTaggedObject(choice.tag, parseOpenType(elementExpandDeferredDefinition2));
                }
                debugPrint("Chosen: " + elementExpandDeferredDefinition2);
                return new DERTaggedObject(choice.tag, parse(elementExpandDeferredDefinition2));
            case 7:
                BigInteger bigIntegerEnumeration = enumeration();
                debugPrint(element + "ENUM(" + bigIntegerEnumeration + ") = " + element.getChildren().get(bigIntegerEnumeration.intValue()).getLabel());
                return new ASN1Enumerated(bigIntegerEnumeration);
            case 8:
                int iIntBytesForRange = element.intBytesForRange();
                if (iIntBytesForRange != 0) {
                    bArrAllocateArray2 = allocateArray(Math.abs(iIntBytesForRange));
                    Streams.readFully(this, bArrAllocateArray2);
                    bigInteger = iIntBytesForRange < 0 ? new BigInteger(bArrAllocateArray2) : BigIntegers.fromUnsignedByteArray(bArrAllocateArray2);
                } else if (element.isLowerRangeZero()) {
                    bArrAllocateArray2 = allocateArray(readLength().intLength());
                    Streams.readFully(this, bArrAllocateArray2);
                    if (bArrAllocateArray2.length == 0) {
                        bigInteger = BigInteger.ZERO;
                    } else {
                        bigInteger = new BigInteger(1, bArrAllocateArray2);
                    }
                } else {
                    bArrAllocateArray2 = allocateArray(readLength().intLength());
                    Streams.readFully(this, bArrAllocateArray2);
                    if (bArrAllocateArray2.length == 0) {
                        bigInteger = BigInteger.ZERO;
                    } else {
                        bigInteger = new BigInteger(bArrAllocateArray2);
                    }
                }
                if (this.debugOutput != null) {
                    debugPrint(element + "INTEGER byteLen= " + bArrAllocateArray2.length + " hex= " + bigInteger.toString(16) + ")");
                }
                return new ASN1Integer(bigInteger);
            case 9:
                int iIntLength2 = (element.getUpperBound() == null || !element.getUpperBound().equals(element.getLowerBound())) ? readLength().intLength() : element.getUpperBound().intValue();
                byte[] bArrAllocateArray4 = allocateArray(iIntLength2);
                if (Streams.readFully(this, bArrAllocateArray4) != iIntLength2) {
                    az.y(element.getLabel(), "did not read all of ");
                    return null;
                }
                if (this.debugOutput != null) {
                    int iMin = Math.min(bArrAllocateArray4.length, 32);
                    StringBuilder sb = new StringBuilder();
                    sb.append(element);
                    sb.append("OCTET STRING (");
                    sb.append(bArrAllocateArray4.length);
                    sb.append(") = ");
                    sb.append(Hex.toHexString(bArrAllocateArray4, 0, iMin));
                    sb.append(" ");
                    sb.append(bArrAllocateArray4.length > 32 ? "..." : "");
                    debugPrint(sb.toString());
                }
                return new DEROctetString(bArrAllocateArray4);
            case 10:
                byte[] bArrAllocateArray5 = allocateArray(element.isFixedLength() ? element.getUpperBound().intValue() : readLength().intLength());
                if (Streams.readFully(this, bArrAllocateArray5) != bArrAllocateArray5.length) {
                    az.o("could not read all of IA5 string");
                    return null;
                }
                String strFromByteArray = Strings.fromByteArray(bArrAllocateArray5);
                if (this.debugOutput != null) {
                    debugPrint(element.appendLabel("IA5 String (" + bArrAllocateArray5.length + ") = " + strFromByteArray));
                }
                return new DERIA5String(strFromByteArray);
            case 11:
                byte[] bArrAllocateArray6 = allocateArray(readLength().intLength());
                if (Streams.readFully(this, bArrAllocateArray6) != bArrAllocateArray6.length) {
                    az.o("could not read all of utf 8 string");
                    return null;
                }
                String strFromUTF8ByteArray = Strings.fromUTF8ByteArray(bArrAllocateArray6);
                if (this.debugOutput != null) {
                    debugPrint(element + "UTF8 String (" + bArrAllocateArray6.length + ") = " + strFromUTF8ByteArray);
                }
                return new DERUTF8String(strFromUTF8ByteArray);
            case 12:
                byte[] bArrAllocateArray7 = element.isFixedLength() ? new byte[element.getLowerBound().intValue() / 8] : allocateArray((BigInteger.ZERO.compareTo(element.getUpperBound()) > 0 ? element.getUpperBound().intValue() : readLength().intLength()) / 8);
                Streams.readFully(this, bArrAllocateArray7);
                if (this.debugOutput != null) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("BIT STRING(" + (bArrAllocateArray7.length * 8) + ") = ");
                    for (int i5 = 0; i5 != bArrAllocateArray7.length; i5++) {
                        byte b2 = bArrAllocateArray7[i5];
                        for (int i6 = 0; i6 < 8; i6++) {
                            stringBuffer.append((b2 & 128) > 0 ? "1" : ContentTree.ROOT_ID);
                            b2 = (byte) (b2 << 1);
                        }
                    }
                    debugPrint(element + stringBuffer.toString());
                }
                return new DERBitString(bArrAllocateArray7);
            case 13:
                debugPrint(element + "NULL");
                return DERNull.INSTANCE;
            case 14:
                LengthInfo length2 = readLength();
                byte[] bArr = new byte[length2.intLength()];
                if (Streams.readFully(this, bArr) != length2.intLength()) {
                    az.o("could not read all of count of open value in choice (...) ");
                    return null;
                }
                debugPrint("ext " + length2.intLength() + " " + Hex.toHexString(bArr));
                return new DEROctetString(bArr);
            case 15:
                return read() == 0 ? ASN1Boolean.FALSE : ASN1Boolean.TRUE;
            default:
                ct0.o(element.getBaseType(), "Unhandled type ");
                return null;
        }
    }

    public BigInteger parseInt(boolean z, int i2) throws Exception {
        byte[] bArr = new byte[i2];
        if (Streams.readFully(this, bArr) == i2) {
            return z ? new BigInteger(1, bArr) : new BigInteger(bArr);
        }
        md.k("integer not fully read");
        return null;
    }

    public ASN1Encodable parseOpenType(Element element) throws Throwable {
        byte[] bArrAllocateArray = allocateArray(readLength().intLength());
        OERInputStream oERInputStream = null;
        if (Streams.readFully(((FilterInputStream) this).in, bArrAllocateArray) != bArrAllocateArray.length) {
            az.o("did not fully read open type as raw bytes");
            return null;
        }
        try {
            OERInputStream oERInputStream2 = new OERInputStream(new ByteArrayInputStream(bArrAllocateArray));
            try {
                ASN1Object aSN1Object = oERInputStream2.parse(element);
                oERInputStream2.close();
                return aSN1Object;
            } catch (Throwable th) {
                th = th;
                oERInputStream = oERInputStream2;
                if (oERInputStream != null) {
                    oERInputStream.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public LengthInfo readLength() throws IOException {
        String str;
        int i2 = read();
        if (i2 == -1) {
            str = "expecting length";
        } else {
            if ((i2 & 128) == 0) {
                StringBuilder sb = new StringBuilder("Len (Short form): ");
                int i3 = i2 & CertificateBody.profileType;
                sb.append(i3);
                debugPrint(sb.toString());
                return new LengthInfo(BigInteger.valueOf(i3), true);
            }
            int i4 = i2 & CertificateBody.profileType;
            byte[] bArr = new byte[i4];
            if (Streams.readFully(this, bArr) == i4) {
                StringBuilder sbQ = fc.q(i4, "Len (Long Form): ", " actual len: ");
                sbQ.append(Hex.toHexString(bArr));
                debugPrint(sbQ.toString());
                return new LengthInfo(BigIntegers.fromUnsignedByteArray(bArr), false);
            }
            str = "did not read all bytes of length definition";
        }
        d20.g(str);
        return null;
    }

    public BigInteger uint16() throws Exception {
        return parseInt(true, 2);
    }

    public BigInteger uint32() throws Exception {
        return parseInt(true, 4);
    }

    public BigInteger uint64() throws Exception {
        return parseInt(false, 8);
    }

    public BigInteger uint8() throws Exception {
        return parseInt(true, 1);
    }

    public OERInputStream(InputStream inputStream, int i2) {
        super(inputStream);
        this.debugOutput = null;
        this.debugStream = null;
        this.maxByteAllocation = i2;
    }

    public static ASN1Encodable parse(byte[] bArr, Element element) throws IOException {
        return new OERInputStream(new ByteArrayInputStream(bArr)).parse(element);
    }
}
