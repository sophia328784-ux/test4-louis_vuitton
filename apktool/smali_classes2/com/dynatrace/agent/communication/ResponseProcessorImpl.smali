.class public final Lcom/dynatrace/agent/communication/ResponseProcessorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/agent/communication/ResponseProcessor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/dynatrace/agent/communication/ResponseProcessorImpl;",
        "Lcom/dynatrace/agent/communication/ResponseProcessor;",
        "Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;",
        "eventDatabase",
        "Lcom/dynatrace/agent/common/time/TimeProvider;",
        "timeProvider",
        "<init>",
        "(Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;Lcom/dynatrace/agent/common/time/TimeProvider;)V",
        "com.dynatrace.agent_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;

.field public final b:Lcom/dynatrace/agent/common/time/TimeProvider;

.field public c:J


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;Lcom/dynatrace/agent/common/time/TimeProvider;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl;->a:Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;

    iput-object p2, p0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl;->b:Lcom/dynatrace/agent/common/time/TimeProvider;

    return-void
.end method

.method public static final d(Lcom/dynatrace/agent/communication/ResponseProcessorImpl;Lcom/dynatrace/agent/communication/api/ServerDataUpdate;Ljava/util/List;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p4, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$contextForValidDataRequestResponse$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$contextForValidDataRequestResponse$1;

    iget v1, v0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$contextForValidDataRequestResponse$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$contextForValidDataRequestResponse$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$contextForValidDataRequestResponse$1;

    invoke-direct {v0, p0, p4}, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$contextForValidDataRequestResponse$1;-><init>(Lcom/dynatrace/agent/communication/ResponseProcessorImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p4, v0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$contextForValidDataRequestResponse$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$contextForValidDataRequestResponse$1;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-ne v2, v4, :cond_2

    iget-boolean p3, v0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$contextForValidDataRequestResponse$1;->c:Z

    iget-object p1, v0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$contextForValidDataRequestResponse$1;->b:Lcom/dynatrace/agent/communication/api/ServerDataUpdate;

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :cond_1
    move-object v9, p1

    goto :goto_1

    :cond_2
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl;->a:Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;

    iput-object p1, v0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$contextForValidDataRequestResponse$1;->b:Lcom/dynatrace/agent/communication/api/ServerDataUpdate;

    iput-boolean p3, v0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$contextForValidDataRequestResponse$1;->c:Z

    iput v4, v0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$contextForValidDataRequestResponse$1;->f:I

    invoke-interface {p0, p2, v0}, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;->g(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_1

    return-object v1

    :goto_1
    iget-object p0, v9, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;->a:Lcom/dynatrace/agent/communication/api/AgentState;

    sget-object p1, Lcom/dynatrace/agent/communication/api/AgentState$Disabled;->a:Lcom/dynatrace/agent/communication/api/AgentState$Disabled;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "response handling: disable agent due to AgentState in data response"

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    new-instance v5, Lcom/dynatrace/agent/communication/CommunicationContext;

    sget-wide v6, Lcom/dynatrace/agent/communication/RetryManagerKt;->c:J

    sget-object v8, Lcom/dynatrace/agent/communication/CommunicationState$Inactive;->a:Lcom/dynatrace/agent/communication/CommunicationState$Inactive;

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/dynatrace/agent/communication/CommunicationContext;-><init>(JLcom/dynatrace/agent/communication/CommunicationState;Lcom/dynatrace/agent/communication/api/ServerDataUpdate;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    :cond_4
    if-eqz p3, :cond_5

    new-instance v5, Lcom/dynatrace/agent/communication/CommunicationContext;

    sget-object p0, Lkotlin/time/Duration;->c:Lkotlin/time/Duration$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/dynatrace/agent/communication/CommunicationState$PendingData;->a:Lcom/dynatrace/agent/communication/CommunicationState$PendingData;

    const/4 v10, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/dynatrace/agent/communication/CommunicationContext;-><init>(JLcom/dynatrace/agent/communication/CommunicationState;Lcom/dynatrace/agent/communication/api/ServerDataUpdate;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    :cond_5
    new-instance v5, Lcom/dynatrace/agent/communication/CommunicationContext;

    sget-wide v6, Lcom/dynatrace/agent/communication/CommunicationManagerImplKt;->a:J

    new-instance v8, Lcom/dynatrace/agent/communication/CommunicationState$Waiting;

    invoke-direct {v8, v3, v4, v3}, Lcom/dynatrace/agent/communication/CommunicationState$Waiting;-><init>(Lcom/dynatrace/agent/communication/CommunicationState$ConnectionStatus;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/dynatrace/agent/communication/CommunicationContext;-><init>(JLcom/dynatrace/agent/communication/CommunicationState;Lcom/dynatrace/agent/communication/api/ServerDataUpdate;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5
.end method

.method public static f(Lcom/dynatrace/agent/communication/RetryManager;Lcom/dynatrace/agent/storage/db/EndPointInfo;Lcom/dynatrace/agent/communication/network/response/ResponseResult$RetryExecution;Lcom/dynatrace/agent/communication/CommunicationState;)Lcom/dynatrace/agent/communication/CommunicationContext;
    .locals 6

    iget-object p2, p2, Lcom/dynatrace/agent/communication/network/response/ResponseResult$RetryExecution;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/dynatrace/agent/communication/RetryManager;->a(Lcom/dynatrace/agent/storage/db/EndPointInfo;Ljava/lang/String;)Lcom/dynatrace/agent/communication/network/model/RetryInfo;

    move-result-object p2

    invoke-static {p2}, Lcom/dynatrace/agent/communication/RetryManagerKt;->a(Lcom/dynatrace/agent/communication/network/model/RetryInfo;)J

    move-result-wide v1

    iget p2, p2, Lcom/dynatrace/agent/communication/network/model/RetryInfo;->a:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lcom/dynatrace/agent/communication/RetryManager;->a:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/dynatrace/agent/communication/CommunicationContext;

    sget-object v3, Lcom/dynatrace/agent/communication/CommunicationState$Offline;->a:Lcom/dynatrace/agent/communication/CommunicationState$Offline;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/dynatrace/agent/communication/CommunicationContext;-><init>(JLcom/dynatrace/agent/communication/CommunicationState;Lcom/dynatrace/agent/communication/api/ServerDataUpdate;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/dynatrace/agent/communication/CommunicationContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/dynatrace/agent/communication/CommunicationContext;-><init>(JLcom/dynatrace/agent/communication/CommunicationState;Lcom/dynatrace/agent/communication/api/ServerDataUpdate;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static i(Lcom/dynatrace/agent/communication/ResponseProcessorImpl;JLcom/dynatrace/agent/communication/CommunicationState;Lcom/dynatrace/agent/storage/db/EndPointInfo;Lcom/dynatrace/agent/communication/RetryManager;Lcom/dynatrace/agent/communication/api/ServerDataUpdate;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;
    .locals 8

    and-int/lit8 v0, p8, 0x1

    if-eqz v0, :cond_0

    sget-wide p1, Lcom/dynatrace/agent/communication/RetryManagerKt;->c:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_1

    sget-object p3, Lcom/dynatrace/agent/communication/CommunicationState$Inactive;->a:Lcom/dynatrace/agent/communication/CommunicationState$Inactive;

    :cond_1
    move-object v3, p3

    and-int/lit8 p1, p8, 0x10

    if-eqz p1, :cond_2

    new-instance p1, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;

    sget-object p2, Lcom/dynatrace/agent/communication/api/AgentState$Disabled;->a:Lcom/dynatrace/agent/communication/api/AgentState$Disabled;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3, p3}, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;-><init>(Lcom/dynatrace/agent/communication/api/AgentState;Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;Lcom/dynatrace/android/agent/conf/ServerConfiguration;)V

    move-object v6, p1

    :goto_0
    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v7, p7

    goto :goto_1

    :cond_2
    move-object v6, p6

    goto :goto_0

    :goto_1
    invoke-virtual/range {v0 .. v7}, Lcom/dynatrace/agent/communication/ResponseProcessorImpl;->h(JLcom/dynatrace/agent/communication/CommunicationState;Lcom/dynatrace/agent/storage/db/EndPointInfo;Lcom/dynatrace/agent/communication/RetryManager;Lcom/dynatrace/agent/communication/api/ServerDataUpdate;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()J
    .locals 5

    sget-object v0, Lkotlin/time/Duration;->c:Lkotlin/time/Duration$Companion;

    iget-object v0, p0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl;->b:Lcom/dynatrace/agent/common/time/TimeProvider;

    invoke-interface {v0}, Lcom/dynatrace/agent/common/time/TimeProvider;->a()J

    move-result-wide v0

    sget-object v2, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, v2}, Lkotlin/time/DurationKt;->h(JLkotlin/time/DurationUnit;)J

    move-result-wide v0

    iget-wide v3, p0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl;->c:J

    invoke-static {v3, v4, v2}, Lkotlin/time/DurationKt;->h(JLkotlin/time/DurationUnit;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lkotlin/time/Duration;->v(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lkotlin/time/Duration;->j(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(Lcom/dynatrace/agent/communication/network/response/ResponseResult;Lcom/dynatrace/agent/storage/db/EndPointInfo;Lcom/dynatrace/agent/communication/RetryManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p1, Lcom/dynatrace/agent/communication/network/response/ResponseResult$Retry;

    if-eqz v0, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/dynatrace/agent/communication/network/response/ResponseResult$Retry;

    sget-object v5, Lcom/dynatrace/agent/communication/CommunicationState$ConfigAwaiting;->a:Lcom/dynatrace/agent/communication/CommunicationState$ConfigAwaiting;

    move-object v6, p4

    check-cast v6, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/dynatrace/agent/communication/ResponseProcessorImpl;->e(Lcom/dynatrace/agent/communication/network/response/ResponseResult$Retry;Lcom/dynatrace/agent/storage/db/EndPointInfo;Lcom/dynatrace/agent/communication/RetryManager;Lcom/dynatrace/agent/communication/CommunicationState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    instance-of p0, p1, Lcom/dynatrace/agent/communication/network/response/ResponseResult$TooManyRequests;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/dynatrace/agent/communication/network/response/ResponseResult$TooManyRequests;

    iget-wide v1, p1, Lcom/dynatrace/agent/communication/network/response/ResponseResult$TooManyRequests;->a:J

    sget-object v3, Lcom/dynatrace/agent/communication/CommunicationState$ConfigAwaiting;->a:Lcom/dynatrace/agent/communication/CommunicationState$ConfigAwaiting;

    const/16 v8, 0x10

    move-object v7, p4

    check-cast v7, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Lcom/dynatrace/agent/communication/ResponseProcessorImpl;->i(Lcom/dynatrace/agent/communication/ResponseProcessorImpl;JLcom/dynatrace/agent/communication/CommunicationState;Lcom/dynatrace/agent/storage/db/EndPointInfo;Lcom/dynatrace/agent/communication/RetryManager;Lcom/dynatrace/agent/communication/api/ServerDataUpdate;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of p0, p1, Lcom/dynatrace/agent/communication/network/response/ResponseResult$Success;

    const/4 p2, 0x0

    if-eqz p0, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/dynatrace/agent/communication/network/response/ResponseResult$Success;

    move-object v2, v4

    new-instance v4, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$handleConfigResponse$2;

    invoke-direct {v4, v0, p2}, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$handleConfigResponse$2;-><init>(Lcom/dynatrace/agent/communication/ResponseProcessorImpl;Lkotlin/coroutines/Continuation;)V

    check-cast p4, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    move-object v3, v5

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/dynatrace/agent/communication/ResponseProcessorImpl;->g(Lcom/dynatrace/agent/communication/network/response/ResponseResult$Success;Lcom/dynatrace/agent/storage/db/EndPointInfo;Lcom/dynatrace/agent/communication/RetryManager;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of p0, p1, Lcom/dynatrace/agent/communication/network/response/ResponseResult$UnexpectedError;

    if-eqz p0, :cond_3

    const/16 v8, 0x13

    move-object v7, p4

    check-cast v7, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Lcom/dynatrace/agent/communication/ResponseProcessorImpl;->i(Lcom/dynatrace/agent/communication/ResponseProcessorImpl;JLcom/dynatrace/agent/communication/CommunicationState;Lcom/dynatrace/agent/storage/db/EndPointInfo;Lcom/dynatrace/agent/communication/RetryManager;Lcom/dynatrace/agent/communication/api/ServerDataUpdate;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of p0, p1, Lcom/dynatrace/agent/communication/network/response/ResponseResult$RetryExecution;

    if-eqz p0, :cond_4

    check-cast p1, Lcom/dynatrace/agent/communication/network/response/ResponseResult$RetryExecution;

    sget-object p0, Lcom/dynatrace/agent/communication/CommunicationState$ConfigAwaiting;->a:Lcom/dynatrace/agent/communication/CommunicationState$ConfigAwaiting;

    invoke-static {v5, v4, p1, p0}, Lcom/dynatrace/agent/communication/ResponseProcessorImpl;->f(Lcom/dynatrace/agent/communication/RetryManager;Lcom/dynatrace/agent/storage/db/EndPointInfo;Lcom/dynatrace/agent/communication/network/response/ResponseResult$RetryExecution;Lcom/dynatrace/agent/communication/CommunicationState;)Lcom/dynatrace/agent/communication/CommunicationContext;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {}, Lv40;->g()V

    return-object p2
.end method

.method public final c(Lcom/dynatrace/agent/communication/network/response/ResponseResult;Lcom/dynatrace/agent/storage/db/EndPointInfo;Ljava/util/List;Lcom/dynatrace/agent/communication/RetryManager;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p1, Lcom/dynatrace/agent/communication/network/response/ResponseResult$Retry;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dynatrace/agent/communication/network/response/ResponseResult$Retry;

    move-object v5, p4

    new-instance p4, Lcom/dynatrace/agent/communication/CommunicationState$Waiting;

    sget-object p3, Lcom/dynatrace/agent/communication/CommunicationState$ConnectionStatus;->RETRYING:Lcom/dynatrace/agent/communication/CommunicationState$ConnectionStatus;

    invoke-direct {p4, p3}, Lcom/dynatrace/agent/communication/CommunicationState$Waiting;-><init>(Lcom/dynatrace/agent/communication/CommunicationState$ConnectionStatus;)V

    move-object p5, p6

    check-cast p5, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    move-object p3, v5

    invoke-virtual/range {p0 .. p5}, Lcom/dynatrace/agent/communication/ResponseProcessorImpl;->e(Lcom/dynatrace/agent/communication/network/response/ResponseResult$Retry;Lcom/dynatrace/agent/storage/db/EndPointInfo;Lcom/dynatrace/agent/communication/RetryManager;Lcom/dynatrace/agent/communication/CommunicationState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v0, p0

    move-object v4, p2

    move-object v5, p4

    instance-of p0, p1, Lcom/dynatrace/agent/communication/network/response/ResponseResult$TooManyRequests;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/dynatrace/agent/communication/network/response/ResponseResult$TooManyRequests;

    iget-wide v1, p1, Lcom/dynatrace/agent/communication/network/response/ResponseResult$TooManyRequests;->a:J

    sget-object v3, Lcom/dynatrace/agent/communication/CommunicationState$ConfigAwaiting;->a:Lcom/dynatrace/agent/communication/CommunicationState$ConfigAwaiting;

    const/16 v8, 0x10

    move-object v7, p6

    check-cast v7, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Lcom/dynatrace/agent/communication/ResponseProcessorImpl;->i(Lcom/dynatrace/agent/communication/ResponseProcessorImpl;JLcom/dynatrace/agent/communication/CommunicationState;Lcom/dynatrace/agent/storage/db/EndPointInfo;Lcom/dynatrace/agent/communication/RetryManager;Lcom/dynatrace/agent/communication/api/ServerDataUpdate;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of p0, p1, Lcom/dynatrace/agent/communication/network/response/ResponseResult$Success;

    const/4 p2, 0x0

    if-eqz p0, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/dynatrace/agent/communication/network/response/ResponseResult$Success;

    move-object v2, v4

    new-instance v4, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$handleDataResponse$2;

    invoke-direct {v4, v0, p3, p5, p2}, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$handleDataResponse$2;-><init>(Lcom/dynatrace/agent/communication/ResponseProcessorImpl;Ljava/util/List;ZLkotlin/coroutines/Continuation;)V

    check-cast p6, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    move-object v3, v5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/dynatrace/agent/communication/ResponseProcessorImpl;->g(Lcom/dynatrace/agent/communication/network/response/ResponseResult$Success;Lcom/dynatrace/agent/storage/db/EndPointInfo;Lcom/dynatrace/agent/communication/RetryManager;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of p0, p1, Lcom/dynatrace/agent/communication/network/response/ResponseResult$UnexpectedError;

    if-eqz p0, :cond_3

    const/16 v8, 0x13

    move-object v7, p6

    check-cast v7, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Lcom/dynatrace/agent/communication/ResponseProcessorImpl;->i(Lcom/dynatrace/agent/communication/ResponseProcessorImpl;JLcom/dynatrace/agent/communication/CommunicationState;Lcom/dynatrace/agent/storage/db/EndPointInfo;Lcom/dynatrace/agent/communication/RetryManager;Lcom/dynatrace/agent/communication/api/ServerDataUpdate;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of p0, p1, Lcom/dynatrace/agent/communication/network/response/ResponseResult$RetryExecution;

    if-eqz p0, :cond_4

    check-cast p1, Lcom/dynatrace/agent/communication/network/response/ResponseResult$RetryExecution;

    new-instance p0, Lcom/dynatrace/agent/communication/CommunicationState$Waiting;

    sget-object p2, Lcom/dynatrace/agent/communication/CommunicationState$ConnectionStatus;->RETRYING:Lcom/dynatrace/agent/communication/CommunicationState$ConnectionStatus;

    invoke-direct {p0, p2}, Lcom/dynatrace/agent/communication/CommunicationState$Waiting;-><init>(Lcom/dynatrace/agent/communication/CommunicationState$ConnectionStatus;)V

    invoke-static {v5, v4, p1, p0}, Lcom/dynatrace/agent/communication/ResponseProcessorImpl;->f(Lcom/dynatrace/agent/communication/RetryManager;Lcom/dynatrace/agent/storage/db/EndPointInfo;Lcom/dynatrace/agent/communication/network/response/ResponseResult$RetryExecution;Lcom/dynatrace/agent/communication/CommunicationState;)Lcom/dynatrace/agent/communication/CommunicationContext;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {}, Lv40;->g()V

    return-object p2
.end method

.method public final e(Lcom/dynatrace/agent/communication/network/response/ResponseResult$Retry;Lcom/dynatrace/agent/storage/db/EndPointInfo;Lcom/dynatrace/agent/communication/RetryManager;Lcom/dynatrace/agent/communication/CommunicationState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p1, Lcom/dynatrace/agent/communication/network/response/ResponseResult$Retry;->b:Lcom/dynatrace/agent/communication/api/ServerDataUpdate;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;->a:Lcom/dynatrace/agent/communication/api/AgentState;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    sget-object v2, Lcom/dynatrace/agent/communication/api/AgentState$Disabled;->a:Lcom/dynatrace/agent/communication/api/AgentState$Disabled;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "response handling: disable agent due to AgentState in "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iget-object v6, p1, Lcom/dynatrace/agent/communication/network/response/ResponseResult$Retry;->b:Lcom/dynatrace/agent/communication/api/ServerDataUpdate;

    const/4 v8, 0x3

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move-object v7, p5

    invoke-static/range {v0 .. v8}, Lcom/dynatrace/agent/communication/ResponseProcessorImpl;->i(Lcom/dynatrace/agent/communication/ResponseProcessorImpl;JLcom/dynatrace/agent/communication/CommunicationState;Lcom/dynatrace/agent/storage/db/EndPointInfo;Lcom/dynatrace/agent/communication/RetryManager;Lcom/dynatrace/agent/communication/api/ServerDataUpdate;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move-object v7, p5

    iget-object p0, p1, Lcom/dynatrace/agent/communication/network/response/ResponseResult$Retry;->a:Ljava/lang/String;

    invoke-virtual {v5, v4, p0}, Lcom/dynatrace/agent/communication/RetryManager;->a(Lcom/dynatrace/agent/storage/db/EndPointInfo;Ljava/lang/String;)Lcom/dynatrace/agent/communication/network/model/RetryInfo;

    move-result-object p0

    sget p2, Lcom/dynatrace/agent/communication/RetryManagerKt;->d:I

    iget p2, p0, Lcom/dynatrace/agent/communication/network/model/RetryInfo;->a:I

    const/4 p3, 0x3

    if-ne p2, p3, :cond_3

    const-string p2, "response handling: disable agent due to max retry attempts reached"

    invoke-static {p2}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    move-object p3, v1

    move-object p2, v2

    invoke-static {p0}, Lcom/dynatrace/agent/communication/RetryManagerKt;->a(Lcom/dynatrace/agent/communication/network/model/RetryInfo;)J

    move-result-wide v1

    iget-object p0, p1, Lcom/dynatrace/agent/communication/network/response/ResponseResult$Retry;->b:Lcom/dynatrace/agent/communication/api/ServerDataUpdate;

    if-eqz p0, :cond_2

    iget-object p1, p0, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;->b:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    iget-object p0, p0, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;->c:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;

    invoke-direct {p3, p2, p1, p0}, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;-><init>(Lcom/dynatrace/agent/communication/api/AgentState;Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;Lcom/dynatrace/android/agent/conf/ServerConfiguration;)V

    :cond_2
    move-object v6, p3

    const/4 v8, 0x2

    const/4 v3, 0x0

    invoke-static/range {v0 .. v8}, Lcom/dynatrace/agent/communication/ResponseProcessorImpl;->i(Lcom/dynatrace/agent/communication/ResponseProcessorImpl;JLcom/dynatrace/agent/communication/CommunicationState;Lcom/dynatrace/agent/storage/db/EndPointInfo;Lcom/dynatrace/agent/communication/RetryManager;Lcom/dynatrace/agent/communication/api/ServerDataUpdate;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v0, Lcom/dynatrace/agent/communication/CommunicationContext;

    invoke-static {p0}, Lcom/dynatrace/agent/communication/RetryManagerKt;->a(Lcom/dynatrace/agent/communication/network/model/RetryInfo;)J

    move-result-wide v1

    iget-object v4, p1, Lcom/dynatrace/agent/communication/network/response/ResponseResult$Retry;->b:Lcom/dynatrace/agent/communication/api/ServerDataUpdate;

    const/4 v5, 0x0

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/dynatrace/agent/communication/CommunicationContext;-><init>(JLcom/dynatrace/agent/communication/CommunicationState;Lcom/dynatrace/agent/communication/api/ServerDataUpdate;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final g(Lcom/dynatrace/agent/communication/network/response/ResponseResult$Success;Lcom/dynatrace/agent/storage/db/EndPointInfo;Lcom/dynatrace/agent/communication/RetryManager;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p3, Lcom/dynatrace/agent/communication/RetryManager;->a:Ljava/util/LinkedHashMap;

    invoke-interface {p3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl;->b:Lcom/dynatrace/agent/common/time/TimeProvider;

    invoke-interface {p2}, Lcom/dynatrace/agent/common/time/TimeProvider;->a()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl;->c:J

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "response handling: updated last config reception time: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl;->c:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iget-object p0, p1, Lcom/dynatrace/agent/communication/network/response/ResponseResult$Success;->a:Lcom/dynatrace/agent/communication/api/ServerDataUpdate;

    invoke-interface {p4, p0, p5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final h(JLcom/dynatrace/agent/communication/CommunicationState;Lcom/dynatrace/agent/storage/db/EndPointInfo;Lcom/dynatrace/agent/communication/RetryManager;Lcom/dynatrace/agent/communication/api/ServerDataUpdate;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p7, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$obtainDisabledContext$1;

    if-eqz v0, :cond_0

    move-object v0, p7

    check-cast v0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$obtainDisabledContext$1;

    iget v1, v0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$obtainDisabledContext$1;->i:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$obtainDisabledContext$1;->i:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$obtainDisabledContext$1;

    invoke-direct {v0, p0, p7}, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$obtainDisabledContext$1;-><init>(Lcom/dynatrace/agent/communication/ResponseProcessorImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p7, v0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$obtainDisabledContext$1;->g:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$obtainDisabledContext$1;->i:I

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-ne v2, v3, :cond_2

    iget-wide p1, v0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$obtainDisabledContext$1;->b:J

    iget-object p6, v0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$obtainDisabledContext$1;->f:Lcom/dynatrace/agent/communication/api/ServerDataUpdate;

    iget-object p5, v0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$obtainDisabledContext$1;->e:Lcom/dynatrace/agent/communication/RetryManager;

    iget-object p4, v0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$obtainDisabledContext$1;->d:Lcom/dynatrace/agent/storage/db/EndPointInfo;

    iget-object p3, v0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$obtainDisabledContext$1;->c:Lcom/dynatrace/agent/communication/CommunicationState;

    invoke-static {p7}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :cond_1
    move-object p0, p4

    move-object p4, p3

    move-wide p2, p1

    goto :goto_1

    :cond_2
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_3
    invoke-static {p7}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p3, v0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$obtainDisabledContext$1;->c:Lcom/dynatrace/agent/communication/CommunicationState;

    iput-object p4, v0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$obtainDisabledContext$1;->d:Lcom/dynatrace/agent/storage/db/EndPointInfo;

    iput-object p5, v0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$obtainDisabledContext$1;->e:Lcom/dynatrace/agent/communication/RetryManager;

    iput-object p6, v0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$obtainDisabledContext$1;->f:Lcom/dynatrace/agent/communication/api/ServerDataUpdate;

    iput-wide p1, v0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$obtainDisabledContext$1;->b:J

    iput v3, v0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$obtainDisabledContext$1;->i:I

    iget-object p0, p0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl;->a:Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;

    invoke-interface {p0, v0}, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_1

    return-object v1

    :goto_1
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p5, Lcom/dynatrace/agent/communication/RetryManager;->a:Ljava/util/LinkedHashMap;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/dynatrace/agent/communication/CommunicationContext;

    move-object p5, p6

    const/4 p6, 0x0

    invoke-direct/range {p1 .. p6}, Lcom/dynatrace/agent/communication/CommunicationContext;-><init>(JLcom/dynatrace/agent/communication/CommunicationState;Lcom/dynatrace/agent/communication/api/ServerDataUpdate;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method
