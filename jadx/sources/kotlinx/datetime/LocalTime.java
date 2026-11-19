package kotlinx.datetime;

import defpackage.lc0;
import java.time.DateTimeException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.datetime.serializers.LocalTimeIso8601Serializer;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\b\u0007\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\fB\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B-\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\u0006\u0012\b\b\u0002\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\u000b¨\u0006\r"}, d2 = {"Lkotlinx/datetime/LocalTime;", "", "Ljava/time/LocalTime;", "value", "<init>", "(Ljava/time/LocalTime;)V", "", "hour", "minute", "second", "nanosecond", "(IIII)V", "Companion", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable(with = LocalTimeIso8601Serializer.class)
public final class LocalTime implements Comparable<LocalTime> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.time.LocalTime f75245b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0001¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/datetime/LocalTime$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lkotlinx/datetime/LocalTime;", "serializer", "()Lkotlinx/serialization/KSerializer;", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<LocalTime> serializer() {
            return LocalTimeIso8601Serializer.f75504a;
        }
    }

    static {
        java.time.LocalTime localTime = java.time.LocalTime.MIN;
        localTime.getClass();
        new LocalTime(localTime);
        java.time.LocalTime localTime2 = java.time.LocalTime.MAX;
        localTime2.getClass();
        new LocalTime(localTime2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public LocalTime(int i2, int i3, int i4, int i5) {
        try {
            java.time.LocalTime localTimeOf = java.time.LocalTime.of(i2, i3, i4, i5);
            localTimeOf.getClass();
            this(localTimeOf);
        } catch (DateTimeException e2) {
            lc0.u(e2);
            throw null;
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(LocalTime localTime) {
        LocalTime localTime2 = localTime;
        localTime2.getClass();
        return this.f75245b.compareTo(localTime2.f75245b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LocalTime) {
            return Intrinsics.c(this.f75245b, ((LocalTime) obj).f75245b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f75245b.hashCode();
    }

    public final String toString() {
        String string = this.f75245b.toString();
        string.getClass();
        return string;
    }

    public /* synthetic */ LocalTime(int i2, int i3, int i4, int i5, int i6, DefaultConstructorMarker defaultConstructorMarker) {
        this(i2, i3, (i6 & 4) != 0 ? 0 : i4, (i6 & 8) != 0 ? 0 : i5);
    }

    public LocalTime(java.time.LocalTime localTime) {
        localTime.getClass();
        this.f75245b = localTime;
    }
}
