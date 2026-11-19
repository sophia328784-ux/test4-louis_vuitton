.class final Lcom/sightcall/universal/scenario/steps/FetchAnalyticsAgentSessionKt$getAnalyticsAgentSession$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/scenario/steps/FetchAnalyticsAgentSessionKt;->getAnalyticsAgentSession(Lcom/sightcall/analyticsagentsession/AnalyticsAgentSessionRepository;Lcom/sightcall/universal/model/Session;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.sightcall.universal.scenario.steps.FetchAnalyticsAgentSessionKt$getAnalyticsAgentSession$1"
    f = "FetchAnalyticsAgentSession.kt"
    l = {
        0x13
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field final synthetic $analyticsAgentSessionRepository:Lcom/sightcall/analyticsagentsession/AnalyticsAgentSessionRepository;

.field final synthetic $next:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $session:Lcom/sightcall/universal/model/Session;

.field label:I


# direct methods
.method public constructor <init>(Lcom/sightcall/analyticsagentsession/AnalyticsAgentSessionRepository;Lcom/sightcall/universal/model/Session;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/analyticsagentsession/AnalyticsAgentSessionRepository;",
            "Lcom/sightcall/universal/model/Session;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sightcall/universal/scenario/steps/FetchAnalyticsAgentSessionKt$getAnalyticsAgentSession$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/scenario/steps/FetchAnalyticsAgentSessionKt$getAnalyticsAgentSession$1;->$analyticsAgentSessionRepository:Lcom/sightcall/analyticsagentsession/AnalyticsAgentSessionRepository;

    iput-object p2, p0, Lcom/sightcall/universal/scenario/steps/FetchAnalyticsAgentSessionKt$getAnalyticsAgentSession$1;->$session:Lcom/sightcall/universal/model/Session;

    iput-object p3, p0, Lcom/sightcall/universal/scenario/steps/FetchAnalyticsAgentSessionKt$getAnalyticsAgentSession$1;->$next:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/sightcall/universal/scenario/steps/FetchAnalyticsAgentSessionKt$getAnalyticsAgentSession$1;

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/FetchAnalyticsAgentSessionKt$getAnalyticsAgentSession$1;->$analyticsAgentSessionRepository:Lcom/sightcall/analyticsagentsession/AnalyticsAgentSessionRepository;

    iget-object v1, p0, Lcom/sightcall/universal/scenario/steps/FetchAnalyticsAgentSessionKt$getAnalyticsAgentSession$1;->$session:Lcom/sightcall/universal/model/Session;

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/FetchAnalyticsAgentSessionKt$getAnalyticsAgentSession$1;->$next:Lkotlin/jvm/functions/Function0;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/sightcall/universal/scenario/steps/FetchAnalyticsAgentSessionKt$getAnalyticsAgentSession$1;-><init>(Lcom/sightcall/analyticsagentsession/AnalyticsAgentSessionRepository;Lcom/sightcall/universal/model/Session;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/universal/scenario/steps/FetchAnalyticsAgentSessionKt$getAnalyticsAgentSession$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/universal/scenario/steps/FetchAnalyticsAgentSessionKt$getAnalyticsAgentSession$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/scenario/steps/FetchAnalyticsAgentSessionKt$getAnalyticsAgentSession$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/scenario/steps/FetchAnalyticsAgentSessionKt$getAnalyticsAgentSession$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/sightcall/universal/scenario/steps/FetchAnalyticsAgentSessionKt$getAnalyticsAgentSession$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sightcall/universal/scenario/steps/FetchAnalyticsAgentSessionKt$getAnalyticsAgentSession$1;->$analyticsAgentSessionRepository:Lcom/sightcall/analyticsagentsession/AnalyticsAgentSessionRepository;

    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sightcall/universal/agent/Agent;->token()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lcom/sightcall/universal/scenario/steps/FetchAnalyticsAgentSessionKt$getAnalyticsAgentSession$1;->$session:Lcom/sightcall/universal/model/Session;

    invoke-virtual {v4}, Lcom/sightcall/universal/model/Session;->caseReportId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v3, p0, Lcom/sightcall/universal/scenario/steps/FetchAnalyticsAgentSessionKt$getAnalyticsAgentSession$1;->label:I

    invoke-interface {p1, v1, v4, p0}, Lcom/sightcall/analyticsagentsession/AnalyticsAgentSessionRepository;->getAgentSession(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    check-cast p1, Lcom/sightcall/pratik/Result;

    instance-of v0, p1, Lcom/sightcall/pratik/Result$Error;

    if-eqz v0, :cond_4

    sget-object p1, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-virtual {p1}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    goto :goto_2

    :cond_4
    instance-of v0, p1, Lcom/sightcall/pratik/Result$Success;

    if-eqz v0, :cond_5

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    check-cast p1, Lcom/sightcall/pratik/Result$Success;

    invoke-virtual {p1}, Lcom/sightcall/pratik/Result$Success;->getSuccess()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sightcall/analyticsagentsession/AnalyticsAgentSession;

    invoke-virtual {v1}, Lcom/sightcall/analyticsagentsession/AnalyticsAgentSession;->getUploadUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sightcall/pratik/Result$Success;->getSuccess()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sightcall/analyticsagentsession/AnalyticsAgentSession;

    invoke-virtual {p1}, Lcom/sightcall/analyticsagentsession/AnalyticsAgentSession;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lnet/rtccloud/sdk/Rtcc;->setupAnalytics(Ljava/net/URL;Ljava/lang/String;)V

    :goto_2
    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/FetchAnalyticsAgentSessionKt$getAnalyticsAgentSession$1;->$next:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_5
    invoke-static {}, Lv40;->g()V

    return-object v2
.end method
