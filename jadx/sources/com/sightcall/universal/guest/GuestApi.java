package com.sightcall.universal.guest;

import com.batch.android.s.b;
import com.sightcall.universal.api.JsonApi;
import okhttp3.HttpUrl;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.Header;
import retrofit2.http.Headers;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Path;
import retrofit2.http.Url;

/* JADX INFO: loaded from: classes3.dex */
public interface GuestApi {
    @Headers({com.sightcall.universal.api.Headers.Accept.JsonApi, com.sightcall.universal.api.Headers.ContentType.JsonApi})
    @POST("v2/calls")
    Call<JsonApi.Wrapper<Calls>> calls(@Header(com.sightcall.universal.api.Headers.Authorization.Hash) com.sightcall.universal.api.Headers.Authorization.Bearer bearer, @Body JsonApi.Wrapper<Calls> wrapper);

    @PUT("v1.7/external/agentRequests/{id}")
    Call<Void> cancelAgent(@Header(com.sightcall.universal.api.Headers.Authorization.Raw) com.sightcall.universal.api.Headers.Authorization.TokenReference tokenReference, @Path(b.a.f24015b) String str, @Body AgentHttpAcd.Cancel cancel);

    @PUT
    Call<Void> cancelAgent(@Header(com.sightcall.universal.api.Headers.Authorization.Raw) com.sightcall.universal.api.Headers.Authorization.TokenReference tokenReference, @Url HttpUrl httpUrl, @Body AgentHttpAcd.Cancel cancel);

    @POST("v1.7/external/agentRequests")
    Call<AgentHttpAcd.Result> requestAgent(@Header(com.sightcall.universal.api.Headers.Authorization.Raw) com.sightcall.universal.api.Headers.Authorization.TokenReference tokenReference, @Body AgentHttpAcd.Request request);

    @POST
    Call<AgentHttpAcd.Result> requestAgent(@Header(com.sightcall.universal.api.Headers.Authorization.Raw) com.sightcall.universal.api.Headers.Authorization.TokenReference tokenReference, @Url HttpUrl httpUrl, @Body AgentHttpAcd.Request request);
}
