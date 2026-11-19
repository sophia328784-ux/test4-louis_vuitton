package com.dynatrace.agent.communication;

import com.dynatrace.agent.communication.network.model.RetryInfo;
import kotlin.Metadata;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"com.dynatrace.agent_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class RetryManagerKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long f26592a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final long f26593b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final long f26594c;
    public static final /* synthetic */ int d = 0;

    static {
        Duration.Companion companion = Duration.INSTANCE;
        DurationUnit durationUnit = DurationUnit.SECONDS;
        f26592a = DurationKt.h(30L, durationUnit);
        f26593b = DurationKt.h(60L, durationUnit);
        f26594c = DurationKt.g(2, DurationUnit.HOURS);
    }

    public static final long a(RetryInfo retryInfo) {
        int i2 = retryInfo.f26645a;
        if (i2 != 1) {
            return i2 != 2 ? f26594c : f26593b;
        }
        return f26592a;
    }
}
