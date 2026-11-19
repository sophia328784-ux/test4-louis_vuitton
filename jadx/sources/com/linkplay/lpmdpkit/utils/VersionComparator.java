package com.linkplay.lpmdpkit.utils;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class VersionComparator {
    private static final String ALPHA_STRING = "alpha";
    private static final String BETA_STRING = "beta";
    private static final String PRE_STRING = "pre";
    private static final String RC_STRING = "rc";
    private static final String SNAPSHOT_STRING = "snapshot";

    public enum ReleaseType {
        SNAPSHOT,
        PRE_ALPHA,
        ALPHA,
        BETA,
        RC,
        STABLE
    }

    private VersionComparator() {
    }

    public static int compareSubversionNumbers(List<Long> list, List<Long> list2) {
        int size = list.size();
        int size2 = list2.size();
        int iMax = Math.max(size, size2);
        int i2 = 0;
        while (i2 < iMax) {
            if ((i2 < size ? list.get(i2).longValue() : 0L) > (i2 < size2 ? list2.get(i2).longValue() : 0L)) {
                return 1;
            }
            if ((i2 < size ? list.get(i2).longValue() : 0L) < (i2 < size2 ? list2.get(i2).longValue() : 0L)) {
                return -1;
            }
            i2++;
        }
        return 0;
    }

    private static boolean containsNumeric(CharSequence charSequence) {
        int length = charSequence.length();
        if (length > 0) {
            for (int i2 = 0; i2 < length; i2++) {
                if (Character.isDigit(charSequence.charAt(i2))) {
                    return true;
                }
            }
        }
        return false;
    }

    private static int indexOfQualifier(String str, ReleaseType releaseType) {
        String lowerCase = str.toLowerCase();
        int iOrdinal = releaseType.ordinal();
        if (iOrdinal == 1 || iOrdinal == 2) {
            return lowerCase.indexOf(ALPHA_STRING) + 5;
        }
        if (iOrdinal == 3) {
            return lowerCase.indexOf(BETA_STRING) + 4;
        }
        if (iOrdinal != 4) {
            return 0;
        }
        return lowerCase.indexOf(RC_STRING) + 2;
    }

    public static boolean isNumeric(CharSequence charSequence) {
        int length = charSequence.length();
        if (length <= 0) {
            return false;
        }
        for (int i2 = 0; i2 < length; i2++) {
            if (!Character.isDigit(charSequence.charAt(i2))) {
                return false;
            }
        }
        return true;
    }

    public static long preReleaseVersion(String str, ReleaseType releaseType) {
        int iIndexOfQualifier;
        if (releaseType == ReleaseType.STABLE || releaseType == ReleaseType.SNAPSHOT || (iIndexOfQualifier = indexOfQualifier(str, releaseType)) >= str.length() || !containsNumeric(str.substring(iIndexOfQualifier, Math.min(iIndexOfQualifier + 2, str.length())))) {
            return 0L;
        }
        StringBuilder sb = new StringBuilder();
        for (int i2 = iIndexOfQualifier; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (!Character.isDigit(cCharAt)) {
                if (i2 != iIndexOfQualifier) {
                    break;
                }
            } else {
                sb.append(cCharAt);
            }
        }
        return safeParseLong(sb.toString());
    }

    public static ReleaseType qualifierToReleaseType(String str) {
        if (str.length() > 0) {
            String lowerCase = str.toLowerCase();
            if (lowerCase.contains(RC_STRING)) {
                return ReleaseType.RC;
            }
            if (lowerCase.contains(BETA_STRING)) {
                return ReleaseType.BETA;
            }
            if (lowerCase.contains(ALPHA_STRING)) {
                return lowerCase.substring(0, lowerCase.indexOf(ALPHA_STRING)).contains(PRE_STRING) ? ReleaseType.PRE_ALPHA : ReleaseType.ALPHA;
            }
            if (lowerCase.contains(SNAPSHOT_STRING)) {
                return ReleaseType.SNAPSHOT;
            }
        }
        return ReleaseType.STABLE;
    }

    public static long safeParseLong(String str) {
        if (str.length() > 19) {
            str = str.substring(0, 19);
        }
        return Long.parseLong(str);
    }

    public static boolean startsNumeric(String str) {
        String strTrim = str.trim();
        return strTrim.length() > 0 && Character.isDigit(strTrim.charAt(0));
    }
}
