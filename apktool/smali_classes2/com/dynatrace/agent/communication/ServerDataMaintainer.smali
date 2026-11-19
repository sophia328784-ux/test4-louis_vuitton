.class public final Lcom/dynatrace/agent/communication/ServerDataMaintainer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/dynatrace/agent/communication/ServerDataMaintainer;",
        "",
        "Lcom/dynatrace/agent/communication/LocalServerData;",
        "initialServerData",
        "Lcom/dynatrace/agent/communication/api/ServerDataListener;",
        "updateListener",
        "<init>",
        "(Lcom/dynatrace/agent/communication/LocalServerData;Lcom/dynatrace/agent/communication/api/ServerDataListener;)V",
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
.field public final a:Lcom/dynatrace/agent/communication/api/ServerDataListener;

.field public final b:Lkotlinx/coroutines/sync/MutexImpl;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public d:Lcom/dynatrace/agent/communication/api/AgentState;

.field public e:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

.field public f:Lcom/dynatrace/android/agent/conf/ServerConfiguration;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/communication/LocalServerData;Lcom/dynatrace/agent/communication/api/ServerDataListener;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/dynatrace/agent/communication/ServerDataMaintainer;->a:Lcom/dynatrace/agent/communication/api/ServerDataListener;

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->a()Lkotlinx/coroutines/sync/MutexImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/dynatrace/agent/communication/ServerDataMaintainer;->b:Lkotlinx/coroutines/sync/MutexImpl;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/dynatrace/agent/communication/ServerDataMaintainer;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object p2, p1, Lcom/dynatrace/agent/communication/LocalServerData;->a:Lcom/dynatrace/agent/communication/api/AgentState;

    iput-object p2, p0, Lcom/dynatrace/agent/communication/ServerDataMaintainer;->d:Lcom/dynatrace/agent/communication/api/AgentState;

    iget-object p2, p1, Lcom/dynatrace/agent/communication/LocalServerData;->b:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    iput-object p2, p0, Lcom/dynatrace/agent/communication/ServerDataMaintainer;->e:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    iget-object p1, p1, Lcom/dynatrace/agent/communication/LocalServerData;->c:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    iput-object p1, p0, Lcom/dynatrace/agent/communication/ServerDataMaintainer;->f:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    return-void
.end method


# virtual methods
.method public final a(Lcom/dynatrace/android/agent/conf/ServerConfiguration;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p3, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateInternalV3Config$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateInternalV3Config$1;

    iget v1, v0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateInternalV3Config$1;->i:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateInternalV3Config$1;->i:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateInternalV3Config$1;

    invoke-direct {v0, p0, p3}, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateInternalV3Config$1;-><init>(Lcom/dynatrace/agent/communication/ServerDataMaintainer;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateInternalV3Config$1;->g:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateInternalV3Config$1;->i:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    iget-boolean p2, v0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateInternalV3Config$1;->f:Z

    iget-object p0, v0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateInternalV3Config$1;->e:Lkotlinx/coroutines/sync/MutexImpl;

    iget-object p1, v0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateInternalV3Config$1;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v2, v0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateInternalV3Config$1;->c:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    iget-object v6, v0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateInternalV3Config$1;->b:Lcom/dynatrace/agent/communication/ServerDataMaintainer;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object p3, p1

    move-object p1, v2

    move-object v2, p0

    move-object p0, v6

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p3, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p3}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-object p0, v0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateInternalV3Config$1;->b:Lcom/dynatrace/agent/communication/ServerDataMaintainer;

    iput-object p1, v0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateInternalV3Config$1;->c:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    iput-object p3, v0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateInternalV3Config$1;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v2, p0, Lcom/dynatrace/agent/communication/ServerDataMaintainer;->b:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object v2, v0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateInternalV3Config$1;->e:Lkotlinx/coroutines/sync/MutexImpl;

    iput-boolean p2, v0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateInternalV3Config$1;->f:Z

    iput v4, v0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateInternalV3Config$1;->i:I

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/sync/MutexImpl;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_4

    goto :goto_4

    :cond_4
    :goto_1
    :try_start_0
    iget-object v6, p0, Lcom/dynatrace/agent/communication/ServerDataMaintainer;->f:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    if-nez p1, :cond_5

    const-string p1, "updated configuration v3 is null, ignoring update"

    invoke-static {p1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_5
    iget-wide v7, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->o:J

    iget-wide v9, v6, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->o:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    move-object p1, v6

    :goto_3
    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    iput-object p1, p0, Lcom/dynatrace/agent/communication/ServerDataMaintainer;->f:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    iput-boolean v4, p3, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    invoke-interface {v2, v5}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    if-eqz p2, :cond_9

    iget-boolean p1, p3, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    if-eqz p1, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "updated server configuration v3; config: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dynatrace/agent/communication/ServerDataMaintainer;->f:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/dynatrace/agent/communication/ServerDataMaintainer;->a:Lcom/dynatrace/agent/communication/api/ServerDataListener;

    iget-object p0, p0, Lcom/dynatrace/agent/communication/ServerDataMaintainer;->f:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    iput-object v5, v0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateInternalV3Config$1;->b:Lcom/dynatrace/agent/communication/ServerDataMaintainer;

    iput-object v5, v0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateInternalV3Config$1;->c:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    iput-object v5, v0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateInternalV3Config$1;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object v5, v0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateInternalV3Config$1;->e:Lkotlinx/coroutines/sync/MutexImpl;

    iput v3, v0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateInternalV3Config$1;->i:I

    invoke-interface {p1, p0}, Lcom/dynatrace/agent/communication/api/ServerDataListener;->a(Lcom/dynatrace/android/agent/conf/ServerConfiguration;)Lkotlin/Unit;

    move-result-object p0

    if-ne p0, v1, :cond_8

    :goto_4
    return-object v1

    :cond_8
    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :goto_6
    invoke-interface {v2, v5}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p0
.end method

.method public final b(Lcom/dynatrace/agent/communication/api/ServerDataUpdate;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p2, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateServerData$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateServerData$1;

    iget v1, v0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateServerData$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateServerData$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateServerData$1;

    invoke-direct {v0, p0, p2}, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateServerData$1;-><init>(Lcom/dynatrace/agent/communication/ServerDataMaintainer;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateServerData$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateServerData$1;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    iget-object p1, v0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateServerData$1;->c:Lcom/dynatrace/agent/communication/api/ServerDataUpdate;

    iget-object p0, v0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateServerData$1;->b:Lcom/dynatrace/agent/communication/ServerDataMaintainer;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    if-nez p1, :cond_4

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_4
    iget-object p2, p1, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;->a:Lcom/dynatrace/agent/communication/api/AgentState;

    iget-object v2, p0, Lcom/dynatrace/agent/communication/ServerDataMaintainer;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/dynatrace/agent/communication/ServerDataMaintainer;->d:Lcom/dynatrace/agent/communication/api/AgentState;

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    iput-object p2, p0, Lcom/dynatrace/agent/communication/ServerDataMaintainer;->d:Lcom/dynatrace/agent/communication/api/AgentState;

    move v6, v5

    :cond_6
    iget-object p2, p1, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;->b:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    if-eqz p2, :cond_7

    iget-wide v7, p2, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->a:J

    iget-object v2, p0, Lcom/dynatrace/agent/communication/ServerDataMaintainer;->e:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    iget-wide v9, v2, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->a:J

    cmp-long v2, v7, v9

    if-lez v2, :cond_7

    iput-object p2, p0, Lcom/dynatrace/agent/communication/ServerDataMaintainer;->e:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    move v6, v5

    :cond_7
    if-eqz v6, :cond_8

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "updated server configuration; state: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dynatrace/agent/communication/ServerDataMaintainer;->d:Lcom/dynatrace/agent/communication/api/AgentState;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", config: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dynatrace/agent/communication/ServerDataMaintainer;->e:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dynatrace/agent/communication/ServerDataMaintainer;->d:Lcom/dynatrace/agent/communication/api/AgentState;

    iget-object v2, p0, Lcom/dynatrace/agent/communication/ServerDataMaintainer;->e:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    iput-object p0, v0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateServerData$1;->b:Lcom/dynatrace/agent/communication/ServerDataMaintainer;

    iput-object p1, v0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateServerData$1;->c:Lcom/dynatrace/agent/communication/api/ServerDataUpdate;

    iput v5, v0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateServerData$1;->f:I

    iget-object v6, p0, Lcom/dynatrace/agent/communication/ServerDataMaintainer;->a:Lcom/dynatrace/agent/communication/api/ServerDataListener;

    invoke-interface {v6, p2, v2, v0}, Lcom/dynatrace/agent/communication/api/ServerDataListener;->b(Lcom/dynatrace/agent/communication/api/AgentState;Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8

    goto :goto_2

    :cond_8
    :goto_1
    iget-object p1, p1, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;->c:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    iput-object v3, v0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateServerData$1;->b:Lcom/dynatrace/agent/communication/ServerDataMaintainer;

    iput-object v3, v0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateServerData$1;->c:Lcom/dynatrace/agent/communication/api/ServerDataUpdate;

    iput v4, v0, Lcom/dynatrace/agent/communication/ServerDataMaintainer$updateServerData$1;->f:I

    invoke-virtual {p0, p1, v5, v0}, Lcom/dynatrace/agent/communication/ServerDataMaintainer;->a(Lcom/dynatrace/android/agent/conf/ServerConfiguration;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_9

    :goto_2
    return-object v1

    :cond_9
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
