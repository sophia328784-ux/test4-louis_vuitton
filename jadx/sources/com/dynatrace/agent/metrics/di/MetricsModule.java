package com.dynatrace.agent.metrics.di;

import android.content.Context;
import com.dynatrace.agent.di.SecondGenServiceLocator;
import com.dynatrace.agent.storage.preference.MetricsDiskDataSource;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineScope;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/dynatrace/agent/metrics/di/MetricsModule;", "", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Lcom/dynatrace/agent/di/SecondGenServiceLocator;", "secondGenServiceLocator", "Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;", "metricsDataSource", "Lkotlinx/coroutines/CoroutineScope;", "coroutineScope", "<init>", "(Landroid/content/Context;Lcom/dynatrace/agent/di/SecondGenServiceLocator;Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;Lkotlinx/coroutines/CoroutineScope;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class MetricsModule {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f26888a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SecondGenServiceLocator f26889b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MetricsDiskDataSource f26890c;
    public final CoroutineScope d;

    public MetricsModule(Context context, SecondGenServiceLocator secondGenServiceLocator, MetricsDiskDataSource metricsDiskDataSource, CoroutineScope coroutineScope) {
        context.getClass();
        secondGenServiceLocator.getClass();
        metricsDiskDataSource.getClass();
        coroutineScope.getClass();
        this.f26888a = context;
        this.f26889b = secondGenServiceLocator;
        this.f26890c = metricsDiskDataSource;
        this.d = coroutineScope;
    }
}
