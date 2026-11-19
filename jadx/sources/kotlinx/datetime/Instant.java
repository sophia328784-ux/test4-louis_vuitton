package kotlinx.datetime;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.datetime.serializers.InstantIso8601Serializer;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 \u00062\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0006B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lkotlinx/datetime/Instant;", "", "Ljava/time/Instant;", "value", "<init>", "(Ljava/time/Instant;)V", "Companion", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable(with = InstantIso8601Serializer.class)
public final class Instant implements Comparable<Instant> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Instant f75238c;
    public static final Instant d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.time.Instant f75239b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0001¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/datetime/Instant$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lkotlinx/datetime/Instant;", "serializer", "()Lkotlinx/serialization/KSerializer;", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<Instant> serializer() {
            return InstantIso8601Serializer.f75500a;
        }
    }

    static {
        java.time.Instant instantOfEpochSecond = java.time.Instant.ofEpochSecond(-3217862419201L, 999999999L);
        instantOfEpochSecond.getClass();
        new Instant(instantOfEpochSecond);
        java.time.Instant instantOfEpochSecond2 = java.time.Instant.ofEpochSecond(3093527980800L, 0L);
        instantOfEpochSecond2.getClass();
        new Instant(instantOfEpochSecond2);
        java.time.Instant instant = java.time.Instant.MIN;
        instant.getClass();
        f75238c = new Instant(instant);
        java.time.Instant instant2 = java.time.Instant.MAX;
        instant2.getClass();
        d = new Instant(instant2);
    }

    public Instant(java.time.Instant instant) {
        instant.getClass();
        this.f75239b = instant;
    }

    public final long a() {
        java.time.Instant instant = this.f75239b;
        try {
            return instant.toEpochMilli();
        } catch (ArithmeticException unused) {
            return instant.isAfter(java.time.Instant.EPOCH) ? Long.MAX_VALUE : Long.MIN_VALUE;
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(Instant instant) {
        Instant instant2 = instant;
        instant2.getClass();
        return this.f75239b.compareTo(instant2.f75239b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Instant) {
            return Intrinsics.c(this.f75239b, ((Instant) obj).f75239b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f75239b.hashCode();
    }

    public final String toString() {
        String string = this.f75239b.toString();
        string.getClass();
        return string;
    }
}
