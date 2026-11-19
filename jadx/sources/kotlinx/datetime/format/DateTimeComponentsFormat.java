package kotlinx.datetime.format;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlinx.datetime.internal.format.AppendableFormatStructure;
import kotlinx.datetime.internal.format.BasicFormatStructure;
import kotlinx.datetime.internal.format.CachedFormatStructure;
import kotlinx.datetime.internal.format.FormatStructure;
import kotlinx.datetime.internal.format.SignedFormatStructure;
import kotlinx.datetime.internal.format.parser.Copyable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\bB\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lkotlinx/datetime/format/DateTimeComponentsFormat;", "Lkotlinx/datetime/format/AbstractDateTimeFormat;", "Lkotlinx/datetime/format/DateTimeComponents;", "Lkotlinx/datetime/format/DateTimeComponentsContents;", "Lkotlinx/datetime/internal/format/CachedFormatStructure;", "actualFormat", "<init>", "(Lkotlinx/datetime/internal/format/CachedFormatStructure;)V", "Builder", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DateTimeComponentsFormat extends AbstractDateTimeFormat<DateTimeComponents, DateTimeComponentsContents> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CachedFormatStructure f75282a;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u00032\u00020\u00042\u00020\u0005B\u0015\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lkotlinx/datetime/format/DateTimeComponentsFormat$Builder;", "Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;", "Lkotlinx/datetime/format/DateTimeComponentsContents;", "Lkotlinx/datetime/format/AbstractWithDateTimeBuilder;", "Lkotlinx/datetime/format/AbstractWithOffsetBuilder;", "Lkotlinx/datetime/format/DateTimeFormatBuilder$WithDateTimeComponents;", "Lkotlinx/datetime/internal/format/AppendableFormatStructure;", "actualBuilder", "<init>", "(Lkotlinx/datetime/internal/format/AppendableFormatStructure;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder implements AbstractDateTimeFormatBuilder<DateTimeComponentsContents, Builder>, AbstractWithDateTimeBuilder, AbstractWithOffsetBuilder, DateTimeFormatBuilder.WithDateTimeComponents {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final AppendableFormatStructure f75283a;

        public Builder(AppendableFormatStructure<DateTimeComponentsContents> appendableFormatStructure) {
            appendableFormatStructure.getClass();
            this.f75283a = appendableFormatStructure;
        }

        @Override // kotlinx.datetime.format.AbstractDateTimeFormatBuilder
        /* JADX INFO: renamed from: a, reason: from getter */
        public final AppendableFormatStructure getF75283a() {
            return this.f75283a;
        }

        @Override // kotlinx.datetime.format.AbstractDateTimeFormatBuilder
        public final void b(String str, Function1 function1) {
            AbstractDateTimeFormatBuilder.DefaultImpls.b(this, str, function1);
        }

        @Override // kotlinx.datetime.format.DateTimeFormatBuilder.WithDate
        public final void c(Padding padding) {
            padding.getClass();
            t(new BasicFormatStructure(new MonthDirective(padding)));
        }

        @Override // kotlinx.datetime.format.DateTimeFormatBuilder.WithTime
        public final void d() {
            v(new BasicFormatStructure(new FractionalSecondDirective(1, 9, null, 4, null)));
        }

        @Override // kotlinx.datetime.format.AbstractDateTimeFormatBuilder
        public final void e(Function1[] function1Arr, Function1 function1) {
            AbstractDateTimeFormatBuilder.DefaultImpls.a(this, function1Arr, function1);
        }

        @Override // kotlinx.datetime.format.DateTimeFormatBuilder.WithDate
        public final void f(DateTimeFormat dateTimeFormat) {
            dateTimeFormat.getClass();
            if (dateTimeFormat instanceof LocalDateFormat) {
                t(((LocalDateFormat) dateTimeFormat).f75308a);
            }
        }

        @Override // kotlinx.datetime.format.DateTimeFormatBuilder.WithUtcOffset
        public final void g(Padding padding) {
            padding.getClass();
            u(new BasicFormatStructure(new UtcOffsetMinuteOfHourDirective(padding)));
        }

        @Override // kotlinx.datetime.format.AbstractDateTimeFormatBuilder
        public final AbstractDateTimeFormatBuilder h() {
            return new Builder(new AppendableFormatStructure());
        }

        @Override // kotlinx.datetime.format.DateTimeFormatBuilder
        public final void i(String str) {
            AbstractDateTimeFormatBuilder.DefaultImpls.d(this, str);
        }

        @Override // kotlinx.datetime.format.DateTimeFormatBuilder.WithTime
        public final void j(Padding padding) {
            padding.getClass();
            v(new BasicFormatStructure(new MinuteDirective(padding)));
        }

        @Override // kotlinx.datetime.format.DateTimeFormatBuilder.WithTime
        public final void k(Padding padding) {
            padding.getClass();
            v(new BasicFormatStructure(new SecondDirective(padding)));
        }

        @Override // kotlinx.datetime.format.DateTimeFormatBuilder.WithDate
        public final void l(Padding padding) {
            padding.getClass();
            t(new BasicFormatStructure(new YearDirective(padding, false, 2, null)));
        }

        @Override // kotlinx.datetime.format.DateTimeFormatBuilder.WithUtcOffset
        public final void m(UtcOffsetFormat utcOffsetFormat) {
            utcOffsetFormat.getClass();
            u(utcOffsetFormat.f75354a);
        }

        @Override // kotlinx.datetime.format.DateTimeFormatBuilder.WithTime
        public final void n(Padding padding) {
            padding.getClass();
            v(new BasicFormatStructure(new HourDirective(padding)));
        }

        @Override // kotlinx.datetime.format.DateTimeFormatBuilder.WithDate
        public final void o(DayOfWeekNames dayOfWeekNames) {
            dayOfWeekNames.getClass();
            this.f75283a.a(new BasicFormatStructure(new DayOfWeekDirective(dayOfWeekNames)));
        }

        @Override // kotlinx.datetime.format.DateTimeFormatBuilder.WithDate
        public final void p(Padding padding) {
            padding.getClass();
            t(new BasicFormatStructure(new DayDirective(padding)));
        }

        @Override // kotlinx.datetime.format.DateTimeFormatBuilder.WithDate
        public final void q(MonthNames monthNames) {
            monthNames.getClass();
            this.f75283a.a(new BasicFormatStructure(new MonthNameDirective(monthNames)));
        }

        @Override // kotlinx.datetime.format.DateTimeFormatBuilder.WithUtcOffset
        public final void r(Padding padding) {
            padding.getClass();
            u(new SignedFormatStructure(new BasicFormatStructure(new UtcOffsetWholeHoursDirective(padding)), true));
        }

        @Override // kotlinx.datetime.format.DateTimeFormatBuilder.WithUtcOffset
        public final void s(Padding padding) {
            padding.getClass();
            u(new BasicFormatStructure(new UtcOffsetSecondOfMinuteDirective(padding)));
        }

        public final void t(FormatStructure formatStructure) {
            formatStructure.getClass();
            this.f75283a.a(formatStructure);
        }

        public final void u(FormatStructure formatStructure) {
            formatStructure.getClass();
            this.f75283a.a(formatStructure);
        }

        public final void v(BasicFormatStructure basicFormatStructure) {
            this.f75283a.a(basicFormatStructure);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DateTimeComponentsFormat(CachedFormatStructure<? super DateTimeComponentsContents> cachedFormatStructure) {
        super(null);
        cachedFormatStructure.getClass();
        this.f75282a = cachedFormatStructure;
    }

    @Override // kotlinx.datetime.format.AbstractDateTimeFormat
    /* JADX INFO: renamed from: a, reason: from getter */
    public final CachedFormatStructure getF75282a() {
        return this.f75282a;
    }

    @Override // kotlinx.datetime.format.AbstractDateTimeFormat
    public final Copyable b() {
        return DateTimeComponentsKt.f75284a;
    }

    @Override // kotlinx.datetime.format.AbstractDateTimeFormat
    public final Object c(Copyable copyable) {
        DateTimeComponentsContents dateTimeComponentsContents = (DateTimeComponentsContents) copyable;
        dateTimeComponentsContents.getClass();
        return new DateTimeComponents(dateTimeComponentsContents);
    }
}
