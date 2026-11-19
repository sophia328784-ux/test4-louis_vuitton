package com.sightcall.universal.internal.report.data;

import com.sightcall.universal.agent.Agent;
import com.sightcall.universal.api.Environment;
import com.sightcall.universal.internal.report.data.entities.CaseReportV3Request;
import com.sightcall.universal.model.Session;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b`\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0018\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u0007H&J \u0010\b\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\u000fÀ\u0006\u0003"}, d2 = {"Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;", "", "sendCaseReportAsHost", "", "agent", "Lcom/sightcall/universal/agent/Agent;", "caseReportV3Request", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;", "sendCaseReportAsGuest", "session", "Lcom/sightcall/universal/model/Session;", "env", "Lcom/sightcall/universal/api/Environment;", "token", "", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface CaseReportDataSource {
    void sendCaseReportAsGuest(Environment env, String token, CaseReportV3Request caseReportV3Request);

    void sendCaseReportAsGuest(Session session, CaseReportV3Request caseReportV3Request);

    void sendCaseReportAsHost(Agent agent, CaseReportV3Request caseReportV3Request);
}
