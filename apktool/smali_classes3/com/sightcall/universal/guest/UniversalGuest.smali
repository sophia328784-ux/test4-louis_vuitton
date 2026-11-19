.class public Lcom/sightcall/universal/guest/UniversalGuest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/guest/UniversalGuest$RequestAgentCallback;,
        Lcom/sightcall/universal/guest/UniversalGuest$CancelAgentCallback;,
        Lcom/sightcall/universal/guest/UniversalGuest$NotifyAgentCallback;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/guest/UniversalGuest;->context:Landroid/content/Context;

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/rtccloud/sdk/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private api(Lcom/sightcall/universal/model/Config;)Lcom/sightcall/universal/guest/GuestApi;
    .locals 0

    .line 13
    const-class p0, Lcom/sightcall/universal/guest/GuestApi;

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Config;->environment()Lcom/sightcall/universal/api/Environment;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sightcall/universal/api/Apis;->get(Ljava/lang/Class;Lcom/sightcall/universal/api/Environment;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/guest/GuestApi;

    return-object p0
.end method

.method private api(Lcom/sightcall/universal/model/Session;)Lcom/sightcall/universal/guest/GuestApi;
    .locals 0

    const-class p0, Lcom/sightcall/universal/guest/GuestApi;

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Session;->environment()Lcom/sightcall/universal/api/Environment;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sightcall/universal/api/Apis;->get(Ljava/lang/Class;Lcom/sightcall/universal/api/Environment;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/guest/GuestApi;

    return-object p0
.end method


# virtual methods
.method public cancelAgent(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/guest/HttpAcdRequest;Lcom/sightcall/universal/guest/UniversalGuest$CancelAgentCallback;)V
    .locals 5

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->hash()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/api/Headers$Authorization$TokenReference;->with(Ljava/lang/String;)Lcom/sightcall/universal/api/Headers$Authorization$TokenReference;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sightcall/universal/guest/HttpAcdRequest;->id()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sightcall/universal/guest/AgentHttpAcd$Cancel;

    invoke-direct {v2, v1}, Lcom/sightcall/universal/guest/AgentHttpAcd$Cancel;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sightcall/universal/guest/HttpAcdRequest;->partner()Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    sget-object v4, Lokhttp3/HttpUrl;->j:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-static {p2}, Lokhttp3/HttpUrl$Companion;->c(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-direct {p0, p1}, Lcom/sightcall/universal/guest/UniversalGuest;->api(Lcom/sightcall/universal/model/Session;)Lcom/sightcall/universal/guest/GuestApi;

    move-result-object p1

    if-eqz v3, :cond_1

    invoke-interface {p1, v0, v3, v2}, Lcom/sightcall/universal/guest/GuestApi;->cancelAgent(Lcom/sightcall/universal/api/Headers$Authorization$TokenReference;Lokhttp3/HttpUrl;Lcom/sightcall/universal/guest/AgentHttpAcd$Cancel;)Lretrofit2/Call;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-interface {p1, v0, v1, v2}, Lcom/sightcall/universal/guest/GuestApi;->cancelAgent(Lcom/sightcall/universal/api/Headers$Authorization$TokenReference;Ljava/lang/String;Lcom/sightcall/universal/guest/AgentHttpAcd$Cancel;)Lretrofit2/Call;

    move-result-object p1

    :goto_0
    new-instance p2, Lcom/sightcall/universal/guest/UniversalGuest$2;

    invoke-direct {p2, p0, p3}, Lcom/sightcall/universal/guest/UniversalGuest$2;-><init>(Lcom/sightcall/universal/guest/UniversalGuest;Lcom/sightcall/universal/guest/UniversalGuest$CancelAgentCallback;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V

    return-void
.end method

.method public notifyAgent(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/guest/UniversalGuest$NotifyAgentCallback;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sightcall/universal/guest/UniversalGuest;->api(Lcom/sightcall/universal/model/Session;)Lcom/sightcall/universal/guest/GuestApi;

    move-result-object v0

    iget-object v1, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v1}, Lcom/sightcall/universal/model/Config;->hash()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sightcall/universal/api/Headers$Authorization$Bearer;->with(Ljava/lang/String;)Lcom/sightcall/universal/api/Headers$Authorization$Bearer;

    move-result-object v1

    invoke-static {p1}, Lcom/sightcall/universal/guest/Calls;->ready(Lcom/sightcall/universal/model/Session;)Lcom/sightcall/universal/guest/Calls;

    move-result-object p1

    invoke-static {p1}, Lcom/sightcall/universal/api/JsonApi;->wrap(Ljava/lang/Object;)Lcom/sightcall/universal/api/JsonApi$Wrapper;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/sightcall/universal/guest/GuestApi;->calls(Lcom/sightcall/universal/api/Headers$Authorization$Bearer;Lcom/sightcall/universal/api/JsonApi$Wrapper;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/sightcall/universal/guest/UniversalGuest$3;

    invoke-direct {v0, p0, p2}, Lcom/sightcall/universal/guest/UniversalGuest$3;-><init>(Lcom/sightcall/universal/guest/UniversalGuest;Lcom/sightcall/universal/guest/UniversalGuest$NotifyAgentCallback;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V

    return-void
.end method

.method public requestAgent(Lcom/sightcall/universal/model/Session;Ljava/lang/String;Lcom/sightcall/universal/guest/UniversalGuest$RequestAgentCallback;)V
    .locals 10

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    iget-object v1, p1, Lcom/sightcall/universal/model/Session;->rtccJwt:Ljava/lang/String;

    invoke-static {v1}, Lcom/sightcall/pratik/utils/JWTUtilsKt;->getUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, v0, Lcom/sightcall/universal/agent/Usecase;->productId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    move v7, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Usecase;->idInt()I

    move-result v6

    new-instance v2, Lcom/sightcall/universal/guest/AgentHttpAcd$Request;

    iget-object v3, p0, Lcom/sightcall/universal/guest/UniversalGuest;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Session;->reference()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Session;->caseReportId()Ljava/lang/String;

    move-result-object v9

    move-object v4, p2

    invoke-direct/range {v2 .. v9}, Lcom/sightcall/universal/guest/AgentHttpAcd$Request;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    iget-object p2, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p2}, Lcom/sightcall/universal/model/Config;->hash()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sightcall/universal/api/Headers$Authorization$TokenReference;->with(Ljava/lang/String;)Lcom/sightcall/universal/api/Headers$Authorization$TokenReference;

    move-result-object p2

    sget-object v0, Lokhttp3/HttpUrl;->j:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lokhttp3/HttpUrl$Companion;->d(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/guest/UniversalGuest;->api(Lcom/sightcall/universal/model/Session;)Lcom/sightcall/universal/guest/GuestApi;

    move-result-object p1

    if-eqz v0, :cond_1

    invoke-interface {p1, p2, v0, v2}, Lcom/sightcall/universal/guest/GuestApi;->requestAgent(Lcom/sightcall/universal/api/Headers$Authorization$TokenReference;Lokhttp3/HttpUrl;Lcom/sightcall/universal/guest/AgentHttpAcd$Request;)Lretrofit2/Call;

    move-result-object p1

    goto :goto_2

    :cond_1
    invoke-interface {p1, p2, v2}, Lcom/sightcall/universal/guest/GuestApi;->requestAgent(Lcom/sightcall/universal/api/Headers$Authorization$TokenReference;Lcom/sightcall/universal/guest/AgentHttpAcd$Request;)Lretrofit2/Call;

    move-result-object p1

    :goto_2
    new-instance p2, Lcom/sightcall/universal/guest/UniversalGuest$1;

    invoke-direct {p2, p0, p3}, Lcom/sightcall/universal/guest/UniversalGuest$1;-><init>(Lcom/sightcall/universal/guest/UniversalGuest;Lcom/sightcall/universal/guest/UniversalGuest$RequestAgentCallback;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V

    return-void
.end method
