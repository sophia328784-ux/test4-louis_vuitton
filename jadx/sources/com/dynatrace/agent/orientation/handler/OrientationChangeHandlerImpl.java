package com.dynatrace.agent.orientation.handler;

import com.dynatrace.agent.metrics.MetricsRepository;
import com.dynatrace.agent.storage.preference.MetricsData;
import com.dynatrace.agent.userinteraction.OneAgentUserInteractionManager;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandlerImpl;", "Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandler;", "Lcom/dynatrace/agent/metrics/MetricsRepository;", "metricsRepository", "Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManager;", "oneAgentUserInteractionManager", "<init>", "(Lcom/dynatrace/agent/metrics/MetricsRepository;Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManager;)V", "Companion", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class OrientationChangeHandlerImpl implements OrientationChangeHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MetricsRepository f26891a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final OneAgentUserInteractionManager f26892b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f26893c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandlerImpl$Companion;", "", "", "UNKNOWN_ORIENTATION", "I", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public OrientationChangeHandlerImpl(MetricsRepository metricsRepository, OneAgentUserInteractionManager oneAgentUserInteractionManager) {
        metricsRepository.getClass();
        oneAgentUserInteractionManager.getClass();
        this.f26891a = metricsRepository;
        this.f26892b = oneAgentUserInteractionManager;
        this.f26893c = -1;
    }

    @Override // com.dynatrace.agent.orientation.handler.OrientationChangeHandler
    public final void a(int i2) {
        if (i2 == this.f26893c) {
            return;
        }
        this.f26893c = i2;
        MetricsRepository metricsRepository = this.f26891a;
        metricsRepository.f26871h = MetricsData.a(metricsRepository.f26871h, 0, 0, i2, 0, null, null, false, null, null, null, false, false, 262139);
        this.f26892b.c();
    }
}
