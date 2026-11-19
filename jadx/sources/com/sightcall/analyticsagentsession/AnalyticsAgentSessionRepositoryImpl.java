package com.sightcall.analyticsagentsession;

import com.sightcall.analyticsagentsession.datasource.AgentSessionDataSource;
import com.sightcall.pratik.Result;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J*\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0096@¢\u0006\u0002\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/sightcall/analyticsagentsession/AnalyticsAgentSessionRepositoryImpl;", "Lcom/sightcall/analyticsagentsession/AnalyticsAgentSessionRepository;", "agentSessionDataSource", "Lcom/sightcall/analyticsagentsession/datasource/AgentSessionDataSource;", "<init>", "(Lcom/sightcall/analyticsagentsession/datasource/AgentSessionDataSource;)V", "getAgentSession", "Lcom/sightcall/pratik/Result;", "Lcom/sightcall/analyticsagentsession/AnalyticsAgentSession;", "", "token", "", "caseReportId", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "analyticsagentsession_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AnalyticsAgentSessionRepositoryImpl implements AnalyticsAgentSessionRepository {
    private final AgentSessionDataSource agentSessionDataSource;

    @Inject
    public AnalyticsAgentSessionRepositoryImpl(AgentSessionDataSource agentSessionDataSource) {
        agentSessionDataSource.getClass();
        this.agentSessionDataSource = agentSessionDataSource;
    }

    @Override // com.sightcall.analyticsagentsession.AnalyticsAgentSessionRepository
    public Object getAgentSession(String str, String str2, Continuation<? super Result<AnalyticsAgentSession, Unit>> continuation) {
        return this.agentSessionDataSource.getSession(str, str2, continuation);
    }
}
