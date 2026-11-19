package com.squareup.moshi.adapters;

import com.sightcall.advancedannotations.domain.parser.TextParser;
import com.squareup.moshi.JsonDataException;
import defpackage.tr;
import io.jsonwebtoken.JwtParser;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix;

/* JADX INFO: loaded from: classes2.dex */
abstract class Iso8601Utils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TimeZone f43423a = TimeZone.getTimeZone("GMT");

    public static boolean a(String str, int i2, char c2) {
        return i2 < str.length() && str.charAt(i2) == c2;
    }

    public static String b(Date date) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(f43423a, Locale.US);
        gregorianCalendar.setTime(date);
        StringBuilder sb = new StringBuilder(24);
        c(sb, gregorianCalendar.get(1), 4);
        sb.append('-');
        c(sb, gregorianCalendar.get(2) + 1, 2);
        sb.append('-');
        c(sb, gregorianCalendar.get(5), 2);
        sb.append(TextParser.TextInstruction);
        c(sb, gregorianCalendar.get(11), 2);
        sb.append(':');
        c(sb, gregorianCalendar.get(12), 2);
        sb.append(':');
        c(sb, gregorianCalendar.get(13), 2);
        sb.append(JwtParser.SEPARATOR_CHAR);
        c(sb, gregorianCalendar.get(14), 3);
        sb.append(Matrix.MATRIX_TYPE_ZERO);
        return sb.toString();
    }

    public static void c(StringBuilder sb, int i2, int i3) {
        String string = Integer.toString(i2);
        for (int length = i3 - string.length(); length > 0; length--) {
            sb.append('0');
        }
        sb.append(string);
    }

    public static Date d(String str) {
        int i2;
        int iPow;
        int iE;
        int iE2;
        char cCharAt;
        try {
            int iE3 = e(str, 0, 4);
            int i3 = a(str, 4, '-') ? 5 : 4;
            int i4 = i3 + 2;
            int iE4 = e(str, i3, i4);
            if (a(str, i4, '-')) {
                i4 = i3 + 3;
            }
            int i5 = i4 + 2;
            int iE5 = e(str, i4, i5);
            boolean zA = a(str, i5, TextParser.TextInstruction);
            if (!zA && str.length() <= i5) {
                return new GregorianCalendar(iE3, iE4 - 1, iE5).getTime();
            }
            if (zA) {
                int i6 = i4 + 5;
                int iE6 = e(str, i4 + 3, i6);
                if (a(str, i6, ':')) {
                    i6 = i4 + 6;
                }
                int i7 = i6 + 2;
                iE2 = e(str, i6, i7);
                if (a(str, i7, ':')) {
                    i7 = i6 + 3;
                }
                if (str.length() <= i7 || (cCharAt = str.charAt(i7)) == 'Z' || cCharAt == '+' || cCharAt == '-') {
                    i2 = iE6;
                    i5 = i7;
                    iPow = 0;
                    iE = 0;
                } else {
                    int i8 = i7 + 2;
                    iE = e(str, i7, i8);
                    if (iE > 59 && iE < 63) {
                        iE = 59;
                    }
                    if (a(str, i8, JwtParser.SEPARATOR_CHAR)) {
                        int i9 = i7 + 3;
                        int length = i7 + 4;
                        while (true) {
                            if (length >= str.length()) {
                                length = str.length();
                                break;
                            }
                            char cCharAt2 = str.charAt(length);
                            if (cCharAt2 < '0' || cCharAt2 > '9') {
                                break;
                                break;
                            }
                            length++;
                        }
                        int iMin = Math.min(length, i7 + 6);
                        iPow = (int) (Math.pow(10.0d, 3 - (iMin - i9)) * ((double) e(str, i9, iMin)));
                        i2 = iE6;
                        i5 = length;
                    } else {
                        i2 = iE6;
                        i5 = i8;
                        iPow = 0;
                    }
                }
            } else {
                i2 = 0;
                iPow = 0;
                iE = 0;
                iE2 = 0;
            }
            if (str.length() <= i5) {
                throw new IllegalArgumentException("No time zone indicator");
            }
            char cCharAt3 = str.charAt(i5);
            TimeZone timeZone = f43423a;
            if (cCharAt3 != 'Z') {
                if (cCharAt3 != '+' && cCharAt3 != '-') {
                    throw new IndexOutOfBoundsException("Invalid time zone indicator '" + cCharAt3 + "'");
                }
                String strSubstring = str.substring(i5);
                if (!"+0000".equals(strSubstring) && !"+00:00".equals(strSubstring)) {
                    String str2 = "GMT" + strSubstring;
                    timeZone = TimeZone.getTimeZone(str2);
                    String id = timeZone.getID();
                    if (!id.equals(str2) && !id.replace(":", "").equals(str2)) {
                        throw new IndexOutOfBoundsException("Mismatching time zone indicator: " + str2 + " given, resolves to " + timeZone.getID());
                    }
                }
            }
            GregorianCalendar gregorianCalendar = new GregorianCalendar(timeZone);
            gregorianCalendar.setLenient(false);
            gregorianCalendar.set(1, iE3);
            gregorianCalendar.set(2, iE4 - 1);
            gregorianCalendar.set(5, iE5);
            gregorianCalendar.set(11, i2);
            gregorianCalendar.set(12, iE2);
            gregorianCalendar.set(13, iE);
            gregorianCalendar.set(14, iPow);
            return gregorianCalendar.getTime();
        } catch (IllegalArgumentException | IndexOutOfBoundsException e2) {
            throw new JsonDataException(tr.g("Not an RFC 3339 date: ", str), e2);
        }
    }

    public static int e(String str, int i2, int i3) {
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
}
