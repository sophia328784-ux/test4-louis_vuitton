.class final Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$1;
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
    c = "com.dynatrace.agent.communication.CommunicationManagerImpl$scheduleNextCommunicationAttempt$1"
    f = "CommunicationManagerImpl.kt"
    l = {
        0xa0
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/communication/CommunicationManagerImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$1;->c:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$1;

    iget-object p0, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$1;->c:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

    invoke-direct {v0, p0, p1}, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$1;-><init>(Lcom/dynatrace/agent/communication/CommunicationManagerImpl;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$1;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const-string p1, "DB is sanitized during Offline mode"

    invoke-static {p1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$1;->c:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

    iget-object p1, p1, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->b:Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;

    iput v2, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$1;->b:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v1, Lcom/dynatrace/agent/common/specification/OneAgentSpecification$RetentionSpecifications;->a:J

    invoke-static {v1, v2}, Lkotlin/time/Duration;->e(J)J

    move-result-wide v6

    iget-object v3, p1, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;->b:Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;

    iget-object p1, p1, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;->c:Lcom/dynatrace/agent/common/time/TimeProvider;

    invoke-interface {p1}, Lcom/dynatrace/agent/common/time/TimeProvider;->a()J

    move-result-wide v4

    move-object v8, p0

    invoke-interface/range {v3 .. v8}, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;->c(JJLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_0
    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
