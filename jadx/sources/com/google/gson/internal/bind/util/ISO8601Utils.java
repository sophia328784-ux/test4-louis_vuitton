package com.google.gson.internal.bind.util;

import com.github.druk.dnssd.DNSSD;
import com.sightcall.advancedannotations.domain.parser.TextParser;
import defpackage.d21;
import defpackage.fc;
import io.jsonwebtoken.JwtParser;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix;

/* JADX INFO: loaded from: classes2.dex */
public class ISO8601Utils {
    private static final String UTC_ID = "UTC";
    private static final TimeZone TIMEZONE_UTC = TimeZone.getTimeZone(UTC_ID);

    private ISO8601Utils() {
    }

    private static boolean checkOffset(String str, int i2, char c2) {
        return i2 < str.length() && str.charAt(i2) == c2;
    }

    public static String format(Date date, boolean z, TimeZone timeZone) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(timeZone, Locale.US);
        gregorianCalendar.setTime(date);
        StringBuilder sb = new StringBuilder(19 + (z ? 4 : 0) + (timeZone.getRawOffset() == 0 ? 1 : 6));
        padInt(sb, gregorianCalendar.get(1), 4);
        sb.append('-');
        padInt(sb, gregorianCalendar.get(2) + 1, 2);
        sb.append('-');
        padInt(sb, gregorianCalendar.get(5), 2);
        sb.append(TextParser.TextInstruction);
        padInt(sb, gregorianCalendar.get(11), 2);
        sb.append(':');
        padInt(sb, gregorianCalendar.get(12), 2);
        sb.append(':');
        padInt(sb, gregorianCalendar.get(13), 2);
        if (z) {
            sb.append(JwtParser.SEPARATOR_CHAR);
            padInt(sb, gregorianCalendar.get(14), 3);
        }
        int offset = timeZone.getOffset(gregorianCalendar.getTimeInMillis());
        if (offset != 0) {
            int i2 = offset / DNSSD.DNSSD_DEFAULT_TIMEOUT;
            int iAbs = Math.abs(i2 / 60);
            int iAbs2 = Math.abs(i2 % 60);
            sb.append(offset >= 0 ? '+' : '-');
            padInt(sb, iAbs, 2);
            sb.append(':');
            padInt(sb, iAbs2, 2);
        } else {
            sb.append(Matrix.MATRIX_TYPE_ZERO);
        }
        return sb.toString();
    }

    private static int indexOfNonDigit(String str, int i2) {
        while (i2 < str.length()) {
            char cCharAt = str.charAt(i2);
            if (cCharAt < '0' || cCharAt > '9') {
                return i2;
            }
            i2++;
        }
        return str.length();
    }

    private static void padInt(StringBuilder sb, int i2, int i3) {
        String string = Integer.toString(i2);
        for (int length = i3 - string.length(); length > 0; length--) {
            sb.append('0');
        }
        sb.append(string);
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00e5 A[Catch: IllegalArgumentException | IndexOutOfBoundsException -> 0x0056, TryCatch #0 {IllegalArgumentException | IndexOutOfBoundsException -> 0x0056, blocks: (B:3:0x000c, B:5:0x001f, B:6:0x0021, B:8:0x002d, B:9:0x002f, B:11:0x003f, B:13:0x0045, B:19:0x005f, B:21:0x006f, B:22:0x0071, B:24:0x007d, B:25:0x0080, B:27:0x0086, B:31:0x0090, B:36:0x00a0, B:38:0x00a8, B:50:0x00df, B:52:0x00e5, B:54:0x00eb, B:80:0x017c, B:60:0x00fc, B:61:0x0112, B:62:0x0113, B:66:0x0123, B:68:0x0130, B:71:0x0139, B:73:0x014b, B:76:0x015a, B:77:0x0177, B:79:0x017a, B:65:0x011f, B:82:0x01ae, B:83:0x01b5, B:43:0x00c2, B:44:0x00c5), top: B:94:0x000c }] */
    /* JADX WARN: Code duplicated, block: B:54:0x00eb A[Catch: IllegalArgumentException | IndexOutOfBoundsException -> 0x0056, TryCatch #0 {IllegalArgumentException | IndexOutOfBoundsException -> 0x0056, blocks: (B:3:0x000c, B:5:0x001f, B:6:0x0021, B:8:0x002d, B:9:0x002f, B:11:0x003f, B:13:0x0045, B:19:0x005f, B:21:0x006f, B:22:0x0071, B:24:0x007d, B:25:0x0080, B:27:0x0086, B:31:0x0090, B:36:0x00a0, B:38:0x00a8, B:50:0x00df, B:52:0x00e5, B:54:0x00eb, B:80:0x017c, B:60:0x00fc, B:61:0x0112, B:62:0x0113, B:66:0x0123, B:68:0x0130, B:71:0x0139, B:73:0x014b, B:76:0x015a, B:77:0x0177, B:79:0x017a, B:65:0x011f, B:82:0x01ae, B:83:0x01b5, B:43:0x00c2, B:44:0x00c5), top: B:94:0x000c }] */
    /* JADX WARN: Code duplicated, block: B:55:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:64:0x011e  */
    /* JADX WARN: Code duplicated, block: B:65:0x011f A[Catch: IllegalArgumentException | IndexOutOfBoundsException -> 0x0056, TryCatch #0 {IllegalArgumentException | IndexOutOfBoundsException -> 0x0056, blocks: (B:3:0x000c, B:5:0x001f, B:6:0x0021, B:8:0x002d, B:9:0x002f, B:11:0x003f, B:13:0x0045, B:19:0x005f, B:21:0x006f, B:22:0x0071, B:24:0x007d, B:25:0x0080, B:27:0x0086, B:31:0x0090, B:36:0x00a0, B:38:0x00a8, B:50:0x00df, B:52:0x00e5, B:54:0x00eb, B:80:0x017c, B:60:0x00fc, B:61:0x0112, B:62:0x0113, B:66:0x0123, B:68:0x0130, B:71:0x0139, B:73:0x014b, B:76:0x015a, B:77:0x0177, B:79:0x017a, B:65:0x011f, B:82:0x01ae, B:83:0x01b5, B:43:0x00c2, B:44:0x00c5), top: B:94:0x000c }] */
    /* JADX WARN: Code duplicated, block: B:79:0x017a A[Catch: IllegalArgumentException | IndexOutOfBoundsException -> 0x0056, TryCatch #0 {IllegalArgumentException | IndexOutOfBoundsException -> 0x0056, blocks: (B:3:0x000c, B:5:0x001f, B:6:0x0021, B:8:0x002d, B:9:0x002f, B:11:0x003f, B:13:0x0045, B:19:0x005f, B:21:0x006f, B:22:0x0071, B:24:0x007d, B:25:0x0080, B:27:0x0086, B:31:0x0090, B:36:0x00a0, B:38:0x00a8, B:50:0x00df, B:52:0x00e5, B:54:0x00eb, B:80:0x017c, B:60:0x00fc, B:61:0x0112, B:62:0x0113, B:66:0x0123, B:68:0x0130, B:71:0x0139, B:73:0x014b, B:76:0x015a, B:77:0x0177, B:79:0x017a, B:65:0x011f, B:82:0x01ae, B:83:0x01b5, B:43:0x00c2, B:44:0x00c5), top: B:94:0x000c }] */
    /* JADX WARN: Code duplicated, block: B:82:0x01ae A[Catch: IllegalArgumentException | IndexOutOfBoundsException -> 0x0056, TryCatch #0 {IllegalArgumentException | IndexOutOfBoundsException -> 0x0056, blocks: (B:3:0x000c, B:5:0x001f, B:6:0x0021, B:8:0x002d, B:9:0x002f, B:11:0x003f, B:13:0x0045, B:19:0x005f, B:21:0x006f, B:22:0x0071, B:24:0x007d, B:25:0x0080, B:27:0x0086, B:31:0x0090, B:36:0x00a0, B:38:0x00a8, B:50:0x00df, B:52:0x00e5, B:54:0x00eb, B:80:0x017c, B:60:0x00fc, B:61:0x0112, B:62:0x0113, B:66:0x0123, B:68:0x0130, B:71:0x0139, B:73:0x014b, B:76:0x015a, B:77:0x0177, B:79:0x017a, B:65:0x011f, B:82:0x01ae, B:83:0x01b5, B:43:0x00c2, B:44:0x00c5), top: B:94:0x000c }] */
    public static Date parse(String str, ParsePosition parsePosition) throws ParseException {
        int i2;
        int i3;
        int i4;
        int i5;
        char cCharAt;
        String strSubstring;
        int length;
        TimeZone timeZone;
        char cCharAt2;
        try {
            int index = parsePosition.getIndex();
            int i6 = index + 4;
            int i7 = parseInt(str, index, i6);
            if (checkOffset(str, i6, '-')) {
                i6 = index + 5;
            }
            int i8 = i6 + 2;
            int i9 = parseInt(str, i6, i8);
            if (checkOffset(str, i8, '-')) {
                i8 = i6 + 3;
            }
            int i10 = i8 + 2;
            int i11 = parseInt(str, i8, i10);
            boolean zCheckOffset = checkOffset(str, i10, TextParser.TextInstruction);
            if (!zCheckOffset && str.length() <= i10) {
                GregorianCalendar gregorianCalendar = new GregorianCalendar(i7, i9 - 1, i11);
                gregorianCalendar.setLenient(false);
                parsePosition.setIndex(i10);
                return gregorianCalendar.getTime();
            }
            if (zCheckOffset) {
                int i12 = i8 + 5;
                int i13 = parseInt(str, i8 + 3, i12);
                if (checkOffset(str, i12, ':')) {
                    i12 = i8 + 6;
                }
                int i14 = i12 + 2;
                int i15 = parseInt(str, i12, i14);
                if (checkOffset(str, i14, ':')) {
                    i14 = i12 + 3;
                }
                if (str.length() <= i14 || (cCharAt2 = str.charAt(i14)) == 'Z' || cCharAt2 == '+' || cCharAt2 == '-') {
                    i10 = i14;
                    i2 = i13;
                    i3 = i15;
                } else {
                    int i16 = i14 + 2;
                    i5 = parseInt(str, i14, i16);
                    if (i5 > 59 && i5 < 63) {
                        i5 = 59;
                    }
                    if (checkOffset(str, i16, JwtParser.SEPARATOR_CHAR)) {
                        int i17 = i14 + 3;
                        int iIndexOfNonDigit = indexOfNonDigit(str, i14 + 4);
                        int iMin = Math.min(iIndexOfNonDigit, i14 + 6);
                        int i18 = parseInt(str, i17, iMin);
                        int i19 = iMin - i17;
                        if (i19 == 1) {
                            i18 *= 100;
                        } else if (i19 == 2) {
                            i18 *= 10;
                        }
                        i2 = i13;
                        i10 = iIndexOfNonDigit;
                        i3 = i15;
                        i4 = i18;
                    } else {
                        i2 = i13;
                        i10 = i16;
                        i3 = i15;
                        i4 = 0;
                    }
                }
                if (str.length() > i10) {
                    throw new IllegalArgumentException("No time zone indicator");
                }
                cCharAt = str.charAt(i10);
                if (cCharAt == 'Z') {
                    timeZone = TIMEZONE_UTC;
                    length = i10 + 1;
                } else {
                    if (cCharAt != '+' && cCharAt != '-') {
                        throw new IndexOutOfBoundsException("Invalid time zone indicator '" + cCharAt + "'");
                    }
                    strSubstring = str.substring(i10);
                    if (strSubstring.length() >= 5) {
                        strSubstring = strSubstring.concat("00");
                    }
                    length = i10 + strSubstring.length();
                    if (!strSubstring.equals("+0000") || strSubstring.equals("+00:00")) {
                        timeZone = TIMEZONE_UTC;
                    } else {
                        String strConcat = "GMT".concat(strSubstring);
                        TimeZone timeZone2 = TimeZone.getTimeZone(strConcat);
                        String id = timeZone2.getID();
                        if (!id.equals(strConcat) && !id.replace(":", "").equals(strConcat)) {
                            throw new IndexOutOfBoundsException("Mismatching time zone indicator: " + strConcat + " given, resolves to " + timeZone2.getID());
                        }
                        timeZone = timeZone2;
                    }
                }
                GregorianCalendar gregorianCalendar2 = new GregorianCalendar(timeZone);
                gregorianCalendar2.setLenient(false);
                gregorianCalendar2.set(1, i7);
                gregorianCalendar2.set(2, i9 - 1);
                gregorianCalendar2.set(5, i11);
                gregorianCalendar2.set(11, i2);
                gregorianCalendar2.set(12, i3);
                gregorianCalendar2.set(13, i5);
                gregorianCalendar2.set(14, i4);
                parsePosition.setIndex(length);
                return gregorianCalendar2.getTime();
            }
            i2 = 0;
            i3 = 0;
            i4 = 0;
            i5 = 0;
            if (str.length() > i10) {
                throw new IllegalArgumentException("No time zone indicator");
            }
            cCharAt = str.charAt(i10);
            if (cCharAt == 'Z') {
                timeZone = TIMEZONE_UTC;
                length = i10 + 1;
            } else {
                if (cCharAt != '+') {
                    throw new IndexOutOfBoundsException("Invalid time zone indicator '" + cCharAt + "'");
                }
                strSubstring = str.substring(i10);
                if (strSubstring.length() >= 5) {
                    strSubstring = strSubstring.concat("00");
                }
                length = i10 + strSubstring.length();
                if (strSubstring.equals("+0000")) {
                    timeZone = TIMEZONE_UTC;
                } else {
                    timeZone = TIMEZONE_UTC;
                }
            }
            GregorianCalendar gregorianCalendar3 = new GregorianCalendar(timeZone);
            gregorianCalendar3.setLenient(false);
            gregorianCalendar3.set(1, i7);
            gregorianCalendar3.set(2, i9 - 1);
            gregorianCalendar3.set(5, i11);
            gregorianCalendar3.set(11, i2);
            gregorianCalendar3.set(12, i3);
            gregorianCalendar3.set(13, i5);
            gregorianCalendar3.set(14, i4);
            parsePosition.setIndex(length);
            return gregorianCalendar3.getTime();
        } catch (IllegalArgumentException | IndexOutOfBoundsException e2) {
            String strD = str == null ? null : d21.d('\"', "\"", str);
            String message = e2.getMessage();
            if (message == null || message.isEmpty()) {
                message = "(" + e2.getClass().getName() + ")";
            }
            ParseException parseException = new ParseException(fc.i("Failed to parse date [", strD, "]: ", message), parsePosition.getIndex());
            parseException.initCause(e2);
            throw parseException;
        }
    }

    private static int parseInt(String str, int i2, int i3) throws NumberFormatException {
        int i4;
        int i5;
        if (i2 < 0 || i3 > str.length() || i2 > i3) {
            throw new NumberFormatException(str);
        }
        if (i2 < i3) {
            i5 = i2 + 1;
            int iDigit = Character.digit(str.charAt(i2), 10);
            if (iDigit < 0) {
                throw new NumberFormatException("Invalid number: ".concat(str.substring(i2, i3)));
            }
            i4 = -iDigit;
        } else {
            i4 = 0;
            i5 = i2;
        }
        while (i5 < i3) {
            int i6 = i5 + 1;
            int iDigit2 = Character.digit(str.charAt(i5), 10);
            if (iDigit2 < 0) {
                throw new NumberFormatException("Invalid number: ".concat(str.substring(i2, i3)));
            }
            i4 = (i4 * 10) - iDigit2;
            i5 = i6;
        }
        return -i4;
    }

    public static String format(Date date, boolean z) {
        return format(date, z, TIMEZONE_UTC);
    }

    public static String format(Date date) {
        return format(date, false, TIMEZONE_UTC);
    }
}
