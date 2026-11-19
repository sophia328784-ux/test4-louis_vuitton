.class public final Lcom/dynatrace/agent/OneAgentFacade;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/agent/ViewContextApi;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/dynatrace/agent/OneAgentFacade;",
        "Lcom/dynatrace/agent/ViewContextApi;",
        "Lcom/dynatrace/agent/di/SessionInformationProvider;",
        "sessionInformationProvider",
        "Lcom/dynatrace/agent/view/ViewContextManagerApi;",
        "viewContextManager",
        "Lcom/dynatrace/agent/RumEventDispatcher;",
        "eventDispatcher",
        "Lcom/dynatrace/agent/useraction/UserActionController;",
        "userActionController",
        "<init>",
        "(Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/view/ViewContextManagerApi;Lcom/dynatrace/agent/RumEventDispatcher;Lcom/dynatrace/agent/useraction/UserActionController;)V",
        "com.dynatrace.agent_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/dynatrace/agent/di/SessionInformationProvider;

.field public final b:Lcom/dynatrace/agent/view/ViewContextManagerApi;

.field public final c:Lcom/dynatrace/agent/RumEventDispatcher;

.field public final d:Lcom/dynatrace/agent/useraction/UserActionController;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/view/ViewContextManagerApi;Lcom/dynatrace/agent/RumEventDispatcher;Lcom/dynatrace/agent/useraction/UserActionController;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/OneAgentFacade;->a:Lcom/dynatrace/agent/di/SessionInformationProvider;

    iput-object p2, p0, Lcom/dynatrace/agent/OneAgentFacade;->b:Lcom/dynatrace/agent/view/ViewContextManagerApi;

    iput-object p3, p0, Lcom/dynatrace/agent/OneAgentFacade;->c:Lcom/dynatrace/agent/RumEventDispatcher;

    iput-object p4, p0, Lcom/dynatrace/agent/OneAgentFacade;->d:Lcom/dynatrace/agent/useraction/UserActionController;

    return-void
.end method


# virtual methods
.method public final a(JLcom/dynatrace/agent/metrics/SessionInformationMetrics;Lorg/json/JSONObject;Z)V
    .locals 6

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "dispatchEvent: event cannot be sent on this session, sessionInfo: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/dynatrace/agent/OneAgentFacade;->c:Lcom/dynatrace/agent/RumEventDispatcher;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/dynatrace/agent/RumEventDispatcher;->a(JLcom/dynatrace/agent/metrics/SessionInformationMetrics;Lorg/json/JSONObject;Z)V

    return-void
.end method
