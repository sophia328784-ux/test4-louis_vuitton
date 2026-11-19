.class final Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl$trackChangeToBackground$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.dynatrace.agent.lifecycle.VisibilityManagerImpl$trackChangeToBackground$1"
    f = "VisibilityManagerImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic b:Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;

.field public final synthetic c:Lorg/json/JSONObject;

.field public final synthetic d:Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

.field public final synthetic e:J


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;Lorg/json/JSONObject;Lcom/dynatrace/agent/metrics/SessionInformationMetrics;JLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl$trackChangeToBackground$1;->b:Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;

    iput-object p2, p0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl$trackChangeToBackground$1;->c:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl$trackChangeToBackground$1;->d:Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    iput-wide p4, p0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl$trackChangeToBackground$1;->e:J

    const/4 p1, 0x1

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl$trackChangeToBackground$1;

    iget-object v3, p0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl$trackChangeToBackground$1;->d:Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    iget-wide v4, p0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl$trackChangeToBackground$1;->e:J

    iget-object v1, p0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl$trackChangeToBackground$1;->b:Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;

    iget-object v2, p0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl$trackChangeToBackground$1;->c:Lorg/json/JSONObject;

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl$trackChangeToBackground$1;-><init>(Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;Lorg/json/JSONObject;Lcom/dynatrace/agent/metrics/SessionInformationMetrics;JLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl$trackChangeToBackground$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl$trackChangeToBackground$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl$trackChangeToBackground$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl$trackChangeToBackground$1;->b:Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;

    iget-object p1, p1, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;->f:Lcom/dynatrace/agent/view/ViewContextManagerApi;

    invoke-interface {p1}, Lcom/dynatrace/agent/view/ViewContextManagerApi;->a()Lcom/dynatrace/agent/view/ViewContext;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl$trackChangeToBackground$1;->b:Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;

    iget-object p1, p1, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;->f:Lcom/dynatrace/agent/view/ViewContextManagerApi;

    invoke-interface {p1}, Lcom/dynatrace/agent/view/ViewContextManagerApi;->c()V

    :cond_0
    iget-object p1, p0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl$trackChangeToBackground$1;->b:Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;

    iget-object p1, p1, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;->e:Lcom/dynatrace/agent/view/NavigationTracker;

    iget-object p1, p1, Lcom/dynatrace/agent/view/NavigationTracker;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dynatrace/agent/view/NavigationEvent;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/dynatrace/agent/view/NavigationEvent;->g:Z

    invoke-virtual {p1}, Lcom/dynatrace/agent/view/NavigationEvent;->a()Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl$trackChangeToBackground$1;->c:Lorg/json/JSONObject;

    if-eqz p1, :cond_2

    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {v0, p1, v1}, Lcom/dynatrace/agent/events/enrichment/JsonObjectExtensionsKt;->f(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/List;)V

    goto :goto_1

    :cond_2
    iget-wide v1, p0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl$trackChangeToBackground$1;->e:J

    const-string p1, "start_time"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "duration"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_1
    iget-object p1, p0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl$trackChangeToBackground$1;->b:Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;

    iget-object p1, p1, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;->b:Lcom/dynatrace/agent/OneAgentEventDispatcher;

    iget-object v1, p0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl$trackChangeToBackground$1;->d:Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    invoke-virtual {p1, v0, v1}, Lcom/dynatrace/agent/OneAgentEventDispatcher;->f(Lorg/json/JSONObject;Lcom/dynatrace/agent/metrics/SessionInformationMetrics;)V

    iget-object p0, p0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl$trackChangeToBackground$1;->b:Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;

    iget-object p0, p0, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;->g:Lcom/dynatrace/agent/useraction/UserActionController;

    iget-object p1, p0, Lcom/dynatrace/agent/useraction/UserActionController;->c:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;

    invoke-interface {p1}, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;->b()Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    move-result-object p1

    iget-boolean p1, p1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->h:Z

    if-nez p1, :cond_3

    const-string p0, "onBackground: uaEnable=false, ignoring"

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/dynatrace/agent/useraction/UserActionController;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object p0, p0, Lcom/dynatrace/agent/useraction/UserActionController;->i:Lcom/dynatrace/agent/useraction/UserActionLifecycle;

    invoke-virtual {p0}, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method
