.class final Lcom/dynatrace/agent/view/ViewContextManager$storeContext$1;
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
    c = "com.dynatrace.agent.view.ViewContextManager$storeContext$1"
    f = "ViewContextManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic b:Lcom/dynatrace/agent/view/ViewContextManager;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/view/ViewContextManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/agent/view/ViewContextManager$storeContext$1;->b:Lcom/dynatrace/agent/view/ViewContextManager;

    iput-object p2, p0, Lcom/dynatrace/agent/view/ViewContextManager$storeContext$1;->c:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/dynatrace/agent/view/ViewContextManager$storeContext$1;

    iget-object v1, p0, Lcom/dynatrace/agent/view/ViewContextManager$storeContext$1;->b:Lcom/dynatrace/agent/view/ViewContextManager;

    iget-object p0, p0, Lcom/dynatrace/agent/view/ViewContextManager$storeContext$1;->c:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p1}, Lcom/dynatrace/agent/view/ViewContextManager$storeContext$1;-><init>(Lcom/dynatrace/agent/view/ViewContextManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/dynatrace/agent/view/ViewContextManager$storeContext$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/agent/view/ViewContextManager$storeContext$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/dynatrace/agent/view/ViewContextManager$storeContext$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/dynatrace/agent/view/ViewContextManager$storeContext$1;->b:Lcom/dynatrace/agent/view/ViewContextManager;

    iget-object v0, p1, Lcom/dynatrace/agent/view/ViewContextManager;->c:Lcom/dynatrace/agent/view/ViewSummarizer;

    iget-object v0, v0, Lcom/dynatrace/agent/view/ViewSummarizer;->b:Lcom/dynatrace/agent/view/ViewContext;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/dynatrace/agent/view/ViewContextManager;->e:Lcom/dynatrace/agent/view/NavigationTracker;

    iget-object v2, v0, Lcom/dynatrace/agent/view/ViewContext;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/dynatrace/agent/view/ViewContext;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/dynatrace/agent/view/ViewContext;->a:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/dynatrace/agent/view/NavigationTracker;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/dynatrace/agent/view/NavigationEvent;

    :cond_0
    iget-object p1, p0, Lcom/dynatrace/agent/view/ViewContextManager$storeContext$1;->b:Lcom/dynatrace/agent/view/ViewContextManager;

    invoke-virtual {p1}, Lcom/dynatrace/agent/view/ViewContextManager;->f()V

    iget-object p1, p0, Lcom/dynatrace/agent/view/ViewContextManager$storeContext$1;->b:Lcom/dynatrace/agent/view/ViewContextManager;

    iget-object v0, p0, Lcom/dynatrace/agent/view/ViewContextManager$storeContext$1;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/dynatrace/agent/view/ViewContextManager;->c:Lcom/dynatrace/agent/view/ViewSummarizer;

    iget-object p1, p1, Lcom/dynatrace/agent/view/ViewContextManager;->b:Lcom/dynatrace/agent/common/time/TimeProvider;

    invoke-interface {p1}, Lcom/dynatrace/agent/common/time/TimeProvider;->a()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/dynatrace/agent/view/ViewSummarizer;->c:J

    iget p1, v2, Lcom/dynatrace/agent/view/ViewSummarizer;->e:I

    add-int/2addr p1, v1

    iput p1, v2, Lcom/dynatrace/agent/view/ViewSummarizer;->e:I

    new-instance v6, Lcom/dynatrace/agent/view/ViewContext;

    const/16 p1, 0x8

    invoke-static {p1}, Lcom/dynatrace/agent/util/HexGenerator;->a(I)Ljava/lang/String;

    move-result-object p1

    iget v3, v2, Lcom/dynatrace/agent/view/ViewSummarizer;->e:I

    const/4 v10, 0x0

    invoke-direct {v6, p1, v10, v0, v3}, Lcom/dynatrace/agent/view/ViewContext;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p1, v2, Lcom/dynatrace/agent/view/ViewSummarizer;->a:Lcom/dynatrace/agent/view/ViewContextHistory;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/dynatrace/agent/view/ViewContextHistory;->a:Lkotlin/collections/ArrayDeque;

    new-instance v3, Lcom/dynatrace/agent/view/ViewContextHistory$Entry;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/dynatrace/agent/view/ViewContextHistory$Entry;-><init>(JLcom/dynatrace/agent/view/ViewContext;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v3}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    sget-wide v7, Lcom/dynatrace/agent/common/specification/OneAgentSpecification$RetentionSpecifications;->a:J

    invoke-static {v7, v8}, Lkotlin/time/Duration;->e(J)J

    move-result-wide v7

    sub-long/2addr v4, v7

    :goto_0
    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dynatrace/agent/view/ViewContextHistory$Entry;

    iget-object v3, v3, Lcom/dynatrace/agent/view/ViewContextHistory$Entry;->c:Ljava/lang/Long;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v3, v7, v4

    if-gez v3, :cond_1

    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dynatrace/agent/view/ViewContextHistory$Entry;

    goto :goto_0

    :cond_1
    iput-object v6, v2, Lcom/dynatrace/agent/view/ViewSummarizer;->b:Lcom/dynatrace/agent/view/ViewContext;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "view context for view name=null detectedName="

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is created"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/dynatrace/agent/view/ViewContextManager$storeContext$1;->b:Lcom/dynatrace/agent/view/ViewContextManager;

    iget-object p1, p0, Lcom/dynatrace/agent/view/ViewContextManager;->e:Lcom/dynatrace/agent/view/NavigationTracker;

    iget-object p1, p1, Lcom/dynatrace/agent/view/NavigationTracker;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dynatrace/agent/view/NavigationEvent;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v0, p1, Lcom/dynatrace/agent/view/NavigationEvent;->g:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/dynatrace/agent/view/ViewContextManager;->c:Lcom/dynatrace/agent/view/ViewSummarizer;

    iget-object v0, v0, Lcom/dynatrace/agent/view/ViewSummarizer;->b:Lcom/dynatrace/agent/view/ViewContext;

    iput-object v0, p1, Lcom/dynatrace/agent/view/NavigationEvent;->f:Lcom/dynatrace/agent/view/ViewContext;

    iget-boolean v0, p1, Lcom/dynatrace/agent/view/NavigationEvent;->e:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/dynatrace/agent/view/ViewContextManager;->f:Lcom/dynatrace/agent/useraction/UserActionController;

    sget-object v2, Lcom/dynatrace/agent/useraction/SignificantEvent$Navigation;->a:Lcom/dynatrace/agent/useraction/SignificantEvent$Navigation;

    invoke-virtual {v0, v2}, Lcom/dynatrace/agent/useraction/UserActionController;->c(Lcom/dynatrace/agent/useraction/SignificantEvent;)V

    iput-boolean v1, p1, Lcom/dynatrace/agent/view/NavigationEvent;->g:Z

    invoke-virtual {p1}, Lcom/dynatrace/agent/view/NavigationEvent;->a()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/dynatrace/agent/view/ViewContextManager;->d:Lcom/dynatrace/agent/OneAgentEventDispatcher;

    invoke-virtual {v0, p1, v10}, Lcom/dynatrace/agent/OneAgentEventDispatcher;->f(Lorg/json/JSONObject;Lcom/dynatrace/agent/metrics/SessionInformationMetrics;)V

    iget-object p0, p0, Lcom/dynatrace/agent/view/ViewContextManager;->e:Lcom/dynatrace/agent/view/NavigationTracker;

    iget-object p0, p0, Lcom/dynatrace/agent/view/NavigationTracker;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v10}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const-string p0, "Navigation event dispatched"

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p0, "NavigationEvent could not be converted to JSON"

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
