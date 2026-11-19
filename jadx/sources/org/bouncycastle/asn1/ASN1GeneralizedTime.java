package org.bouncycastle.asn1;

import com.github.druk.dnssd.DNSSD;
import com.linkplay.medialib.ContentTree;
import defpackage.a;
import defpackage.az;
import defpackage.md;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.SimpleTimeZone;
import java.util.TimeZone;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Strings;

/* JADX INFO: loaded from: classes3.dex */
public class ASN1GeneralizedTime extends ASN1Primitive {
    static final ASN1UniversalType TYPE = new ASN1UniversalType(ASN1GeneralizedTime.class, 24) { // from class: org.bouncycastle.asn1.ASN1GeneralizedTime.1
        @Override // org.bouncycastle.asn1.ASN1UniversalType
        public ASN1Primitive fromImplicitPrimitive(DEROctetString dEROctetString) {
            return ASN1GeneralizedTime.createPrimitive(dEROctetString.getOctets());
        }
    };
    final byte[] contents;

    public ASN1GeneralizedTime(byte[] bArr) {
        if (bArr.length < 4) {
            md.n("GeneralizedTime string too short");
            throw null;
        }
        this.contents = bArr;
        if (isDigit(0) && isDigit(1) && isDigit(2) && isDigit(3)) {
            return;
        }
        md.n("illegal characters in GeneralizedTime string");
        throw null;
    }

    private SimpleDateFormat calculateGMTDateFormat() {
        SimpleDateFormat simpleDateFormat;
        if (hasFractionalSeconds()) {
            simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss.SSSz");
        } else if (hasSeconds()) {
            simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmssz");
        } else {
            simpleDateFormat = hasMinutes() ? new SimpleDateFormat("yyyyMMddHHmmz") : new SimpleDateFormat("yyyyMMddHHz");
        }
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        return simpleDateFormat;
    }

    private String calculateGMTOffset(String str) {
        String str2;
        TimeZone timeZone = TimeZone.getDefault();
        int rawOffset = timeZone.getRawOffset();
        if (rawOffset < 0) {
            rawOffset = -rawOffset;
            str2 = "-";
        } else {
            str2 = "+";
        }
        int i2 = rawOffset / 3600000;
        int i3 = (rawOffset - (3600000 * i2)) / DNSSD.DNSSD_DEFAULT_TIMEOUT;
        try {
            if (timeZone.useDaylightTime()) {
                if (hasFractionalSeconds()) {
                    str = pruneFractionalSeconds(str);
                }
                if (timeZone.inDaylightTime(calculateGMTDateFormat().parse(str + "GMT" + str2 + convert(i2) + ":" + convert(i3)))) {
                    i2 += str2.equals("+") ? 1 : -1;
                }
            }
        } catch (ParseException unused) {
        }
        return "GMT" + str2 + convert(i2) + ":" + convert(i3);
    }

    private String convert(int i2) {
        return i2 < 10 ? pq0.k(i2, ContentTree.ROOT_ID) : Integer.toString(i2);
    }

    public static ASN1GeneralizedTime createPrimitive(byte[] bArr) {
        return new ASN1GeneralizedTime(bArr);
    }

    public static ASN1GeneralizedTime getInstance(Object obj) {
        String strJ;
        if (obj == null || (obj instanceof ASN1GeneralizedTime)) {
            return (ASN1GeneralizedTime) obj;
        }
        if (obj instanceof ASN1Encodable) {
            ASN1Primitive aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
            if (aSN1Primitive instanceof ASN1GeneralizedTime) {
                return (ASN1GeneralizedTime) aSN1Primitive;
            }
        }
        if (obj instanceof byte[]) {
            try {
                return (ASN1GeneralizedTime) TYPE.fromByteArray((byte[]) obj);
            } catch (Exception e2) {
                strJ = a.j(e2, new StringBuilder("encoding error in getInstance: "));
            }
        } else {
            strJ = o60.l(obj, "illegal object in getInstance: ");
        }
        md.n(strJ);
        return null;
    }

    private boolean isDigit(int i2) {
        byte b2;
        byte[] bArr = this.contents;
        return bArr.length > i2 && (b2 = bArr[i2]) >= 48 && b2 <= 57;
    }

    private String pruneFractionalSeconds(String str) {
        char cCharAt;
        String strSubstring = str.substring(14);
        int i2 = 1;
        while (i2 < strSubstring.length() && '0' <= (cCharAt = strSubstring.charAt(i2)) && cCharAt <= '9') {
            i2++;
        }
        int i3 = i2 - 1;
        if (i3 > 3) {
            return str.substring(0, 14).concat(strSubstring.substring(0, 4).concat(strSubstring.substring(i2)));
        }
        if (i3 == 1) {
            StringBuilder sb = new StringBuilder();
            n00.A(0, i2, strSubstring, "00", sb);
            sb.append(strSubstring.substring(i2));
            return str.substring(0, 14).concat(sb.toString());
        }
        if (i3 != 2) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        n00.A(0, i2, strSubstring, ContentTree.ROOT_ID, sb2);
        sb2.append(strSubstring.substring(i2));
        return str.substring(0, 14).concat(sb2.toString());
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof ASN1GeneralizedTime) {
            return Arrays.areEqual(this.contents, ((ASN1GeneralizedTime) aSN1Primitive).contents);
        }
        return false;
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public void encode(ASN1OutputStream aSN1OutputStream, boolean z) throws IOException {
        aSN1OutputStream.writeEncodingDL(z, 24, this.contents);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public final boolean encodeConstructed() {
        return false;
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public int encodedLength(boolean z) {
        return ASN1OutputStream.getLengthOfEncodingDL(z, this.contents.length);
    }

    public Date getDate() throws ParseException {
        SimpleDateFormat simpleDateFormatCalculateGMTDateFormat;
        SimpleDateFormat simpleDateFormat;
        String strFromByteArray = Strings.fromByteArray(this.contents);
        if (strFromByteArray.endsWith("Z")) {
            if (hasFractionalSeconds()) {
                simpleDateFormatCalculateGMTDateFormat = new SimpleDateFormat("yyyyMMddHHmmss.SSS'Z'", LocaleUtil.EN_Locale);
            } else if (hasSeconds()) {
                simpleDateFormatCalculateGMTDateFormat = new SimpleDateFormat("yyyyMMddHHmmss'Z'", LocaleUtil.EN_Locale);
            } else {
                simpleDateFormatCalculateGMTDateFormat = hasMinutes() ? new SimpleDateFormat("yyyyMMddHHmm'Z'", LocaleUtil.EN_Locale) : new SimpleDateFormat("yyyyMMddHH'Z'", LocaleUtil.EN_Locale);
            }
            simpleDateFormatCalculateGMTDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        } else if (strFromByteArray.indexOf(45) > 0 || strFromByteArray.indexOf(43) > 0) {
            strFromByteArray = getTime();
            simpleDateFormatCalculateGMTDateFormat = calculateGMTDateFormat();
        } else {
            if (hasFractionalSeconds()) {
                simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss.SSS");
            } else if (hasSeconds()) {
                simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
            } else {
                simpleDateFormat = hasMinutes() ? new SimpleDateFormat("yyyyMMddHHmm") : new SimpleDateFormat("yyyyMMddHH");
            }
            simpleDateFormatCalculateGMTDateFormat = simpleDateFormat;
            simpleDateFormatCalculateGMTDateFormat.setTimeZone(new SimpleTimeZone(0, TimeZone.getDefault().getID()));
        }
        if (hasFractionalSeconds()) {
            strFromByteArray = pruneFractionalSeconds(strFromByteArray);
        }
        return simpleDateFormatCalculateGMTDateFormat.parse(strFromByteArray);
    }

    public String getTime() {
        String strFromByteArray = Strings.fromByteArray(this.contents);
        if (strFromByteArray.charAt(strFromByteArray.length() - 1) == 'Z') {
            return strFromByteArray.substring(0, strFromByteArray.length() - 1).concat("GMT+00:00");
        }
        int length = strFromByteArray.length();
        char cCharAt = strFromByteArray.charAt(length - 6);
        if ((cCharAt == '-' || cCharAt == '+') && strFromByteArray.indexOf("GMT") == length - 9) {
            return strFromByteArray;
        }
        int length2 = strFromByteArray.length();
        int i2 = length2 - 5;
        char cCharAt2 = strFromByteArray.charAt(i2);
        if (cCharAt2 == '-' || cCharAt2 == '+') {
            StringBuilder sb = new StringBuilder();
            sb.append(strFromByteArray.substring(0, i2));
            sb.append("GMT");
            int i3 = length2 - 2;
            n00.A(i2, i3, strFromByteArray, ":", sb);
            sb.append(strFromByteArray.substring(i3));
            return sb.toString();
        }
        int length3 = strFromByteArray.length() - 3;
        char cCharAt3 = strFromByteArray.charAt(length3);
        if (cCharAt3 != '-' && cCharAt3 != '+') {
            StringBuilder sbT = n00.t(strFromByteArray);
            sbT.append(calculateGMTOffset(strFromByteArray));
            return sbT.toString();
        }
        StringBuilder sb2 = new StringBuilder();
        n00.A(0, length3, strFromByteArray, "GMT", sb2);
        sb2.append(strFromByteArray.substring(length3));
        sb2.append(":00");
        return sb2.toString();
    }

    public String getTimeString() {
        return Strings.fromByteArray(this.contents);
    }

    public boolean hasFractionalSeconds() {
        int i2 = 0;
        while (true) {
            byte[] bArr = this.contents;
            if (i2 == bArr.length) {
                return false;
            }
            if (bArr[i2] == 46 && i2 == 14) {
                return true;
            }
            i2++;
        }
    }

    public boolean hasMinutes() {
        return isDigit(10) && isDigit(11);
    }

    public boolean hasSeconds() {
        return isDigit(12) && isDigit(13);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive, org.bouncycastle.asn1.ASN1Object
    public int hashCode() {
        return Arrays.hashCode(this.contents);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDERObject() {
        return new DERGeneralizedTime(this.contents);
    }

    public ASN1GeneralizedTime(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss'Z'", LocaleUtil.EN_Locale);
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        this.contents = Strings.toByteArray(simpleDateFormat.format(date));
    }

    public ASN1GeneralizedTime(Date date, Locale locale) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss'Z'", locale);
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        this.contents = Strings.toByteArray(simpleDateFormat.format(date));
    }

    public ASN1GeneralizedTime(String str) {
        this.contents = Strings.toByteArray(str);
        try {
            getDate();
        } catch (ParseException e2) {
            az.w(e2.getMessage(), "invalid date string: ");
            throw null;
        }
    }

    public static ASN1GeneralizedTime getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return (ASN1GeneralizedTime) TYPE.getContextInstance(aSN1TaggedObject, z);
    }
}
