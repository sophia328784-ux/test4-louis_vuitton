package com.dynatrace.agent.communication.network.datasource;

import kotlin.Metadata;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"com.dynatrace.agent_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class NetworkDataSourceImplKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long f26644a;

    static {
        Duration.Companion companion = Duration.INSTANCE;
        f26644a = DurationKt.h(10L, DurationUnit.MINUTES);
    }
}
