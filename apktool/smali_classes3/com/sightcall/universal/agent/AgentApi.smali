.class public interface abstract Lcom/sightcall/universal/agent/AgentApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/agent/AgentApi$Error;
    }
.end annotation


# virtual methods
.method public abstract createAuthorizationToken(Lcom/sightcall/universal/api/JsonApi$Wrapper;)Lretrofit2/Call;
    .param p1    # Lcom/sightcall/universal/api/JsonApi$Wrapper;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/registration/OldRegistration;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/registration/OldRegistration;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/vnd.api+json",
            "Content-Type: application/vnd.api+json; charset=UTF-8"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v2/authorization-tokens"
    .end annotation
.end method

.method public abstract createNotificationTest(Ljava/lang/String;Lcom/sightcall/universal/api/JsonApi$Wrapper;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Lcom/sightcall/universal/api/JsonApi$Wrapper;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/AgentPushNotificationTests;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/AgentPushNotificationTestsResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/vnd.api+json",
            "Content-Type: application/vnd.api+json; charset=UTF-8"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v3/agentPushNotificationTests"
    .end annotation
.end method

.method public abstract createPincode(Lcom/sightcall/universal/api/Headers$Authorization$Bearer;Lcom/sightcall/universal/api/JsonApi$Wrapper;)Lretrofit2/Call;
    .param p1    # Lcom/sightcall/universal/api/Headers$Authorization$Bearer;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Authorization-Token"
        .end annotation
    .end param
    .param p2    # Lcom/sightcall/universal/api/JsonApi$Wrapper;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/api/Headers$Authorization$Bearer;",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/Pincode;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/Pincode;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/vnd.api+json",
            "Content-Type: application/vnd.api+json; charset=UTF-8"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v2/pincodes"
    .end annotation
.end method

.method public abstract createProspect(Lcom/sightcall/universal/api/JsonApi$Wrapper;)Lretrofit2/Call;
    .param p1    # Lcom/sightcall/universal/api/JsonApi$Wrapper;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/Lead;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/Lead;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/vnd.api+json",
            "Content-Type: application/vnd.api+json; charset=UTF-8"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v2/prospects"
    .end annotation
.end method

.method public abstract createSession(Lcom/sightcall/universal/api/JsonApi$Wrapper;)Lretrofit2/Call;
    .param p1    # Lcom/sightcall/universal/api/JsonApi$Wrapper;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/registration/NewRegistrationRequest;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/registration/NewRegistrationResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/vnd.api+json",
            "Content-Type: application/vnd.api+json; charset=UTF-8"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v3/refreshTokens"
    .end annotation
.end method

.method public abstract createTemporaryToken(Lcom/sightcall/universal/api/JsonApi$Wrapper;)Lretrofit2/Call;
    .param p1    # Lcom/sightcall/universal/api/JsonApi$Wrapper;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/TemporaryToken;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/TemporaryToken;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/vnd.api+json",
            "Content-Type: application/vnd.api+json; charset=UTF-8"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v2/temporary-tokens"
    .end annotation
.end method

.method public abstract deleteAuthorizationToken(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "v2/authorization-tokens/{id}"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/vnd.api+json"
        }
    .end annotation
.end method

.method public abstract deleteNewToken(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "refreshTokensId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "v3/refreshTokens/{refreshTokensId}"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/vnd.api+json"
        }
    .end annotation
.end method

.method public abstract deletePincode(Lcom/sightcall/universal/api/Headers$Authorization$Bearer;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Lcom/sightcall/universal/api/Headers$Authorization$Bearer;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Authorization-Token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/api/Headers$Authorization$Bearer;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "v2/pincodes/{id}"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/vnd.api+json"
        }
    .end annotation
.end method

.method public abstract getConsent(Lcom/sightcall/universal/api/Headers$Authorization$Bearer;)Lretrofit2/Call;
    .param p1    # Lcom/sightcall/universal/api/Headers$Authorization$Bearer;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Authorization-Token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/api/Headers$Authorization$Bearer;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/Identity;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v2/identity?include=consent"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/vnd.api+json"
        }
    .end annotation
.end method

.method public abstract getPincode(Lcom/sightcall/universal/api/Headers$Authorization$Bearer;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Lcom/sightcall/universal/api/Headers$Authorization$Bearer;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Authorization-Token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/api/Headers$Authorization$Bearer;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/Pincode;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v2/pincodes/{id}?include=usecase,case-report"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/vnd.api+json"
        }
    .end annotation
.end method

.method public abstract getUsecase(Lcom/sightcall/universal/api/Headers$Authorization$Bearer;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Lcom/sightcall/universal/api/Headers$Authorization$Bearer;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Authorization-Token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/api/Headers$Authorization$Bearer;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/Usecase;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v2/usecases/{id}"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/vnd.api+json"
        }
    .end annotation
.end method

.method public abstract getUsecases(Lcom/sightcall/universal/api/Headers$Authorization$Bearer;)Lretrofit2/Call;
    .param p1    # Lcom/sightcall/universal/api/Headers$Authorization$Bearer;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Authorization-Token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/api/Headers$Authorization$Bearer;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "[",
            "Lcom/sightcall/universal/agent/Usecase;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v2/usecases"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/vnd.api+json"
        }
    .end annotation
.end method

.method public abstract refresh(Lcom/sightcall/universal/api/Headers$Authorization$Bearer;)Lretrofit2/Call;
    .param p1    # Lcom/sightcall/universal/api/Headers$Authorization$Bearer;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Authorization-Token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/api/Headers$Authorization$Bearer;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/Identity;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v2/identity?include=provider,consent,usecases,guest-product,guest-language,guest-location,guest-product.usecase,pincode,pincode.usecase,pincode.case-report,provider.customizations,usecases.customizations,ar-overlay-models,integrations"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/vnd.api+json"
        }
    .end annotation
.end method

.method public abstract refreshToken(Lcom/sightcall/universal/api/JsonApi$Wrapper;)Lretrofit2/Call;
    .param p1    # Lcom/sightcall/universal/api/JsonApi$Wrapper;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/registration/AccessTokensRequest;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/registration/AccessTokensResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/vnd.api+json",
            "Content-Type: application/vnd.api+json; charset=UTF-8"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v3/accessTokens"
    .end annotation
.end method

.method public abstract resendPincode(Lcom/sightcall/universal/api/Headers$Authorization$Bearer;Ljava/lang/String;Lcom/sightcall/universal/api/JsonApi$Wrapper;)Lretrofit2/Call;
    .param p1    # Lcom/sightcall/universal/api/Headers$Authorization$Bearer;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Authorization-Token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p3    # Lcom/sightcall/universal/api/JsonApi$Wrapper;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/api/Headers$Authorization$Bearer;",
            "Ljava/lang/String;",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/Pincode;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/Pincode;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/vnd.api+json",
            "Content-Type: application/vnd.api+json; charset=UTF-8"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "v2/pincodes/{id}"
    .end annotation
.end method

.method public abstract resendTemporaryToken(Ljava/lang/String;Lcom/sightcall/universal/api/JsonApi$Wrapper;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Lcom/sightcall/universal/api/JsonApi$Wrapper;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/TemporaryToken;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/TemporaryToken;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/vnd.api+json",
            "Content-Type: application/vnd.api+json; charset=UTF-8"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "v2/temporary-tokens/{id}"
    .end annotation
.end method

.method public abstract startRecording(Ljava/lang/String;Lcom/sightcall/universal/agent/recording/RecordingV3Request;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Lcom/sightcall/universal/agent/recording/RecordingV3Request;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sightcall/universal/agent/recording/RecordingV3Request;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/agent/recording/RecordingV3Response;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/vnd.api+json",
            "Content-Type: application/vnd.api+json; charset=UTF-8"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v3/recordingSessions"
    .end annotation
.end method

.method public abstract timeout()Lretrofit2/Call;
    .annotation runtime Lcom/sightcall/universal/agent/Timeout$Connect;
        unit = .enum Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
        value = 0xa
    .end annotation

    .annotation runtime Lcom/sightcall/universal/agent/Timeout$Read;
        unit = .enum Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
        value = 0xa
    .end annotation

    .annotation runtime Lcom/sightcall/universal/agent/Timeout$Write;
        unit = .enum Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
        value = 0xa
    .end annotation

    .annotation runtime Lcom/sightcall/universal/agent/Timeout;
        connect = 0xa
        read = 0xa
        unit = .enum Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
        write = 0xa
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "timeout"
    .end annotation
.end method

.method public abstract updateAgentInfos(Ljava/lang/String;Lcom/sightcall/universal/agent/AgentInfoRequestEntity;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Lcom/sightcall/universal/agent/AgentInfoRequestEntity;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sightcall/universal/agent/AgentInfoRequestEntity;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/vnd.api+json",
            "Content-Type: application/vnd.api+json; charset=UTF-8"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v3/agentInfos"
    .end annotation
.end method

.method public abstract updateIdentity(Lcom/sightcall/universal/api/Headers$Authorization$Bearer;Lcom/sightcall/universal/api/JsonApi$Wrapper;)Lretrofit2/Call;
    .param p1    # Lcom/sightcall/universal/api/Headers$Authorization$Bearer;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Authorization-Token"
        .end annotation
    .end param
    .param p2    # Lcom/sightcall/universal/api/JsonApi$Wrapper;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/api/Headers$Authorization$Bearer;",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/Identity;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/Identity;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/vnd.api+json",
            "Content-Type: application/vnd.api+json; charset=UTF-8"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "v2/identity"
    .end annotation
.end method

.method public abstract updatePushNotificationToken(Ljava/lang/String;Lcom/sightcall/universal/agent/pushnotification/UpdatePushNotificationRequest;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Lcom/sightcall/universal/agent/pushnotification/UpdatePushNotificationRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sightcall/universal/agent/pushnotification/UpdatePushNotificationRequest;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/vnd.api+json",
            "Content-Type: application/vnd.api+json; charset=UTF-8"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "v3/agents/me"
    .end annotation
.end method
