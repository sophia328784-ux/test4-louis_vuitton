package kotlinx.datetime.format;

import defpackage.cj;
import java.time.DateTimeException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KProperty;
import kotlinx.datetime.DateTimeFormatException;
import kotlinx.datetime.Instant;
import kotlinx.datetime.LocalTime;
import kotlinx.datetime.UtcOffset;
import kotlinx.datetime.internal.format.AppendableFormatStructure;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0002\u0006\u0007B\u0013\b\u0000\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\b"}, d2 = {"Lkotlinx/datetime/format/DateTimeComponents;", "", "Lkotlinx/datetime/format/DateTimeComponentsContents;", "contents", "<init>", "(Lkotlinx/datetime/format/DateTimeComponentsContents;)V", "Companion", "Formats", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DateTimeComponents {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f75261b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ KProperty[] f75262c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DateTimeComponentsContents f75263a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/datetime/format/DateTimeComponents$Companion;", "", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/datetime/format/DateTimeComponents$Formats;", "", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Formats {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final DateTimeComponentsFormat f75264a;

        static {
            Companion companion = DateTimeComponents.f75261b;
            DateTimeComponents$Formats$ISO_DATE_TIME_OFFSET$1 dateTimeComponents$Formats$ISO_DATE_TIME_OFFSET$1 = DateTimeComponents$Formats$ISO_DATE_TIME_OFFSET$1.f75265c;
            companion.getClass();
            dateTimeComponents$Formats$ISO_DATE_TIME_OFFSET$1.getClass();
            DateTimeComponentsFormat.Builder builder = new DateTimeComponentsFormat.Builder(new AppendableFormatStructure());
            dateTimeComponents$Formats$ISO_DATE_TIME_OFFSET$1.invoke(builder);
            f75264a = new DateTimeComponentsFormat(AbstractDateTimeFormatBuilder.DefaultImpls.c(builder));
            DateTimeComponents$Formats$RFC_1123$1 dateTimeComponents$Formats$RFC_1123$1 = DateTimeComponents$Formats$RFC_1123$1.f75271c;
            dateTimeComponents$Formats$RFC_1123$1.getClass();
            DateTimeComponentsFormat.Builder builder2 = new DateTimeComponentsFormat.Builder(new AppendableFormatStructure());
            dateTimeComponents$Formats$RFC_1123$1.invoke(builder2);
            new DateTimeComponentsFormat(AbstractDateTimeFormatBuilder.DefaultImpls.c(builder2));
        }
    }

    static {
        MutablePropertyReference1Impl mutablePropertyReference1Impl = new MutablePropertyReference1Impl(DateTimeComponents.class, "monthNumber", "getMonthNumber()Ljava/lang/Integer;", 0);
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        f75262c = new KProperty[]{reflectionFactory.f(mutablePropertyReference1Impl), cj.r(DateTimeComponents.class, "dayOfMonth", "getDayOfMonth()Ljava/lang/Integer;", 0, reflectionFactory), cj.r(DateTimeComponents.class, "dayOfYear", "getDayOfYear()Ljava/lang/Integer;", 0, reflectionFactory), cj.r(DateTimeComponents.class, "hour", "getHour()Ljava/lang/Integer;", 0, reflectionFactory), cj.r(DateTimeComponents.class, "hourOfAmPm", "getHourOfAmPm()Ljava/lang/Integer;", 0, reflectionFactory), cj.r(DateTimeComponents.class, "minute", "getMinute()Ljava/lang/Integer;", 0, reflectionFactory), cj.r(DateTimeComponents.class, "second", "getSecond()Ljava/lang/Integer;", 0, reflectionFactory), cj.r(DateTimeComponents.class, "offsetHours", "getOffsetHours()Ljava/lang/Integer;", 0, reflectionFactory), cj.r(DateTimeComponents.class, "offsetMinutesOfHour", "getOffsetMinutesOfHour()Ljava/lang/Integer;", 0, reflectionFactory), cj.r(DateTimeComponents.class, "offsetSecondsOfMinute", "getOffsetSecondsOfMinute()Ljava/lang/Integer;", 0, reflectionFactory)};
        f75261b = new Companion(null);
    }

    public DateTimeComponents(DateTimeComponentsContents dateTimeComponentsContents) {
        dateTimeComponentsContents.getClass();
        this.f75263a = dateTimeComponentsContents;
        dateTimeComponentsContents.getClass();
        new TwoDigitNumber(new DateTimeComponents$monthNumber$2(dateTimeComponentsContents.f75279a, IncompleteLocalDate.class, "monthNumber", "getMonthNumber()Ljava/lang/Integer;", 0));
        new TwoDigitNumber(new DateTimeComponents$dayOfMonth$2(dateTimeComponentsContents.f75279a, IncompleteLocalDate.class, "dayOfMonth", "getDayOfMonth()Ljava/lang/Integer;", 0));
        new ThreeDigitNumber(new DateTimeComponents$dayOfYear$2(dateTimeComponentsContents.f75279a, IncompleteLocalDate.class, "dayOfYear", "getDayOfYear()Ljava/lang/Integer;", 0));
        new TwoDigitNumber(new DateTimeComponents$hour$2(dateTimeComponentsContents.f75280b, IncompleteLocalTime.class, "hour", "getHour()Ljava/lang/Integer;", 0));
        new TwoDigitNumber(new DateTimeComponents$hourOfAmPm$2(dateTimeComponentsContents.f75280b, IncompleteLocalTime.class, "hourOfAmPm", "getHourOfAmPm()Ljava/lang/Integer;", 0));
        dateTimeComponentsContents.getClass();
        new TwoDigitNumber(new DateTimeComponents$minute$2(dateTimeComponentsContents.f75280b, IncompleteLocalTime.class, "minute", "getMinute()Ljava/lang/Integer;", 0));
        new TwoDigitNumber(new DateTimeComponents$second$2(dateTimeComponentsContents.f75280b, IncompleteLocalTime.class, "second", "getSecond()Ljava/lang/Integer;", 0));
        dateTimeComponentsContents.getClass();
        new TwoDigitNumber(new DateTimeComponents$offsetHours$2(dateTimeComponentsContents.f75281c, IncompleteUtcOffset.class, "totalHoursAbs", "getTotalHoursAbs()Ljava/lang/Integer;", 0));
        new TwoDigitNumber(new DateTimeComponents$offsetMinutesOfHour$2(dateTimeComponentsContents.f75281c, IncompleteUtcOffset.class, "minutesOfHour", "getMinutesOfHour()Ljava/lang/Integer;", 0));
        new TwoDigitNumber(new DateTimeComponents$offsetSecondsOfMinute$2(dateTimeComponentsContents.f75281c, IncompleteUtcOffset.class, "secondsOfMinute", "getSecondsOfMinute()Ljava/lang/Integer;", 0));
    }

    public final Instant a() throws Exception {
        int i2;
        DateTimeComponentsContents dateTimeComponentsContents = this.f75263a;
        UtcOffset utcOffsetA = dateTimeComponentsContents.f75281c.a();
        IncompleteLocalTime incompleteLocalTime = dateTimeComponentsContents.f75280b;
        LocalTime localTimeB = incompleteLocalTime.b();
        IncompleteLocalDate incompleteLocalDate = dateTimeComponentsContents.f75279a;
        IncompleteLocalDate incompleteLocalDate2 = new IncompleteLocalDate(incompleteLocalDate.f75295a, incompleteLocalDate.f75296b, incompleteLocalDate.f75297c, incompleteLocalDate.d, incompleteLocalDate.f75298e);
        Integer num = incompleteLocalDate2.f75295a;
        LocalDateFormatKt.a(num, "year");
        incompleteLocalDate2.f75295a = Integer.valueOf(num.intValue() % 10000);
        try {
            Integer num2 = incompleteLocalDate.f75295a;
            num2.getClass();
            long jMultiplyExact = Math.multiplyExact(num2.intValue() / 10000, 315569520000L);
            long epochDay = incompleteLocalDate2.a().f75240b.toEpochDay();
            if (epochDay > 2147483647L) {
                i2 = Integer.MAX_VALUE;
            } else {
                i2 = epochDay < -2147483648L ? Integer.MIN_VALUE : (int) epochDay;
            }
            long jAddExact = Math.addExact(jMultiplyExact, ((((long) i2) * 86400) + ((long) localTimeB.f75245b.toSecondOfDay())) - ((long) utcOffsetA.f75246a.getTotalSeconds()));
            Instant.INSTANCE.getClass();
            if (jAddExact < Instant.f75238c.f75239b.getEpochSecond() || jAddExact > Instant.d.f75239b.getEpochSecond()) {
                throw new DateTimeFormatException("The parsed date is outside the range representable by Instant");
            }
            Integer num3 = incompleteLocalTime.f75303f;
            try {
                java.time.Instant instantOfEpochSecond = java.time.Instant.ofEpochSecond(jAddExact, num3 != null ? num3.intValue() : 0);
                instantOfEpochSecond.getClass();
                return new Instant(instantOfEpochSecond);
            } catch (Exception e2) {
                if ((e2 instanceof ArithmeticException) || (e2 instanceof DateTimeException)) {
                    return jAddExact > 0 ? Instant.d : Instant.f75238c;
                }
                throw e2;
            }
        } catch (ArithmeticException e3) {
            throw new DateTimeFormatException("The parsed date is outside the range representable by Instant", e3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DateTimeComponents() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ DateTimeComponents(DateTimeComponentsContents dateTimeComponentsContents, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? new DateTimeComponentsContents(null, null, null, null, 15, null) : dateTimeComponentsContents);
    }
}
