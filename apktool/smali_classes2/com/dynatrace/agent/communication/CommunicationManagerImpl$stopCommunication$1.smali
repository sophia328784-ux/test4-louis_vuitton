.class final Lcom/dynatrace/agent/communication/CommunicationManagerImpl$stopCommunication$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
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
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.dynatrace.agent.communication.CommunicationManagerImpl$stopCommunication$1"
    f = "CommunicationManagerImpl.kt"
    l = {
        0xd6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/communication/CommunicationManagerImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$stopCommunication$1;->c:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$stopCommunication$1;

    iget-object p0, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$stopCommunication$1;->c:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

    invoke-direct {p1, p0, p2}, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$stopCommunication$1;-><init>(Lcom/dynatrace/agent/communication/CommunicationManagerImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$stopCommunication$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$stopCommunication$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$stopCommunication$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$stopCommunication$1;->b:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$stopCommunication$1;->c:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v3, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->m:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_2

    invoke-interface {p1, v2}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_2
    iget-object p1, v3, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->g:Lcom/dynatrace/agent/communication/RequestScheduler;

    iput v4, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$stopCommunication$1;->b:I

    iget-object p1, p1, Lcom/dynatrace/agent/communication/RequestScheduler;->b:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_4

    invoke-static {p1, p0}, Lkotlinx/coroutines/JobKt;->c(Lkotlinx/coroutines/Job;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_0
    if-ne p0, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    iget-object p0, v3, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->h:Lcom/dynatrace/agent/communication/CommunicationContextTaskScheduler;

    iget-object p1, p0, Lcom/dynatrace/agent/communication/CommunicationContextTaskScheduler;->c:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_6

    invoke-interface {p1, v2}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_6
    iput-object v2, p0, Lcom/dynatrace/agent/communication/CommunicationContextTaskScheduler;->c:Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
