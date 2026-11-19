package com.dynatrace.android.agent.mixed;

import android.os.SystemClock;
import com.dynatrace.agent.common.time.TimeProvider;
import com.dynatrace.android.agent.DeviceStartTimeProvider;
import com.dynatrace.android.agent.TimeLineProvider;

/* JADX INFO: loaded from: classes2.dex */
public class TimeProviderFactory {

    public static class SystemTimeProvider implements TimeProvider {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final DeviceStartTimeProvider f27578a;

        public SystemTimeProvider(DeviceStartTimeProvider deviceStartTimeProvider) {
            this.f27578a = deviceStartTimeProvider;
        }

        @Override // com.dynatrace.agent.common.time.TimeProvider
        public final long a() {
            return SystemClock.elapsedRealtime() + this.f27578a.f27303a;
        }
    }

    public static TimeProvider a() {
        return new SystemTimeProvider(TimeLineProvider.f27310b);
    }
}
