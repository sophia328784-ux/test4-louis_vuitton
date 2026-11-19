.class public final Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionDataSourceV3Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/analyticsagentsession/datasource/AgentSessionDataSource;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J*\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0096@\u00a2\u0006\u0002\u0010\rJ$\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u000f2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionDataSourceV3Impl;",
        "Lcom/sightcall/analyticsagentsession/datasource/AgentSessionDataSource;",
        "agentSessionsApi",
        "Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionsApi;",
        "<init>",
        "(Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionsApi;)V",
        "getSession",
        "Lcom/sightcall/pratik/Result;",
        "Lcom/sightcall/analyticsagentsession/AnalyticsAgentSession;",
        "",
        "token",
        "",
        "caseReportId",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "tryGetSession",
        "Lcom/sightcall/pratik/Result$Success;",
        "analyticsagentsession_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final agentSessionsApi:Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionsApi;


# direct methods
.method public constructor <init>(Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionsApi;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionDataSourceV3Impl;->agentSessionsApi:Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionsApi;

    return-void
.end method

.method private final tryGetSession(Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/pratik/Result$Success;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sightcall/pratik/Result$Success<",
            "Lcom/sightcall/analyticsagentsession/AnalyticsAgentSession;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sightcall/pratik/exceptions/NotSuccessfulResponseException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionDataSourceV3Impl;->agentSessionsApi:Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionsApi;

    new-instance v0, Lcom/sightcall/httpclient/SightCallHeaders$Authorization$Token;

    invoke-direct {v0, p1}, Lcom/sightcall/httpclient/SightCallHeaders$Authorization$Token;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity;->Companion:Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Companion;

    invoke-virtual {p1, p2}, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity$Companion;->create(Ljava/lang/String;)Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionsApi;->getSession(Lcom/sightcall/httpclient/SightCallHeaders$Authorization$Token;Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity;)Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    iget-object p1, p0, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean p1, p1, Lokhttp3/Response;->r:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lretrofit2/Response;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity;

    invoke-static {p0}, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionMappersKt;->toAnalyticsAgentSession(Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity;)Lcom/sightcall/analyticsagentsession/AnalyticsAgentSession;

    move-result-object p0

    new-instance p1, Lcom/sightcall/pratik/Result$Success;

    invoke-direct {p1, p0}, Lcom/sightcall/pratik/Result$Success;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/sightcall/pratik/exceptions/NotSuccessfulResponseException;

    iget-object p2, p0, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget p2, p2, Lokhttp3/Response;->e:I

    iget-object p0, p0, Lretrofit2/Response;->c:Lokhttp3/ResponseBody;

    invoke-direct {p1, p2, p0}, Lcom/sightcall/pratik/exceptions/NotSuccessfulResponseException;-><init>(ILokhttp3/ResponseBody;)V

    throw p1
.end method


# virtual methods
.method public getSession(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/analyticsagentsession/AnalyticsAgentSession;",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionDataSourceV3Impl;->tryGetSession(Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/pratik/Result$Success;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sightcall/pratik/exceptions/NotSuccessfulResponseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionMappingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-virtual {p0}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    new-instance p0, Lcom/sightcall/pratik/Result$Error;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-direct {p0, p1}, Lcom/sightcall/pratik/Result$Error;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    sget-object p0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-virtual {p0}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    new-instance p0, Lcom/sightcall/pratik/Result$Error;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-direct {p0, p1}, Lcom/sightcall/pratik/Result$Error;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    sget-object p0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-virtual {p0}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    new-instance p0, Lcom/sightcall/pratik/Result$Error;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-direct {p0, p1}, Lcom/sightcall/pratik/Result$Error;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :catch_3
    sget-object p0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-virtual {p0}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    new-instance p0, Lcom/sightcall/pratik/Result$Error;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-direct {p0, p1}, Lcom/sightcall/pratik/Result$Error;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method
