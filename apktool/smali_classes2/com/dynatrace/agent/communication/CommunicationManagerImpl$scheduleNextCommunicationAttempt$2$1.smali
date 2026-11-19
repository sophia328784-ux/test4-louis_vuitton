.class final Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$2$1;
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
    c = "com.dynatrace.agent.communication.CommunicationManagerImpl$scheduleNextCommunicationAttempt$2$1"
    f = "CommunicationManagerImpl.kt"
    l = {
        0xab,
        0xb0,
        0xb1,
        0xb5,
        0xca
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public b:Lcom/dynatrace/agent/communication/CommunicationContext;

.field public c:I

.field public final synthetic d:Lcom/dynatrace/agent/communication/CommunicationContext;

.field public final synthetic e:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/communication/CommunicationContext;Lcom/dynatrace/agent/communication/CommunicationManagerImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$2$1;->d:Lcom/dynatrace/agent/communication/CommunicationContext;

    iput-object p2, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$2$1;->e:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$2$1;

    iget-object v1, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$2$1;->d:Lcom/dynatrace/agent/communication/CommunicationContext;

    iget-object p0, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$2$1;->e:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

    invoke-direct {v0, v1, p0, p1}, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$2$1;-><init>(Lcom/dynatrace/agent/communication/CommunicationContext;Lcom/dynatrace/agent/communication/CommunicationManagerImpl;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$2$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v5, p0

    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, v5, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$2$1;->c:I

    const/4 v7, 0x5

    const/4 v1, 0x4

    const/4 v8, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    if-eq v0, v8, :cond_2

    if-eq v0, v1, :cond_1

    if-ne v0, v7, :cond_0

    iget-object v0, v5, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$2$1;->b:Lcom/dynatrace/agent/communication/CommunicationContext;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v9

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto/16 :goto_3

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto :goto_2

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto/16 :goto_5

    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v0, v5, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$2$1;->d:Lcom/dynatrace/agent/communication/CommunicationContext;

    iget-object v0, v0, Lcom/dynatrace/agent/communication/CommunicationContext;->b:Lcom/dynatrace/agent/communication/CommunicationState;

    instance-of v4, v0, Lcom/dynatrace/agent/communication/CommunicationState$ConfigAwaiting;

    if-nez v4, :cond_e

    instance-of v4, v0, Lcom/dynatrace/agent/communication/CommunicationState$Inactive;

    if-nez v4, :cond_e

    sget-object v4, Lcom/dynatrace/agent/communication/CommunicationState$Offline;->a:Lcom/dynatrace/agent/communication/CommunicationState$Offline;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto/16 :goto_4

    :cond_6
    instance-of v3, v0, Lcom/dynatrace/agent/communication/CommunicationState$Waiting;

    if-eqz v3, :cond_a

    iget-object v0, v5, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$2$1;->e:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

    iget-object v0, v0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->b:Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;

    iput v2, v5, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$2$1;->c:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v1, Lcom/dynatrace/agent/common/specification/OneAgentSpecification$RetentionSpecifications;->a:J

    invoke-static {v1, v2}, Lkotlin/time/Duration;->e(J)J

    move-result-wide v3

    iget-object v1, v0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;->b:Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;

    iget-object v0, v0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;->c:Lcom/dynatrace/agent/common/time/TimeProvider;

    invoke-interface {v0}, Lcom/dynatrace/agent/common/time/TimeProvider;->a()J

    move-result-wide v10

    move-object v0, v1

    move-wide v1, v10

    invoke-interface/range {v0 .. v5}, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;->c(JJLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_7

    goto :goto_0

    :cond_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_0
    if-ne v0, v6, :cond_8

    goto/16 :goto_8

    :cond_8
    :goto_1
    iget-object v0, v5, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$2$1;->e:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

    iput v8, v5, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$2$1;->c:I

    invoke-static {v0, v5}, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->e(Lcom/dynatrace/agent/communication/CommunicationManagerImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_9

    goto/16 :goto_8

    :cond_9
    :goto_2
    check-cast v0, Lcom/dynatrace/agent/communication/CommunicationContext;

    goto :goto_6

    :cond_a
    instance-of v2, v0, Lcom/dynatrace/agent/communication/CommunicationState$PendingData;

    if-eqz v2, :cond_c

    iget-object v0, v5, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$2$1;->e:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

    iput v1, v5, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$2$1;->c:I

    invoke-static {v0, v5}, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->e(Lcom/dynatrace/agent/communication/CommunicationManagerImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_b

    goto :goto_8

    :cond_b
    :goto_3
    check-cast v0, Lcom/dynatrace/agent/communication/CommunicationContext;

    goto :goto_6

    :cond_c
    instance-of v0, v0, Lcom/dynatrace/agent/communication/CommunicationState$Off;

    if-eqz v0, :cond_d

    new-instance v10, Lcom/dynatrace/agent/communication/CommunicationContext;

    sget-object v0, Lkotlin/time/Duration;->c:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Lcom/dynatrace/agent/communication/CommunicationState$Off;->a:Lcom/dynatrace/agent/communication/CommunicationState$Off;

    new-instance v14, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;

    sget-object v0, Lcom/dynatrace/agent/communication/api/AgentState$Disabled;->a:Lcom/dynatrace/agent/communication/api/AgentState$Disabled;

    invoke-direct {v14, v0, v9, v9}, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;-><init>(Lcom/dynatrace/agent/communication/api/AgentState;Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;Lcom/dynatrace/android/agent/conf/ServerConfiguration;)V

    const/4 v15, 0x0

    const-wide/16 v11, 0x0

    invoke-direct/range {v10 .. v15}, Lcom/dynatrace/agent/communication/CommunicationContext;-><init>(JLcom/dynatrace/agent/communication/CommunicationState;Lcom/dynatrace/agent/communication/api/ServerDataUpdate;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, v10

    goto :goto_6

    :cond_d
    invoke-static {}, Lv40;->g()V

    return-object v9

    :cond_e
    :goto_4
    iget-object v0, v5, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$2$1;->e:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

    iput v3, v5, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$2$1;->c:I

    invoke-static {v0, v5}, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->f(Lcom/dynatrace/agent/communication/CommunicationManagerImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_f

    goto :goto_8

    :cond_f
    :goto_5
    check-cast v0, Lcom/dynatrace/agent/communication/CommunicationContext;

    :goto_6
    iget-object v1, v0, Lcom/dynatrace/agent/communication/CommunicationContext;->c:Lcom/dynatrace/agent/communication/api/ServerDataUpdate;

    if-eqz v1, :cond_10

    iget-object v2, v1, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;->b:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    goto :goto_7

    :cond_10
    move-object v2, v9

    :goto_7
    if-eqz v2, :cond_11

    iget-object v1, v1, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;->c:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    if-nez v1, :cond_11

    const-string v1, "resetting server Id"

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iget-object v1, v5, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$2$1;->e:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

    iput-object v9, v1, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->n:Ljava/lang/Integer;

    :cond_11
    iget-object v1, v5, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$2$1;->e:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

    iget-object v1, v1, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->l:Lcom/dynatrace/agent/communication/ServerDataMaintainer;

    if-eqz v1, :cond_13

    iget-object v2, v0, Lcom/dynatrace/agent/communication/CommunicationContext;->c:Lcom/dynatrace/agent/communication/api/ServerDataUpdate;

    iput-object v0, v5, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$2$1;->b:Lcom/dynatrace/agent/communication/CommunicationContext;

    iput v7, v5, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$2$1;->c:I

    invoke-virtual {v1, v2, v5}, Lcom/dynatrace/agent/communication/ServerDataMaintainer;->b(Lcom/dynatrace/agent/communication/api/ServerDataUpdate;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_12

    :goto_8
    return-object v6

    :cond_12
    :goto_9
    iget-object v1, v5, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$2$1;->e:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

    invoke-virtual {v1, v0}, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->g(Lcom/dynatrace/agent/communication/CommunicationContext;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_13
    const-string v0, "serverDataMaintainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v9
.end method
