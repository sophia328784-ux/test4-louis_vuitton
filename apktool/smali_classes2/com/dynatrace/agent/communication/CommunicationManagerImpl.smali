.class public final Lcom/dynatrace/agent/communication/CommunicationManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/agent/communication/CommunicationManager;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/dynatrace/agent/communication/CommunicationManagerImpl;",
        "Lcom/dynatrace/agent/communication/CommunicationManager;",
        "Lcom/dynatrace/agent/communication/network/datasource/NetworkDataSource;",
        "networkDataSource",
        "Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;",
        "dispatchableDataProvider",
        "Lcom/dynatrace/agent/communication/ResponseProcessor;",
        "responseProcessor",
        "Lcom/dynatrace/agent/communication/api/ServerDataListener;",
        "serverDataListener",
        "Lkotlinx/coroutines/CoroutineScope;",
        "coroutineScope",
        "Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;",
        "connectivityChecker",
        "<init>",
        "(Lcom/dynatrace/agent/communication/network/datasource/NetworkDataSource;Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;Lcom/dynatrace/agent/communication/ResponseProcessor;Lcom/dynatrace/agent/communication/api/ServerDataListener;Lkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;)V",
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
.field public final a:Lcom/dynatrace/agent/communication/network/datasource/NetworkDataSource;

.field public final b:Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;

.field public final c:Lcom/dynatrace/agent/communication/ResponseProcessor;

.field public final d:Lcom/dynatrace/agent/communication/api/ServerDataListener;

.field public final e:Lkotlinx/coroutines/CoroutineScope;

.field public final f:Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;

.field public final g:Lcom/dynatrace/agent/communication/RequestScheduler;

.field public final h:Lcom/dynatrace/agent/communication/CommunicationContextTaskScheduler;

.field public final i:Lcom/dynatrace/agent/communication/RetryManager;

.field public final j:Lcom/dynatrace/agent/communication/preprocessing/ToDataRequestMapper;

.field public k:Lcom/dynatrace/agent/communication/CommunicationState;

.field public l:Lcom/dynatrace/agent/communication/ServerDataMaintainer;

.field public m:Lkotlinx/coroutines/Job;

.field public volatile n:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/communication/network/datasource/NetworkDataSource;Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;Lcom/dynatrace/agent/communication/ResponseProcessor;Lcom/dynatrace/agent/communication/api/ServerDataListener;Lkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->a:Lcom/dynatrace/agent/communication/network/datasource/NetworkDataSource;

    iput-object p2, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->b:Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;

    iput-object p3, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->c:Lcom/dynatrace/agent/communication/ResponseProcessor;

    iput-object p4, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->d:Lcom/dynatrace/agent/communication/api/ServerDataListener;

    iput-object p5, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->e:Lkotlinx/coroutines/CoroutineScope;

    iput-object p6, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->f:Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;

    new-instance p1, Lcom/dynatrace/agent/communication/RequestScheduler;

    invoke-direct {p1, p5}, Lcom/dynatrace/agent/communication/RequestScheduler;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    iput-object p1, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->g:Lcom/dynatrace/agent/communication/RequestScheduler;

    new-instance v0, Lcom/dynatrace/agent/communication/CommunicationContextTaskScheduler;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    move-object v1, p5

    invoke-direct/range {v0 .. v5}, Lcom/dynatrace/agent/communication/CommunicationContextTaskScheduler;-><init>(Lkotlinx/coroutines/CoroutineScope;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->h:Lcom/dynatrace/agent/communication/CommunicationContextTaskScheduler;

    new-instance p1, Lcom/dynatrace/agent/communication/RetryManager;

    invoke-direct {p1}, Lcom/dynatrace/agent/communication/RetryManager;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->i:Lcom/dynatrace/agent/communication/RetryManager;

    new-instance p2, Lcom/dynatrace/agent/communication/mapper/DbRecordsToRequestBodyMapper;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lcom/dynatrace/agent/communication/mapper/DbRecordsToRequestBodyMapper;-><init>(I)V

    new-instance p3, Lcom/dynatrace/agent/communication/preprocessing/ToDataRequestMapper;

    invoke-direct {p3, p2, p1}, Lcom/dynatrace/agent/communication/preprocessing/ToDataRequestMapper;-><init>(Lcom/dynatrace/agent/communication/mapper/DbRecordsToRequestBodyMapper;Lcom/dynatrace/agent/communication/RetryManager;)V

    iput-object p3, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->j:Lcom/dynatrace/agent/communication/preprocessing/ToDataRequestMapper;

    sget-object p1, Lcom/dynatrace/agent/communication/CommunicationState$Off;->a:Lcom/dynatrace/agent/communication/CommunicationState$Off;

    iput-object p1, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->k:Lcom/dynatrace/agent/communication/CommunicationState;

    return-void
.end method

.method public static final e(Lcom/dynatrace/agent/communication/CommunicationManagerImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$dispatchData$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$dispatchData$1;

    iget v3, v2, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$dispatchData$1;->h:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$dispatchData$1;->h:I

    :goto_0
    move-object v9, v2

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$dispatchData$1;

    invoke-direct {v2, v0, v1}, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$dispatchData$1;-><init>(Lcom/dynatrace/agent/communication/CommunicationManagerImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object v1, v9, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$dispatchData$1;->f:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v9, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$dispatchData$1;->h:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_4

    if-eq v3, v6, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    return-object v1

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_2
    iget-boolean v0, v9, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$dispatchData$1;->e:Z

    iget-object v3, v9, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$dispatchData$1;->d:Lcom/dynatrace/agent/communication/network/datasource/DataRequest;

    iget-object v5, v9, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$dispatchData$1;->c:Ljava/lang/Object;

    check-cast v5, Lcom/dynatrace/agent/communication/preprocessing/DispatchableData;

    iget-object v6, v9, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$dispatchData$1;->b:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v8, v0

    goto/16 :goto_4

    :cond_3
    iget-object v0, v9, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$dispatchData$1;->c:Ljava/lang/Object;

    check-cast v0, Lcom/dynatrace/agent/communication/LocalServerData;

    iget-object v3, v9, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$dispatchData$1;->b:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v14, v0

    move-object v0, v3

    goto :goto_2

    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->l:Lcom/dynatrace/agent/communication/ServerDataMaintainer;

    if-eqz v1, :cond_c

    new-instance v3, Lcom/dynatrace/agent/communication/LocalServerData;

    iget-object v8, v1, Lcom/dynatrace/agent/communication/ServerDataMaintainer;->d:Lcom/dynatrace/agent/communication/api/AgentState;

    iget-object v10, v1, Lcom/dynatrace/agent/communication/ServerDataMaintainer;->e:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    iget-object v1, v1, Lcom/dynatrace/agent/communication/ServerDataMaintainer;->f:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    invoke-direct {v3, v8, v10, v1}, Lcom/dynatrace/agent/communication/LocalServerData;-><init>(Lcom/dynatrace/agent/communication/api/AgentState;Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;Lcom/dynatrace/android/agent/conf/ServerConfiguration;)V

    iget-object v1, v0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->b:Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;

    iget-object v8, v3, Lcom/dynatrace/agent/communication/LocalServerData;->b:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    iget v8, v8, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->b:I

    int-to-long v10, v8

    const-wide/16 v12, 0x400

    mul-long/2addr v10, v12

    iput-object v0, v9, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$dispatchData$1;->b:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

    iput-object v3, v9, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$dispatchData$1;->c:Ljava/lang/Object;

    iput v6, v9, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$dispatchData$1;->h:I

    invoke-virtual {v1, v10, v11, v9}, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;->c(JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_5

    goto/16 :goto_5

    :cond_5
    move-object v14, v3

    :goto_2
    check-cast v1, Lkotlin/Pair;

    iget-object v3, v1, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v3, Lcom/dynatrace/agent/communication/preprocessing/DispatchableData;

    iget-object v1, v1, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v3, :cond_a

    iget-object v8, v0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->j:Lcom/dynatrace/agent/communication/preprocessing/ToDataRequestMapper;

    iget-object v10, v0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->n:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v16, v10

    new-instance v10, Lcom/dynatrace/agent/communication/network/datasource/DataRequest;

    iget-object v11, v3, Lcom/dynatrace/agent/communication/preprocessing/DispatchableData;->a:Lcom/dynatrace/agent/storage/db/EndPointInfo;

    iget-object v12, v8, Lcom/dynatrace/agent/communication/preprocessing/ToDataRequestMapper;->a:Lcom/dynatrace/agent/communication/mapper/DbRecordsToRequestBodyMapper;

    iget-object v13, v3, Lcom/dynatrace/agent/communication/preprocessing/DispatchableData;->b:Ljava/util/List;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Ljava/lang/StringBuilder;

    iget v12, v12, Lcom/dynatrace/agent/communication/mapper/DbRecordsToRequestBodyMapper;->a:I

    move/from16 p1, v6

    const-string v6, "{\"data_version\":"

    const-string v4, ",\"data\":{\"events\":["

    invoke-static {v12, v6, v4}, Ln00;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v13

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dynatrace/agent/storage/db/EventRecord;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v6, Lcom/dynatrace/agent/storage/db/EventRecord;->b:Ljava/lang/String;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2c

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_7
    const-string v4, "]}}"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-boolean v13, v3, Lcom/dynatrace/agent/communication/preprocessing/DispatchableData;->c:Z

    iget-object v4, v8, Lcom/dynatrace/agent/communication/preprocessing/ToDataRequestMapper;->b:Lcom/dynatrace/agent/communication/RetryManager;

    iget-object v6, v3, Lcom/dynatrace/agent/communication/preprocessing/DispatchableData;->a:Lcom/dynatrace/agent/storage/db/EndPointInfo;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, Lcom/dynatrace/agent/communication/RetryManager;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/dynatrace/agent/communication/network/model/RetryInfo;

    invoke-direct/range {v10 .. v16}, Lcom/dynatrace/agent/communication/network/datasource/DataRequest;-><init>(Lcom/dynatrace/agent/storage/db/EndPointInfo;Ljava/lang/String;ZLcom/dynatrace/agent/communication/LocalServerData;Lcom/dynatrace/agent/communication/network/model/RetryInfo;Ljava/lang/Integer;)V

    iget-object v4, v0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->a:Lcom/dynatrace/agent/communication/network/datasource/NetworkDataSource;

    iput-object v0, v9, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$dispatchData$1;->b:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

    iput-object v3, v9, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$dispatchData$1;->c:Ljava/lang/Object;

    iput-object v10, v9, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$dispatchData$1;->d:Lcom/dynatrace/agent/communication/network/datasource/DataRequest;

    iput-boolean v1, v9, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$dispatchData$1;->e:Z

    iput v5, v9, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$dispatchData$1;->h:I

    invoke-interface {v4, v10}, Lcom/dynatrace/agent/communication/network/datasource/NetworkDataSource;->b(Lcom/dynatrace/agent/communication/network/datasource/DataRequest;)Lcom/dynatrace/agent/communication/network/response/ResponseResult;

    move-result-object v4

    if-ne v4, v2, :cond_8

    goto :goto_5

    :cond_8
    move-object v6, v0

    move v8, v1

    move-object v5, v3

    move-object v1, v4

    move-object v3, v10

    :goto_4
    move-object v4, v1

    check-cast v4, Lcom/dynatrace/agent/communication/network/response/ResponseResult;

    iget-object v0, v6, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->c:Lcom/dynatrace/agent/communication/ResponseProcessor;

    iget-object v1, v3, Lcom/dynatrace/agent/communication/network/datasource/DataRequest;->a:Lcom/dynatrace/agent/storage/db/EndPointInfo;

    iget-object v3, v5, Lcom/dynatrace/agent/communication/preprocessing/DispatchableData;->b:Ljava/util/List;

    iget-object v5, v6, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->i:Lcom/dynatrace/agent/communication/RetryManager;

    iput-object v7, v9, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$dispatchData$1;->b:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

    iput-object v7, v9, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$dispatchData$1;->c:Ljava/lang/Object;

    iput-object v7, v9, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$dispatchData$1;->d:Lcom/dynatrace/agent/communication/network/datasource/DataRequest;

    const/4 v6, 0x3

    iput v6, v9, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$dispatchData$1;->h:I

    move-object v6, v3

    move-object v7, v5

    move-object v3, v0

    move-object v5, v1

    invoke-interface/range {v3 .. v9}, Lcom/dynatrace/agent/communication/ResponseProcessor;->c(Lcom/dynatrace/agent/communication/network/response/ResponseResult;Lcom/dynatrace/agent/storage/db/EndPointInfo;Ljava/util/List;Lcom/dynatrace/agent/communication/RetryManager;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_9

    :goto_5
    return-object v2

    :cond_9
    return-object v0

    :cond_a
    move/from16 p1, v6

    iget-object v0, v0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->c:Lcom/dynatrace/agent/communication/ResponseProcessor;

    invoke-interface {v0}, Lcom/dynatrace/agent/communication/ResponseProcessor;->a()J

    move-result-wide v0

    sget-object v2, Lkotlin/time/Duration;->c:Lkotlin/time/Duration$Companion;

    sget-object v2, Lkotlin/time/DurationUnit;->HOURS:Lkotlin/time/DurationUnit;

    invoke-static {v5, v2}, Lkotlin/time/DurationKt;->g(ILkotlin/time/DurationUnit;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lkotlin/time/Duration;->c(JJ)I

    move-result v0

    if-ltz v0, :cond_b

    const-string v0, "request new config after 2hr timeout"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    new-instance v1, Lcom/dynatrace/agent/communication/CommunicationContext;

    sget-object v0, Lkotlin/time/Duration;->c:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/dynatrace/agent/communication/CommunicationState$ConfigAwaiting;->a:Lcom/dynatrace/agent/communication/CommunicationState$ConfigAwaiting;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/dynatrace/agent/communication/CommunicationContext;-><init>(JLcom/dynatrace/agent/communication/CommunicationState;Lcom/dynatrace/agent/communication/api/ServerDataUpdate;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_b
    new-instance v2, Lcom/dynatrace/agent/communication/CommunicationContext;

    sget-wide v3, Lcom/dynatrace/agent/communication/CommunicationManagerImplKt;->a:J

    new-instance v5, Lcom/dynatrace/agent/communication/CommunicationState$Waiting;

    move/from16 v0, p1

    invoke-direct {v5, v7, v0, v7}, Lcom/dynatrace/agent/communication/CommunicationState$Waiting;-><init>(Lcom/dynatrace/agent/communication/CommunicationState$ConnectionStatus;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/dynatrace/agent/communication/CommunicationContext;-><init>(JLcom/dynatrace/agent/communication/CommunicationState;Lcom/dynatrace/agent/communication/api/ServerDataUpdate;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_c
    const-string v0, "serverDataMaintainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v7
.end method

.method public static final f(Lcom/dynatrace/agent/communication/CommunicationManagerImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 13

    instance-of v0, p1, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$obtainConfiguration$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$obtainConfiguration$1;

    iget v1, v0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$obtainConfiguration$1;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$obtainConfiguration$1;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$obtainConfiguration$1;

    invoke-direct {v0, p0, p1}, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$obtainConfiguration$1;-><init>(Lcom/dynatrace/agent/communication/CommunicationManagerImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$obtainConfiguration$1;->e:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$obtainConfiguration$1;->g:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    iget-object p0, v0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$obtainConfiguration$1;->d:Lcom/dynatrace/agent/communication/ResponseProcessor;

    iget-object v2, v0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$obtainConfiguration$1;->c:Lcom/dynatrace/agent/storage/db/EndPointInfo;

    iget-object v4, v0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$obtainConfiguration$1;->b:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->b:Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;

    iget-object v2, p1, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;->a:Lcom/dynatrace/agent/storage/db/EndPointInfo;

    iget-object p1, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->c:Lcom/dynatrace/agent/communication/ResponseProcessor;

    iget-object v6, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->a:Lcom/dynatrace/agent/communication/network/datasource/NetworkDataSource;

    new-instance v7, Lcom/dynatrace/agent/communication/network/datasource/ConfigRequest;

    iget-object v8, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->l:Lcom/dynatrace/agent/communication/ServerDataMaintainer;

    if-eqz v8, :cond_6

    new-instance v9, Lcom/dynatrace/agent/communication/LocalServerData;

    iget-object v10, v8, Lcom/dynatrace/agent/communication/ServerDataMaintainer;->d:Lcom/dynatrace/agent/communication/api/AgentState;

    iget-object v11, v8, Lcom/dynatrace/agent/communication/ServerDataMaintainer;->e:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    iget-object v8, v8, Lcom/dynatrace/agent/communication/ServerDataMaintainer;->f:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    invoke-direct {v9, v10, v11, v8}, Lcom/dynatrace/agent/communication/LocalServerData;-><init>(Lcom/dynatrace/agent/communication/api/AgentState;Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;Lcom/dynatrace/android/agent/conf/ServerConfiguration;)V

    iget-object v8, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->i:Lcom/dynatrace/agent/communication/RetryManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v8, Lcom/dynatrace/agent/communication/RetryManager;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dynatrace/agent/communication/network/model/RetryInfo;

    iget-object v10, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->n:Ljava/lang/Integer;

    invoke-direct {v7, v2, v9, v8, v10}, Lcom/dynatrace/agent/communication/network/datasource/ConfigRequest;-><init>(Lcom/dynatrace/agent/storage/db/EndPointInfo;Lcom/dynatrace/agent/communication/LocalServerData;Lcom/dynatrace/agent/communication/network/model/RetryInfo;Ljava/lang/Integer;)V

    iput-object p0, v0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$obtainConfiguration$1;->b:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

    iput-object v2, v0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$obtainConfiguration$1;->c:Lcom/dynatrace/agent/storage/db/EndPointInfo;

    iput-object p1, v0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$obtainConfiguration$1;->d:Lcom/dynatrace/agent/communication/ResponseProcessor;

    iput v4, v0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$obtainConfiguration$1;->g:I

    invoke-interface {v6, v7}, Lcom/dynatrace/agent/communication/network/datasource/NetworkDataSource;->a(Lcom/dynatrace/agent/communication/network/datasource/ConfigRequest;)Lcom/dynatrace/agent/communication/network/response/ResponseResult;

    move-result-object v4

    if-ne v4, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v12, v4

    move-object v4, p0

    move-object p0, p1

    move-object p1, v12

    :goto_1
    check-cast p1, Lcom/dynatrace/agent/communication/network/response/ResponseResult;

    iget-object v4, v4, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->i:Lcom/dynatrace/agent/communication/RetryManager;

    iput-object v5, v0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$obtainConfiguration$1;->b:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

    iput-object v5, v0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$obtainConfiguration$1;->c:Lcom/dynatrace/agent/storage/db/EndPointInfo;

    iput-object v5, v0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$obtainConfiguration$1;->d:Lcom/dynatrace/agent/communication/ResponseProcessor;

    iput v3, v0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$obtainConfiguration$1;->g:I

    invoke-interface {p0, p1, v2, v4, v0}, Lcom/dynatrace/agent/communication/ResponseProcessor;->b(Lcom/dynatrace/agent/communication/network/response/ResponseResult;Lcom/dynatrace/agent/storage/db/EndPointInfo;Lcom/dynatrace/agent/communication/RetryManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    return-object p0

    :cond_6
    const-string p0, "serverDataMaintainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public final a()V
    .locals 4

    new-instance v0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$stopCommunication$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$stopCommunication$1;-><init>(Lcom/dynatrace/agent/communication/CommunicationManagerImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->e:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v3, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object v0, Lcom/dynatrace/agent/communication/CommunicationState$Off;->a:Lcom/dynatrace/agent/communication/CommunicationState$Off;

    iput-object v0, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->k:Lcom/dynatrace/agent/communication/CommunicationState;

    const-string p0, "terminated agent communication"

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;Lcom/dynatrace/android/agent/conf/ServerConfiguration;)Lkotlin/Unit;
    .locals 6

    new-instance v0, Lcom/dynatrace/agent/communication/LocalServerData;

    sget-object v1, Lcom/dynatrace/agent/communication/api/AgentState$Disabled;->a:Lcom/dynatrace/agent/communication/api/AgentState$Disabled;

    invoke-direct {v0, v1, p1, p2}, Lcom/dynatrace/agent/communication/LocalServerData;-><init>(Lcom/dynatrace/agent/communication/api/AgentState;Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;Lcom/dynatrace/android/agent/conf/ServerConfiguration;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "launching BPv4 communication with initial "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    new-instance p1, Lcom/dynatrace/agent/communication/ServerDataMaintainer;

    iget-object p2, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->d:Lcom/dynatrace/agent/communication/api/ServerDataListener;

    invoke-direct {p1, v0, p2}, Lcom/dynatrace/agent/communication/ServerDataMaintainer;-><init>(Lcom/dynatrace/agent/communication/LocalServerData;Lcom/dynatrace/agent/communication/api/ServerDataListener;)V

    iput-object p1, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->l:Lcom/dynatrace/agent/communication/ServerDataMaintainer;

    new-instance p1, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$start$2;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$start$2;-><init>(Lcom/dynatrace/agent/communication/CommunicationManagerImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->e:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v1, p2, p2, p1, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->m:Lkotlinx/coroutines/Job;

    new-instance v0, Lcom/dynatrace/agent/communication/CommunicationContext;

    sget-object p1, Lkotlin/time/Duration;->c:Lkotlin/time/Duration$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/dynatrace/agent/communication/CommunicationState$ConfigAwaiting;->a:Lcom/dynatrace/agent/communication/CommunicationState$ConfigAwaiting;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/dynatrace/agent/communication/CommunicationContext;-><init>(JLcom/dynatrace/agent/communication/CommunicationState;Lcom/dynatrace/agent/communication/api/ServerDataUpdate;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->g(Lcom/dynatrace/agent/communication/CommunicationContext;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final c(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->n:Ljava/lang/Integer;

    return-void
.end method

.method public final d(Lcom/dynatrace/android/agent/conf/ServerConfiguration;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->l:Lcom/dynatrace/agent/communication/ServerDataMaintainer;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$updateV3Config$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$updateV3Config$1;-><init>(Lcom/dynatrace/agent/communication/CommunicationManagerImpl;Lcom/dynatrace/android/agent/conf/ServerConfiguration;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    iget-object p0, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->e:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public final g(Lcom/dynatrace/agent/communication/CommunicationContext;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "heartbeat: next communication attempt scheduled with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/dynatrace/agent/communication/CommunicationContext;->b:Lcom/dynatrace/agent/communication/CommunicationState;

    iput-object v0, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->k:Lcom/dynatrace/agent/communication/CommunicationState;

    new-instance v1, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$1;-><init>(Lcom/dynatrace/agent/communication/CommunicationManagerImpl;Lkotlin/coroutines/Continuation;)V

    iget-object v3, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->h:Lcom/dynatrace/agent/communication/CommunicationContextTaskScheduler;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, Lcom/dynatrace/agent/communication/CommunicationContextTaskScheduler;->c:Lkotlinx/coroutines/Job;

    const/4 v5, 0x3

    if-nez v4, :cond_1

    sget-object v4, Lcom/dynatrace/agent/communication/CommunicationState$Offline;->a:Lcom/dynatrace/agent/communication/CommunicationState$Offline;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/dynatrace/agent/communication/CommunicationContextTaskScheduler;->c:Lkotlinx/coroutines/Job;

    if-eqz v4, :cond_0

    invoke-interface {v4, v2}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v2, v3, Lcom/dynatrace/agent/communication/CommunicationContextTaskScheduler;->c:Lkotlinx/coroutines/Job;

    iget-object v4, v3, Lcom/dynatrace/agent/communication/CommunicationContextTaskScheduler;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v6, Lcom/dynatrace/agent/communication/CommunicationContextTaskScheduler$startTimer$1;

    invoke-direct {v6, v3, v1, v2}, Lcom/dynatrace/agent/communication/CommunicationContextTaskScheduler$startTimer$1;-><init>(Lcom/dynatrace/agent/communication/CommunicationContextTaskScheduler;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-static {v4, v2, v2, v6, v5}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v1

    iput-object v1, v3, Lcom/dynatrace/agent/communication/CommunicationContextTaskScheduler;->c:Lkotlinx/coroutines/Job;

    goto :goto_0

    :cond_1
    iget-object v1, v3, Lcom/dynatrace/agent/communication/CommunicationContextTaskScheduler;->c:Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_2

    invoke-interface {v1, v2}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_2
    iput-object v2, v3, Lcom/dynatrace/agent/communication/CommunicationContextTaskScheduler;->c:Lkotlinx/coroutines/Job;

    :goto_0
    instance-of v0, v0, Lcom/dynatrace/agent/communication/CommunicationState$Off;

    if-nez v0, :cond_3

    new-instance v0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$2;

    invoke-direct {v0, p1, p0, v2}, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$scheduleNextCommunicationAttempt$2;-><init>(Lcom/dynatrace/agent/communication/CommunicationContext;Lcom/dynatrace/agent/communication/CommunicationManagerImpl;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->e:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v2, v2, v0, v5}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_3
    return-void
.end method
