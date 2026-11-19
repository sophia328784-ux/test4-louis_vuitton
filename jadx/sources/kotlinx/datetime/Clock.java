package kotlinx.datetime;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/datetime/Clock;", "", "System", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface Clock {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/datetime/Clock$System;", "Lkotlinx/datetime/Clock;", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class System implements Clock {
        public static Instant a() {
            Instant.INSTANCE.getClass();
            java.time.Instant instant = java.time.Clock.systemUTC().instant();
            instant.getClass();
            return new Instant(instant);
        }
    }
}
