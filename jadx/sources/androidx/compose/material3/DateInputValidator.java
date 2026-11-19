package androidx.compose.material3;

import androidx.compose.material3.internal.CalendarDate;
import androidx.compose.material3.internal.DateInputFormat;
import java.util.Arrays;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.ranges.IntRange;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0001\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0006\u0010\u000e\u001a\u00020\n¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Landroidx/compose/material3/DateInputValidator;", "", "Lkotlin/ranges/IntRange;", "yearRange", "Landroidx/compose/material3/SelectableDates;", "selectableDates", "Landroidx/compose/material3/internal/DateInputFormat;", "dateInputFormat", "Landroidx/compose/material3/DatePickerFormatter;", "dateFormatter", "", "errorDatePattern", "errorDateOutOfYearRange", "errorInvalidNotAllowed", "errorInvalidRangeInput", "<init>", "(Lkotlin/ranges/IntRange;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/internal/DateInputFormat;Landroidx/compose/material3/DatePickerFormatter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DateInputValidator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final IntRange f6744a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SelectableDates f6745b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DateInputFormat f6746c;
    public final DatePickerFormatter d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f6747e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f6748f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f6749h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Long f6750i;

    public DateInputValidator(IntRange intRange, SelectableDates selectableDates, DateInputFormat dateInputFormat, DatePickerFormatter datePickerFormatter, String str, String str2, String str3, String str4) {
        this.f6744a = intRange;
        this.f6745b = selectableDates;
        this.f6746c = dateInputFormat;
        this.d = datePickerFormatter;
        this.f6747e = str;
        this.f6748f = str2;
        this.g = str3;
        this.f6749h = str4;
    }

    public final String a(CalendarDate calendarDate, Locale locale) {
        if (calendarDate == null) {
            String upperCase = this.f6746c.f7598a.toUpperCase(Locale.ROOT);
            upperCase.getClass();
            Object[] objArrCopyOf = Arrays.copyOf(new Object[]{upperCase}, 1);
            return String.format(this.f6747e, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
        }
        int i2 = calendarDate.f7584b;
        long j2 = calendarDate.f7586e;
        IntRange intRange = this.f6744a;
        if (!intRange.m(i2)) {
            Object[] objArrCopyOf2 = Arrays.copyOf(new Object[]{CalendarLocale_jvmKt.a(intRange.f71951b, locale), CalendarLocale_jvmKt.a(intRange.f71952c, locale)}, 2);
            return String.format(this.f6748f, Arrays.copyOf(objArrCopyOf2, objArrCopyOf2.length));
        }
        SelectableDates selectableDates = this.f6745b;
        selectableDates.getClass();
        if (!selectableDates.a(j2)) {
            Object[] objArrCopyOf3 = Arrays.copyOf(new Object[]{this.d.b(Long.valueOf(j2), locale, false)}, 1);
            return String.format(this.g, Arrays.copyOf(objArrCopyOf3, objArrCopyOf3.length));
        }
        InputIdentifier.f7008a.getClass();
        if (InputIdentifier.f7009b != 0 || j2 <= Long.MAX_VALUE) {
            if (InputIdentifier.f7010c != 0) {
                return "";
            }
            Long l = this.f6750i;
            if (j2 >= (l != null ? l.longValue() : Long.MIN_VALUE)) {
                return "";
            }
        }
        return this.f6749h;
    }
}
