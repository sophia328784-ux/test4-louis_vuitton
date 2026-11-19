.class final Lcom/dynatrace/agent/communication/ResponseProcessorImpl$handleDataResponse$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/dynatrace/agent/communication/api/ServerDataUpdate;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/dynatrace/agent/communication/CommunicationContext;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/dynatrace/agent/communication/CommunicationContext;",
        "serverDataUpdate",
        "Lcom/dynatrace/agent/communication/api/ServerDataUpdate;"
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
    c = "com.dynatrace.agent.communication.ResponseProcessorImpl$handleDataResponse$2"
    f = "ResponseProcessorImpl.kt"
    l = {
        0x86
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/dynatrace/agent/communication/ResponseProcessorImpl;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Z


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/communication/ResponseProcessorImpl;Ljava/util/List;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$handleDataResponse$2;->d:Lcom/dynatrace/agent/communication/ResponseProcessorImpl;

    iput-object p2, p0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$handleDataResponse$2;->e:Ljava/util/List;

    iput-boolean p3, p0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$handleDataResponse$2;->f:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$handleDataResponse$2;

    iget-object v1, p0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$handleDataResponse$2;->e:Ljava/util/List;

    iget-boolean v2, p0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$handleDataResponse$2;->f:Z

    iget-object p0, p0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$handleDataResponse$2;->d:Lcom/dynatrace/agent/communication/ResponseProcessorImpl;

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$handleDataResponse$2;-><init>(Lcom/dynatrace/agent/communication/ResponseProcessorImpl;Ljava/util/List;ZLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$handleDataResponse$2;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$handleDataResponse$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$handleDataResponse$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$handleDataResponse$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$handleDataResponse$2;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$handleDataResponse$2;->c:Ljava/lang/Object;

    check-cast p1, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;

    iput v2, p0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$handleDataResponse$2;->b:I

    iget-object v1, p0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$handleDataResponse$2;->d:Lcom/dynatrace/agent/communication/ResponseProcessorImpl;

    iget-object v2, p0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$handleDataResponse$2;->e:Ljava/util/List;

    iget-boolean v3, p0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$handleDataResponse$2;->f:Z

    invoke-static {v1, p1, v2, v3, p0}, Lcom/dynatrace/agent/communication/ResponseProcessorImpl;->d(Lcom/dynatrace/agent/communication/ResponseProcessorImpl;Lcom/dynatrace/agent/communication/api/ServerDataUpdate;Ljava/util/List;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method
