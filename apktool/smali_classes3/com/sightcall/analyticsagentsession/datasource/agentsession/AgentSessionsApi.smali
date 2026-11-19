.class public interface abstract Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionsApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008`\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0008H\'\u00a8\u0006\t\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionsApi;",
        "",
        "getSession",
        "Lretrofit2/Call;",
        "Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity;",
        "authorization",
        "Lcom/sightcall/httpclient/SightCallHeaders$Authorization$Token;",
        "body",
        "Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity;",
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


# virtual methods
.method public abstract getSession(Lcom/sightcall/httpclient/SightCallHeaders$Authorization$Token;Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity;)Lretrofit2/Call;
    .param p1    # Lcom/sightcall/httpclient/SightCallHeaders$Authorization$Token;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/httpclient/SightCallHeaders$Authorization$Token;",
            "Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionRequestEntity;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v3/analyticsSessions"
    .end annotation
.end method
