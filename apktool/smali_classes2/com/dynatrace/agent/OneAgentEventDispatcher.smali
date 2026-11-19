.class public final Lcom/dynatrace/agent/OneAgentEventDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/agent/RumEventDispatcher;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001Bi\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/dynatrace/agent/OneAgentEventDispatcher;",
        "Lcom/dynatrace/agent/RumEventDispatcher;",
        "Lcom/dynatrace/agent/OneAgentConfiguration;",
        "oneAgentConfiguration",
        "Lcom/dynatrace/agent/common/time/TimeProvider;",
        "timeProvider",
        "Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;",
        "eventDatabase",
        "Lcom/dynatrace/agent/metrics/MetricsRepository;",
        "metricsRepository",
        "Lkotlinx/coroutines/CoroutineScope;",
        "coroutineScope",
        "Lcom/dynatrace/agent/view/ViewSummarizer;",
        "viewSummarizer",
        "Lcom/dynatrace/agent/view/ViewContextHistory;",
        "viewContextHistory",
        "Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;",
        "serverConfigurationDataSource",
        "Lcom/dynatrace/agent/storage/memory/DynamicConfigDataSource;",
        "dynamicConfigDataSource",
        "Lcom/dynatrace/agent/events/EventThrottler;",
        "eventThrottler",
        "Lcom/dynatrace/agent/events/EventFlowGovernor;",
        "eventFlowGovernor",
        "Lcom/dynatrace/agent/di/SessionInformationProvider;",
        "sessionInformationProvider",
        "<init>",
        "(Lcom/dynatrace/agent/OneAgentConfiguration;Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;Lcom/dynatrace/agent/metrics/MetricsRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/agent/view/ViewSummarizer;Lcom/dynatrace/agent/view/ViewContextHistory;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;Lcom/dynatrace/agent/storage/memory/DynamicConfigDataSource;Lcom/dynatrace/agent/events/EventThrottler;Lcom/dynatrace/agent/events/EventFlowGovernor;Lcom/dynatrace/agent/di/SessionInformationProvider;)V",
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
.field public final a:Lcom/dynatrace/agent/OneAgentConfiguration;

.field public final b:Lcom/dynatrace/agent/common/time/TimeProvider;

.field public final c:Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;

.field public final d:Lcom/dynatrace/agent/metrics/MetricsRepository;

.field public final e:Lkotlinx/coroutines/CoroutineScope;

.field public final f:Lcom/dynatrace/agent/view/ViewSummarizer;

.field public final g:Lcom/dynatrace/agent/view/ViewContextHistory;

.field public final h:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;

.field public final i:Lcom/dynatrace/agent/storage/memory/DynamicConfigDataSource;

.field public final j:Lcom/dynatrace/agent/events/EventThrottler;

.field public final k:Lcom/dynatrace/agent/events/EventFlowGovernor;

.field public final l:Lcom/dynatrace/agent/di/SessionInformationProvider;

.field public m:Lcom/dynatrace/agent/useraction/UserActionController;

.field public final n:Ljava/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/OneAgentConfiguration;Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;Lcom/dynatrace/agent/metrics/MetricsRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/agent/view/ViewSummarizer;Lcom/dynatrace/agent/view/ViewContextHistory;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;Lcom/dynatrace/agent/storage/memory/DynamicConfigDataSource;Lcom/dynatrace/agent/events/EventThrottler;Lcom/dynatrace/agent/events/EventFlowGovernor;Lcom/dynatrace/agent/di/SessionInformationProvider;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/OneAgentEventDispatcher;->a:Lcom/dynatrace/agent/OneAgentConfiguration;

    iput-object p2, p0, Lcom/dynatrace/agent/OneAgentEventDispatcher;->b:Lcom/dynatrace/agent/common/time/TimeProvider;

    iput-object p3, p0, Lcom/dynatrace/agent/OneAgentEventDispatcher;->c:Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;

    iput-object p4, p0, Lcom/dynatrace/agent/OneAgentEventDispatcher;->d:Lcom/dynatrace/agent/metrics/MetricsRepository;

    iput-object p5, p0, Lcom/dynatrace/agent/OneAgentEventDispatcher;->e:Lkotlinx/coroutines/CoroutineScope;

    iput-object p6, p0, Lcom/dynatrace/agent/OneAgentEventDispatcher;->f:Lcom/dynatrace/agent/view/ViewSummarizer;

    iput-object p7, p0, Lcom/dynatrace/agent/OneAgentEventDispatcher;->g:Lcom/dynatrace/agent/view/ViewContextHistory;

    iput-object p8, p0, Lcom/dynatrace/agent/OneAgentEventDispatcher;->h:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;

    iput-object p9, p0, Lcom/dynatrace/agent/OneAgentEventDispatcher;->i:Lcom/dynatrace/agent/storage/memory/DynamicConfigDataSource;

    iput-object p10, p0, Lcom/dynatrace/agent/OneAgentEventDispatcher;->j:Lcom/dynatrace/agent/events/EventThrottler;

    iput-object p11, p0, Lcom/dynatrace/agent/OneAgentEventDispatcher;->k:Lcom/dynatrace/agent/events/EventFlowGovernor;

    iput-object p12, p0, Lcom/dynatrace/agent/OneAgentEventDispatcher;->l:Lcom/dynatrace/agent/di/SessionInformationProvider;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/OneAgentEventDispatcher;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/agent/OneAgentConfiguration;Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;Lcom/dynatrace/agent/metrics/MetricsRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/agent/view/ViewSummarizer;Lcom/dynatrace/agent/view/ViewContextHistory;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;Lcom/dynatrace/agent/storage/memory/DynamicConfigDataSource;Lcom/dynatrace/agent/events/EventThrottler;Lcom/dynatrace/agent/events/EventFlowGovernor;Lcom/dynatrace/agent/di/SessionInformationProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 14

    and-int/lit8 v0, p13, 0x10

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 72
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 73
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    move-object v6, v0

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    goto :goto_1

    :cond_0
    move-object/from16 v6, p5

    goto :goto_0

    .line 74
    :goto_1
    invoke-direct/range {v1 .. v13}, Lcom/dynatrace/agent/OneAgentEventDispatcher;-><init>(Lcom/dynatrace/agent/OneAgentConfiguration;Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;Lcom/dynatrace/agent/metrics/MetricsRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/agent/view/ViewSummarizer;Lcom/dynatrace/agent/view/ViewContextHistory;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;Lcom/dynatrace/agent/storage/memory/DynamicConfigDataSource;Lcom/dynatrace/agent/events/EventThrottler;Lcom/dynatrace/agent/events/EventFlowGovernor;Lcom/dynatrace/agent/di/SessionInformationProvider;)V

    return-void
.end method

.method public static g(Lcom/dynatrace/agent/OneAgentEventDispatcher;Lorg/json/JSONObject;JLjava/util/List;Ljava/util/List;Lcom/dynatrace/agent/metrics/SessionInformationMetrics;Lx60;Lcom/dynatrace/agent/events/enrichment/EnrichmentContext;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    and-int/lit8 v4, p9, 0x20

    if-eqz v4, :cond_0

    new-instance v4, Lt30;

    const/16 v5, 0x1c

    move-object/from16 v6, p6

    invoke-direct {v4, v0, v6, v5}, Lt30;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    move-object/from16 v4, p7

    :goto_0
    and-int/lit8 v5, p9, 0x40

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v5, p8

    :goto_1
    iget-object v7, v0, Lcom/dynatrace/agent/OneAgentEventDispatcher;->f:Lcom/dynatrace/agent/view/ViewSummarizer;

    iget-object v8, v0, Lcom/dynatrace/agent/OneAgentEventDispatcher;->h:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;

    invoke-interface {v8}, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;->b()Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    move-result-object v8

    iget-object v9, v0, Lcom/dynatrace/agent/OneAgentEventDispatcher;->i:Lcom/dynatrace/agent/storage/memory/DynamicConfigDataSource;

    invoke-interface {v9}, Lcom/dynatrace/agent/storage/memory/DynamicConfigDataSource;->a()Lcom/dynatrace/agent/communication/api/AgentState;

    move-result-object v9

    iget-boolean v10, v8, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->d:Z

    if-eqz v10, :cond_2c

    instance-of v10, v9, Lcom/dynatrace/agent/communication/api/AgentState$Enabled;

    if-eqz v10, :cond_2c

    check-cast v9, Lcom/dynatrace/agent/communication/api/AgentState$Enabled;

    iget-boolean v9, v9, Lcom/dynatrace/agent/communication/api/AgentState$Enabled;->a:Z

    if-nez v9, :cond_2c

    iget-object v9, v0, Lcom/dynatrace/agent/OneAgentEventDispatcher;->m:Lcom/dynatrace/agent/useraction/UserActionController;

    if-eqz v9, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v9, Lcom/dynatrace/agent/useraction/UserActionController;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v9, v9, Lcom/dynatrace/agent/useraction/UserActionController;->i:Lcom/dynatrace/agent/useraction/UserActionLifecycle;

    invoke-virtual {v9, v1}, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->f(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_2
    :goto_2
    iget-object v9, v7, Lcom/dynatrace/agent/view/ViewSummarizer;->b:Lcom/dynatrace/agent/view/ViewContext;

    const-string v10, "start_time"

    invoke-virtual {v1, v10, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    iget-object v12, v0, Lcom/dynatrace/agent/OneAgentEventDispatcher;->g:Lcom/dynatrace/agent/view/ViewContextHistory;

    iget-object v12, v12, Lcom/dynatrace/agent/view/ViewContextHistory;->a:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v12}, Lkotlin/collections/ArrayDeque;->f()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Lcom/dynatrace/agent/view/ViewContextHistory$Entry;

    move-object/from16 p7, v7

    iget-wide v6, v14, Lcom/dynatrace/agent/view/ViewContextHistory$Entry;->a:J

    cmp-long v6, v6, v10

    if-gtz v6, :cond_3

    iget-object v6, v14, Lcom/dynatrace/agent/view/ViewContextHistory$Entry;->c:Ljava/lang/Long;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v10

    if-ltz v6, :cond_3

    goto :goto_4

    :cond_3
    move-object/from16 v7, p7

    goto :goto_3

    :cond_4
    move-object/from16 p7, v7

    const/4 v13, 0x0

    :cond_5
    :goto_4
    check-cast v13, Lcom/dynatrace/agent/view/ViewContextHistory$Entry;

    if-eqz v13, :cond_6

    iget-object v6, v13, Lcom/dynatrace/agent/view/ViewContextHistory$Entry;->b:Lcom/dynatrace/agent/view/ViewContext;

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    :goto_5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v7

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v7, v4}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v4, p4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v7, v4}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    if-eqz v9, :cond_7

    new-instance v4, Lcom/dynatrace/agent/events/enrichment/ViewContextSupplier;

    invoke-direct {v4, v9}, Lcom/dynatrace/agent/events/enrichment/ViewContextSupplier;-><init>(Lcom/dynatrace/agent/view/ViewContext;)V

    invoke-virtual {v7, v4}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz v6, :cond_9

    iget-object v4, v6, Lcom/dynatrace/agent/view/ViewContext;->a:Ljava/lang/String;

    if-eqz v9, :cond_8

    iget-object v9, v9, Lcom/dynatrace/agent/view/ViewContext;->a:Ljava/lang/String;

    goto :goto_6

    :cond_8
    const/4 v9, 0x0

    :goto_6
    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    new-instance v4, Lcom/dynatrace/agent/events/enrichment/SourceViewContextSupplier;

    invoke-direct {v4, v6}, Lcom/dynatrace/agent/events/enrichment/SourceViewContextSupplier;-><init>(Lcom/dynatrace/agent/view/ViewContext;)V

    invoke-virtual {v7, v4}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v4

    new-instance v6, Lcom/dynatrace/agent/events/enrichment/AttributeAggregator;

    invoke-direct {v6, v4}, Lcom/dynatrace/agent/events/enrichment/AttributeAggregator;-><init>(Ljava/util/List;)V

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v4

    new-instance v7, Lcom/dynatrace/agent/events/enrichment/ProtectedAttributesSupplier;

    iget-object v9, v0, Lcom/dynatrace/agent/OneAgentEventDispatcher;->a:Lcom/dynatrace/agent/OneAgentConfiguration;

    iget-object v10, v9, Lcom/dynatrace/agent/OneAgentConfiguration;->b:Ljava/lang/String;

    iget-object v9, v9, Lcom/dynatrace/agent/OneAgentConfiguration;->a:Ljava/lang/String;

    invoke-direct {v7, v10, v9}, Lcom/dynatrace/agent/events/enrichment/ProtectedAttributesSupplier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, p5

    check-cast v7, Ljava/util/Collection;

    invoke-virtual {v4, v7}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v4

    new-instance v7, Lcom/dynatrace/agent/events/enrichment/AttributeAggregator;

    invoke-direct {v7, v4}, Lcom/dynatrace/agent/events/enrichment/AttributeAggregator;-><init>(Ljava/util/List;)V

    iget-object v4, v0, Lcom/dynatrace/agent/OneAgentEventDispatcher;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "rum event: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/dynatrace/agent/events/enrichment/AttributeAggregator;->a()Ljava/util/TreeMap;

    move-result-object v6

    invoke-static {v1}, Lcom/dynatrace/agent/events/enrichment/JsonObjectExtensionsKt;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v9, "dt.support.api.overridden_fields"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    if-nez v10, :cond_a

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :goto_7
    move-object/from16 p4, v6

    goto :goto_a

    :cond_a
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v13

    const/4 v14, 0x0

    :goto_8
    if-ge v14, v13, :cond_c

    invoke-virtual {v10, v14}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    instance-of v15, v15, Ljava/lang/String;

    if-eqz v15, :cond_b

    new-instance v15, Lcom/dynatrace/agent/events/enrichment/EnrichmentAttribute;

    invoke-virtual {v10, v14}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 p4, v6

    const-string v6, "unknown"

    invoke-direct {v15, v11, v6}, Lcom/dynatrace/agent/events/enrichment/EnrichmentAttribute;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_b
    move-object/from16 p4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "dropped existing overridden_key because it was no String: "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v14}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :goto_9
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v6, p4

    goto :goto_8

    :cond_c
    move-object v10, v12

    goto :goto_7

    :goto_a
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual/range {p4 .. p4}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/dynatrace/agent/events/enrichment/EnrichmentAttribute;

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_11

    iget-object v15, v11, Lcom/dynatrace/agent/events/enrichment/EnrichmentAttribute;->b:Ljava/lang/Object;

    const/16 p4, -0x1

    iget-object v12, v11, Lcom/dynatrace/agent/events/enrichment/EnrichmentAttribute;->a:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_11

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 p5, v6

    const-string v6, "auto-enrichment value overwritten: "

    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is overwritten with custom value: "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    sget-object v6, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttributeSanitationKt;->b:Ljava/util/List;

    invoke-interface {v6, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v13, 0x0

    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/dynatrace/agent/events/enrichment/EnrichmentAttribute;

    iget-object v14, v14, Lcom/dynatrace/agent/events/enrichment/EnrichmentAttribute;->a:Ljava/lang/String;

    invoke-static {v14, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    goto :goto_d

    :cond_d
    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    :cond_e
    move/from16 v13, p4

    :goto_d
    if-ltz v13, :cond_f

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v14, "key \'"

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\' already in overridden keys list. Replacing it."

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    invoke-interface {v10, v13, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_f
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_e
    move-object/from16 v6, p5

    goto/16 :goto_b

    :cond_11
    move-object/from16 p5, v6

    iget-object v6, v11, Lcom/dynatrace/agent/events/enrichment/EnrichmentAttribute;->b:Ljava/lang/Object;

    invoke-virtual {v1, v13, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_e

    :cond_12
    const/16 p4, -0x1

    new-instance v6, Lcom/dynatrace/agent/events/enrichment/EnrichedJsonContainer;

    invoke-direct {v6, v1, v10}, Lcom/dynatrace/agent/events/enrichment/EnrichedJsonContainer;-><init>(Lorg/json/JSONObject;Ljava/util/List;)V

    invoke-virtual {v7}, Lcom/dynatrace/agent/events/enrichment/AttributeAggregator;->a()Ljava/util/TreeMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    iget-object v10, v6, Lcom/dynatrace/agent/events/enrichment/EnrichedJsonContainer;->a:Lorg/json/JSONObject;

    if-eqz v7, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dynatrace/agent/events/enrichment/EnrichmentAttribute;

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_13

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "protected attribute integration: encountered key \'"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\' which is protected and will be overwritten with "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :cond_13
    iget-object v7, v7, Lcom/dynatrace/agent/events/enrichment/EnrichmentAttribute;->b:Ljava/lang/Object;

    invoke-virtual {v10, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_f

    :cond_14
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v6, Lcom/dynatrace/agent/events/enrichment/EnrichedJsonContainer;->b:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/dynatrace/agent/events/enrichment/EnrichedJsonContainer;

    invoke-direct {v6, v10, v1}, Lcom/dynatrace/agent/events/enrichment/EnrichedJsonContainer;-><init>(Lorg/json/JSONObject;Ljava/util/List;)V

    sget-object v7, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttributeSanitationKt;->a:Lkotlin/text/Regex;

    iget-object v7, v6, Lcom/dynatrace/agent/events/enrichment/EnrichedJsonContainer;->a:Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v11

    :cond_15
    :goto_10
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const-string v13, "exception.stack_trace"

    const/16 v14, 0x1388

    if-eqz v12, :cond_17

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    goto :goto_10

    :cond_16
    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    instance-of v15, v13, Ljava/lang/String;

    if-eqz v15, :cond_15

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    if-le v15, v14, :cond_15

    const-string v15, "sanitation: value of key \'"

    const-string v14, "\' is too long and thus is trimmed; original length: "

    invoke-static {v15, v12, v14}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "; "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    const/16 v14, 0x1388

    invoke-static {v14, v13}, Lkotlin/text/StringsKt;->V(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_10

    :cond_17
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "rum event after basic enrichment: overridden attributes: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; event: "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    instance-of v10, v5, Lcom/dynatrace/agent/events/enrichment/WebContext;

    if-eqz v10, :cond_19

    check-cast v5, Lcom/dynatrace/agent/events/enrichment/WebContext;

    iget-object v10, v5, Lcom/dynatrace/agent/events/enrichment/WebContext;->a:Lorg/json/JSONObject;

    if-nez v10, :cond_18

    const-string v4, "rum event modification: dropping event because enrichment context has no fields"

    invoke-static {v4}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_11

    :cond_18
    iget-boolean v5, v5, Lcom/dynatrace/agent/events/enrichment/WebContext;->b:Z

    invoke-static {v7}, Lcom/dynatrace/agent/events/enrichment/JsonObjectExtensionsKt;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    sget-object v11, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {v7, v10, v11}, Lcom/dynatrace/agent/events/enrichment/JsonObjectExtensionsKt;->f(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/List;)V

    const/4 v10, 0x0

    invoke-static {v6, v7, v5, v10}, Lcom/dynatrace/agent/events/enrichment/EnrichmentPipelineKt;->b(Lcom/dynatrace/agent/events/enrichment/EnrichedJsonContainer;Lorg/json/JSONObject;ZZ)Lcom/dynatrace/agent/events/enrichment/EnrichedJsonContainer;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/dynatrace/agent/events/enrichment/EnrichmentPipelineKt;->a(Lcom/dynatrace/agent/events/enrichment/EnrichedJsonContainer;Ljava/util/concurrent/ConcurrentLinkedQueue;)Lcom/dynatrace/agent/events/enrichment/EnrichedJsonContainer;

    move-result-object v4

    goto :goto_11

    :cond_19
    if-nez v5, :cond_2b

    invoke-static {v6, v4}, Lcom/dynatrace/agent/events/enrichment/EnrichmentPipelineKt;->a(Lcom/dynatrace/agent/events/enrichment/EnrichedJsonContainer;Ljava/util/concurrent/ConcurrentLinkedQueue;)Lcom/dynatrace/agent/events/enrichment/EnrichedJsonContainer;

    move-result-object v4

    :goto_11
    const/4 v5, 0x1

    if-nez v4, :cond_1a

    const/4 v6, 0x0

    goto/16 :goto_14

    :cond_1a
    iget-object v6, v4, Lcom/dynatrace/agent/events/enrichment/EnrichedJsonContainer;->a:Lorg/json/JSONObject;

    iget-object v4, v4, Lcom/dynatrace/agent/events/enrichment/EnrichedJsonContainer;->b:Ljava/util/List;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "rum event after modifications: overridden attributes: "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1b

    const-string v1, "protected attribute integration: encountered key \'dt.support.api.overridden_fields\' which is protected and will be removed"

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :cond_1b
    move-object v1, v4

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    check-cast v4, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v4, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dynatrace/agent/events/enrichment/EnrichmentAttribute;

    iget-object v7, v7, Lcom/dynatrace/agent/events/enrichment/EnrichmentAttribute;->a:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_1c
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v6, v1

    :cond_1d
    invoke-static {v6}, Lcom/dynatrace/agent/events/enrichment/JsonObjectExtensionsKt;->d(Lorg/json/JSONObject;)Z

    move-result v1

    const-string v4, "characteristics.has_event_properties"

    if-eqz v1, :cond_1e

    invoke-static {v4, v6}, Lcom/dynatrace/agent/events/enrichment/JsonObjectExtensionsKt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_13

    :cond_1e
    invoke-static {v4, v6}, Lcom/dynatrace/agent/events/enrichment/JsonObjectExtensionsKt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-static {v6}, Lcom/dynatrace/agent/events/enrichment/JsonObjectExtensionsKt;->d(Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_1f
    :goto_13
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "rum event after full enrichment: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :goto_14
    if-nez v6, :cond_20

    const-string v0, "event has been dropped during enrichment"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    return-void

    :cond_20
    move-object/from16 v1, p7

    iget-object v1, v1, Lcom/dynatrace/agent/view/ViewSummarizer;->d:Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;

    invoke-virtual {v1, v6}, Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;->a(Lorg/json/JSONObject;)V

    iget-object v1, v0, Lcom/dynatrace/agent/OneAgentEventDispatcher;->j:Lcom/dynatrace/agent/events/EventThrottler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v1, Lcom/dynatrace/agent/events/EventThrottler;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_1
    iget-object v7, v1, Lcom/dynatrace/agent/events/EventThrottler;->j:Ljava/util/List;

    invoke-static {v7, v6}, Lcom/dynatrace/agent/events/EventThrottler;->c(Ljava/util/List;Lorg/json/JSONObject;)Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/dynatrace/agent/events/EventThrottler;->e(Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez v1, :cond_21

    const-string v0, "event is dropped by throttling"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    return-void

    :cond_21
    new-instance v1, Lcom/dynatrace/agent/a;

    invoke-direct {v1, v0, v2, v3}, Lcom/dynatrace/agent/a;-><init>(Lcom/dynatrace/agent/OneAgentEventDispatcher;J)V

    const-string v0, "characteristics.has_crash"

    invoke-static {v0, v6}, Lcom/dynatrace/agent/events/enrichment/JsonObjectExtensionsKt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    const-string v2, " bytes)"

    if-nez v0, :cond_24

    const-string v0, "characteristics.has_anr"

    invoke-static {v0, v6}, Lcom/dynatrace/agent/events/enrichment/JsonObjectExtensionsKt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "characteristics.has_exception"

    invoke-static {v0, v6}, Lcom/dynatrace/agent/events/enrichment/JsonObjectExtensionsKt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_15

    :cond_22
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v3, v3

    iget v4, v8, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->c:I

    int-to-long v4, v4

    const-wide/16 v6, 0x400

    mul-long/2addr v4, v6

    int-to-long v6, v3

    cmp-long v6, v6, v4

    if-gtz v6, :cond_23

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/dynatrace/agent/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "event is dropped because it is too big: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes (max: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    return-void

    :cond_24
    :goto_15
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v3, "{\"data_version\":1,\"data\":{\"events\":["

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v3, v3

    const-string v4, "]}}"

    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v4, v4

    add-int/2addr v3, v4

    iget v4, v8, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->b:I

    mul-int/lit16 v4, v4, 0x400

    sub-int/2addr v4, v3

    const-string v3, "exception.message"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_25

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v14, 0x1388

    if-le v8, v14, :cond_25

    invoke-static {v14, v7}, Lkotlin/text/StringsKt;->V(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "trimmed exception message to 5000 characters"

    invoke-static {v3}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :cond_25
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v7, v7

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_26

    const-string v0, "encountered crash/anr/exception event without stacktrace, dropping event"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    return-void

    :cond_26
    if-gt v7, v4, :cond_27

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lcom/dynatrace/agent/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_27
    sub-int/2addr v7, v4

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v4, v3

    sub-int v7, v4, v7

    const/4 v10, 0x0

    invoke-static {v3, v10, v7}, Lkotlin/collections/ArraysKt;->o([BII)[B

    move-result-object v3

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2a

    :goto_16
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const v9, 0xfffd

    if-ne v8, v9, :cond_29

    if-gez v3, :cond_28

    goto :goto_17

    :cond_28
    move v0, v3

    goto :goto_16

    :cond_29
    add-int/2addr v0, v5

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_18

    :cond_2a
    :goto_17
    const-string v0, ""

    :goto_18
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "trimmed stacktrace to a length of "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes (original: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/dynatrace/agent/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_2b
    invoke-static {}, Lv40;->g()V

    :cond_2c
    return-void
.end method

.method public static h(Lcom/dynatrace/agent/metrics/SessionInformationMetrics;)Z
    .locals 1

    sget-object v0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->h:Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "session is null, discarding event"

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(JLcom/dynatrace/agent/metrics/SessionInformationMetrics;Lorg/json/JSONObject;Z)V
    .locals 8

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Lcom/dynatrace/agent/OneAgentEventDispatcher;->h(Lcom/dynatrace/agent/metrics/SessionInformationMetrics;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "start_time"

    invoke-virtual {p4, v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "duration"

    const-wide/16 v1, 0x0

    invoke-virtual {p4, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "characteristics.is_api_reported"

    if-eqz p5, :cond_1

    const/4 p5, 0x1

    invoke-virtual {p4, v0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :goto_0
    new-instance v1, Lcom/dynatrace/agent/OneAgentEventDispatcher$dispatchEvent$1;

    const/4 v7, 0x0

    move-object v2, p0

    move-wide v4, p1

    move-object v6, p3

    move-object v3, p4

    invoke-direct/range {v1 .. v7}, Lcom/dynatrace/agent/OneAgentEventDispatcher$dispatchEvent$1;-><init>(Lcom/dynatrace/agent/OneAgentEventDispatcher;Lorg/json/JSONObject;JLcom/dynatrace/agent/metrics/SessionInformationMetrics;Lkotlin/coroutines/Continuation;)V

    iget-object p0, v2, Lcom/dynatrace/agent/OneAgentEventDispatcher;->k:Lcom/dynatrace/agent/events/EventFlowGovernor;

    invoke-virtual {p0, v1}, Lcom/dynatrace/agent/events/EventFlowGovernor;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final b(Lorg/json/JSONObject;JLcom/dynatrace/agent/metrics/SessionInformationMetrics;Lcom/dynatrace/agent/storage/preference/MetricsData;)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p4}, Lcom/dynatrace/agent/OneAgentEventDispatcher;->h(Lcom/dynatrace/agent/metrics/SessionInformationMetrics;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "start_time"

    invoke-virtual {p1, v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "duration"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "characteristics.is_api_reported"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    new-instance v1, Lcom/dynatrace/agent/OneAgentEventDispatcher$dispatchEvent$4;

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/dynatrace/agent/OneAgentEventDispatcher$dispatchEvent$4;-><init>(Lcom/dynatrace/agent/OneAgentEventDispatcher;Lorg/json/JSONObject;JLcom/dynatrace/agent/metrics/SessionInformationMetrics;Lcom/dynatrace/agent/storage/preference/MetricsData;Lkotlin/coroutines/Continuation;)V

    iget-object p0, v2, Lcom/dynatrace/agent/OneAgentEventDispatcher;->k:Lcom/dynatrace/agent/events/EventFlowGovernor;

    invoke-virtual {p0, v1}, Lcom/dynatrace/agent/events/EventFlowGovernor;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final c(Lorg/json/JSONObject;JJLcom/dynatrace/agent/metrics/SessionInformationMetrics;Lcom/dynatrace/agent/events/enrichment/WebContext;)V
    .locals 8

    const-string v0, "start_time"

    invoke-virtual {p1, v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "duration"

    invoke-virtual {p1, v0, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p4, "characteristics.is_api_reported"

    invoke-virtual {p1, p4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/dynatrace/agent/OneAgentEventDispatcher$dispatchEvent$2;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/dynatrace/agent/OneAgentEventDispatcher$dispatchEvent$2;-><init>(Lcom/dynatrace/agent/OneAgentEventDispatcher;Lorg/json/JSONObject;JLcom/dynatrace/agent/metrics/SessionInformationMetrics;Lcom/dynatrace/agent/events/enrichment/EnrichmentContext;Lkotlin/coroutines/Continuation;)V

    iget-object p0, v1, Lcom/dynatrace/agent/OneAgentEventDispatcher;->k:Lcom/dynatrace/agent/events/EventFlowGovernor;

    invoke-virtual {p0, v0}, Lcom/dynatrace/agent/events/EventFlowGovernor;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final d(Lorg/json/JSONObject;Lcom/dynatrace/agent/metrics/SessionInformationMetrics;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/dynatrace/agent/OneAgentEventDispatcher;->h(Lcom/dynatrace/agent/metrics/SessionInformationMetrics;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "start_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Long;

    if-nez v1, :cond_1

    instance-of v1, v0, Ljava/lang/Integer;

    if-nez v1, :cond_1

    new-instance v0, Lcom/dynatrace/agent/EventJsonPreparer$ValidationResult$Invalid;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The given JSON event must have a valid start_time! json: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/EventJsonPreparer$ValidationResult$Invalid;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "duration"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Long;

    if-nez v2, :cond_2

    instance-of v1, v1, Ljava/lang/Integer;

    if-nez v1, :cond_2

    new-instance v0, Lcom/dynatrace/agent/EventJsonPreparer$ValidationResult$Invalid;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The given JSON event must have a valid duration! json: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/EventJsonPreparer$ValidationResult$Invalid;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/dynatrace/agent/EventJsonPreparer$ValidationResult$Valid;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/dynatrace/agent/EventJsonPreparer$ValidationResult$Valid;-><init>(J)V

    move-object v0, v1

    :goto_0
    instance-of v1, v0, Lcom/dynatrace/agent/EventJsonPreparer$ValidationResult$Invalid;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/dynatrace/agent/EventJsonPreparer$ValidationResult$Invalid;

    iget-object p0, v0, Lcom/dynatrace/agent/EventJsonPreparer$ValidationResult$Invalid;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    return-void

    :cond_3
    instance-of v1, v0, Lcom/dynatrace/agent/EventJsonPreparer$ValidationResult$Valid;

    if-eqz v1, :cond_4

    new-instance v2, Lcom/dynatrace/agent/OneAgentEventDispatcher$dispatchEvent$3;

    const/4 v7, 0x0

    move-object v5, v0

    check-cast v5, Lcom/dynatrace/agent/EventJsonPreparer$ValidationResult$Valid;

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/dynatrace/agent/OneAgentEventDispatcher$dispatchEvent$3;-><init>(Lcom/dynatrace/agent/OneAgentEventDispatcher;Lorg/json/JSONObject;Lcom/dynatrace/agent/EventJsonPreparer$ValidationResult$Valid;Lcom/dynatrace/agent/metrics/SessionInformationMetrics;Lkotlin/coroutines/Continuation;)V

    iget-object p0, v3, Lcom/dynatrace/agent/OneAgentEventDispatcher;->k:Lcom/dynatrace/agent/events/EventFlowGovernor;

    invoke-virtual {p0, v2}, Lcom/dynatrace/agent/events/EventFlowGovernor;->a(Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_4
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method public final e(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/dynatrace/agent/metrics/SessionInformationMetrics;)V
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/dynatrace/agent/OneAgentEventDispatcher$dispatchEventWithRestrictions$1;->b:Lcom/dynatrace/agent/OneAgentEventDispatcher$dispatchEventWithRestrictions$1;

    invoke-static {p3}, Lcom/dynatrace/agent/OneAgentEventDispatcher;->h(Lcom/dynatrace/agent/metrics/SessionInformationMetrics;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/dynatrace/agent/OneAgentEventDispatcher$dispatchEventWithRestrictions$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/dynatrace/agent/events/enrichment/sanitation/SanitationContext;

    iget-object p1, v2, Lcom/dynatrace/agent/events/enrichment/sanitation/SanitationContext;->a:Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/dynatrace/agent/events/enrichment/JsonObjectExtensionsKt;->d(Lorg/json/JSONObject;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v0, "characteristics.has_event_properties"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_1
    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {p1, p2, v0}, Lcom/dynatrace/agent/events/enrichment/JsonObjectExtensionsKt;->f(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/List;)V

    const-string p2, "duration"

    invoke-static {p2, p1}, Lcom/dynatrace/agent/events/enrichment/TimeMetricsSupplierKt;->a(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    iget-object v3, p0, Lcom/dynatrace/agent/OneAgentEventDispatcher;->b:Lcom/dynatrace/agent/common/time/TimeProvider;

    if-eqz v0, :cond_2

    const-wide/16 v4, 0x0

    invoke-virtual {p1, p2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "dt.support.api.has_dropped_properties"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    new-instance v4, Lcom/dynatrace/agent/events/enrichment/TimeMetrics;

    invoke-interface {v3}, Lcom/dynatrace/agent/common/time/TimeProvider;->a()J

    move-result-wide v5

    sget-object v0, Lkotlin/time/Duration;->c:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/dynatrace/agent/events/enrichment/TimeMetrics;-><init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    move-object v5, v4

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v4, Lcom/dynatrace/agent/events/enrichment/TimeMetrics;

    invoke-interface {v3}, Lcom/dynatrace/agent/common/time/TimeProvider;->a()J

    move-result-wide v5

    sget-object v0, Lkotlin/time/Duration;->c:Lkotlin/time/Duration$Companion;

    const/4 v0, -0x1

    sget-object v1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->g(ILkotlin/time/DurationUnit;)J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/dynatrace/agent/events/enrichment/TimeMetrics;-><init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_3
    new-instance v5, Lcom/dynatrace/agent/events/enrichment/TimeMetrics;

    invoke-interface {v3}, Lcom/dynatrace/agent/common/time/TimeProvider;->a()J

    move-result-wide v6

    sget-object v0, Lkotlin/time/Duration;->c:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/dynatrace/agent/events/enrichment/TimeMetrics;-><init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "start_time"

    iget-wide v3, v5, Lcom/dynatrace/agent/events/enrichment/TimeMetrics;->a:J

    if-eqz v0, :cond_4

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    sub-long v6, v3, v6

    invoke-virtual {p1, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :goto_2
    invoke-static {v1, p1}, Lcom/dynatrace/agent/events/enrichment/TimeMetricsSupplierKt;->a(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p0, "event is dropped because \'start_time\' has invalid type or value"

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    return-void

    :cond_5
    new-instance v0, Lcom/dynatrace/agent/OneAgentEventDispatcher$dispatchEventWithStrategy$3;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/dynatrace/agent/OneAgentEventDispatcher$dispatchEventWithStrategy$3;-><init>(Lcom/dynatrace/agent/OneAgentEventDispatcher;Lcom/dynatrace/agent/events/enrichment/sanitation/SanitationContext;JLcom/dynatrace/agent/events/enrichment/TimeMetrics;Lcom/dynatrace/agent/metrics/SessionInformationMetrics;Lkotlin/coroutines/Continuation;)V

    iget-object p0, v1, Lcom/dynatrace/agent/OneAgentEventDispatcher;->k:Lcom/dynatrace/agent/events/EventFlowGovernor;

    invoke-virtual {p0, v0}, Lcom/dynatrace/agent/events/EventFlowGovernor;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final f(Lorg/json/JSONObject;Lcom/dynatrace/agent/metrics/SessionInformationMetrics;)V
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/dynatrace/agent/OneAgentEventDispatcher;->l:Lcom/dynatrace/agent/di/SessionInformationProvider;

    invoke-interface {p2}, Lcom/dynatrace/agent/di/SessionInformationProvider;->a()Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    move-result-object p2

    :cond_0
    move-object v6, p2

    invoke-static {v6}, Lcom/dynatrace/agent/OneAgentEventDispatcher;->h(Lcom/dynatrace/agent/metrics/SessionInformationMetrics;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    const-string p2, "start_time"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    sget-object v4, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    new-instance p2, Lcom/dynatrace/agent/events/enrichment/SessionInformationSupplier;

    invoke-direct {p2, v6}, Lcom/dynatrace/agent/events/enrichment/SessionInformationSupplier;-><init>(Lcom/dynatrace/agent/metrics/SessionInformationMetrics;)V

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v8, 0x0

    const/16 v9, 0x60

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v9}, Lcom/dynatrace/agent/OneAgentEventDispatcher;->g(Lcom/dynatrace/agent/OneAgentEventDispatcher;Lorg/json/JSONObject;JLjava/util/List;Ljava/util/List;Lcom/dynatrace/agent/metrics/SessionInformationMetrics;Lx60;Lcom/dynatrace/agent/events/enrichment/EnrichmentContext;I)V

    return-void
.end method
