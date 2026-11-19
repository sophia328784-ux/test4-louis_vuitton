package kotlinx.datetime.format;

import defpackage.b21;
import defpackage.o60;
import defpackage.pq0;
import java.time.DateTimeException;
import java.time.DayOfWeek;
import java.time.Month;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.datetime.DateTimeArithmeticException;
import kotlinx.datetime.DateTimeFormatException;
import kotlinx.datetime.DateTimeUnit;
import kotlinx.datetime.DayOfWeekKt$EntriesMappings;
import kotlinx.datetime.LocalDate;
import kotlinx.datetime.LocalDateJvmKt;
import kotlinx.datetime.internal.format.parser.Copyable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00000\u0002BC\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lkotlinx/datetime/format/IncompleteLocalDate;", "Lkotlinx/datetime/format/DateFieldContainer;", "Lkotlinx/datetime/internal/format/parser/Copyable;", "", "year", "monthNumber", "dayOfMonth", "isoDayOfWeek", "dayOfYear", "<init>", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class IncompleteLocalDate implements DateFieldContainer, Copyable<IncompleteLocalDate> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Integer f75295a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Integer f75296b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Integer f75297c;
    public Integer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Integer f75298e;

    public /* synthetic */ IncompleteLocalDate(Integer num, Integer num2, Integer num3, Integer num4, Integer num5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : num, (i2 & 2) != 0 ? null : num2, (i2 & 4) != 0 ? null : num3, (i2 & 8) != 0 ? null : num4, (i2 & 16) != 0 ? null : num5);
    }

    @Override // kotlinx.datetime.format.DateFieldContainer
    public final void B(Integer num) {
        this.d = num;
    }

    public final LocalDate a() throws Exception {
        LocalDate localDate;
        Integer num = this.f75295a;
        LocalDateFormatKt.a(num, "year");
        int iIntValue = num.intValue();
        Integer num2 = this.f75298e;
        if (num2 == null) {
            Integer num3 = this.f75296b;
            LocalDateFormatKt.a(num3, "monthNumber");
            int iIntValue2 = num3.intValue();
            Integer num4 = this.f75297c;
            LocalDateFormatKt.a(num4, "dayOfMonth");
            localDate = new LocalDate(iIntValue, iIntValue2, num4.intValue());
        } else {
            LocalDate localDate2 = new LocalDate(iIntValue, 1, 1);
            int iIntValue3 = num2.intValue() - 1;
            DateTimeUnit.INSTANCE.getClass();
            DateTimeUnit.DayBased dayBased = DateTimeUnit.f75232a;
            int i2 = LocalDateJvmKt.f75244c;
            dayBased.getClass();
            long j2 = iIntValue3;
            try {
                long jAddExact = Math.addExact(localDate2.f75240b.toEpochDay(), Math.multiplyExact(j2, dayBased.f75233b));
                long j3 = LocalDateJvmKt.f75242a;
                if (jAddExact > LocalDateJvmKt.f75243b || j3 > jAddExact) {
                    throw new DateTimeException("The resulting day " + jAddExact + " is out of supported LocalDate range.");
                }
                java.time.LocalDate localDateOfEpochDay = java.time.LocalDate.ofEpochDay(jAddExact);
                localDateOfEpochDay.getClass();
                LocalDate localDate3 = new LocalDate(localDateOfEpochDay);
                java.time.LocalDate localDate4 = localDate3.f75240b;
                if (localDate4.getYear() != iIntValue) {
                    throw new DateTimeFormatException("Can not create a LocalDate from the given input: the day of year is " + num2 + ", which is not a valid day of year for the year " + iIntValue);
                }
                if (this.f75296b != null) {
                    int monthValue = localDate4.getMonthValue();
                    Integer num5 = this.f75296b;
                    if (num5 == null || monthValue != num5.intValue()) {
                        StringBuilder sb = new StringBuilder("Can not create a LocalDate from the given input: the day of year is ");
                        sb.append(num2);
                        sb.append(", which is ");
                        Month month = localDate4.getMonth();
                        month.getClass();
                        sb.append(month);
                        Integer num6 = this.f75296b;
                        sb.append(", but ");
                        sb.append(num6);
                        sb.append(" was specified as the month number");
                        throw new DateTimeFormatException(sb.toString());
                    }
                }
                if (this.f75297c != null) {
                    int dayOfMonth = localDate4.getDayOfMonth();
                    Integer num7 = this.f75297c;
                    if (num7 == null || dayOfMonth != num7.intValue()) {
                        StringBuilder sb2 = new StringBuilder("Can not create a LocalDate from the given input: the day of year is ");
                        sb2.append(num2);
                        sb2.append(", which is the day ");
                        sb2.append(localDate4.getDayOfMonth());
                        sb2.append(" of ");
                        Month month2 = localDate4.getMonth();
                        month2.getClass();
                        sb2.append(month2);
                        Integer num8 = this.f75297c;
                        sb2.append(", but ");
                        sb2.append(num8);
                        sb2.append(" was specified as the day of month");
                        throw new DateTimeFormatException(sb2.toString());
                    }
                }
                localDate = localDate3;
            } catch (Exception e2) {
                if (!(e2 instanceof DateTimeException) && !(e2 instanceof ArithmeticException)) {
                    throw e2;
                }
                throw new DateTimeArithmeticException("The result of adding " + j2 + " of " + dayBased + " to " + localDate2 + " is out of LocalDate range.", e2);
            }
        }
        Integer num9 = this.d;
        if (num9 != null) {
            int iIntValue4 = num9.intValue();
            java.time.LocalDate localDate5 = localDate.f75240b;
            DayOfWeek dayOfWeek = localDate5.getDayOfWeek();
            dayOfWeek.getClass();
            if (iIntValue4 != dayOfWeek.ordinal() + 1) {
                StringBuilder sb3 = new StringBuilder("Can not create a LocalDate from the given input: the day of week is ");
                if (1 > iIntValue4 || iIntValue4 >= 8) {
                    b21.n(pq0.k(iIntValue4, "Expected ISO day-of-week number in 1..7, got "));
                    return null;
                }
                sb3.append((DayOfWeek) DayOfWeekKt$EntriesMappings.f75237a.get(iIntValue4 - 1));
                sb3.append(" but the date is ");
                sb3.append(localDate);
                sb3.append(", which is a ");
                DayOfWeek dayOfWeek2 = localDate5.getDayOfWeek();
                dayOfWeek2.getClass();
                sb3.append(dayOfWeek2);
                throw new DateTimeFormatException(sb3.toString());
            }
        }
        return localDate;
    }

    @Override // kotlinx.datetime.internal.format.parser.Copyable
    public final Object copy() {
        return new IncompleteLocalDate(this.f75295a, this.f75296b, this.f75297c, this.d, this.f75298e);
    }

    @Override // kotlinx.datetime.format.DateFieldContainer
    /* JADX INFO: renamed from: d, reason: from getter */
    public final Integer getD() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof IncompleteLocalDate)) {
            return false;
        }
        IncompleteLocalDate incompleteLocalDate = (IncompleteLocalDate) obj;
        return Intrinsics.c(this.f75295a, incompleteLocalDate.f75295a) && Intrinsics.c(this.f75296b, incompleteLocalDate.f75296b) && Intrinsics.c(this.f75297c, incompleteLocalDate.f75297c) && Intrinsics.c(this.d, incompleteLocalDate.d) && Intrinsics.c(this.f75298e, incompleteLocalDate.f75298e);
    }

    public final int hashCode() {
        Integer num = this.f75295a;
        int iHashCode = (num != null ? num.hashCode() : 0) * 923521;
        Integer num2 = this.f75296b;
        int iHashCode2 = ((num2 != null ? num2.hashCode() : 0) * 29791) + iHashCode;
        Integer num3 = this.f75297c;
        int iHashCode3 = ((num3 != null ? num3.hashCode() : 0) * 961) + iHashCode2;
        Integer num4 = this.d;
        int iHashCode4 = ((num4 != null ? num4.hashCode() : 0) * 31) + iHashCode3;
        Integer num5 = this.f75298e;
        return iHashCode4 + (num5 != null ? num5.hashCode() : 0);
    }

    @Override // kotlinx.datetime.format.DateFieldContainer
    public final void k(Integer num) {
        this.f75298e = num;
    }

    @Override // kotlinx.datetime.format.DateFieldContainer
    public final void p(Integer num) {
        this.f75296b = num;
    }

    @Override // kotlinx.datetime.format.DateFieldContainer
    /* JADX INFO: renamed from: t, reason: from getter */
    public final Integer getF75295a() {
        return this.f75295a;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        Object obj = this.f75295a;
        if (obj == null) {
            obj = "??";
        }
        sb.append(obj);
        sb.append('-');
        Object obj2 = this.f75296b;
        if (obj2 == null) {
            obj2 = "??";
        }
        sb.append(obj2);
        sb.append('-');
        Object obj3 = this.f75297c;
        if (obj3 == null) {
            obj3 = "??";
        }
        sb.append(obj3);
        sb.append(" (day of week is ");
        Integer num = this.d;
        return o60.r(sb, num != null ? num : "??", ')');
    }

    @Override // kotlinx.datetime.format.DateFieldContainer
    public final void u(Integer num) {
        this.f75297c = num;
    }

    @Override // kotlinx.datetime.format.DateFieldContainer
    /* JADX INFO: renamed from: w, reason: from getter */
    public final Integer getF75298e() {
        return this.f75298e;
    }

    @Override // kotlinx.datetime.format.DateFieldContainer
    public final void x(Integer num) {
        this.f75295a = num;
    }

    @Override // kotlinx.datetime.format.DateFieldContainer
    /* JADX INFO: renamed from: y, reason: from getter */
    public final Integer getF75297c() {
        return this.f75297c;
    }

    @Override // kotlinx.datetime.format.DateFieldContainer
    /* JADX INFO: renamed from: z, reason: from getter */
    public final Integer getF75296b() {
        return this.f75296b;
    }

    public IncompleteLocalDate(Integer num, Integer num2, Integer num3, Integer num4, Integer num5) {
        this.f75295a = num;
        this.f75296b = num2;
        this.f75297c = num3;
        this.d = num4;
        this.f75298e = num5;
    }

    public IncompleteLocalDate() {
        this(null, null, null, null, null, 31, null);
    }
}
