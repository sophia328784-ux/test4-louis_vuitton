.class final Lcom/dynatrace/agent/OneAgentEventDispatcher$dispatchEvent$3;
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
    c = "com.dynatrace.agent.OneAgentEventDispatcher$dispatchEvent$3"
    f = "OneAgentEventDispatcher.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic b:Lcom/dynatrace/agent/OneAgentEventDispatcher;

.field public final synthetic c:Lorg/json/JSONObject;

.field public final synthetic d:Lcom/dynatrace/agent/EventJsonPreparer$ValidationResult$Valid;

.field public final synthetic e:Lcom/dynatrace/agent/metrics/SessionInformationMetrics;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/OneAgentEventDispatcher;Lorg/json/JSONObject;Lcom/dynatrace/agent/EventJsonPreparer$ValidationResult$Valid;Lcom/dynatrace/agent/metrics/SessionInformationMetrics;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/agent/OneAgentEventDispatcher$dispatchEvent$3;->b:Lcom/dynatrace/agent/OneAgentEventDispatcher;

    iput-object p2, p0, Lcom/dynatrace/agent/OneAgentEventDispatcher$dispatchEvent$3;->c:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/dynatrace/agent/OneAgentEventDispatcher$dispatchEvent$3;->d:Lcom/dynatrace/agent/EventJsonPreparer$ValidationResult$Valid;

    iput-object p4, p0, Lcom/dynatrace/agent/OneAgentEventDispatcher$dispatchEvent$3;->e:Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/dynatrace/agent/OneAgentEventDispatcher$dispatchEvent$3;

    iget-object v3, p0, Lcom/dynatrace/agent/OneAgentEventDispatcher$dispatchEvent$3;->d:Lcom/dynatrace/agent/EventJsonPreparer$ValidationResult$Valid;

    iget-object v4, p0, Lcom/dynatrace/agent/OneAgentEventDispatcher$dispatchEvent$3;->e:Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    iget-object v1, p0, Lcom/dynatrace/agent/OneAgentEventDispatcher$dispatchEvent$3;->b:Lcom/dynatrace/agent/OneAgentEventDispatcher;

    iget-object v2, p0, Lcom/dynatrace/agent/OneAgentEventDispatcher$dispatchEvent$3;->c:Lorg/json/JSONObject;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/dynatrace/agent/OneAgentEventDispatcher$dispatchEvent$3;-><init>(Lcom/dynatrace/agent/OneAgentEventDispatcher;Lorg/json/JSONObject;Lcom/dynatrace/agent/EventJsonPreparer$ValidationResult$Valid;Lcom/dynatrace/agent/metrics/SessionInformationMetrics;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/dynatrace/agent/OneAgentEventDispatcher$dispatchEvent$3;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/agent/OneAgentEventDispatcher$dispatchEvent$3;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/dynatrace/agent/OneAgentEventDispatcher$dispatchEvent$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/dynatrace/agent/OneAgentEventDispatcher$dispatchEvent$3;->d:Lcom/dynatrace/agent/EventJsonPreparer$ValidationResult$Valid;

    iget-wide v2, p1, Lcom/dynatrace/agent/EventJsonPreparer$ValidationResult$Valid;->a:J

    sget-object v4, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    new-instance p1, Lcom/dynatrace/agent/events/enrichment/SessionInformationSupplier;

    iget-object v0, p0, Lcom/dynatrace/agent/OneAgentEventDispatcher$dispatchEvent$3;->e:Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    invoke-direct {p1, v0}, Lcom/dynatrace/agent/events/enrichment/SessionInformationSupplier;-><init>(Lcom/dynatrace/agent/metrics/SessionInformationMetrics;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v8, 0x0

    const/16 v9, 0x60

    iget-object v0, p0, Lcom/dynatrace/agent/OneAgentEventDispatcher$dispatchEvent$3;->b:Lcom/dynatrace/agent/OneAgentEventDispatcher;

    iget-object v1, p0, Lcom/dynatrace/agent/OneAgentEventDispatcher$dispatchEvent$3;->c:Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/dynatrace/agent/OneAgentEventDispatcher$dispatchEvent$3;->e:Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    const/4 v7, 0x0

    invoke-static/range {v0 .. v9}, Lcom/dynatrace/agent/OneAgentEventDispatcher;->g(Lcom/dynatrace/agent/OneAgentEventDispatcher;Lorg/json/JSONObject;JLjava/util/List;Ljava/util/List;Lcom/dynatrace/agent/metrics/SessionInformationMetrics;Lx60;Lcom/dynatrace/agent/events/enrichment/EnrichmentContext;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
