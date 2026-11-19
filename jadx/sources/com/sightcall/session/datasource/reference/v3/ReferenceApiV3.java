package com.sightcall.session.datasource.reference.v3;

import com.sightcall.httpclient.SightCallHeaders;
import com.sightcall.session.datasource.reference.v3.startup.ReferenceStartupRequestEntity;
import com.sightcall.session.datasource.reference.v3.startup.ReferenceStartupResponseEntity;
import com.sightcall.session.datasource.reference.v3.switchRole.ReferenceSwitchRequestEntity;
import com.sightcall.session.datasource.reference.v3.switchRole.ReferenceSwitchResponseEntity;
import kotlin.Metadata;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.Header;
import retrofit2.http.POST;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b`\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0006H'J\"\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00032\b\b\u0001\u0010\t\u001a\u00020\n2\b\b\u0001\u0010\u0005\u001a\u00020\u000bH'¨\u0006\fÀ\u0006\u0003"}, d2 = {"Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3;", "", "getReference", "Lretrofit2/Call;", "Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity;", "body", "Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupRequestEntity;", "switchRole", "Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchResponseEntity;", "authorization", "Lcom/sightcall/httpclient/SightCallHeaders$Authorization$External;", "Lcom/sightcall/session/datasource/reference/v3/switchRole/ReferenceSwitchRequestEntity;", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ReferenceApiV3 {
    @POST("v3/references")
    Call<ReferenceStartupResponseEntity> getReference(@Body ReferenceStartupRequestEntity body);

    @POST("v3/references")
    Call<ReferenceSwitchResponseEntity> switchRole(@Header("Authorization") SightCallHeaders.Authorization.External authorization, @Body ReferenceSwitchRequestEntity body);
}
