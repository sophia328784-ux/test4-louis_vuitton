package com.dynatrace.agent.exitreason.di;

import android.content.Context;
import com.dynatrace.agent.RumEventDispatcher;
import com.dynatrace.agent.common.specification.OneAgentSpecification$RetentionSpecifications;
import com.dynatrace.agent.common.time.TimeProvider;
import com.dynatrace.agent.di.SessionInformationProvider;
import com.dynatrace.agent.metrics.MetricsRepository;
import com.dynatrace.agent.storage.preference.DataStoreExitReasonTimestampDataSource;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.time.Duration;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u0010¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/dynatrace/agent/exitreason/di/ExitReasonModule;", "", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Lcom/dynatrace/agent/common/time/TimeProvider;", "timeProvider", "", "retentionTime", "Lcom/dynatrace/agent/RumEventDispatcher;", "rumEventDispatcher", "Lcom/dynatrace/agent/di/SessionInformationProvider;", "sessionInformationProvider", "Lcom/dynatrace/agent/metrics/MetricsRepository;", "metricsRepository", "Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource;", "exitReasonTimestampDataSource", "", "isNativeCrashReportingEnabled", "isAnrReportingEnabled", "<init>", "(Landroid/content/Context;Lcom/dynatrace/agent/common/time/TimeProvider;JLcom/dynatrace/agent/RumEventDispatcher;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/metrics/MetricsRepository;Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource;ZZ)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ExitReasonModule {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f26817a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TimeProvider f26818b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f26819c;
    public final RumEventDispatcher d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SessionInformationProvider f26820e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MetricsRepository f26821f;
    public final DataStoreExitReasonTimestampDataSource g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f26822h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f26823i;

    public ExitReasonModule(Context context, TimeProvider timeProvider, long j2, RumEventDispatcher rumEventDispatcher, SessionInformationProvider sessionInformationProvider, MetricsRepository metricsRepository, DataStoreExitReasonTimestampDataSource dataStoreExitReasonTimestampDataSource, boolean z, boolean z2) {
        context.getClass();
        timeProvider.getClass();
        rumEventDispatcher.getClass();
        sessionInformationProvider.getClass();
        metricsRepository.getClass();
        dataStoreExitReasonTimestampDataSource.getClass();
        this.f26817a = context;
        this.f26818b = timeProvider;
        this.f26819c = j2;
        this.d = rumEventDispatcher;
        this.f26820e = sessionInformationProvider;
        this.f26821f = metricsRepository;
        this.g = dataStoreExitReasonTimestampDataSource;
        this.f26822h = z;
        this.f26823i = z2;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ExitReasonModule(Context context, TimeProvider timeProvider, long j2, RumEventDispatcher rumEventDispatcher, SessionInformationProvider sessionInformationProvider, MetricsRepository metricsRepository, DataStoreExitReasonTimestampDataSource dataStoreExitReasonTimestampDataSource, boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        long jE;
        if ((i2 & 4) != 0) {
            int i3 = OneAgentSpecification$RetentionSpecifications.f26511b;
            jE = Duration.e(OneAgentSpecification$RetentionSpecifications.f26510a);
        } else {
            jE = j2;
        }
        this(context, timeProvider, jE, rumEventDispatcher, sessionInformationProvider, metricsRepository, dataStoreExitReasonTimestampDataSource, z, z2);
    }
}
