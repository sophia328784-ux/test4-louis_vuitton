package com.dynatrace.agent.metrics;

import com.dynatrace.agent.di.SessionInformationProvider;
import com.dynatrace.agent.storage.preference.MetricsData;
import com.dynatrace.agent.storage.preference.MetricsDiskDataSource;
import com.dynatrace.android.lifecycle.activitytracking.metrics.ScreenMetrics;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0010B9\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/dynatrace/agent/metrics/MetricsRepository;", "", "Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;", "metricsDataSource", "Lcom/dynatrace/agent/di/SessionInformationProvider;", "sessionProvider", "Lcom/dynatrace/agent/metrics/OneAgentMetricsProvider;", "oneAgentMetricsProvider", "Lcom/dynatrace/agent/metrics/SecondGenMetricsProvider;", "secondGenMetricsProvider", "Lkotlin/time/Duration;", "interval", "Lkotlinx/coroutines/CoroutineScope;", "coroutineScope", "<init>", "(Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/metrics/OneAgentMetricsProvider;Lcom/dynatrace/agent/metrics/SecondGenMetricsProvider;JLkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class MetricsRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MetricsDiskDataSource f26866a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SessionInformationProvider f26867b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final OneAgentMetricsProvider f26868c;
    public final SecondGenMetricsProvider d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f26869e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CoroutineScope f26870f;
    public Job g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile MetricsData f26871h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile MetricsData f26872i;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/dynatrace/agent/metrics/MetricsRepository$Companion;", "", "", "UNKNOWN_SCREEN_DIMENSION", "I", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public MetricsRepository(MetricsDiskDataSource metricsDiskDataSource, SessionInformationProvider sessionInformationProvider, OneAgentMetricsProvider oneAgentMetricsProvider, SecondGenMetricsProvider secondGenMetricsProvider, long j2, CoroutineScope coroutineScope, DefaultConstructorMarker defaultConstructorMarker) {
        metricsDiskDataSource.getClass();
        sessionInformationProvider.getClass();
        oneAgentMetricsProvider.getClass();
        secondGenMetricsProvider.getClass();
        coroutineScope.getClass();
        this.f26866a = metricsDiskDataSource;
        this.f26867b = sessionInformationProvider;
        this.f26868c = oneAgentMetricsProvider;
        this.d = secondGenMetricsProvider;
        this.f26869e = j2;
        this.f26870f = coroutineScope;
        int i2 = oneAgentMetricsProvider.f26878b.getResources().getConfiguration().orientation;
        String str = oneAgentMetricsProvider.d;
        String str2 = oneAgentMetricsProvider.f26880e;
        String str3 = oneAgentMetricsProvider.f26881f;
        String packageName = oneAgentMetricsProvider.f26878b.getPackageName();
        packageName.getClass();
        String strA = oneAgentMetricsProvider.f26877a.b().f26508b.a();
        this.f26871h = new MetricsData(0, 0, i2, secondGenMetricsProvider.b(), null, null, str, str2, false, null, str3, packageName, secondGenMetricsProvider.a(), null, null, strA, false, false, 222003, null);
        BuildersKt.c(coroutineScope, null, null, new MetricsRepository$loadMetrics$1(this, null), 3);
    }

    public final void a() {
        Job job = this.g;
        if (job != null) {
            job.cancel(null);
        }
        this.g = null;
        this.g = BuildersKt.c(this.f26870f, null, null, new MetricsRepository$runPeriodicMetricsUpdate$1(this, null), 3);
    }

    public final void b(ScreenMetrics screenMetrics) {
        this.f26871h = MetricsData.a(this.f26871h, screenMetrics != null ? screenMetrics.f27660a : -1, screenMetrics != null ? screenMetrics.f27661b : -1, 0, 0, null, null, false, null, null, null, false, false, 262140);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ MetricsRepository(MetricsDiskDataSource metricsDiskDataSource, SessionInformationProvider sessionInformationProvider, OneAgentMetricsProvider oneAgentMetricsProvider, SecondGenMetricsProvider secondGenMetricsProvider, long j2, CoroutineScope coroutineScope, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        long jG;
        if ((i2 & 16) != 0) {
            Duration.Companion companion = Duration.INSTANCE;
            jG = DurationKt.g(5, DurationUnit.SECONDS);
        } else {
            jG = j2;
        }
        this(metricsDiskDataSource, sessionInformationProvider, oneAgentMetricsProvider, secondGenMetricsProvider, jG, coroutineScope, null);
    }
}
