package com.dynatrace.agent.useraction;

import com.dynatrace.agent.OneAgentEventDispatcher;
import com.dynatrace.agent.common.time.TimeProvider;
import com.dynatrace.agent.di.SessionInformationProvider;
import com.dynatrace.agent.metrics.SessionInformationMetrics;
import com.dynatrace.agent.storage.preference.ServerConfigurationChangeListener;
import com.dynatrace.agent.storage.preference.ServerConfigurationDataSource;
import com.dynatrace.agent.storage.preference.ServerConfigurationV4;
import com.dynatrace.android.agent.util.Utility;
import defpackage.p11;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineScope;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0010\u0018\u00002\u00020\u00012\u00020\u0002B/\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/dynatrace/agent/useraction/UserActionController;", "Lcom/dynatrace/agent/useraction/RumEventInterceptor;", "Lcom/dynatrace/agent/storage/preference/ServerConfigurationChangeListener;", "Lcom/dynatrace/agent/OneAgentEventDispatcher;", "eventDispatcher", "Lcom/dynatrace/agent/common/time/TimeProvider;", "timeProvider", "Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;", "serverConfigDataSource", "Lcom/dynatrace/agent/di/SessionInformationProvider;", "sessionInfoProvider", "Lkotlinx/coroutines/CoroutineScope;", "coroutineScope", "<init>", "(Lcom/dynatrace/agent/OneAgentEventDispatcher;Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;Lcom/dynatrace/agent/di/SessionInformationProvider;Lkotlinx/coroutines/CoroutineScope;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class UserActionController implements RumEventInterceptor, ServerConfigurationChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final OneAgentEventDispatcher f27075a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TimeProvider f27076b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ServerConfigurationDataSource f27077c;
    public final SessionInformationProvider d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CoroutineScope f27078e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ReentrantLock f27079f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile boolean f27080h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final UserActionLifecycle f27081i;

    public UserActionController(OneAgentEventDispatcher oneAgentEventDispatcher, TimeProvider timeProvider, ServerConfigurationDataSource serverConfigurationDataSource, SessionInformationProvider sessionInformationProvider, CoroutineScope coroutineScope) {
        oneAgentEventDispatcher.getClass();
        timeProvider.getClass();
        serverConfigurationDataSource.getClass();
        sessionInformationProvider.getClass();
        coroutineScope.getClass();
        this.f27075a = oneAgentEventDispatcher;
        this.f27076b = timeProvider;
        this.f27077c = serverConfigurationDataSource;
        this.d = sessionInformationProvider;
        this.f27078e = coroutineScope;
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f27079f = reentrantLock;
        UserActionTimer userActionTimer = new UserActionTimer(coroutineScope, reentrantLock);
        this.g = serverConfigurationDataSource.getF27010b().f27048h;
        this.f27080h = true;
        this.f27081i = new UserActionLifecycle(userActionTimer, timeProvider, serverConfigurationDataSource, null, null, new p11(this, 13), 24, null);
    }

    @Override // com.dynatrace.agent.storage.preference.ServerConfigurationChangeListener
    public final void a(ServerConfigurationV4 serverConfigurationV4) {
        serverConfigurationV4.getClass();
        ReentrantLock reentrantLock = this.f27079f;
        reentrantLock.lock();
        try {
            boolean z = this.g;
            boolean z2 = serverConfigurationV4.f27048h;
            this.g = z2;
            if (z && !z2) {
                Utility.b("uaEnable changed to false: discarding in-flight UAs");
                this.f27081i.d();
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void b(JSONObject jSONObject, SessionInformationMetrics sessionInformationMetrics, boolean z) {
        if (z) {
            Utility.b("dropped suppressed UIA");
        } else {
            Utility.b("dispatching UIA as-is");
            this.f27075a.d(jSONObject, sessionInformationMetrics);
        }
    }

    public final void c(SignificantEvent significantEvent) {
        significantEvent.getClass();
        if (!this.f27077c.getF27010b().f27048h) {
            Utility.b("ignoring significant " + significantEvent + " event: uaEnable=false");
            return;
        }
        ReentrantLock reentrantLock = this.f27079f;
        reentrantLock.lock();
        try {
            this.f27081i.c(significantEvent);
        } finally {
            reentrantLock.unlock();
        }
    }
}
