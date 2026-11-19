.class public final Lcom/dynatrace/agent/di/CoreComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/agent/di/CoreComponent$Holder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/dynatrace/agent/di/CoreComponent;",
        "",
        "Holder",
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


# static fields
.field public static final k:Lcom/dynatrace/agent/di/CoreComponent$Holder;

.field public static l:Lcom/dynatrace/agent/di/CoreComponent;


# instance fields
.field public final a:Lkotlinx/coroutines/internal/ContextScope;

.field public final b:Lcom/dynatrace/agent/storage/di/StorageModule;

.field public final c:Lcom/dynatrace/agent/di/SessionInformationProvider;

.field public final d:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

.field public final e:Lcom/dynatrace/agent/metrics/MetricsRepository;

.field public final f:Lcom/dynatrace/agent/OneAgentFacade;

.field public final g:Lcom/dynatrace/agent/communication/CommunicationManagerBridgeImpl;

.field public final h:Lcom/dynatrace/agent/OneAgentStartupImpl;

.field public final i:Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManagerBridgeImpl;

.field public final j:Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManagerBridgeImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynatrace/agent/di/CoreComponent$Holder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/di/CoreComponent$Holder;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynatrace/agent/di/CoreComponent;->k:Lcom/dynatrace/agent/di/CoreComponent$Holder;

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/agent/OneAgentConfiguration;Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/android/agent/communication/ServerConfigurationListener;Lokhttp3/Call$Factory;Landroid/app/Application;Lcom/dynatrace/agent/di/SecondGenServiceLocator;Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 48

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v8

    iput-object v8, v0, Lcom/dynatrace/agent/di/CoreComponent;->a:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v11, Lcom/dynatrace/agent/storage/di/StorageModule;

    invoke-direct {v11, v14, v8}, Lcom/dynatrace/agent/storage/di/StorageModule;-><init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;)V

    iput-object v11, v0, Lcom/dynatrace/agent/di/CoreComponent;->b:Lcom/dynatrace/agent/storage/di/StorageModule;

    new-instance v10, Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl;

    invoke-direct {v10, v14, v8}, Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl;-><init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;)V

    new-instance v9, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl;

    iget-object v1, v11, Lcom/dynatrace/agent/storage/di/StorageModule;->c:Lcom/dynatrace/agent/storage/db/OneAgentDatabase;

    invoke-virtual {v1}, Lcom/dynatrace/agent/storage/db/OneAgentDatabase;->y()Lcom/dynatrace/agent/storage/db/EventDao;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/dynatrace/agent/storage/db/EventDatabaseDataSourceImpl;-><init>(Lcom/dynatrace/agent/storage/db/EventDao;)V

    new-instance v5, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl;

    iget-object v12, v11, Lcom/dynatrace/agent/storage/di/StorageModule;->a:Landroid/content/Context;

    invoke-virtual {v11, v12}, Lcom/dynatrace/agent/storage/di/StorageModule;->a(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl;-><init>(Landroidx/datastore/core/DataStore;)V

    new-instance v13, Lcom/dynatrace/agent/storage/preference/EndPointInfoDataSourceImpl;

    invoke-virtual {v11, v12}, Lcom/dynatrace/agent/storage/di/StorageModule;->a(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v1

    invoke-direct {v13, v1}, Lcom/dynatrace/agent/storage/preference/EndPointInfoDataSourceImpl;-><init>(Landroidx/datastore/core/DataStore;)V

    new-instance v1, Lcom/dynatrace/agent/storage/preference/OneAgentConfigurationDiskDataSource;

    invoke-virtual {v11, v12}, Lcom/dynatrace/agent/storage/di/StorageModule;->a(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dynatrace/agent/storage/preference/OneAgentConfigurationDiskDataSource;-><init>(Landroidx/datastore/core/DataStore;)V

    new-instance v2, Lcom/dynatrace/agent/storage/db/EndPointInfo;

    iget-object v3, v7, Lcom/dynatrace/agent/OneAgentConfiguration;->b:Ljava/lang/String;

    iget-object v4, v7, Lcom/dynatrace/agent/OneAgentConfiguration;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/dynatrace/agent/storage/db/EndPointInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/dynatrace/agent/storage/memory/DynamicConfigDataSourceImpl;

    invoke-direct {v4}, Lcom/dynatrace/agent/storage/memory/DynamicConfigDataSourceImpl;-><init>()V

    invoke-interface {v15}, Lcom/dynatrace/agent/di/SecondGenServiceLocator;->a()Lcom/dynatrace/android/agent/mixed/SessionInformationProviderImpl;

    move-result-object v6

    iget-object v3, v7, Lcom/dynatrace/agent/OneAgentConfiguration;->a:Ljava/lang/String;

    move-object/from16 v16, v1

    new-instance v1, Lcom/dynatrace/agent/communication/ServerDataListenerImpl;

    move-object/from16 v17, v3

    move-object v3, v5

    move-object/from16 v24, v16

    move-object/from16 v5, p7

    move-object/from16 v16, v2

    move-object/from16 v2, p3

    invoke-direct/range {v1 .. v7}, Lcom/dynatrace/agent/communication/ServerDataListenerImpl;-><init>(Lcom/dynatrace/android/agent/communication/ServerConfigurationListener;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;Lcom/dynatrace/agent/storage/memory/DynamicConfigDataSource;Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/OneAgentConfiguration;)V

    move-object/from16 v18, v8

    move-object v8, v1

    move-object v1, v7

    move-object/from16 v7, v18

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v13

    move-object v13, v6

    new-instance v2, Lcom/dynatrace/agent/communication/di/CommunicationModule;

    move-object/from16 v4, p2

    move-object/from16 v3, p4

    move-object v6, v9

    move-object/from16 v5, v17

    move-object v9, v7

    move-object/from16 v7, v16

    invoke-direct/range {v2 .. v10}, Lcom/dynatrace/agent/communication/di/CommunicationModule;-><init>(Lokhttp3/Call$Factory;Lcom/dynatrace/agent/common/time/TimeProvider;Ljava/lang/String;Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;Lcom/dynatrace/agent/storage/db/EndPointInfo;Lcom/dynatrace/agent/communication/api/ServerDataListener;Lkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;)V

    move-object/from16 v16, v6

    move-object/from16 v32, v7

    move-object v7, v9

    invoke-virtual {v2}, Lcom/dynatrace/agent/communication/di/CommunicationModule;->a()Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

    move-result-object v2

    iput-object v2, v0, Lcom/dynatrace/agent/di/CoreComponent;->d:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

    new-instance v3, Lcom/dynatrace/agent/events/EventFlowGovernor;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v7, v5, v4}, Lcom/dynatrace/agent/events/EventFlowGovernor;-><init>(Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v4, v2

    new-instance v2, Lcom/dynatrace/agent/events/EventThrottler;

    move-object v5, v4

    iget v4, v1, Lcom/dynatrace/agent/OneAgentConfiguration;->h:I

    new-instance v8, Lcom/dynatrace/agent/di/CoreComponent$eventThrottler$1;

    invoke-direct {v8, v15}, Lcom/dynatrace/agent/di/CoreComponent$eventThrottler$1;-><init>(Lcom/dynatrace/agent/di/SecondGenServiceLocator;)V

    const/16 v9, 0xc

    const/4 v10, 0x0

    move-object v6, v5

    const/4 v5, 0x0

    move-object/from16 v17, v6

    const/4 v6, 0x0

    move-object/from16 v26, v3

    move-object/from16 v33, v17

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v10}, Lcom/dynatrace/agent/events/EventThrottler;-><init>(Lcom/dynatrace/agent/common/time/TimeProvider;IIILkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/agent/events/EventThrottler$SummaryReceiver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Lcom/dynatrace/agent/metrics/di/MetricsModule;

    new-instance v4, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;

    invoke-virtual {v11, v12}, Lcom/dynatrace/agent/storage/di/StorageModule;->a(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;-><init>(Landroidx/datastore/core/DataStore;)V

    invoke-direct {v3, v14, v15, v4, v7}, Lcom/dynatrace/agent/metrics/di/MetricsModule;-><init>(Landroid/content/Context;Lcom/dynatrace/agent/di/SecondGenServiceLocator;Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;Lkotlinx/coroutines/CoroutineScope;)V

    new-instance v34, Lcom/dynatrace/agent/metrics/OneAgentMetricsProvider;

    new-instance v4, Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl;

    iget-object v5, v3, Lcom/dynatrace/agent/metrics/di/MetricsModule;->a:Landroid/content/Context;

    iget-object v6, v3, Lcom/dynatrace/agent/metrics/di/MetricsModule;->d:Lkotlinx/coroutines/CoroutineScope;

    invoke-direct {v4, v5, v6}, Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl;-><init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;)V

    const/16 v38, 0x4

    const/16 v39, 0x0

    iget-object v5, v3, Lcom/dynatrace/agent/metrics/di/MetricsModule;->a:Landroid/content/Context;

    const/16 v37, 0x0

    move-object/from16 v35, v4

    move-object/from16 v36, v5

    invoke-direct/range {v34 .. v39}, Lcom/dynatrace/agent/metrics/OneAgentMetricsProvider;-><init>(Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;Landroid/content/Context;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v8, Lcom/dynatrace/agent/metrics/MetricsRepository;

    iget-object v4, v3, Lcom/dynatrace/agent/metrics/di/MetricsModule;->b:Lcom/dynatrace/agent/di/SecondGenServiceLocator;

    invoke-interface {v4}, Lcom/dynatrace/agent/di/SecondGenServiceLocator;->a()Lcom/dynatrace/android/agent/mixed/SessionInformationProviderImpl;

    move-result-object v36

    invoke-interface {v4}, Lcom/dynatrace/agent/di/SecondGenServiceLocator;->c()Lcom/dynatrace/android/agent/mixed/SecondGenMetricsProviderImpl;

    move-result-object v38

    const/16 v42, 0x10

    const/16 v43, 0x0

    iget-object v4, v3, Lcom/dynatrace/agent/metrics/di/MetricsModule;->c:Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;

    const-wide/16 v39, 0x0

    iget-object v3, v3, Lcom/dynatrace/agent/metrics/di/MetricsModule;->d:Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v41, v3

    move-object/from16 v35, v4

    move-object/from16 v37, v34

    move-object/from16 v34, v8

    invoke-direct/range {v34 .. v43}, Lcom/dynatrace/agent/metrics/MetricsRepository;-><init>(Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/metrics/OneAgentMetricsProvider;Lcom/dynatrace/agent/metrics/SecondGenMetricsProvider;JLkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v8, v0, Lcom/dynatrace/agent/di/CoreComponent;->e:Lcom/dynatrace/agent/metrics/MetricsRepository;

    move-object v10, v8

    new-instance v8, Lcom/dynatrace/agent/view/ViewContextHistory;

    invoke-direct {v8}, Lcom/dynatrace/agent/view/ViewContextHistory;-><init>()V

    move-object v9, v7

    new-instance v7, Lcom/dynatrace/agent/view/ViewSummarizer;

    invoke-direct {v7, v8}, Lcom/dynatrace/agent/view/ViewSummarizer;-><init>(Lcom/dynatrace/agent/view/ViewContextHistory;)V

    new-instance v6, Lcom/dynatrace/agent/OneAgentEventDispatcher;

    move-object/from16 v3, p2

    move-object v5, v10

    move-object v14, v11

    move-object v15, v12

    move-object/from16 v4, v16

    move-object/from16 v10, v19

    move-object/from16 v34, v20

    move-object/from16 v12, v26

    move-object v11, v2

    move-object v2, v1

    move-object v1, v6

    move-object v6, v9

    move-object/from16 v9, v18

    invoke-direct/range {v1 .. v13}, Lcom/dynatrace/agent/OneAgentEventDispatcher;-><init>(Lcom/dynatrace/agent/OneAgentConfiguration;Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;Lcom/dynatrace/agent/metrics/MetricsRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/agent/view/ViewSummarizer;Lcom/dynatrace/agent/view/ViewContextHistory;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;Lcom/dynatrace/agent/storage/memory/DynamicConfigDataSource;Lcom/dynatrace/agent/events/EventThrottler;Lcom/dynatrace/agent/events/EventFlowGovernor;Lcom/dynatrace/agent/di/SessionInformationProvider;)V

    move-object/from16 v35, v4

    move-object v10, v5

    move-object/from16 v28, v7

    move-object v5, v9

    move-object v12, v2

    move-object v7, v6

    move-object v6, v1

    new-instance v23, Lcom/dynatrace/agent/useraction/UserActionController;

    move-object/from16 v4, p2

    move-object v3, v6

    move-object v6, v13

    move-object/from16 v2, v23

    invoke-direct/range {v2 .. v7}, Lcom/dynatrace/agent/useraction/UserActionController;-><init>(Lcom/dynatrace/agent/OneAgentEventDispatcher;Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;Lcom/dynatrace/agent/di/SessionInformationProvider;Lkotlinx/coroutines/CoroutineScope;)V

    move-object v8, v2

    move-object v11, v5

    move-object v6, v3

    iget-object v1, v6, Lcom/dynatrace/agent/OneAgentEventDispatcher;->m:Lcom/dynatrace/agent/useraction/UserActionController;

    if-eqz v1, :cond_0

    const-string v1, "rumEventInterceptor already set, ignoring"

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iput-object v8, v6, Lcom/dynatrace/agent/OneAgentEventDispatcher;->m:Lcom/dynatrace/agent/useraction/UserActionController;

    :goto_0
    iget-object v1, v11, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/dynatrace/agent/view/NavigationTracker;

    move-object/from16 v3, p2

    invoke-direct {v1, v3}, Lcom/dynatrace/agent/view/NavigationTracker;-><init>(Lcom/dynatrace/agent/common/time/TimeProvider;)V

    new-instance v25, Lcom/dynatrace/agent/view/ViewContextManager;

    move-object/from16 v30, v1

    move-object/from16 v27, v3

    move-object/from16 v29, v6

    move-object/from16 v31, v8

    invoke-direct/range {v25 .. v31}, Lcom/dynatrace/agent/view/ViewContextManager;-><init>(Lcom/dynatrace/agent/events/EventFlowGovernor;Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/view/ViewSummarizer;Lcom/dynatrace/agent/OneAgentEventDispatcher;Lcom/dynatrace/agent/view/NavigationTracker;Lcom/dynatrace/agent/useraction/UserActionController;)V

    new-instance v16, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;

    move-object/from16 v17, p2

    move-object/from16 v18, v6

    move-object/from16 v23, v8

    move-object/from16 v19, v13

    move-object/from16 v22, v25

    move-object/from16 v20, v26

    move-object/from16 v21, v30

    invoke-direct/range {v16 .. v23}, Lcom/dynatrace/agent/lifecycle/VisibilityManagerImpl;-><init>(Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/OneAgentEventDispatcher;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/events/EventFlowGovernor;Lcom/dynatrace/agent/view/NavigationTracker;Lcom/dynatrace/agent/view/ViewContextManagerApi;Lcom/dynatrace/agent/useraction/UserActionController;)V

    move-object/from16 v2, v22

    move-object/from16 v1, v23

    new-instance v3, Lcom/dynatrace/agent/OneAgentFacade;

    invoke-direct {v3, v13, v2, v6, v1}, Lcom/dynatrace/agent/OneAgentFacade;-><init>(Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/view/ViewContextManagerApi;Lcom/dynatrace/agent/RumEventDispatcher;Lcom/dynatrace/agent/useraction/UserActionController;)V

    iput-object v3, v0, Lcom/dynatrace/agent/di/CoreComponent;->f:Lcom/dynatrace/agent/OneAgentFacade;

    new-instance v3, Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;

    invoke-direct {v3, v13, v2, v12}, Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;-><init>(Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/view/ViewContextManagerApi;Lcom/dynatrace/agent/OneAgentConfiguration;)V

    new-instance v4, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;

    invoke-interface/range {p6 .. p6}, Lcom/dynatrace/agent/di/SecondGenServiceLocator;->b()Lct0;

    move-result-object v5

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v25, v2

    move-object/from16 v17, v3

    const-wide/16 v2, 0x0

    move-object/from16 v23, v7

    move-object v7, v5

    move-object/from16 v5, v23

    move-object/from16 v23, v1

    move-object v1, v4

    move-object v4, v12

    invoke-direct/range {v1 .. v9}, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;-><init>(JLcom/dynatrace/agent/OneAgentConfiguration;Lkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/agent/RumEventDispatcher;Lcom/dynatrace/agent/di/SelfMonitoringComponent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v19, v1

    move-object v1, v4

    move-object/from16 v18, v5

    new-instance v2, Lcom/dynatrace/agent/exitreason/di/ExitReasonModule;

    new-instance v9, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource;

    invoke-virtual {v14, v15}, Lcom/dynatrace/agent/storage/di/StorageModule;->a(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v3

    invoke-direct {v9, v3}, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource;-><init>(Landroidx/datastore/core/DataStore;)V

    move-object v8, v10

    iget-boolean v10, v1, Lcom/dynatrace/agent/OneAgentConfiguration;->f:Z

    move-object v5, v11

    iget-boolean v11, v1, Lcom/dynatrace/agent/OneAgentConfiguration;->g:Z

    const/4 v12, 0x4

    move-object v7, v13

    const/4 v13, 0x0

    move-object v3, v5

    const-wide/16 v4, 0x0

    move-object v1, v2

    move-object v14, v3

    move-object/from16 v15, v25

    move-object/from16 v3, p2

    move-object/from16 v2, p5

    invoke-direct/range {v1 .. v13}, Lcom/dynatrace/agent/exitreason/di/ExitReasonModule;-><init>(Landroid/content/Context;Lcom/dynatrace/agent/common/time/TimeProvider;JLcom/dynatrace/agent/RumEventDispatcher;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/metrics/MetricsRepository;Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v13, v7

    new-instance v3, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;

    new-instance v37, Lcom/dynatrace/agent/exitreason/convertor/ExitReasonConverter;

    invoke-direct/range {v37 .. v37}, Lcom/dynatrace/agent/exitreason/convertor/ExitReasonConverter;-><init>()V

    iget-boolean v2, v1, Lcom/dynatrace/agent/exitreason/di/ExitReasonModule;->h:Z

    iget-boolean v4, v1, Lcom/dynatrace/agent/exitreason/di/ExitReasonModule;->i:Z

    iget-object v5, v1, Lcom/dynatrace/agent/exitreason/di/ExitReasonModule;->g:Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource;

    iget-object v6, v1, Lcom/dynatrace/agent/exitreason/di/ExitReasonModule;->b:Lcom/dynatrace/agent/common/time/TimeProvider;

    iget-wide v9, v1, Lcom/dynatrace/agent/exitreason/di/ExitReasonModule;->c:J

    iget-object v7, v1, Lcom/dynatrace/agent/exitreason/di/ExitReasonModule;->a:Landroid/content/Context;

    iget-object v11, v1, Lcom/dynatrace/agent/exitreason/di/ExitReasonModule;->d:Lcom/dynatrace/agent/RumEventDispatcher;

    iget-object v12, v1, Lcom/dynatrace/agent/exitreason/di/ExitReasonModule;->e:Lcom/dynatrace/agent/di/SessionInformationProvider;

    iget-object v1, v1, Lcom/dynatrace/agent/exitreason/di/ExitReasonModule;->f:Lcom/dynatrace/agent/metrics/MetricsRepository;

    move-object/from16 v45, v1

    move/from16 v46, v2

    move-object/from16 v36, v3

    move/from16 v47, v4

    move-object/from16 v38, v5

    move-object/from16 v39, v6

    move-object/from16 v42, v7

    move-wide/from16 v40, v9

    move-object/from16 v43, v11

    move-object/from16 v44, v12

    invoke-direct/range {v36 .. v47}, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;-><init>(Lcom/dynatrace/agent/exitreason/convertor/ExitReasonConverter;Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource;Lcom/dynatrace/agent/common/time/TimeProvider;JLandroid/content/Context;Lcom/dynatrace/agent/RumEventDispatcher;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/metrics/MetricsRepository;ZZ)V

    new-instance v1, Lcom/dynatrace/agent/communication/CommunicationManagerBridgeImpl;

    move-object/from16 v2, v33

    invoke-direct {v1, v2}, Lcom/dynatrace/agent/communication/CommunicationManagerBridgeImpl;-><init>(Lcom/dynatrace/agent/communication/CommunicationManager;)V

    iput-object v1, v0, Lcom/dynatrace/agent/di/CoreComponent;->g:Lcom/dynatrace/agent/communication/CommunicationManagerBridgeImpl;

    new-instance v1, Lcom/dynatrace/agent/OneAgentStartupImpl;

    move-object/from16 v12, p1

    move-object/from16 v9, p7

    move-object v10, v8

    move-object v11, v13

    move-object v5, v14

    move-object/from16 v8, v18

    move-object/from16 v13, v24

    move-object/from16 v7, v32

    move-object/from16 v6, v34

    move-object/from16 v4, v35

    invoke-direct/range {v1 .. v13}, Lcom/dynatrace/agent/OneAgentStartupImpl;-><init>(Lcom/dynatrace/agent/communication/CommunicationManager;Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;Lcom/dynatrace/agent/storage/preference/EndPointInfoDataSource;Lcom/dynatrace/agent/storage/db/EndPointInfo;Lkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;Lcom/dynatrace/agent/metrics/MetricsRepository;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/OneAgentConfiguration;Lcom/dynatrace/agent/storage/preference/OneAgentConfigurationDiskDataSource;)V

    move-object v9, v8

    move-object v13, v11

    move-object v7, v12

    iput-object v1, v0, Lcom/dynatrace/agent/di/CoreComponent;->h:Lcom/dynatrace/agent/OneAgentStartupImpl;

    new-instance v2, Lcom/dynatrace/agent/di/UserInteractionModule;

    iget-object v7, v7, Lcom/dynatrace/agent/OneAgentConfiguration;->i:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    move-object/from16 v4, p2

    move-object v6, v5

    move-object v3, v9

    move-object v5, v13

    move-object/from16 v8, v23

    invoke-direct/range {v2 .. v8}, Lcom/dynatrace/agent/di/UserInteractionModule;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;Lcom/dynatrace/agent/common/InstrumentationFlavor;Lcom/dynatrace/agent/useraction/UserActionController;)V

    new-instance v1, Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;

    iget-object v3, v2, Lcom/dynatrace/agent/di/UserInteractionModule;->e:Lcom/dynatrace/agent/useraction/UserActionController;

    iget-object v4, v2, Lcom/dynatrace/agent/di/UserInteractionModule;->c:Lcom/dynatrace/agent/di/SessionInformationProvider;

    iget-object v5, v2, Lcom/dynatrace/agent/di/UserInteractionModule;->b:Lcom/dynatrace/agent/common/time/TimeProvider;

    invoke-direct {v1, v4, v5, v3}, Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;-><init>(Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/useraction/UserActionController;)V

    new-instance v3, Lcom/dynatrace/agent/userinteraction/util/RectHelperImpl;

    invoke-direct {v3}, Lcom/dynatrace/agent/userinteraction/util/RectHelperImpl;-><init>()V

    new-instance v20, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;

    new-instance v21, Lcom/dynatrace/agent/userinteraction/util/UserInteractionLogger;

    invoke-direct/range {v21 .. v21}, Lcom/dynatrace/agent/userinteraction/util/UserInteractionLogger;-><init>()V

    new-instance v6, Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionGeneratorImpl;

    new-instance v7, Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionNativeGenerator;

    new-instance v9, Lcom/dynatrace/agent/userinteraction/util/UserInteractionMaskingValidator;

    invoke-direct {v9}, Lcom/dynatrace/agent/userinteraction/util/UserInteractionMaskingValidator;-><init>()V

    invoke-direct {v7, v9}, Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionNativeGenerator;-><init>(Lcom/dynatrace/agent/userinteraction/util/UserInteractionMaskingValidator;)V

    new-instance v9, Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionComposeGenerator;

    invoke-direct {v9, v3}, Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionComposeGenerator;-><init>(Lcom/dynatrace/agent/userinteraction/util/RectHelper;)V

    invoke-direct {v6, v7, v9}, Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionGeneratorImpl;-><init>(Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionNativeGenerator;Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionComposeGenerator;)V

    iget-object v7, v2, Lcom/dynatrace/agent/di/UserInteractionModule;->d:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;

    iget-object v9, v2, Lcom/dynatrace/agent/di/UserInteractionModule;->f:Lcom/dynatrace/agent/userinteraction/handler/UserInteractionConfigImpl;

    move-object/from16 v22, v1

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v9

    invoke-direct/range {v20 .. v25}, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;-><init>(Lcom/dynatrace/agent/userinteraction/util/UserInteractionLogger;Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionGenerator;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;Lcom/dynatrace/agent/userinteraction/handler/UserInteractionConfig;)V

    move-object/from16 v1, v20

    iget-object v6, v2, Lcom/dynatrace/agent/di/UserInteractionModule;->a:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v6}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v6

    sget-object v7, Lkotlinx/coroutines/internal/MainDispatcherLoader;->a:Lkotlinx/coroutines/MainCoroutineDispatcher;

    invoke-interface {v6, v7}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v6

    invoke-static {v6}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v21

    new-instance v20, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;

    iget-object v6, v1, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;->f:Lkotlin/Lazy;

    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v22, v6

    check-cast v22, Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler;

    iget-object v6, v1, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;->g:Lkotlin/Lazy;

    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v23, v6

    check-cast v23, Lcom/dynatrace/agent/userinteraction/handler/GestureUserInteractionHandler;

    new-instance v6, Lcom/dynatrace/agent/userinteraction/util/UptimeToEpochConverterImpl;

    invoke-direct {v6, v5}, Lcom/dynatrace/agent/userinteraction/util/UptimeToEpochConverterImpl;-><init>(Lcom/dynatrace/agent/common/time/TimeProvider;)V

    iget-object v2, v2, Lcom/dynatrace/agent/di/UserInteractionModule;->g:Lcom/dynatrace/agent/userinteraction/GestureSuppressionInterceptor;

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v24, v6

    invoke-direct/range {v20 .. v26}, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler;Lcom/dynatrace/agent/userinteraction/handler/GestureUserInteractionHandler;Lcom/dynatrace/agent/userinteraction/util/UptimeToEpochConverter;Lcom/dynatrace/agent/userinteraction/NativeGestureCoordinator;Lcom/dynatrace/agent/userinteraction/util/RectHelper;)V

    move-object/from16 v2, v20

    new-instance v3, Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManagerImpl;

    iget-object v1, v1, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;->h:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dynatrace/agent/userinteraction/handler/RotationUserInteractionHandler;

    invoke-direct {v3, v2, v1, v4}, Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManagerImpl;-><init>(Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;Lcom/dynatrace/agent/userinteraction/handler/RotationUserInteractionHandler;Lcom/dynatrace/agent/di/SessionInformationProvider;)V

    new-instance v1, Lcom/dynatrace/agent/di/UserInteractionModule$provideUserInteractionManager$1;

    invoke-direct {v1, v3}, Lcom/dynatrace/agent/di/UserInteractionModule$provideUserInteractionManager$1;-><init>(Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManagerImpl;)V

    sget-object v2, Lcom/dynatrace/agent/compose/userinteraction/ComposeEventObserverHandler;->a:Ljava/util/LinkedHashSet;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandlerImpl;

    invoke-direct {v9, v10, v3}, Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandlerImpl;-><init>(Lcom/dynatrace/agent/metrics/MetricsRepository;Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManager;)V

    new-instance v1, Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManagerBridgeImpl;

    invoke-direct {v1, v3}, Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManagerBridgeImpl;-><init>(Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManager;)V

    iput-object v1, v0, Lcom/dynatrace/agent/di/CoreComponent;->i:Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManagerBridgeImpl;

    new-instance v1, Lcom/dynatrace/agent/di/LifecycleModule;

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object v10, v8

    move-object v5, v13

    move-object/from16 v8, v16

    move-object/from16 v7, v17

    move-object/from16 v4, v19

    move-object/from16 v6, v30

    invoke-direct/range {v1 .. v10}, Lcom/dynatrace/agent/di/LifecycleModule;-><init>(Lcom/dynatrace/agent/common/time/TimeProvider;Landroid/app/Application;Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/view/NavigationTracker;Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;Lcom/dynatrace/agent/lifecycle/VisibilityManager;Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandler;Lcom/dynatrace/agent/useraction/UserActionController;)V

    new-instance v9, Lcom/dynatrace/agent/lifecycle/NewUserCheckerImpl;

    iget-object v2, v1, Lcom/dynatrace/agent/di/LifecycleModule;->b:Landroid/app/Application;

    invoke-direct {v9, v2}, Lcom/dynatrace/agent/lifecycle/NewUserCheckerImpl;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/dynatrace/agent/lifecycle/AppStartupManagerImpl;

    new-instance v4, Lcom/dynatrace/agent/lifecycle/util/AppStartupLogger;

    invoke-direct {v4}, Lcom/dynatrace/agent/lifecycle/util/AppStartupLogger;-><init>()V

    new-instance v8, Lx60;

    const/4 v3, 0x3

    invoke-direct {v8, v1, v3}, Lx60;-><init>(Ljava/lang/Object;I)V

    iget-object v10, v1, Lcom/dynatrace/agent/di/LifecycleModule;->i:Lcom/dynatrace/agent/useraction/UserActionController;

    iget-object v3, v1, Lcom/dynatrace/agent/di/LifecycleModule;->a:Lcom/dynatrace/agent/common/time/TimeProvider;

    iget-object v5, v1, Lcom/dynatrace/agent/di/LifecycleModule;->c:Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;

    iget-object v6, v1, Lcom/dynatrace/agent/di/LifecycleModule;->d:Lcom/dynatrace/agent/di/SessionInformationProvider;

    iget-object v7, v1, Lcom/dynatrace/agent/di/LifecycleModule;->e:Lcom/dynatrace/agent/view/NavigationTracker;

    invoke-direct/range {v2 .. v10}, Lcom/dynatrace/agent/lifecycle/AppStartupManagerImpl;-><init>(Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/lifecycle/util/AppStartupLogger;Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/view/NavigationTracker;Lkotlin/jvm/functions/Function0;Lcom/dynatrace/agent/lifecycle/NewUserChecker;Lcom/dynatrace/agent/useraction/UserActionController;)V

    new-instance v3, Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManager;

    iget-object v4, v1, Lcom/dynatrace/agent/di/LifecycleModule;->f:Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;

    iget-object v5, v1, Lcom/dynatrace/agent/di/LifecycleModule;->b:Landroid/app/Application;

    iget-object v6, v1, Lcom/dynatrace/agent/di/LifecycleModule;->g:Lcom/dynatrace/agent/lifecycle/VisibilityManager;

    iget-object v1, v1, Lcom/dynatrace/agent/di/LifecycleModule;->h:Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandler;

    move-object/from16 p4, v1

    move-object/from16 p2, v2

    move-object/from16 p1, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p3, v6

    invoke-direct/range {p1 .. p6}, Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManager;-><init>(Lcom/dynatrace/agent/lifecycle/AppStartupManager;Lcom/dynatrace/agent/lifecycle/VisibilityManager;Lcom/dynatrace/agent/orientation/handler/OrientationChangeHandler;Lcom/dynatrace/agent/lifecycle/callback/CurrentViewTracker;Landroid/app/Application;)V

    move-object/from16 v1, p1

    new-instance v2, Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManagerBridgeImpl;

    invoke-direct {v2, v1, v15}, Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManagerBridgeImpl;-><init>(Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManager;Lcom/dynatrace/agent/view/ViewContextManagerApi;)V

    iput-object v2, v0, Lcom/dynatrace/agent/di/CoreComponent;->j:Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManagerBridgeImpl;

    return-void
.end method

.method public static final a(Lcom/dynatrace/agent/di/CoreComponent;)V
    .locals 4

    iget-object v0, p0, Lcom/dynatrace/agent/di/CoreComponent;->d:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

    invoke-virtual {v0}, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->a()V

    iget-object v0, p0, Lcom/dynatrace/agent/di/CoreComponent;->b:Lcom/dynatrace/agent/storage/di/StorageModule;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "close DB connection"

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/dynatrace/agent/storage/di/StorageModule;->c:Lcom/dynatrace/agent/storage/db/OneAgentDatabase;

    iget-object v0, v0, Landroidx/room/RoomDatabase;->g:Landroidx/room/concurrent/CloseBarrier;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Landroidx/room/concurrent/CloseBarrier;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    goto :goto_0

    :cond_0
    monitor-exit v0

    iget-object v1, v0, Landroidx/room/concurrent/CloseBarrier;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, v0, Landroidx/room/concurrent/CloseBarrier;->a:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_0
    iget-object p0, p0, Lcom/dynatrace/agent/di/CoreComponent;->a:Lkotlinx/coroutines/internal/ContextScope;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->c(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
