package com.sightcall.analyticsagentsession.datasource.agentsession;

import com.sightcall.analyticsagentsession.AnalyticsAgentSession;
import com.sightcall.analyticsagentsession.datasource.AgentSessionDataSource;
import com.sightcall.httpclient.SightCallHeaders;
import com.sightcall.pratik.Result;
import com.sightcall.pratik.exceptions.NotSuccessfulResponseException;
import com.sightcall.pratik.logs.Logger;
import java.io.IOException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import retrofit2.Response;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J*\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0096@¢\u0006\u0002\u0010\rJ$\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u000f2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionDataSourceV3Impl;", "Lcom/sightcall/analyticsagentsession/datasource/AgentSessionDataSource;", "agentSessionsApi", "Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionsApi;", "<init>", "(Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionsApi;)V", "getSession", "Lcom/sightcall/pratik/Result;", "Lcom/sightcall/analyticsagentsession/AnalyticsAgentSession;", "", "token", "", "caseReportId", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "tryGetSession", "Lcom/sightcall/pratik/Result$Success;", "analyticsagentsession_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AgentSessionDataSourceV3Impl implements AgentSessionDataSource {
    private final AgentSessionsApi agentSessionsApi;

    @Inject
    public AgentSessionDataSourceV3Impl(AgentSessionsApi agentSessionsApi) {
        agentSessionsApi.getClass();
        this.agentSessionsApi = agentSessionsApi;
    }

    private final Result.Success<AnalyticsAgentSession, Unit> tryGetSession(String token, String caseReportId) throws NotSuccessfulResponseException {
        Response responseExecute = this.agentSessionsApi.getSession(new SightCallHeaders.Authorization.Token(token), GetAgentSessionRequestEntity.INSTANCE.create(caseReportId)).execute();
        if (responseExecute.f79449a.r) {
            return new Result.Success<>(GetAgentSessionMappersKt.toAnalyticsAgentSession((GetAgentSessionResponseEntity) responseExecute.f79450b));
        }
        throw new NotSuccessfulResponseException(responseExecute.f79449a.f76986e, responseExecute.f79451c);
    }

    @Override // com.sightcall.analyticsagentsession.datasource.AgentSessionDataSource
    public Object getSession(String str, String str2, Continuation<? super Result<AnalyticsAgentSession, Unit>> continuation) {
        try {
            return tryGetSession(str, str2);
        } catch (AgentSessionMappingException unused) {
            Logger.INSTANCE.getTag();
            return new Result.Error(Unit.f71739a);
        } catch (NotSuccessfulResponseException unused2) {
            Logger.INSTANCE.getTag();
            return new Result.Error(Unit.f71739a);
        } catch (IOException unused3) {
            Logger.INSTANCE.getTag();
            return new Result.Error(Unit.f71739a);
        } catch (RuntimeException unused4) {
            Logger.INSTANCE.getTag();
            return new Result.Error(Unit.f71739a);
        }
    }
}
