.class Lcom/sightcall/universal/scenario/steps/FetchReferenceStep$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;->onServiceConnected(Lcom/sightcall/universal/scenario/ScenarioService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/Continuation<",
        "Lcom/sightcall/pratik/Result<",
        "Lcom/sightcall/session/Reference;",
        "Lkotlin/Unit;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;

.field final synthetic val$service:Lcom/sightcall/universal/scenario/ScenarioService;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;Lcom/sightcall/universal/scenario/ScenarioService;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep$1;->this$0:Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;

    iput-object p2, p0, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep$1;->val$service:Lcom/sightcall/universal/scenario/ScenarioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    sget-object p0, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    return-object p0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Lcom/sightcall/pratik/Result;

    instance-of v0, p1, Lcom/sightcall/pratik/Result$Success;

    const-string v1, "Unable to get reference"

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sightcall/pratik/Result$Success;

    :try_start_0
    invoke-virtual {p1}, Lcom/sightcall/pratik/Result$Success;->getSuccess()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sightcall/session/Reference;

    iget-object v0, p1, Lcom/sightcall/session/Reference;->useCase:Lcom/sightcall/session/Reference$UseCase;

    iget-object v0, v0, Lcom/sightcall/session/Reference$UseCase;->analytics:Lcom/sightcall/session/Reference$UseCase$Analytics;

    iget-object v2, p0, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep$1;->val$service:Lcom/sightcall/universal/scenario/ScenarioService;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sightcall.agent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep$1;->this$0:Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;

    new-instance v4, Lcom/sightcall/universal/model/Session;

    invoke-static {v3}, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;->c(Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;)Lcom/sightcall/universal/model/Config;

    move-result-object v5

    invoke-direct {v4, v5, p1, v2}, Lcom/sightcall/universal/model/Session;-><init>(Lcom/sightcall/universal/model/Config;Lcom/sightcall/session/Reference;Z)V

    invoke-virtual {v3, v4}, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;->onFetchReferenceSuccess(Lcom/sightcall/universal/model/Session;)V

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p1

    iget-object v2, v0, Lcom/sightcall/session/Reference$UseCase$Analytics;->uploadUrl:Ljava/net/URL;

    iget-object v0, v0, Lcom/sightcall/session/Reference$UseCase$Analytics;->token:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Lnet/rtccloud/sdk/Rtcc;->setupAnalytics(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-virtual {v0, v1, p1}, Lcom/sightcall/pratik/logs/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep$1;->this$0:Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;->onFetchReferenceFailure()V

    return-void

    :cond_0
    instance-of p1, p1, Lcom/sightcall/pratik/Result$Error;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-virtual {p1, v1}, Lcom/sightcall/pratik/logs/Logger;->e(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep$1;->this$0:Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;->onFetchReferenceFailure()V

    :cond_1
    return-void
.end method
