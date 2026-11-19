package com.sightcall.universal.internal.report.data;

import com.sightcall.pratik.logs.Logger;
import com.sightcall.universal.agent.Agent;
import com.sightcall.universal.api.Apis;
import com.sightcall.universal.api.EmptyCallback;
import com.sightcall.universal.api.Environment;
import com.sightcall.universal.api.Headers;
import com.sightcall.universal.internal.report.data.entities.CaseReportV3Request;
import com.sightcall.universal.model.Session;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\f\u001a\u00020\rH\u0016J \u0010\u000e\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\f\u001a\u00020\rH\u0016¨\u0006\u0013"}, d2 = {"Lcom/sightcall/universal/internal/report/data/CaseReportDataSourceImpl;", "Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;", "<init>", "()V", "get", "Lcom/sightcall/universal/internal/report/data/CaseReportApi;", "env", "Lcom/sightcall/universal/api/Environment;", "sendCaseReportAsHost", "", "agent", "Lcom/sightcall/universal/agent/Agent;", "caseReportV3Request", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;", "sendCaseReportAsGuest", "session", "Lcom/sightcall/universal/model/Session;", "token", "", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CaseReportDataSourceImpl implements CaseReportDataSource {
    @Inject
    public CaseReportDataSourceImpl() {
    }

    private final CaseReportApi get(Environment env) {
        Object obj = Apis.get(CaseReportApi.class, env);
        obj.getClass();
        return (CaseReportApi) obj;
    }

    @Override // com.sightcall.universal.internal.report.data.CaseReportDataSource
    public void sendCaseReportAsGuest(Environment env, String token, CaseReportV3Request caseReportV3Request) {
        env.getClass();
        token.getClass();
        caseReportV3Request.getClass();
        get(env).updateCaseReport(Headers.Authorization.External.INSTANCE.with(token).toString(), caseReportV3Request).p(new EmptyCallback());
    }

    @Override // com.sightcall.universal.internal.report.data.CaseReportDataSource
    public void sendCaseReportAsHost(Agent agent, CaseReportV3Request caseReportV3Request) {
        agent.getClass();
        caseReportV3Request.getClass();
        String str = agent.token();
        if (str == null) {
            Logger.INSTANCE.getTag();
            return;
        }
        Environment environment = agent.environment();
        environment.getClass();
        get(environment).updateCaseReport(Headers.Authorization.PlaneTokenV3.INSTANCE.with(str).toString(), caseReportV3Request).p(new EmptyCallback());
    }

    @Override // com.sightcall.universal.internal.report.data.CaseReportDataSource
    public void sendCaseReportAsGuest(Session session, CaseReportV3Request caseReportV3Request) {
        session.getClass();
        caseReportV3Request.getClass();
        Environment environment = session.environment();
        environment.getClass();
        sendCaseReportAsGuest(environment, session.config.authorizationToken.getValue(), caseReportV3Request);
    }
}
