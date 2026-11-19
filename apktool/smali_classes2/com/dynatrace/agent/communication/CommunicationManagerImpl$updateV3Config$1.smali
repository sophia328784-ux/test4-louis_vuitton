.class final Lcom/dynatrace/agent/communication/CommunicationManagerImpl$updateV3Config$1;
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
    c = "com.dynatrace.agent.communication.CommunicationManagerImpl$updateV3Config$1"
    f = "CommunicationManagerImpl.kt"
    l = {
        0x73
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

.field public final synthetic d:Lcom/dynatrace/android/agent/conf/ServerConfiguration;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/communication/CommunicationManagerImpl;Lcom/dynatrace/android/agent/conf/ServerConfiguration;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$updateV3Config$1;->c:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

    iput-object p2, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$updateV3Config$1;->d:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$updateV3Config$1;

    iget-object v0, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$updateV3Config$1;->c:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

    iget-object p0, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$updateV3Config$1;->d:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    invoke-direct {p1, v0, p0, p2}, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$updateV3Config$1;-><init>(Lcom/dynatrace/agent/communication/CommunicationManagerImpl;Lcom/dynatrace/android/agent/conf/ServerConfiguration;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$updateV3Config$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$updateV3Config$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$updateV3Config$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$updateV3Config$1;->b:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$updateV3Config$1;->d:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

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

    iget-object p1, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$updateV3Config$1;->c:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

    iget-object p1, p1, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->l:Lcom/dynatrace/agent/communication/ServerDataMaintainer;

    if-eqz p1, :cond_4

    iput v4, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$updateV3Config$1;->b:I

    const/4 v1, 0x0

    invoke-virtual {p1, v3, v1, p0}, Lcom/dynatrace/agent/communication/ServerDataMaintainer;->a(Lcom/dynatrace/android/agent/conf/ServerConfiguration;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

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
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "received external config v3 update: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_4
    const-string p0, "serverDataMaintainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2
.end method
