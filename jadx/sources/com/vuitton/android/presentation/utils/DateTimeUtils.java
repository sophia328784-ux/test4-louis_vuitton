package com.vuitton.android.presentation.utils;

import android.content.Context;
import android.text.format.DateUtils;
import com.vuitton.foundation.logger.LegacyLogger;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatchExtKt;
import com.vuitton.foundation.util.StringKtExtKt;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.ZoneId;
import java.time.ZoneOffset;
import java.time.ZonedDateTime;
import java.time.chrono.ChronoLocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.FormatStyle;
import java.time.temporal.TemporalAccessor;
import java.util.Date;
import java.util.Formatter;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.text.StringsKt;
import kotlinx.datetime.Instant;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/utils/DateTimeUtils;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DateTimeUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DateTimeUtils f65832a = new DateTimeUtils();

    /* JADX WARN: Type inference failed for: r0v3, types: [java.time.ZonedDateTime] */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.time.ZonedDateTime] */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.time.LocalDateTime] */
    public static LocalDateTime a(String str, String str2) {
        String str3;
        str.getClass();
        DateTimeFormatter dateTimeFormatterOfPattern = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss.SSS");
        if (str2 != null) {
            if (StringsKt.w(str2)) {
                str2 = null;
            }
            if (str2 != null && (str3 = LocalDateTime.parse(str, DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss.SSS")).atZone((ZoneId) ZoneOffset.UTC).withZoneSameInstant(ZoneId.of(str2)).toLocalDateTime().format(dateTimeFormatterOfPattern)) != null) {
                str = str3;
            }
        }
        LocalDateTime localDateTime = LocalDateTime.parse(str, dateTimeFormatterOfPattern);
        localDateTime.getClass();
        return localDateTime;
    }

    public static String b(Date date, Context context) {
        date.getClass();
        context.getClass();
        String dateTime = DateUtils.formatDateTime(context, date.getTime(), 18);
        dateTime.getClass();
        return dateTime;
    }

    public static String c(InAppDispatch inAppDispatch, LocalDateTime localDateTime, FormatStyle formatStyle) {
        localDateTime.getClass();
        inAppDispatch.getClass();
        formatStyle.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            String str = localDateTime.format(DateTimeFormatter.ofLocalizedDate(formatStyle).withLocale(inAppDispatch.m));
            str.getClass();
            return str;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            new Result.Failure(th);
            return "";
        }
    }

    public static String d(Locale locale, String str, String str2, FormatStyle formatStyle) {
        locale.getClass();
        formatStyle.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            return DateTimeFormatter.ofLocalizedDate(formatStyle).withLocale(locale).format(p(LocalDate.parse(str, DateTimeFormatter.ofPattern(str2)).atStartOfDay()));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Throwable thA = Result.a(new Result.Failure(th));
            if (thA != null && str != null) {
                LegacyLogger.f66205a.c("InvalidDate", "getFormattedDateLocale - Wrong format of " + str + "\n" + thA, null);
            }
            return null;
        }
    }

    public static String e(InAppDispatch inAppDispatch, Date date, FormatStyle formatStyle) {
        inAppDispatch.getClass();
        date.getClass();
        formatStyle.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            String str = DateTimeFormatter.ofLocalizedDate(formatStyle).withLocale(inAppDispatch.m).format(date.toInstant().atZone(TimeZone.getDefault().toZoneId()).toLocalDateTime());
            str.getClass();
            return str;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            new Result.Failure(th);
            return "";
        }
    }

    public static String f(InAppDispatch inAppDispatch, Instant instant) {
        FormatStyle formatStyle = FormatStyle.FULL;
        inAppDispatch.getClass();
        formatStyle.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            String str = DateTimeFormatter.ofLocalizedDate(formatStyle).withLocale(inAppDispatch.m).format(instant.f75239b.atZone(TimeZone.getDefault().toZoneId()).toLocalDateTime());
            str.getClass();
            return str;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            new Result.Failure(th);
            return "";
        }
    }

    public static String g(InAppDispatch inAppDispatch, long j2) {
        FormatStyle formatStyle = FormatStyle.LONG;
        inAppDispatch.getClass();
        formatStyle.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            String str = DateTimeFormatter.ofLocalizedDate(formatStyle).withLocale(inAppDispatch.m).format(java.time.Instant.ofEpochMilli(j2).atZone(TimeZone.getDefault().toZoneId()).toLocalDateTime());
            str.getClass();
            return str;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            new Result.Failure(th);
            return "";
        }
    }

    public static String h(InAppDispatch inAppDispatch, LocalDateTime localDateTime, FormatStyle formatStyle) {
        localDateTime.getClass();
        formatStyle.getClass();
        inAppDispatch.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            String str = localDateTime.format(DateTimeFormatter.ofLocalizedDateTime(formatStyle, FormatStyle.SHORT).withLocale(inAppDispatch.m));
            str.getClass();
            return str;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            new Result.Failure(th);
            return "";
        }
    }

    public static String i(DateTimeUtils dateTimeUtils, LocalDateTime localDateTime, boolean z, int i2) {
        FormatStyle formatStyle = FormatStyle.FULL;
        if ((i2 & 4) != 0) {
            z = false;
        }
        formatStyle.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            if (z) {
                localDateTime = p(localDateTime);
            }
            Locale locale = Locale.getDefault();
            locale.getClass();
            String str = q(locale) ? "hh:mm a" : "HH:mm";
            String str2 = null;
            if (localDateTime != null) {
                String str3 = localDateTime.toLocalDate().format(DateTimeFormatter.ofLocalizedDate(formatStyle));
                LocalTime localTime = localDateTime.toLocalTime();
                str2 = str3 + " " + (localTime != null ? localTime.format(DateTimeFormatter.ofPattern(str)) : null);
            }
            return str2 == null ? "" : str2;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            new Result.Failure(th);
            return "";
        }
    }

    public static String j(String str, LocalDateTime localDateTime) {
        localDateTime.getClass();
        String str2 = localDateTime.format(DateTimeFormatter.ofPattern(str));
        str2.getClass();
        return str2;
    }

    public static String k(String str, String str2) {
        try {
            Result.Companion companion = Result.INSTANCE;
            TemporalAccessor temporalAccessorM = m(str, str2);
            Locale locale = Locale.getDefault();
            locale.getClass();
            return DateTimeFormatter.ofPattern(q(locale) ? "hh:mm a" : "HH:mm").format(temporalAccessorM);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Throwable thA = Result.a(new Result.Failure(th));
            if (thA == null || str == null) {
                return "";
            }
            LegacyLogger.f66205a.c("InvalidDate", "getFormattedTimeLocale - Wrong format of " + str + "\n" + thA, null);
            return "";
        }
    }

    public static String l(LocalDateTime localDateTime, InAppDispatch inAppDispatch) {
        FormatStyle formatStyle = FormatStyle.SHORT;
        localDateTime.getClass();
        inAppDispatch.getClass();
        formatStyle.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            String str = localDateTime.format(DateTimeFormatter.ofLocalizedTime(formatStyle).withLocale(inAppDispatch.m));
            str.getClass();
            return str;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            new Result.Failure(th);
            return "";
        }
    }

    /* JADX WARN: Type inference failed for: r1v8, types: [java.time.ZonedDateTime] */
    /* JADX WARN: Type inference failed for: r5v9, types: [java.time.ZonedDateTime] */
    public static TemporalAccessor m(String str, String str2) {
        ChronoLocalDateTime<LocalDate> localDateTime;
        try {
            Result.Companion companion = Result.INSTANCE;
            LocalDateTime localDateTime2 = LocalDateTime.parse(str, DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss.SSS"));
            LocalDateTime localDateTimeP = p(localDateTime2);
            if (str2 != null) {
                if (StringsKt.w(str2)) {
                    str2 = null;
                }
                if (str2 != null) {
                    try {
                        localDateTime = localDateTime2.atZone((ZoneId) ZoneOffset.UTC).withZoneSameInstant(ZoneId.of(str2)).toLocalDateTime();
                    } catch (Exception unused) {
                        localDateTime = null;
                    }
                    if (localDateTime != null) {
                        return localDateTime;
                    }
                }
            }
            LocalTime localTime = localDateTimeP.toLocalTime();
            localTime.getClass();
            return localTime;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Throwable thA = Result.a(new Result.Failure(th));
            if (thA != null && str != null) {
                LegacyLogger.f66205a.c("InvalidDate", "getLocalTimeFromGmt - Wrong format of " + str + "\n" + thA, null);
            }
            LocalTime localTimeNow = LocalTime.now();
            localTimeNow.getClass();
            return localTimeNow;
        }
    }

    public static String n(Date date, Context context) {
        date.getClass();
        context.getClass();
        String dateTime = DateUtils.formatDateTime(context, date.getTime(), 131076);
        dateTime.getClass();
        return dateTime;
    }

    public static String o(Date date, Context context) {
        date.getClass();
        context.getClass();
        try {
            return DateUtils.formatDateRange(context, new Formatter(new StringBuilder(50), Locale.getDefault()), date.getTime(), date.getTime(), 1).toString();
        } catch (AssertionError unused) {
            return null;
        }
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [java.time.ZonedDateTime] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Object, java.time.LocalDateTime] */
    public static LocalDateTime p(LocalDateTime localDateTime) {
        try {
            Result.Companion companion = Result.INSTANCE;
            ?? localDateTime2 = ZonedDateTime.of(localDateTime, ZoneOffset.UTC).withZoneSameInstant(TimeZone.getDefault().toZoneId()).toLocalDateTime();
            localDateTime2.getClass();
            return localDateTime2;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            new Result.Failure(th);
            LocalDateTime localDateTimeNow = LocalDateTime.now();
            localDateTimeNow.getClass();
            return localDateTimeNow;
        }
    }

    public static boolean q(Locale locale) {
        String country = locale.getCountry();
        if (country == null) {
            return false;
        }
        int iHashCode = country.hashCode();
        if (iHashCode == 2100) {
            return country.equals("AU");
        }
        if (iHashCode == 2142) {
            return country.equals("CA") && !locale.equals(Locale.CANADA_FRENCH);
        }
        if (iHashCode == 2341) {
            return country.equals("IN");
        }
        if (iHashCode == 2508) {
            return country.equals("NZ");
        }
        if (iHashCode == 2552) {
            return country.equals("PH");
        }
        if (iHashCode != 2718) {
            return iHashCode == 69609 && country.equals("FIL");
        }
        return country.equals("US");
    }

    public static String r(InAppDispatch inAppDispatch, String str) {
        inAppDispatch.getClass();
        str.getClass();
        Locale locale = inAppDispatch.m;
        String str2 = DateTimeFormatter.ofPattern("EEE MMM dd yyyy HH:mm ZZZZ", locale).format(LocalDate.parse(str, DateTimeFormatter.ofPattern("yyyy-MM-dd", locale)).atStartOfDay(ZoneId.of("GMT")));
        str2.getClass();
        return str2;
    }

    public static String t(InAppDispatch inAppDispatch, String str, FormatStyle formatStyle) {
        inAppDispatch.getClass();
        str.getClass();
        formatStyle.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            if (InAppDispatchExtKt.g(inAppDispatch)) {
                Date date = new SimpleDateFormat("yyyy-MM-dd", Locale.US).parse(str);
                if (date != null) {
                    return e(inAppDispatch, date, formatStyle);
                }
                throw new IllegalArgumentException("parseRepairsDeliveryDateString error for ".concat(str));
            }
            Date date2 = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).parse(str);
            if (date2 != null) {
                return e(inAppDispatch, date2, formatStyle);
            }
            throw new IllegalArgumentException("parseRepairsDeliveryDateString error for ".concat(str));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Throwable thA = Result.a(new Result.Failure(th));
            if (thA == null) {
                return "";
            }
            LegacyLogger.f66205a.c("InvalidDate", "parseRepairsDeliveryDateString - Wrong format of " + str + "\n" + thA, null);
            return "";
        }
    }

    public static Object u(String str) throws Throwable {
        Object failure;
        Locale locale = Locale.getDefault();
        locale.getClass();
        Locale locale2 = Locale.getDefault();
        locale2.getClass();
        str.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", locale);
            SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("hh:mm a", locale2);
            Date date = simpleDateFormat.parse(str);
            if (date == null) {
                throw new IllegalArgumentException("toFormattedDate error for ".concat(str));
            }
            failure = new Result(simpleDateFormat2.format(date));
            Throwable thA = Result.a(failure);
            if (thA != null) {
                if (thA instanceof CancellationException) {
                    throw thA;
                }
                failure = new Result(new Result.Failure(thA));
            }
            return ((Result) failure).f71708b;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
    }

    public final String s(String str) {
        str.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            return i(this, StringKtExtKt.d(str), true, 2);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Throwable thA = Result.a(new Result.Failure(th));
            if (thA == null) {
                return "";
            }
            LegacyLogger.f66205a.c("InvalidDate", "parseRepairsAppointmentDateString - Wrong format of " + str + "\n" + thA, null);
            return "";
        }
    }
}
