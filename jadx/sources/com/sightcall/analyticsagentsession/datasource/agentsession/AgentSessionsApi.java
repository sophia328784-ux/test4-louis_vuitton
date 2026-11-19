package com.sightcall.analyticsagentsession.datasource.agentsession;

import com.sightcall.httpclient.SightCallHeaders;
import kotlin.Metadata;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.Header;
import retrofit2.http.POST;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b`\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\bH'¨\u0006\tÀ\u0006\u0003"}, d2 = {"Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionsApi;", "", "getSession", "Lretrofit2/Call;", "Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity;", "authorization", "Lcom/sightcall/httpclient/SightCallHeaders$Authorization$Token;", "body", "Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity;", "analyticsagentsession_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AgentSessionsApi {
    @POST("v3/analyticsSessions")
    Call<GetAgentSessionResponseEntity> getSession(@Header("Authorization") SightCallHeaders.Authorization.Token authorization, @Body GetAgentSessionRequestEntity body);
}
