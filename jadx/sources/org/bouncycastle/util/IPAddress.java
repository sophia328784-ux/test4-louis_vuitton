package org.bouncycastle.util;

/* JADX INFO: loaded from: classes5.dex */
public class IPAddress {
    private static boolean isParseable(String str, int i2, int i3, int i4, int i5, boolean z, int i6, int i7) {
        int i8 = i3 - i2;
        if ((i8 > i5) || (i8 < 1)) {
            return false;
        }
        if (((i8 > 1) && (!z)) && Character.digit(str.charAt(i2), i4) <= 0) {
            return false;
        }
        int i9 = 0;
        while (i2 < i3) {
            int i10 = i2 + 1;
            int iDigit = Character.digit(str.charAt(i2), i4);
            if (iDigit < 0) {
                return false;
            }
            i9 = (i9 * i4) + iDigit;
            i2 = i10;
        }
        return (i9 >= i6) & (i9 <= i7);
    }

    private static boolean isParseableIPv4Mask(String str) {
        return isParseable(str, 0, str.length(), 10, 2, false, 0, 32);
    }

    private static boolean isParseableIPv4Octet(String str, int i2, int i3) {
        return isParseable(str, i2, i3, 10, 3, true, 0, 255);
    }

    private static boolean isParseableIPv6Mask(String str) {
        return isParseable(str, 0, str.length(), 10, 3, false, 1, 128);
    }

    private static boolean isParseableIPv6Segment(String str, int i2, int i3) {
        return isParseable(str, i2, i3, 16, 4, true, 0, 65535);
    }

    public static boolean isValid(String str) {
        return isValidIPv4(str) || isValidIPv6(str);
    }

    public static boolean isValidIPv4(String str) {
        int length = str.length();
        if (length < 7 || length > 15) {
            return false;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < 3; i3++) {
            int iIndexOf = str.indexOf(46, i2);
            if (!isParseableIPv4Octet(str, i2, iIndexOf)) {
                return false;
            }
            i2 = iIndexOf + 1;
        }
        return isParseableIPv4Octet(str, i2, length);
    }

    public static boolean isValidIPv4WithNetmask(String str) {
        int iIndexOf = str.indexOf("/");
        if (iIndexOf < 1) {
            return false;
        }
        String strSubstring = str.substring(0, iIndexOf);
        String strSubstring2 = str.substring(iIndexOf + 1);
        return isValidIPv4(strSubstring) && (isValidIPv4(strSubstring2) || isParseableIPv4Mask(strSubstring2));
    }

    public static boolean isValidIPv6(String str) {
        int iIndexOf;
        if (str.length() == 0) {
            return false;
        }
        char cCharAt = str.charAt(0);
        if (cCharAt != ':' && Character.digit(cCharAt, 16) < 0) {
            return false;
        }
        String strConcat = str.concat(":");
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        while (i2 < strConcat.length() && (iIndexOf = strConcat.indexOf(58, i2)) >= i2) {
            if (i3 == 8) {
                return false;
            }
            if (i2 != iIndexOf) {
                String strSubstring = strConcat.substring(i2, iIndexOf);
                if (iIndexOf == strConcat.length() - 1 && strSubstring.indexOf(46) > 0) {
                    i3++;
                    if (i3 == 8 || !isValidIPv4(strSubstring)) {
                        return false;
                    }
                } else if (!isParseableIPv6Segment(strConcat, i2, iIndexOf)) {
                    return false;
                }
            } else {
                if (iIndexOf != 1 && iIndexOf != strConcat.length() - 1 && z) {
                    return false;
                }
                z = true;
            }
            i2 = iIndexOf + 1;
            i3++;
        }
        return i3 == 8 || z;
    }

    public static boolean isValidIPv6WithNetmask(String str) {
        int iIndexOf = str.indexOf("/");
        if (iIndexOf < 1) {
            return false;
        }
        String strSubstring = str.substring(0, iIndexOf);
        String strSubstring2 = str.substring(iIndexOf + 1);
        return isValidIPv6(strSubstring) && (isValidIPv6(strSubstring2) || isParseableIPv6Mask(strSubstring2));
    }

    public static boolean isValidWithNetMask(String str) {
        return isValidIPv4WithNetmask(str) || isValidIPv6WithNetmask(str);
    }
}
