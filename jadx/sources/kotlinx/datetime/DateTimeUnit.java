package kotlinx.datetime;

import defpackage.b21;
import defpackage.n00;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.datetime.serializers.DateBasedDateTimeUnitSerializer;
import kotlinx.datetime.serializers.DateTimeUnitSerializer;
import kotlinx.datetime.serializers.DayBasedDateTimeUnitSerializer;
import kotlinx.datetime.serializers.MonthBasedDateTimeUnitSerializer;
import kotlinx.datetime.serializers.TimeBasedDateTimeUnitSerializer;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000 \u00022\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u0082\u0001\u0002\u0007\b¨\u0006\t"}, d2 = {"Lkotlinx/datetime/DateTimeUnit;", "", "Companion", "DateBased", "DayBased", "MonthBased", "TimeBased", "Lkotlinx/datetime/DateTimeUnit$DateBased;", "Lkotlinx/datetime/DateTimeUnit$TimeBased;", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable(with = DateTimeUnitSerializer.class)
public abstract class DateTimeUnit {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DayBased f75232a;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0001¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/datetime/DateTimeUnit$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lkotlinx/datetime/DateTimeUnit;", "serializer", "()Lkotlinx/serialization/KSerializer;", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<DateTimeUnit> serializer() {
            return DateTimeUnitSerializer.f75493a;
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b7\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011Z>\b\u0007\u0010\f\"\u00020\u00022\u00020\u0002B0\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005\u0012\"\b\u0006\u0012\u001e\b\u000bB\u001a\b\u0007\u0012\f\b\b\u0012\b\b\fJ\u0004\b\b(\t\u0012\b\b\n\u0012\u0004\b\b(\u000bZ>\b\u0007\u0010\u0010\"\u00020\r2\u00020\rB0\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u000e\u0012\"\b\u0006\u0012\u001e\b\u000bB\u001a\b\u0007\u0012\f\b\b\u0012\b\b\fJ\u0004\b\b(\t\u0012\b\b\n\u0012\u0004\b\b(\u000f\u0082\u0001\u0002\u0002\r¨\u0006\u0012"}, d2 = {"Lkotlinx/datetime/DateTimeUnit$DateBased;", "Lkotlinx/datetime/DateTimeUnit;", "Lkotlinx/datetime/DateTimeUnit$DayBased;", "Lkotlin/Deprecated;", "message", "Use DateTimeUnit.DayBased", "replaceWith", "Lkotlin/ReplaceWith;", "imports", "kotlinx.datetime.DateTimeUnit", "expression", "DateTimeUnit.DayBased", "DayBased", "Lkotlinx/datetime/DateTimeUnit$MonthBased;", "Use DateTimeUnit.MonthBased", "DateTimeUnit.MonthBased", "MonthBased", "Companion", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Serializable(with = DateBasedDateTimeUnitSerializer.class)
    public static abstract class DateBased extends DateTimeUnit {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0001¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/datetime/DateTimeUnit$DateBased$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lkotlinx/datetime/DateTimeUnit$DateBased;", "serializer", "()Lkotlinx/serialization/KSerializer;", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<DateBased> serializer() {
                return DateBasedDateTimeUnitSerializer.f75490a;
            }
        }

        public DateBased(DefaultConstructorMarker defaultConstructorMarker) {
            super(null);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0007\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lkotlinx/datetime/DateTimeUnit$DayBased;", "Lkotlinx/datetime/DateTimeUnit$DateBased;", "", "days", "<init>", "(I)V", "Companion", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Serializable(with = DayBasedDateTimeUnitSerializer.class)
    public static final class DayBased extends DateBased {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f75233b;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0001¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/datetime/DateTimeUnit$DayBased$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lkotlinx/datetime/DateTimeUnit$DayBased;", "serializer", "()Lkotlinx/serialization/KSerializer;", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<DayBased> serializer() {
                return DayBasedDateTimeUnitSerializer.f75496a;
            }
        }

        public DayBased(int i2) {
            super(null);
            this.f75233b = i2;
            if (i2 > 0) {
                return;
            }
            b21.n(n00.m(i2, "Unit duration must be positive, but was ", " days."));
            throw null;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof DayBased) {
                return this.f75233b == ((DayBased) obj).f75233b;
            }
            return false;
        }

        public final int hashCode() {
            return this.f75233b ^ 65536;
        }

        public final String toString() {
            int i2 = this.f75233b;
            return i2 % 7 == 0 ? DateTimeUnit.a(i2 / 7, "WEEK") : DateTimeUnit.a(i2, "DAY");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0007\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lkotlinx/datetime/DateTimeUnit$MonthBased;", "Lkotlinx/datetime/DateTimeUnit$DateBased;", "", "months", "<init>", "(I)V", "Companion", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Serializable(with = MonthBasedDateTimeUnitSerializer.class)
    public static final class MonthBased extends DateBased {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f75234b;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0001¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/datetime/DateTimeUnit$MonthBased$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lkotlinx/datetime/DateTimeUnit$MonthBased;", "serializer", "()Lkotlinx/serialization/KSerializer;", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<MonthBased> serializer() {
                return MonthBasedDateTimeUnitSerializer.f75506a;
            }
        }

        public MonthBased(int i2) {
            super(null);
            this.f75234b = i2;
            if (i2 > 0) {
                return;
            }
            b21.n(n00.m(i2, "Unit duration must be positive, but was ", " months."));
            throw null;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof MonthBased) {
                return this.f75234b == ((MonthBased) obj).f75234b;
            }
            return false;
        }

        public final int hashCode() {
            return this.f75234b ^ 131072;
        }

        public final String toString() {
            int i2 = this.f75234b;
            if (i2 % 1200 == 0) {
                return DateTimeUnit.a(i2 / 1200, "CENTURY");
            }
            if (i2 % 12 == 0) {
                return DateTimeUnit.a(i2 / 12, "YEAR");
            }
            return i2 % 3 == 0 ? DateTimeUnit.a(i2 / 3, "QUARTER") : DateTimeUnit.a(i2, "MONTH");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0005\b\u0007\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lkotlinx/datetime/DateTimeUnit$TimeBased;", "Lkotlinx/datetime/DateTimeUnit;", "", "nanoseconds", "<init>", "(J)V", "Companion", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Serializable(with = TimeBasedDateTimeUnitSerializer.class)
    public static final class TimeBased extends DateTimeUnit {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f75235b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f75236c;
        public final long d;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0001¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/datetime/DateTimeUnit$TimeBased$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lkotlinx/datetime/DateTimeUnit$TimeBased;", "serializer", "()Lkotlinx/serialization/KSerializer;", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<TimeBased> serializer() {
                return TimeBasedDateTimeUnitSerializer.f75510a;
            }
        }

        public TimeBased(long j2) {
            super(null);
            this.f75235b = j2;
            if (j2 <= 0) {
                b21.n(o60.i(j2, "Unit duration must be positive, but was ", " ns."));
                throw null;
            }
            if (j2 % 3600000000000L == 0) {
                this.f75236c = "HOUR";
                this.d = j2 / 3600000000000L;
                return;
            }
            if (j2 % 60000000000L == 0) {
                this.f75236c = "MINUTE";
                this.d = j2 / 60000000000L;
                return;
            }
            if (j2 % 1000000000 == 0) {
                this.f75236c = "SECOND";
                this.d = j2 / 1000000000;
            } else if (j2 % 1000000 == 0) {
                this.f75236c = "MILLISECOND";
                this.d = j2 / 1000000;
            } else if (j2 % 1000 == 0) {
                this.f75236c = "MICROSECOND";
                this.d = j2 / 1000;
            } else {
                this.f75236c = "NANOSECOND";
                this.d = j2;
            }
        }

        public final TimeBased b(int i2) {
            return new TimeBased(Math.multiplyExact(this.f75235b, i2));
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof TimeBased) {
                return this.f75235b == ((TimeBased) obj).f75235b;
            }
            return false;
        }

        public final int hashCode() {
            long j2 = this.f75235b;
            return ((int) j2) ^ ((int) (j2 >> 32));
        }

        public final String toString() {
            String str = this.f75236c;
            str.getClass();
            long j2 = this.d;
            if (j2 == 1) {
                return str;
            }
            return j2 + '-' + str;
        }
    }

    static {
        new TimeBased(1L).b(1000).b(1000).b(1000).b(60).b(60);
        DayBased dayBased = new DayBased(1);
        f75232a = dayBased;
        new DayBased(Math.multiplyExact(dayBased.f75233b, 7));
        int i2 = new MonthBased(1).f75234b;
        new MonthBased(Math.multiplyExact(i2, 3));
        new MonthBased(Math.multiplyExact(new MonthBased(Math.multiplyExact(i2, 12)).f75234b, 100));
    }

    public DateTimeUnit(DefaultConstructorMarker defaultConstructorMarker) {
    }

    public static String a(int i2, String str) {
        if (i2 == 1) {
            return str;
        }
        return i2 + '-' + str;
    }
}
