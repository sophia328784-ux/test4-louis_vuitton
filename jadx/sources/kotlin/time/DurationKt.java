package kotlin.time;

import defpackage.md;
import defpackage.mt;
import kotlin.Metadata;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlin-stdlib"}, k = 2, mv = {2, 4, 0}, xi = 48)
public abstract class DurationKt {

    @Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f74572a;

        static {
            int[] iArr = new int[DurationUnit.values().length];
            try {
                iArr[DurationUnit.MICROSECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DurationUnit.NANOSECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DurationUnit.MILLISECONDS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DurationUnit.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[DurationUnit.MINUTES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[DurationUnit.HOURS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[DurationUnit.DAYS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            f74572a = iArr;
        }
    }

    public static final long a(long j2, long j3) {
        if (j2 != 4611686018427387903L && j2 != -4611686018427387903L) {
            return (j3 == 4611686018427387903L || j3 == -4611686018427387903L) ? j3 : RangesKt.e(j2 + j3, -4611686018427387903L, 4611686018427387903L);
        }
        if ((-4611686018427387903L >= j3 || j3 >= 4611686018427387903L) && (j3 ^ j2) < 0) {
            return 9223372036854759646L;
        }
        return j2;
    }

    public static final long b(long j2) {
        long j3 = (j2 << 1) + 1;
        Duration.INSTANCE.getClass();
        int i2 = DurationJvmKt.f74571a;
        return j3;
    }

    public static final long c(long j2) {
        return (-4611686018426L > j2 || j2 >= 4611686018427L) ? b(RangesKt.e(j2, -4611686018427387903L, 4611686018427387903L)) : d(j2 * 1000000);
    }

    public static final long d(long j2) {
        long j3 = j2 << 1;
        Duration.INSTANCE.getClass();
        int i2 = DurationJvmKt.f74571a;
        return j3;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x016f  */
    /* JADX WARN: Code duplicated, block: B:103:0x017b  */
    /* JADX WARN: Code duplicated, block: B:109:0x0198 A[LOOP:7: B:108:0x0196->B:109:0x0198, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:113:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:119:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:137:0x021b  */
    /* JADX WARN: Code duplicated, block: B:140:0x0225  */
    /* JADX WARN: Code duplicated, block: B:142:0x0229  */
    /* JADX WARN: Code duplicated, block: B:144:0x022d  */
    /* JADX WARN: Code duplicated, block: B:146:0x0231  */
    /* JADX WARN: Code duplicated, block: B:147:0x0233  */
    /* JADX WARN: Code duplicated, block: B:148:0x0236  */
    /* JADX WARN: Code duplicated, block: B:149:0x0239  */
    /* JADX WARN: Code duplicated, block: B:150:0x023c  */
    /* JADX WARN: Code duplicated, block: B:152:0x0240  */
    /* JADX WARN: Code duplicated, block: B:160:0x0253 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:161:0x0255  */
    /* JADX WARN: Code duplicated, block: B:165:0x0261 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:166:0x0263  */
    /* JADX WARN: Code duplicated, block: B:201:0x0217 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:204:0x028c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:206:0x025d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:207:0x0288 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:208:0x0284 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:230:0x018f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:231:0x0191 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:0x007c  */
    /* JADX WARN: Code duplicated, block: B:89:0x012a  */
    /* JADX WARN: Code duplicated, block: B:91:0x013a  */
    /* JADX WARN: Code duplicated, block: B:98:0x0159 A[LOOP:5: B:97:0x0157->B:98:0x0159, LOOP_END] */
    public static long e(String str) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        long j2;
        int i8;
        char cCharAt;
        DurationUnit durationUnit;
        long jA;
        int i9;
        int iMin;
        int i10;
        int i11;
        int i12;
        int iMin2;
        int i13;
        int i14;
        int i15;
        double d;
        long jD;
        char cCharAt2;
        int i16;
        char cCharAt3;
        char cCharAt4;
        char cCharAt5;
        if (str.length() == 0) {
            md.n("The string is empty");
            return 0L;
        }
        char cCharAt6 = str.charAt(0);
        int i17 = 1;
        char c2 = '-';
        char c3 = '+';
        if (cCharAt6 != '+') {
            i3 = cCharAt6 != '-' ? 0 : 1;
            i2 = i3;
        } else {
            i2 = 0;
            i3 = 1;
        }
        if (str.length() <= i3) {
            md.n("No components");
            return 0L;
        }
        if (str.charAt(i3) != 'P') {
            md.n("");
            return 0L;
        }
        int i18 = i3 + 1;
        if (i18 == str.length()) {
            md.n("");
            return 0L;
        }
        int i19 = 0;
        DurationUnit durationUnit2 = null;
        long j3 = 0;
        long j4 = 0;
        while (i18 < str.length()) {
            char cCharAt7 = str.charAt(i18);
            if (cCharAt7 != 'T') {
                LongParser.f74582e.getClass();
                LongParser longParser = LongParser.f74583f;
                int i20 = i17;
                if (longParser.f74585b) {
                    char cCharAt8 = str.charAt(i18);
                    if (cCharAt8 == c3) {
                        i4 = i18 + 1;
                        i5 = i20;
                    } else if (cCharAt8 != c2) {
                        i4 = i18;
                        i5 = i20;
                    } else {
                        i4 = i18 + 1;
                        i5 = -1;
                    }
                } else {
                    i4 = i18;
                    i5 = i20;
                }
                while (i4 < str.length() && str.charAt(i4) == '0') {
                    i4++;
                }
                long j5 = 0;
                while (true) {
                    if (i4 < str.length()) {
                        char cCharAt9 = str.charAt(i4);
                        i6 = i18;
                        if ('0' <= cCharAt9 && cCharAt9 < ':') {
                            int i21 = cCharAt9 - '0';
                            i7 = i2;
                            long j6 = longParser.f74586c;
                            if (j5 > j6 || (j5 == j6 && i21 > longParser.d)) {
                                while (i4 < str.length() && '0' <= (cCharAt5 = str.charAt(i4)) && cCharAt5 < ':') {
                                    i4++;
                                }
                                if (i4 != str.length()) {
                                    if (i4 != i6 + ((cCharAt7 == '+' || cCharAt7 == '-') ? i20 : 0)) {
                                        j2 = longParser.f74584a;
                                    }
                                }
                                md.n("");
                                return 0L;
                            }
                            j5 = (j5 << 3) + (j5 << i20) + ((long) i21);
                            i4++;
                            i2 = i7;
                            i18 = i6;
                        }
                        if (str.charAt(i4) == '.') {
                            i9 = i4 + 1;
                            iMin = Math.min(i4 + 7, str.length());
                            i11 = 0;
                            for (i10 = i9; i10 < iMin; i10++) {
                                cCharAt4 = str.charAt(i10);
                                if ('0' <= cCharAt4 || cCharAt4 >= ':') {
                                    for (i12 = 0; i12 < 6 - (i10 - i9); i12++) {
                                        i11 = (i11 << 1) + (i11 << 3);
                                    }
                                    iMin2 = Math.min(i10 + 9, str.length());
                                    i13 = i10;
                                    i14 = 0;
                                    while (true) {
                                        if (i13 < iMin2) {
                                            i16 = iMin2;
                                            cCharAt3 = str.charAt(i13);
                                            i8 = i7;
                                            if ('0' > cCharAt3 && cCharAt3 < ':') {
                                                i14 = (cCharAt3 - '0') + (i14 << 3) + (i14 << 1);
                                                i13++;
                                                iMin2 = i16;
                                                i7 = i8;
                                            }
                                        } else {
                                            i8 = i7;
                                        }
                                    }
                                    for (i15 = 0; i15 < 9 - (i13 - i10); i15++) {
                                        i14 = (i14 << 1) + (i14 << 3);
                                    }
                                    i4 = i13;
                                    while (i4 < str.length() && '0' <= (cCharAt2 = str.charAt(i4)) && cCharAt2 < ':') {
                                        i4++;
                                    }
                                    if (i4 != i9 || i4 == str.length() || str.charAt(i4) != 'S') {
                                        md.n("");
                                        return 0L;
                                    }
                                    long j7 = (((long) i11) * 1000000000) + ((long) i14);
                                    long j8 = i5;
                                    DurationUnit durationUnit3 = DurationUnit.SECONDS;
                                    double d2 = j7;
                                    switch (WhenMappings.f74572a[durationUnit3.ordinal()]) {
                                        case 1:
                                            d = 1.0E-12d;
                                            jD = MathKt.d(d2 * d);
                                            break;
                                        case 2:
                                            d = 1.0E-15d;
                                            jD = MathKt.d(d2 * d);
                                            break;
                                        case 3:
                                            d = 1.0E-9d;
                                            jD = MathKt.d(d2 * d);
                                            break;
                                        case 4:
                                            d = 1.0E-6d;
                                            jD = MathKt.d(d2 * d);
                                            break;
                                        case 5:
                                            d = 6.0E-5d;
                                            jD = MathKt.d(d2 * d);
                                            break;
                                        case 6:
                                            d = 0.0036d;
                                            jD = MathKt.d(d2 * d);
                                            break;
                                        case 7:
                                            d = 0.0864d;
                                            jD = MathKt.d(d2 * d);
                                            break;
                                        default:
                                            mt.f(durationUnit3, "Unknown unit: ");
                                            jD = 0;
                                            break;
                                    }
                                    j4 = jD * j8;
                                } else {
                                    i11 = (cCharAt4 - '0') + (i11 << 3) + (i11 << 1);
                                }
                            }
                            while (i12 < 6 - (i10 - i9)) {
                                i11 = (i11 << 1) + (i11 << 3);
                            }
                            iMin2 = Math.min(i10 + 9, str.length());
                            i13 = i10;
                            i14 = 0;
                            while (true) {
                                if (i13 < iMin2) {
                                    i16 = iMin2;
                                    cCharAt3 = str.charAt(i13);
                                    i8 = i7;
                                    if ('0' > cCharAt3) {
                                    }
                                } else {
                                    i8 = i7;
                                }
                                i14 = (cCharAt3 - '0') + (i14 << 3) + (i14 << 1);
                                i13++;
                                iMin2 = i16;
                                i7 = i8;
                            }
                            while (i15 < 9 - (i13 - i10)) {
                                i14 = (i14 << 1) + (i14 << 3);
                            }
                            i4 = i13;
                            while (i4 < str.length()) {
                                i4++;
                            }
                            if (i4 != i9) {
                            }
                            md.n("");
                            return 0L;
                        }
                        i8 = i7;
                        cCharAt = str.charAt(i4);
                        if (cCharAt != 'D') {
                            durationUnit = DurationUnit.DAYS;
                        } else if (cCharAt != 'H') {
                            durationUnit = DurationUnit.HOURS;
                        } else if (cCharAt != 'M') {
                            durationUnit = DurationUnit.MINUTES;
                        } else if (cCharAt != 'S') {
                            durationUnit = null;
                        } else {
                            durationUnit = DurationUnit.SECONDS;
                        }
                        if (durationUnit != null) {
                            throw new IllegalArgumentException("Unknown duration unit short name: " + str.charAt(i4));
                        }
                        if (durationUnit2 == null && durationUnit2.compareTo(durationUnit) <= 0) {
                            md.n("Unexpected order of duration components");
                            return 0L;
                        }
                        if (durationUnit == DurationUnit.DAYS) {
                            if (i19 == 0) {
                                md.n("");
                                return 0L;
                            }
                            jA = ((long) i5) * DurationUnitKt__DurationUnitKt.b(j2, durationUnit);
                        } else {
                            if (i19 != 0) {
                                md.n("");
                                return 0L;
                            }
                            jA = a(j3, ((long) i5) * DurationUnitKt__DurationUnitKt.b(j2, durationUnit));
                            if (jA == 9223372036854759646L) {
                                md.n("");
                                return 0L;
                            }
                        }
                        j3 = jA;
                        i18 = i4 + 1;
                        durationUnit2 = durationUnit;
                        i17 = i20;
                        i2 = i8;
                        c2 = '-';
                        c3 = '+';
                    } else {
                        i6 = i18;
                    }
                    i7 = i2;
                    if (i4 != str.length()) {
                        if (i4 != i6 + ((cCharAt7 == '+' || cCharAt7 == '-') ? i20 : 0)) {
                            j2 = j5;
                            if (str.charAt(i4) == '.') {
                                i9 = i4 + 1;
                                iMin = Math.min(i4 + 7, str.length());
                                i11 = 0;
                                while (i10 < iMin) {
                                    cCharAt4 = str.charAt(i10);
                                    if ('0' <= cCharAt4) {
                                    }
                                    while (i12 < 6 - (i10 - i9)) {
                                        i11 = (i11 << 1) + (i11 << 3);
                                    }
                                    iMin2 = Math.min(i10 + 9, str.length());
                                    i13 = i10;
                                    i14 = 0;
                                    while (true) {
                                        if (i13 < iMin2) {
                                            i16 = iMin2;
                                            cCharAt3 = str.charAt(i13);
                                            i8 = i7;
                                            if ('0' > cCharAt3) {
                                            }
                                        } else {
                                            i8 = i7;
                                        }
                                        i14 = (cCharAt3 - '0') + (i14 << 3) + (i14 << 1);
                                        i13++;
                                        iMin2 = i16;
                                        i7 = i8;
                                    }
                                    while (i15 < 9 - (i13 - i10)) {
                                        i14 = (i14 << 1) + (i14 << 3);
                                    }
                                    i4 = i13;
                                    while (i4 < str.length()) {
                                        i4++;
                                    }
                                    if (i4 != i9) {
                                    }
                                    md.n("");
                                    return 0L;
                                }
                                while (i12 < 6 - (i10 - i9)) {
                                    i11 = (i11 << 1) + (i11 << 3);
                                }
                                iMin2 = Math.min(i10 + 9, str.length());
                                i13 = i10;
                                i14 = 0;
                                while (true) {
                                    if (i13 < iMin2) {
                                        i16 = iMin2;
                                        cCharAt3 = str.charAt(i13);
                                        i8 = i7;
                                        if ('0' > cCharAt3) {
                                        }
                                    } else {
                                        i8 = i7;
                                    }
                                    i14 = (cCharAt3 - '0') + (i14 << 3) + (i14 << 1);
                                    i13++;
                                    iMin2 = i16;
                                    i7 = i8;
                                }
                                while (i15 < 9 - (i13 - i10)) {
                                    i14 = (i14 << 1) + (i14 << 3);
                                }
                                i4 = i13;
                                while (i4 < str.length()) {
                                    i4++;
                                }
                                if (i4 != i9) {
                                }
                                md.n("");
                                return 0L;
                            }
                            i8 = i7;
                            cCharAt = str.charAt(i4);
                            if (cCharAt != 'D') {
                                durationUnit = DurationUnit.DAYS;
                            } else if (cCharAt != 'H') {
                                durationUnit = DurationUnit.HOURS;
                            } else if (cCharAt != 'M') {
                                durationUnit = DurationUnit.MINUTES;
                            } else if (cCharAt != 'S') {
                                durationUnit = null;
                            } else {
                                durationUnit = DurationUnit.SECONDS;
                            }
                            if (durationUnit != null) {
                                throw new IllegalArgumentException("Unknown duration unit short name: " + str.charAt(i4));
                            }
                            if (durationUnit2 == null) {
                            }
                            if (durationUnit == DurationUnit.DAYS) {
                                if (i19 == 0) {
                                    md.n("");
                                    return 0L;
                                }
                                jA = ((long) i5) * DurationUnitKt__DurationUnitKt.b(j2, durationUnit);
                            } else {
                                if (i19 != 0) {
                                    md.n("");
                                    return 0L;
                                }
                                jA = a(j3, ((long) i5) * DurationUnitKt__DurationUnitKt.b(j2, durationUnit));
                                if (jA == 9223372036854759646L) {
                                    md.n("");
                                    return 0L;
                                }
                            }
                            j3 = jA;
                            i18 = i4 + 1;
                            durationUnit2 = durationUnit;
                            i17 = i20;
                            i2 = i8;
                            c2 = '-';
                            c3 = '+';
                        }
                    }
                    md.n("");
                    return 0L;
                }
            }
            if (i19 != 0 || (i18 = i18 + 1) == str.length()) {
                md.n("");
                return 0L;
            }
            i19 = i17;
        }
        int i22 = i2;
        long j9 = Duration.j(h(j3, DurationUnit.MILLISECONDS), h(j4, DurationUnit.NANOSECONDS));
        if (i22 == 0) {
            return j9;
        }
        Duration.INSTANCE.getClass();
        return !Duration.d(j9, Duration.f74569f) ? Duration.v(j9) : j9;
    }

    public static final long f(double d, DurationUnit durationUnit) {
        durationUnit.getClass();
        double dA = DurationUnitKt__DurationUnitJvmKt.a(d, durationUnit, DurationUnit.NANOSECONDS);
        if (Double.isNaN(dA)) {
            md.n("Duration value cannot be NaN.");
            return 0L;
        }
        long jD = MathKt.d(dA);
        return (-4611686018426999999L > jD || jD >= 4611686018427000000L) ? c(MathKt.d(DurationUnitKt__DurationUnitJvmKt.a(d, durationUnit, DurationUnit.MILLISECONDS))) : d(jD);
    }

    public static final long g(int i2, DurationUnit durationUnit) {
        durationUnit.getClass();
        if (durationUnit.compareTo(DurationUnit.SECONDS) > 0) {
            return h(i2, durationUnit);
        }
        long j2 = i2;
        DurationUnit durationUnit2 = DurationUnit.NANOSECONDS;
        durationUnit2.getClass();
        return d(durationUnit2.getTimeUnit().convert(j2, durationUnit.getTimeUnit()));
    }

    public static final long h(long j2, DurationUnit durationUnit) {
        durationUnit.getClass();
        DurationUnit durationUnit2 = DurationUnit.NANOSECONDS;
        durationUnit2.getClass();
        long jConvert = durationUnit.getTimeUnit().convert(4611686018426999999L, durationUnit2.getTimeUnit());
        if ((-jConvert) <= j2 && j2 <= jConvert) {
            return d(durationUnit2.getTimeUnit().convert(j2, durationUnit.getTimeUnit()));
        }
        DurationUnit durationUnit3 = DurationUnit.MILLISECONDS;
        if (durationUnit.compareTo(durationUnit3) < 0) {
            durationUnit3.getClass();
            return b(RangesKt.e(durationUnit3.getTimeUnit().convert(j2, durationUnit.getTimeUnit()), -4611686018427387903L, 4611686018427387903L));
        }
        long jSignum = Long.signum(j2);
        if (j2 < -9223372036854775807L) {
            j2 = -9223372036854775807L;
        }
        return b(jSignum * DurationUnitKt__DurationUnitKt.b(Math.abs(j2), durationUnit));
    }
}
