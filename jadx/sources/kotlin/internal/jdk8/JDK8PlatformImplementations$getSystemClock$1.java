package kotlin.internal.jdk8;

import kotlin.Metadata;
import kotlin.time.Clock;
import kotlin.time.Instant;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"kotlin/internal/jdk8/JDK8PlatformImplementations$getSystemClock$1", "Lkotlin/time/Clock;", "kotlin-stdlib-jdk8"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class JDK8PlatformImplementations$getSystemClock$1 implements Clock {
    @Override // kotlin.time.Clock
    public final Instant now() {
        java.time.Instant instantNow = java.time.Instant.now();
        instantNow.getClass();
        Instant.Companion companion = Instant.d;
        long epochSecond = instantNow.getEpochSecond();
        int nano = instantNow.getNano();
        companion.getClass();
        return Instant.Companion.a(nano, epochSecond);
    }
}
