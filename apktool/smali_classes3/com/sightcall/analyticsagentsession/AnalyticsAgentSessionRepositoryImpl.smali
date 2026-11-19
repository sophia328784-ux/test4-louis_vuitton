.class public final Lcom/sightcall/analyticsagentsession/AnalyticsAgentSessionRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/analyticsagentsession/AnalyticsAgentSessionRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J*\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0096@\u00a2\u0006\u0002\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/sightcall/analyticsagentsession/AnalyticsAgentSessionRepositoryImpl;",
        "Lcom/sightcall/analyticsagentsession/AnalyticsAgentSessionRepository;",
        "agentSessionDataSource",
        "Lcom/sightcall/analyticsagentsession/datasource/AgentSessionDataSource;",
        "<init>",
        "(Lcom/sightcall/analyticsagentsession/datasource/AgentSessionDataSource;)V",
        "getAgentSession",
        "Lcom/sightcall/pratik/Result;",
        "Lcom/sightcall/analyticsagentsession/AnalyticsAgentSession;",
        "",
        "token",
        "",
        "caseReportId",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final agentSessionDataSource:Lcom/sightcall/analyticsagentsession/datasource/AgentSessionDataSource;


# direct methods
.method public constructor <init>(Lcom/sightcall/analyticsagentsession/datasource/AgentSessionDataSource;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/analyticsagentsession/AnalyticsAgentSessionRepositoryImpl;->agentSessionDataSource:Lcom/sightcall/analyticsagentsession/datasource/AgentSessionDataSource;

    return-void
.end method


# virtual methods
.method public getAgentSession(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    iget-object p0, p0, Lcom/sightcall/analyticsagentsession/AnalyticsAgentSessionRepositoryImpl;->agentSessionDataSource:Lcom/sightcall/analyticsagentsession/datasource/AgentSessionDataSource;

    invoke-interface {p0, p1, p2, p3}, Lcom/sightcall/analyticsagentsession/datasource/AgentSessionDataSource;->getSession(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
