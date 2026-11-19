package kotlin.internal.jdk8;

import kotlin.Metadata;
import kotlin.time.Clock;
import kotlin.time.Instant;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"kotlin/internal/jdk8/JDK8PlatformImplementations$getSystemClock$2", "Lkotlin/time/Clock;", "kotlin-stdlib-jdk8"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class JDK8PlatformImplementations$getSystemClock$2 implements Clock {
    @Override // kotlin.time.Clock
    public final Instant now() {
        Instant.Companion companion = Instant.d;
        long jCurrentTimeMillis = System.currentTimeMillis();
        companion.getClass();
        long j2 = jCurrentTimeMillis / 1000;
        if ((jCurrentTimeMillis ^ 1000) < 0 && j2 * 1000 != jCurrentTimeMillis) {
            j2--;
        }
        long j3 = jCurrentTimeMillis % 1000;
        int i2 = (int) ((j3 + (1000 & (((j3 ^ 1000) & ((-j3) | j3)) >> 63))) * 1000000);
        if (j2 < -31557014167219200L) {
            return Instant.f74574e;
        }
        return j2 > 31556889864403199L ? Instant.f74575f : Instant.Companion.a(i2, j2);
    }
}
