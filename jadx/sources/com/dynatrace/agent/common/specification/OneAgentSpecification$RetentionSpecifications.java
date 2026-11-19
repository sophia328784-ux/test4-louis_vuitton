package com.dynatrace.agent.common.specification;

import kotlin.Metadata;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0000\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"com/dynatrace/agent/common/specification/OneAgentSpecification$RetentionSpecifications", "", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class OneAgentSpecification$RetentionSpecifications {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long f26510a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f26511b = 0;

    static {
        Duration.Companion companion = Duration.INSTANCE;
        f26510a = DurationKt.g(9, DurationUnit.MINUTES);
    }
}
