.class final Lcom/dynatrace/agent/communication/ResponseProcessorImpl$handleConfigResponse$2;
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
    c = "com.dynatrace.agent.communication.ResponseProcessorImpl$handleConfigResponse$2"
    f = "ResponseProcessorImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/dynatrace/agent/communication/ResponseProcessorImpl;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/communication/ResponseProcessorImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$handleConfigResponse$2;->c:Lcom/dynatrace/agent/communication/ResponseProcessorImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$handleConfigResponse$2;

    iget-object p0, p0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$handleConfigResponse$2;->c:Lcom/dynatrace/agent/communication/ResponseProcessorImpl;

    invoke-direct {v0, p0, p2}, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$handleConfigResponse$2;-><init>(Lcom/dynatrace/agent/communication/ResponseProcessorImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$handleConfigResponse$2;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$handleConfigResponse$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$handleConfigResponse$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$handleConfigResponse$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$handleConfigResponse$2;->b:Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;

    iget-object p0, v4, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;->a:Lcom/dynatrace/agent/communication/api/AgentState;

    sget-object p1, Lcom/dynatrace/agent/communication/api/AgentState$Disabled;->a:Lcom/dynatrace/agent/communication/api/AgentState$Disabled;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance v0, Lcom/dynatrace/agent/communication/CommunicationContext;

    sget-object p0, Lkotlin/time/Duration;->c:Lkotlin/time/Duration$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/dynatrace/agent/communication/CommunicationState$Waiting;

    const/4 p0, 0x1

    const/4 p1, 0x0

    invoke-direct {v3, p1, p0, p1}, Lcom/dynatrace/agent/communication/CommunicationState$Waiting;-><init>(Lcom/dynatrace/agent/communication/CommunicationState$ConnectionStatus;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/dynatrace/agent/communication/CommunicationContext;-><init>(JLcom/dynatrace/agent/communication/CommunicationState;Lcom/dynatrace/agent/communication/api/ServerDataUpdate;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_0
    const-string p0, "response handling: disable agent due to AgentState in config response"

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/dynatrace/agent/communication/CommunicationContext;

    sget-wide v1, Lcom/dynatrace/agent/communication/RetryManagerKt;->c:J

    sget-object v3, Lcom/dynatrace/agent/communication/CommunicationState$Inactive;->a:Lcom/dynatrace/agent/communication/CommunicationState$Inactive;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/dynatrace/agent/communication/CommunicationContext;-><init>(JLcom/dynatrace/agent/communication/CommunicationState;Lcom/dynatrace/agent/communication/api/ServerDataUpdate;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
