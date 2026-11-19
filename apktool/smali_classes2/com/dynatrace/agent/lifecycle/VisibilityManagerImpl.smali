.class public final Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/agent/lifecycle/VisibilityManager;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;",
        "Lcom/dynatrace/agent/lifecycle/VisibilityManager;",
        "Lcom/dynatrace/agent/common/time/TimeProvider;",
        "timeProvider",
        "Lcom/dynatrace/agent/OneAgentEventDispatcher;",
        "eventDispatcher",
        "Lcom/dynatrace/agent/di/SessionInformationProvider;",
        "sessionInformationProvider",
        "Lcom/dynatrace/agent/events/EventFlowGovernor;",
        "flowGovernor",
        "Lcom/dynatrace/agent/view/NavigationTracker;",
        "navigationTracker",
        "Lcom/dynatrace/agent/view/ViewContextManagerApi;",
        "viewContextManager",
        "Lcom/dynatrace/agent/useraction/UserActionController;",
        "userActionController",
        "<init>",
        "(Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/OneAgentEventDispatcher;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/events/EventFlowGovernor;Lcom/dynatrace/agent/view/NavigationTracker;Lcom/dynatrace/agent/view/ViewContextManagerApi;Lcom/dynatrace/agent/useraction/UserActionController;)V",
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
.field public final a:Lcom/dynatrace/agent/common/time/TimeProvider;

.field public final b:Lcom/dynatrace/agent/OneAgentEventDispatcher;

.field public final c:Lcom/dynatrace/agent/di/SessionInformationProvider;

.field public final d:Lcom/dynatrace/agent/events/EventFlowGovernor;

.field public final e:Lcom/dynatrace/agent/view/NavigationTracker;

.field public final f:Lcom/dynatrace/agent/view/ViewContextManagerApi;

.field public final g:Lcom/dynatrace/agent/useraction/UserActionController;

.field public final h:Ljava/util/LinkedHashSet;

.field public i:Z

.field public j:Lcom/dynatrace/agent/lifecycle/model/VisibilityStatus;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/OneAgentEventDispatcher;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/events/EventFlowGovernor;Lcom/dynatrace/agent/view/NavigationTracker;Lcom/dynatrace/agent/view/ViewContextManagerApi;Lcom/dynatrace/agent/useraction/UserActionController;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;->a:Lcom/dynatrace/agent/common/time/TimeProvider;

    iput-object p2, p0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;->b:Lcom/dynatrace/agent/OneAgentEventDispatcher;

    iput-object p3, p0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;->c:Lcom/dynatrace/agent/di/SessionInformationProvider;

    iput-object p4, p0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;->d:Lcom/dynatrace/agent/events/EventFlowGovernor;

    iput-object p5, p0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;->e:Lcom/dynatrace/agent/view/NavigationTracker;

    iput-object p6, p0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;->f:Lcom/dynatrace/agent/view/ViewContextManagerApi;

    iput-object p7, p0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;->g:Lcom/dynatrace/agent/useraction/UserActionController;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;->h:Ljava/util/LinkedHashSet;

    sget-object p1, Lcom/dynatrace/agent/lifecycle/model/VisibilityStatus;->BACKGROUND:Lcom/dynatrace/agent/lifecycle/model/VisibilityStatus;

    iput-object p1, p0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;->j:Lcom/dynatrace/agent/lifecycle/model/VisibilityStatus;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;->h:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;->i:Z

    if-nez p1, :cond_0

    sget-object p1, Lcom/dynatrace/agent/lifecycle/model/VisibilityStatus;->FOREGROUND:Lcom/dynatrace/agent/lifecycle/model/VisibilityStatus;

    iput-object p1, p0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;->j:Lcom/dynatrace/agent/lifecycle/model/VisibilityStatus;

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;->h:Ljava/util/LinkedHashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()Lcom/dynatrace/agent/lifecycle/model/VisibilityStatus;
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;->j:Lcom/dynatrace/agent/lifecycle/model/VisibilityStatus;

    return-object p0
.end method

.method public final d(IZ)V
    .locals 7

    iput-boolean p2, p0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;->i:Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, p0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;->h:Ljava/util/LinkedHashSet;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;->i:Z

    if-nez p1, :cond_3

    sget-object p1, Lcom/dynatrace/agent/lifecycle/model/VisibilityStatus;->BACKGROUND:Lcom/dynatrace/agent/lifecycle/model/VisibilityStatus;

    iput-object p1, p0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;->j:Lcom/dynatrace/agent/lifecycle/model/VisibilityStatus;

    iget-object p2, p0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;->c:Lcom/dynatrace/agent/di/SessionInformationProvider;

    invoke-interface {p2}, Lcom/dynatrace/agent/di/SessionInformationProvider;->a()Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    move-result-object v3

    iget-boolean p2, v3, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->c:Z

    if-nez p2, :cond_0

    const-string p0, "visibility event cannot be tracked, isGrailEventsCanBeCaptured == false"

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean p2, v3, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->e:Z

    if-nez p2, :cond_1

    const-string p0, "visibility event cannot be tracked, session is disabled"

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean p2, v3, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->g:Z

    if-nez p2, :cond_2

    const-string p0, "visibility event shouldn\'t be collected, because of data collection is disabled"

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p2, p0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;->a:Lcom/dynatrace/agent/common/time/TimeProvider;

    invoke-interface {p2}, Lcom/dynatrace/agent/common/time/TimeProvider;->a()J

    move-result-wide v4

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "characteristics.has_visibility_change"

    const/4 v0, 0x1

    invoke-virtual {v2, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "visibility.state"

    invoke-virtual {p1}, Lcom/dynatrace/agent/lifecycle/model/VisibilityStatus;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl$trackChangeToBackground$1;

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl$trackChangeToBackground$1;-><init>(Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;Lorg/json/JSONObject;Lcom/dynatrace/agent/metrics/SessionInformationMetrics;JLkotlin/coroutines/Continuation;)V

    iget-object p0, v1, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;->d:Lcom/dynatrace/agent/events/EventFlowGovernor;

    invoke-virtual {p0, v0}, Lcom/dynatrace/agent/events/EventFlowGovernor;->a(Lkotlin/jvm/functions/Function1;)V

    :cond_3
    return-void
.end method
