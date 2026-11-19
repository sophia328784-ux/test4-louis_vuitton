package com.dynatrace.agent.storage.preference;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.storage.preference.MetricsDiskDataSource", f = "MetricsDiskDataSource.kt", l = {101}, m = "setMetrics")
final class MetricsDiskDataSource$setMetrics$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f26992b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MetricsDiskDataSource f26993c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MetricsDiskDataSource$setMetrics$1(MetricsDiskDataSource metricsDiskDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f26993c = metricsDiskDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f26992b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f26993c.b(null, this);
    }
}
