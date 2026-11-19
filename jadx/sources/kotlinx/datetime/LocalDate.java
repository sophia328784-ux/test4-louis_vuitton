package kotlinx.datetime;

import defpackage.lc0;
import java.time.DateTimeException;
import java.time.Month;
import java.time.chrono.ChronoLocalDate;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.datetime.format.DateTimeFormat;
import kotlinx.datetime.format.LocalDateFormatKt;
import kotlinx.datetime.serializers.LocalDateIso8601Serializer;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 \u000f2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0002\u000f\u0010B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B!\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\nB%\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\u0010\r\u001a\u00060\u000bj\u0002`\f\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\u000e¨\u0006\u0011"}, d2 = {"Lkotlinx/datetime/LocalDate;", "", "Ljava/time/LocalDate;", "value", "<init>", "(Ljava/time/LocalDate;)V", "", "year", "monthNumber", "dayOfMonth", "(III)V", "Ljava/time/Month;", "Lkotlinx/datetime/Month;", "month", "(ILjava/time/Month;I)V", "Companion", "Formats", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable(with = LocalDateIso8601Serializer.class)
public final class LocalDate implements Comparable<LocalDate> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.time.LocalDate f75240b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0001¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/datetime/LocalDate$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lkotlinx/datetime/LocalDate;", "serializer", "()Lkotlinx/serialization/KSerializer;", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<LocalDate> serializer() {
            return LocalDateIso8601Serializer.f75502a;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/datetime/LocalDate$Formats;", "", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Formats {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final DateTimeFormat f75241a = (DateTimeFormat) LocalDateFormatKt.f75311b.getF71699b();
    }

    static {
        java.time.LocalDate localDate = java.time.LocalDate.MIN;
        localDate.getClass();
        new LocalDate(localDate);
        java.time.LocalDate localDate2 = java.time.LocalDate.MAX;
        localDate2.getClass();
        new LocalDate(localDate2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public LocalDate(int i2, int i3, int i4) {
        try {
            java.time.LocalDate localDateOf = java.time.LocalDate.of(i2, i3, i4);
            localDateOf.getClass();
            this(localDateOf);
        } catch (DateTimeException e2) {
            lc0.u(e2);
            throw null;
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(LocalDate localDate) {
        LocalDate localDate2 = localDate;
        localDate2.getClass();
        return this.f75240b.compareTo((ChronoLocalDate) localDate2.f75240b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LocalDate) {
            return Intrinsics.c(this.f75240b, ((LocalDate) obj).f75240b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f75240b.hashCode();
    }

    public final String toString() {
        String string = this.f75240b.toString();
        string.getClass();
        return string;
    }

    public LocalDate(java.time.LocalDate localDate) {
        localDate.getClass();
        this.f75240b = localDate;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LocalDate(int i2, Month month, int i3) {
        this(i2, month.ordinal() + 1, i3);
        month.getClass();
        month.getClass();
    }
}
