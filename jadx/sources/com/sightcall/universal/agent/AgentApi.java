package com.sightcall.universal.agent;

import com.batch.android.s.b;
import com.sightcall.universal.agent.pushnotification.UpdatePushNotificationRequest;
import com.sightcall.universal.agent.recording.RecordingV3Request;
import com.sightcall.universal.agent.recording.RecordingV3Response;
import com.sightcall.universal.agent.registration.AccessTokensRequest;
import com.sightcall.universal.agent.registration.AccessTokensResponse;
import com.sightcall.universal.agent.registration.NewRegistrationRequest;
import com.sightcall.universal.agent.registration.NewRegistrationResponse;
import com.sightcall.universal.agent.registration.OldRegistration;
import com.sightcall.universal.api.JsonApi;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.concurrent.TimeUnit;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.Converter;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.http.Body;
import retrofit2.http.DELETE;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.Headers;
import retrofit2.http.PATCH;
import retrofit2.http.POST;
import retrofit2.http.Path;

/* JADX INFO: loaded from: classes3.dex */
public interface AgentApi {

    /* JADX INFO: loaded from: classes5.dex */
    public static class Error {
        public static <T> T from(Retrofit retrofit, Response<?> response, Type type) {
            Converter converterD = retrofit.d(type, new Annotation[0]);
            try {
                ResponseBody responseBody = response.f79451c;
                if (responseBody == null) {
                    return null;
                }
                return (T) converterD.f(responseBody);
            } catch (IOException e2) {
                e2.printStackTrace();
                return null;
            }
        }
    }

    @Headers({com.sightcall.universal.api.Headers.Accept.JsonApi, com.sightcall.universal.api.Headers.ContentType.JsonApi})
    @POST("v2/authorization-tokens")
    Call<JsonApi.Wrapper<OldRegistration>> createAuthorizationToken(@Body JsonApi.Wrapper<OldRegistration> wrapper);

    @Headers({com.sightcall.universal.api.Headers.Accept.JsonApi, com.sightcall.universal.api.Headers.ContentType.JsonApi})
    @POST("v3/agentPushNotificationTests")
    Call<JsonApi.Wrapper<AgentPushNotificationTestsResponse>> createNotificationTest(@Header("Authorization") String str, @Body JsonApi.Wrapper<AgentPushNotificationTests> wrapper);

    @Headers({com.sightcall.universal.api.Headers.Accept.JsonApi, com.sightcall.universal.api.Headers.ContentType.JsonApi})
    @POST("v2/pincodes")
    Call<JsonApi.Wrapper<Pincode>> createPincode(@Header(com.sightcall.universal.api.Headers.Authorization.Token) com.sightcall.universal.api.Headers.Authorization.Bearer bearer, @Body JsonApi.Wrapper<Pincode> wrapper);

    @Headers({com.sightcall.universal.api.Headers.Accept.JsonApi, com.sightcall.universal.api.Headers.ContentType.JsonApi})
    @POST("v2/prospects")
    Call<JsonApi.Wrapper<Lead>> createProspect(@Body JsonApi.Wrapper<Lead> wrapper);

    @Headers({com.sightcall.universal.api.Headers.Accept.JsonApi, com.sightcall.universal.api.Headers.ContentType.JsonApi})
    @POST("v3/refreshTokens")
    Call<JsonApi.Wrapper<NewRegistrationResponse>> createSession(@Body JsonApi.Wrapper<NewRegistrationRequest> wrapper);

    @Headers({com.sightcall.universal.api.Headers.Accept.JsonApi, com.sightcall.universal.api.Headers.ContentType.JsonApi})
    @POST("v2/temporary-tokens")
    Call<JsonApi.Wrapper<TemporaryToken>> createTemporaryToken(@Body JsonApi.Wrapper<TemporaryToken> wrapper);

    @DELETE("v2/authorization-tokens/{id}")
    @Headers({com.sightcall.universal.api.Headers.Accept.JsonApi})
    Call<Void> deleteAuthorizationToken(@Path(b.a.f24015b) String str);

    @DELETE("v3/refreshTokens/{refreshTokensId}")
    @Headers({com.sightcall.universal.api.Headers.Accept.JsonApi})
    Call<Void> deleteNewToken(@Path("refreshTokensId") String str);

    @DELETE("v2/pincodes/{id}")
    @Headers({com.sightcall.universal.api.Headers.Accept.JsonApi})
    Call<Void> deletePincode(@Header(com.sightcall.universal.api.Headers.Authorization.Token) com.sightcall.universal.api.Headers.Authorization.Bearer bearer, @Path(b.a.f24015b) String str);

    @Headers({com.sightcall.universal.api.Headers.Accept.JsonApi})
    @GET("v2/identity?include=consent")
    Call<JsonApi.Wrapper<Identity>> getConsent(@Header(com.sightcall.universal.api.Headers.Authorization.Token) com.sightcall.universal.api.Headers.Authorization.Bearer bearer);

    @Headers({com.sightcall.universal.api.Headers.Accept.JsonApi})
    @GET("v2/pincodes/{id}?include=usecase,case-report")
    Call<JsonApi.Wrapper<Pincode>> getPincode(@Header(com.sightcall.universal.api.Headers.Authorization.Token) com.sightcall.universal.api.Headers.Authorization.Bearer bearer, @Path(b.a.f24015b) String str);

    @Headers({com.sightcall.universal.api.Headers.Accept.JsonApi})
    @GET("v2/usecases/{id}")
    Call<JsonApi.Wrapper<Usecase>> getUsecase(@Header(com.sightcall.universal.api.Headers.Authorization.Token) com.sightcall.universal.api.Headers.Authorization.Bearer bearer, @Path(b.a.f24015b) String str);

    @Headers({com.sightcall.universal.api.Headers.Accept.JsonApi})
    @GET("v2/usecases")
    Call<JsonApi.Wrapper<Usecase[]>> getUsecases(@Header(com.sightcall.universal.api.Headers.Authorization.Token) com.sightcall.universal.api.Headers.Authorization.Bearer bearer);

    @Headers({com.sightcall.universal.api.Headers.Accept.JsonApi})
    @GET("v2/identity?include=provider,consent,usecases,guest-product,guest-language,guest-location,guest-product.usecase,pincode,pincode.usecase,pincode.case-report,provider.customizations,usecases.customizations,ar-overlay-models,integrations")
    Call<JsonApi.Wrapper<Identity>> refresh(@Header(com.sightcall.universal.api.Headers.Authorization.Token) com.sightcall.universal.api.Headers.Authorization.Bearer bearer);

    @Headers({com.sightcall.universal.api.Headers.Accept.JsonApi, com.sightcall.universal.api.Headers.ContentType.JsonApi})
    @POST("v3/accessTokens")
    Call<JsonApi.Wrapper<AccessTokensResponse>> refreshToken(@Body JsonApi.Wrapper<AccessTokensRequest> wrapper);

    @Headers({com.sightcall.universal.api.Headers.Accept.JsonApi, com.sightcall.universal.api.Headers.ContentType.JsonApi})
    @PATCH("v2/pincodes/{id}")
    Call<JsonApi.Wrapper<Pincode>> resendPincode(@Header(com.sightcall.universal.api.Headers.Authorization.Token) com.sightcall.universal.api.Headers.Authorization.Bearer bearer, @Path(b.a.f24015b) String str, @Body JsonApi.Wrapper<Pincode> wrapper);

    @Headers({com.sightcall.universal.api.Headers.Accept.JsonApi, com.sightcall.universal.api.Headers.ContentType.JsonApi})
    @PATCH("v2/temporary-tokens/{id}")
    Call<JsonApi.Wrapper<TemporaryToken>> resendTemporaryToken(@Path(b.a.f24015b) String str, @Body JsonApi.Wrapper<TemporaryToken> wrapper);

    @Headers({com.sightcall.universal.api.Headers.Accept.JsonApi, com.sightcall.universal.api.Headers.ContentType.JsonApi})
    @POST("v3/recordingSessions")
    Call<RecordingV3Response> startRecording(@Header("Authorization") String str, @Body RecordingV3Request recordingV3Request);

    @Timeout.Read(unit = TimeUnit.SECONDS, value = 10)
    @Timeout(connect = 10, read = 10, unit = TimeUnit.SECONDS, write = 10)
    @GET("timeout")
    @Timeout.Connect(unit = TimeUnit.SECONDS, value = 10)
    @Timeout.Write(unit = TimeUnit.SECONDS, value = 10)
    Call<Void> timeout();

    @Headers({com.sightcall.universal.api.Headers.Accept.JsonApi, com.sightcall.universal.api.Headers.ContentType.JsonApi})
    @POST("v3/agentInfos")
    Call<Void> updateAgentInfos(@Header("Authorization") String str, @Body AgentInfoRequestEntity agentInfoRequestEntity);

    @Headers({com.sightcall.universal.api.Headers.Accept.JsonApi, com.sightcall.universal.api.Headers.ContentType.JsonApi})
    @PATCH("v2/identity")
    Call<JsonApi.Wrapper<Identity>> updateIdentity(@Header(com.sightcall.universal.api.Headers.Authorization.Token) com.sightcall.universal.api.Headers.Authorization.Bearer bearer, @Body JsonApi.Wrapper<Identity> wrapper);

    @Headers({com.sightcall.universal.api.Headers.Accept.JsonApi, com.sightcall.universal.api.Headers.ContentType.JsonApi})
    @PATCH("v3/agents/me")
    Call<Void> updatePushNotificationToken(@Header("Authorization") String str, @Body UpdatePushNotificationRequest updatePushNotificationRequest);
}
