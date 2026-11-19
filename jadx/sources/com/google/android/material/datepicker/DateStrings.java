package com.google.android.material.datepicker;

import androidx.core.util.Pair;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
abstract class DateStrings {
    public static Pair a(Long l, Long l2) {
        if (l == null && l2 == null) {
            return new Pair(null, null);
        }
        if (l == null) {
            return new Pair(null, b(l2.longValue()));
        }
        if (l2 == null) {
            return new Pair(b(l.longValue()), null);
        }
        Calendar calendarF = UtcDates.f();
        Calendar calendarG = UtcDates.g(null);
        calendarG.setTimeInMillis(l.longValue());
        Calendar calendarG2 = UtcDates.g(null);
        calendarG2.setTimeInMillis(l2.longValue());
        if (calendarG.get(1) == calendarG2.get(1)) {
            return calendarG.get(1) == calendarF.get(1) ? new Pair(c(l.longValue(), Locale.getDefault()), c(l2.longValue(), Locale.getDefault())) : new Pair(c(l.longValue(), Locale.getDefault()), d(l2.longValue(), Locale.getDefault()));
        }
        return new Pair(d(l.longValue(), Locale.getDefault()), d(l2.longValue(), Locale.getDefault()));
    }

    public static String b(long j2) {
        Calendar calendarF = UtcDates.f();
        Calendar calendarG = UtcDates.g(null);
        calendarG.setTimeInMillis(j2);
        return calendarF.get(1) == calendarG.get(1) ? c(j2, Locale.getDefault()) : d(j2, Locale.getDefault());
    }

    public static String c(long j2, Locale locale) {
        return UtcDates.b("MMMd", locale).format(new Date(j2));
    }

    public static String d(long j2, Locale locale) {
        return UtcDates.b("yMMMd", locale).format(new Date(j2));
    }
}
