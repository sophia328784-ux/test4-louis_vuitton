package com.sightcall.analyticsagentsession.datasource.agentsession;

import com.sightcall.analyticsagentsession.AnalyticsAgentSession;
import java.net.URL;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u0002H\u0000¨\u0006\u0003"}, d2 = {"toAnalyticsAgentSession", "Lcom/sightcall/analyticsagentsession/AnalyticsAgentSession;", "Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity;", "analyticsagentsession_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class GetAgentSessionMappersKt {
    public static final AnalyticsAgentSession toAnalyticsAgentSession(GetAgentSessionResponseEntity getAgentSessionResponseEntity) throws AgentSessionMappingException {
        try {
            getAgentSessionResponseEntity.getClass();
            return new AnalyticsAgentSession(new URL(getAgentSessionResponseEntity.getData().getAttributes().getUploadUrl()), getAgentSessionResponseEntity.getData().getId());
        } catch (Exception e2) {
            throw new AgentSessionMappingException("Unable to create a AnalyticsAgentSession from " + getAgentSessionResponseEntity, e2);
        }
    }
}
