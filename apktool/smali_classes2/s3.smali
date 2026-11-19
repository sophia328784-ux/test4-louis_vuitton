.class public final synthetic Ls3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/arch/core/util/Function;
.implements Lcom/appsflyer/share/SessionReadyListener;
.implements Lcom/google/android/gms/tasks/OnSuccessListener;
.implements Landroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;
.implements Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$Listener;
.implements Lcom/batch/android/j1/c;
.implements Lcom/batch/android/j1/h;
.implements Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$PreviewCallback;
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationTransform;
.implements Lcom/google/gson/internal/ObjectConstructor;
.implements Lcom/google/firebase/inject/Deferred$DeferredHandler;
.implements Lcom/google/firebase/components/ComponentFactory;
.implements Lcom/google/android/gms/tasks/Continuation;
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0

    const/16 p1, 0x1a

    iput p1, p0, Ls3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ls3;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0

    .line 10
    const/16 p1, 0x1b

    iput p1, p0, Ls3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Ls3;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 11
    iput p2, p0, Ls3;->b:I

    iput-object p1, p0, Ls3;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;)Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;
    .locals 1

    iget-object p0, p0, Ls3;->c:Ljava/lang/Object;

    check-cast p0, Lcom/dynatrace/android/agent/data/Session;

    sget-object v0, Lcom/dynatrace/android/agent/CommunicationManager;->w:Ljava/lang/String;

    .line 27
    invoke-virtual {p0}, Lcom/dynatrace/android/agent/data/Session;->g()Z

    move-result p0

    .line 28
    iput-boolean p0, p1, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->i:Z

    return-object p1
.end method

.method public a(Lcom/batch/android/j1/b;)V
    .locals 1

    iget v0, p0, Ls3;->b:I

    iget-object p0, p0, Ls3;->c:Ljava/lang/Object;

    sparse-switch v0, :sswitch_data_0

    check-cast p0, Lcom/batch/android/LoggerDelegate;

    invoke-static {p0, p1}, Lcom/batch/android/Batch;->l(Lcom/batch/android/LoggerDelegate;Lcom/batch/android/j1/b;)V

    return-void

    :sswitch_0
    check-cast p0, Lcom/batch/android/LoggerLevel;

    invoke-static {p0, p1}, Lcom/batch/android/Batch;->c(Lcom/batch/android/LoggerLevel;Lcom/batch/android/j1/b;)V

    return-void

    :sswitch_1
    check-cast p0, Ljava/util/EnumSet;

    invoke-static {p0, p1}, Lcom/batch/android/Batch;->d(Ljava/util/EnumSet;Lcom/batch/android/j1/b;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Lcom/batch/android/j1/g;)V
    .locals 1

    .line 26
    iget v0, p0, Ls3;->b:I

    iget-object p0, p0, Ls3;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/batch/android/Batch;->h(Ljava/lang/StringBuilder;Lcom/batch/android/j1/g;)V

    return-void

    :pswitch_0
    check-cast p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {p0, p1}, Lcom/batch/android/Batch;->m(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/batch/android/j1/g;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object p0, p0, Ls3;->c:Ljava/lang/Object;

    check-cast p0, Landroid/util/Range;

    check-cast p1, Landroidx/camera/core/ZoomState;

    invoke-interface {p1}, Landroidx/camera/core/ZoomState;->d()F

    move-result v0

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {p1}, Landroidx/camera/core/ZoomState;->d()F

    move-result p1

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p1, v3, p0}, Landroidx/camera/core/impl/AdapterCameraInfo;->z(FFF)F

    move-result p0

    invoke-static {v0, v1, v2, p0}, Landroidx/camera/core/internal/ImmutableZoomState;->e(FFFF)Landroidx/camera/core/ZoomState;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Ls3;->b:I

    const/4 v1, 0x1

    const-string v2, ""

    const/4 v3, 0x0

    const-string v4, "IMAGE_RESULT"

    const/4 v5, -0x1

    iget-object p0, p0, Ls3;->c:Ljava/lang/Object;

    sparse-switch v0, :sswitch_data_0

    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormFragment;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormFragment;->M:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Landroidx/activity/result/ActivityResult;->b:I

    if-ne v0, v5, :cond_3

    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->c:Landroid/content/Intent;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :try_start_0
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/Hilt_DistantRepairFormFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormFragment;->L:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void

    :sswitch_0
    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment;->M:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Landroidx/activity/result/ActivityResult;->b:I

    if-ne v0, v5, :cond_6

    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->c:Landroid/content/Intent;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_4
    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, v3

    :goto_2
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :try_start_1
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment;->L:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void

    :sswitch_1
    check-cast p0, Lcom/canhub/cropper/CropImageIntentChooser;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    sget v0, Lcom/canhub/cropper/CropImageIntentChooser;->g:I

    iget-object v0, p0, Lcom/canhub/cropper/CropImageIntentChooser;->b:Lcom/canhub/cropper/CropImageIntentChooser$ResultCallback;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p1, Landroidx/activity/result/ActivityResult;->b:I

    if-ne v1, v5, :cond_9

    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->c:Landroid/content/Intent;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_8

    :cond_7
    iget-object p1, p0, Lcom/canhub/cropper/CropImageIntentChooser;->e:Landroid/net/Uri;

    :cond_8
    invoke-interface {v0, p1}, Lcom/canhub/cropper/CropImageIntentChooser$ResultCallback;->a(Landroid/net/Uri;)V

    goto :goto_4

    :cond_9
    invoke-interface {v0}, Lcom/canhub/cropper/CropImageIntentChooser$ResultCallback;->b()V

    :goto_4
    return-void

    :sswitch_2
    check-cast p0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->b:Lcom/vuitton/android/presentation/chat/ChatCoordinator;

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->c()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p0, p0, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->b:Lcom/vuitton/android/domain/usecase/chat/HandleChatSystemUseCase;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/chat/HandleChatSystemUseCase;->a:Lcom/vuitton/foundation/contracts/chat/ChatManager;

    invoke-interface {p0}, Lcom/vuitton/foundation/contracts/chat/ChatManager;->e()V

    goto :goto_5

    :cond_a
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->c()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p0, p0, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->b:Lcom/vuitton/android/domain/usecase/chat/HandleChatSystemUseCase;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/chat/HandleChatSystemUseCase;->a:Lcom/vuitton/foundation/contracts/chat/ChatManager;

    invoke-interface {p0}, Lcom/vuitton/foundation/contracts/chat/ChatManager;->f()V

    :cond_b
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x19 -> :sswitch_1
        0x1c -> :sswitch_0
    .end sparse-switch
.end method

.method public c(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v0, v0, Ls3;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;

    sget v2, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->d:I

    sget-object v2, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->d:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-class v4, Lcom/google/firebase/FirebaseApp;

    invoke-interface {v1, v4}, Lcom/google/firebase/components/ComponentContainer;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/google/firebase/FirebaseApp;

    const-class v4, Lcom/google/firebase/installations/FirebaseInstallationsApi;

    invoke-interface {v1, v4}, Lcom/google/firebase/components/ComponentContainer;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/installations/FirebaseInstallationsApi;

    const-class v5, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;

    invoke-interface {v1, v5}, Lcom/google/firebase/components/ComponentContainer;->i(Ljava/lang/Class;)Lcom/google/firebase/inject/Deferred;

    move-result-object v5

    const-class v7, Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    invoke-interface {v1, v7}, Lcom/google/firebase/components/ComponentContainer;->i(Ljava/lang/Class;)Lcom/google/firebase/inject/Deferred;

    move-result-object v7

    const-class v8, Lcom/google/firebase/remoteconfig/interop/FirebaseRemoteConfigInterop;

    invoke-interface {v1, v8}, Lcom/google/firebase/components/ComponentContainer;->i(Ljava/lang/Class;)Lcom/google/firebase/inject/Deferred;

    move-result-object v8

    iget-object v9, v0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->a:Lcom/google/firebase/components/Qualified;

    invoke-interface {v1, v9}, Lcom/google/firebase/components/ComponentContainer;->e(Lcom/google/firebase/components/Qualified;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/concurrent/ExecutorService;

    iget-object v10, v0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->b:Lcom/google/firebase/components/Qualified;

    invoke-interface {v1, v10}, Lcom/google/firebase/components/ComponentContainer;->e(Lcom/google/firebase/components/Qualified;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/concurrent/ExecutorService;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->c:Lcom/google/firebase/components/Qualified;

    invoke-interface {v1, v0}, Lcom/google/firebase/components/ComponentContainer;->e(Lcom/google/firebase/components/Qualified;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v6}, Lcom/google/firebase/FirebaseApp;->a()V

    iget-object v1, v6, Lcom/google/firebase/FirebaseApp;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/google/firebase/crashlytics/internal/Logger;->b:Lcom/google/firebase/crashlytics/internal/Logger;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Lcom/google/firebase/crashlytics/internal/Logger;->a(I)V

    new-instance v15, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    invoke-direct {v15, v9, v10}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    move-object v9, v12

    new-instance v12, Lcom/google/firebase/crashlytics/internal/persistence/FileStore;

    invoke-direct {v12, v1}, Lcom/google/firebase/crashlytics/internal/persistence/FileStore;-><init>(Landroid/content/Context;)V

    move-object v10, v9

    new-instance v9, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;

    invoke-direct {v9, v6}, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;-><init>(Lcom/google/firebase/FirebaseApp;)V

    new-instance v13, Lcom/google/firebase/crashlytics/internal/common/IdManager;

    invoke-direct {v13, v1, v11, v4, v9}, Lcom/google/firebase/crashlytics/internal/common/IdManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;)V

    new-instance v4, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponentDeferredProxy;

    invoke-direct {v4, v5}, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponentDeferredProxy;-><init>(Lcom/google/firebase/inject/Deferred;)V

    new-instance v5, Lcom/google/firebase/crashlytics/AnalyticsDeferredProxy;

    invoke-direct {v5, v7}, Lcom/google/firebase/crashlytics/AnalyticsDeferredProxy;-><init>(Lcom/google/firebase/inject/Deferred;)V

    move-object v7, v13

    new-instance v13, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsAppQualitySessionsSubscriber;

    invoke-direct {v13, v9, v12}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsAppQualitySessionsSubscriber;-><init>(Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;Lcom/google/firebase/crashlytics/internal/persistence/FileStore;)V

    invoke-static {v13}, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies;->d(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsAppQualitySessionsSubscriber;)V

    new-instance v14, Lcom/google/firebase/crashlytics/internal/RemoteConfigDeferredProxy;

    invoke-direct {v14, v8}, Lcom/google/firebase/crashlytics/internal/RemoteConfigDeferredProxy;-><init>(Lcom/google/firebase/inject/Deferred;)V

    new-instance v8, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

    move-object v11, v10

    new-instance v10, Li5;

    invoke-direct {v10, v5}, Li5;-><init>(Lcom/google/firebase/crashlytics/AnalyticsDeferredProxy;)V

    move-object/from16 v16, v11

    new-instance v11, Li5;

    invoke-direct {v11, v5}, Li5;-><init>(Lcom/google/firebase/crashlytics/AnalyticsDeferredProxy;)V

    move-object v5, v8

    move-object v8, v4

    move-object/from16 v4, v16

    invoke-direct/range {v5 .. v15}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/crashlytics/internal/common/IdManager;Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;Lcom/google/firebase/crashlytics/internal/breadcrumbs/BreadcrumbSource;Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventLogger;Lcom/google/firebase/crashlytics/internal/persistence/FileStore;Lcom/google/firebase/crashlytics/internal/common/CrashlyticsAppQualitySessionsSubscriber;Lcom/google/firebase/crashlytics/internal/RemoteConfigDeferredProxy;Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;)V

    move-object v8, v5

    move-object/from16 v18, v9

    move-object/from16 v17, v12

    move-object v5, v15

    invoke-virtual {v6}, Lcom/google/firebase/FirebaseApp;->a()V

    iget-object v6, v6, Lcom/google/firebase/FirebaseApp;->c:Lcom/google/firebase/FirebaseOptions;

    iget-object v12, v6, Lcom/google/firebase/FirebaseOptions;->b:Ljava/lang/String;

    const-string v6, "com.google.firebase.crashlytics.mapping_file_id"

    const-string v9, "string"

    invoke-static {v1, v6, v9}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "com.crashlytics.android.build_id"

    invoke-static {v1, v6, v9}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v21, v6

    goto :goto_0

    :cond_1
    const/16 v21, 0x0

    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v10, "com.google.firebase.crashlytics.build_ids_lib"

    const-string v11, "array"

    invoke-static {v1, v10, v11}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    const-string v13, "com.google.firebase.crashlytics.build_ids_arch"

    invoke-static {v1, v13, v11}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    const-string v14, "com.google.firebase.crashlytics.build_ids_build_id"

    invoke-static {v1, v14, v11}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-eqz v10, :cond_2

    if-eqz v13, :cond_2

    if-nez v11, :cond_3

    :cond_2
    move-wide/from16 v28, v2

    const/4 v2, 0x3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    array-length v13, v9

    array-length v14, v11

    if-ne v13, v14, :cond_4

    array-length v13, v10

    array-length v14, v11

    if-eq v13, v14, :cond_5

    :cond_4
    move-wide/from16 v28, v2

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_1
    array-length v13, v11

    if-ge v4, v13, :cond_6

    new-instance v13, Lcom/google/firebase/crashlytics/internal/common/BuildIdInfo;

    aget-object v14, v9, v4

    aget-object v15, v10, v4

    move-wide/from16 v28, v2

    aget-object v2, v11, v4

    invoke-direct {v13, v14, v15, v2}, Lcom/google/firebase/crashlytics/internal/common/BuildIdInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v2, v28

    goto :goto_1

    :cond_6
    move-wide/from16 v28, v2

    const/4 v2, 0x3

    goto :goto_4

    :goto_2
    array-length v2, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    array-length v3, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    array-length v9, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v2, v3, v9}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Lengths did not match: %d %d %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v4, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->a(I)V

    goto :goto_4

    :goto_3
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v3, v9, v10}, [Ljava/lang/Object;

    move-result-object v3

    const-string v9, "Could not find resources: %d %d %d"

    invoke-static {v9, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->a(I)V

    :goto_4
    sget-object v3, Lcom/google/firebase/crashlytics/internal/Logger;->b:Lcom/google/firebase/crashlytics/internal/Logger;

    invoke-virtual {v3, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->a(I)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/crashlytics/internal/common/BuildIdInfo;

    sget-object v9, Lcom/google/firebase/crashlytics/internal/Logger;->b:Lcom/google/firebase/crashlytics/internal/Logger;

    iget-object v4, v4, Lcom/google/firebase/crashlytics/internal/common/BuildIdInfo;->a:Ljava/lang/String;

    invoke-virtual {v9, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->a(I)V

    goto :goto_5

    :cond_7
    new-instance v3, Lcom/google/firebase/crashlytics/internal/DevelopmentPlatformProvider;

    invoke-direct {v3, v1}, Lcom/google/firebase/crashlytics/internal/DevelopmentPlatformProvider;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lcom/google/firebase/crashlytics/internal/common/IdManager;->d()Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v25

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v9, :cond_8

    const-string v9, "0.0"

    :cond_8
    move-object/from16 v26, v9

    new-instance v19, Lcom/google/firebase/crashlytics/internal/common/AppData;

    move-object/from16 v27, v3

    move-object/from16 v24, v4

    move-object/from16 v22, v6

    move-object/from16 v20, v12

    invoke-direct/range {v19 .. v27}, Lcom/google/firebase/crashlytics/internal/common/AppData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/DevelopmentPlatformProvider;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v3, v19

    sget-object v4, Lcom/google/firebase/crashlytics/internal/Logger;->b:Lcom/google/firebase/crashlytics/internal/Logger;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/google/firebase/crashlytics/internal/Logger;->a(I)V

    new-instance v14, Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;

    invoke-direct {v14}, Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;-><init>()V

    iget-object v15, v3, Lcom/google/firebase/crashlytics/internal/common/AppData;->f:Ljava/lang/String;

    iget-object v4, v3, Lcom/google/firebase/crashlytics/internal/common/AppData;->g:Ljava/lang/String;

    move-object v11, v1

    move-object/from16 v16, v4

    move-object v13, v7

    move-object/from16 v12, v20

    invoke-static/range {v11 .. v18}, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->c(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/common/IdManager;Lcom/google/firebase/crashlytics/internal/network/HttpRequestFactory;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/persistence/FileStore;Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;)Lcom/google/firebase/crashlytics/internal/settings/SettingsController;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/firebase/crashlytics/internal/settings/SettingsController;->e(Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;)Lcom/google/android/gms/tasks/Task;

    move-result-object v4

    new-instance v5, Laz;

    invoke-direct {v5, v6}, Laz;-><init>(I)V

    invoke-virtual {v4, v0, v5}, Lcom/google/android/gms/tasks/Task;->d(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v8, v3, v1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->d(Lcom/google/firebase/crashlytics/internal/common/AppData;Lcom/google/firebase/crashlytics/internal/settings/SettingsController;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v8, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->o:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->a:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorker;

    new-instance v3, Luq;

    invoke-direct {v3, v8, v1, v10}, Luq;-><init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;Lcom/google/firebase/crashlytics/internal/settings/SettingsController;I)V

    invoke-virtual {v0, v3}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorker;->a(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    :cond_9
    new-instance v9, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    invoke-direct {v9, v8}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;-><init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;)V

    goto :goto_6

    :catch_0
    sget-object v0, Lcom/google/firebase/crashlytics/internal/Logger;->b:Lcom/google/firebase/crashlytics/internal/Logger;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/Logger;->b()V

    const/4 v9, 0x0

    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v0, v28

    const-wide/16 v3, 0x10

    cmp-long v0, v0, v3

    if-lez v0, :cond_a

    sget-object v0, Lcom/google/firebase/crashlytics/internal/Logger;->b:Lcom/google/firebase/crashlytics/internal/Logger;

    invoke-virtual {v0, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->a(I)V

    :cond_a
    return-object v9
.end method

.method public construct()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ls3;->b:I

    iget-object p0, p0, Ls3;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/lang/reflect/Constructor;

    invoke-static {p0}, Lcom/google/gson/internal/ConstructorConstructor;->s(Ljava/lang/reflect/Constructor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Lcom/google/gson/internal/ConstructorConstructor;->e(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method

.method public d(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 0

    iget p1, p0, Ls3;->b:I

    iget-object p0, p0, Ls3;->c:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Ljava/util/concurrent/Callable;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/tasks/Task;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public e(Landroidx/media3/exoplayer/audio/AudioCapabilities;)V
    .locals 1

    iget-object p0, p0, Ls3;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->b()V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->h:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->h:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->f:Landroidx/media3/common/util/ListenerSet;

    if-eqz p0, :cond_0

    new-instance p1, Lv7;

    const/16 v0, 0x17

    invoke-direct {p1, v0}, Lv7;-><init>(I)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroidx/media3/common/util/ListenerSet;->f(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_0
    return-void
.end method

.method public f(ILandroidx/compose/ui/unit/LayoutDirection;)I
    .locals 2

    iget v0, p0, Ls3;->b:I

    const/4 v1, 0x0

    iget-object p0, p0, Ls3;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/compose/ui/Alignment$Vertical;

    sget-object p2, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    invoke-interface {p0, v1, p1}, Landroidx/compose/ui/Alignment$Vertical;->a(II)I

    move-result p0

    return p0

    :pswitch_0
    check-cast p0, Landroidx/compose/ui/Alignment$Horizontal;

    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    invoke-interface {p0, v1, p1, p2}, Landroidx/compose/ui/Alignment$Horizontal;->a(IILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public g(Lcom/google/firebase/inject/Provider;)V
    .locals 2

    iget-object p0, p0, Ls3;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponentDeferredProxy;

    sget-object v0, Lcom/google/firebase/crashlytics/internal/Logger;->b:Lcom/google/firebase/crashlytics/internal/Logger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->a(I)V

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponentDeferredProxy;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-interface {p1}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public h([B)V
    .locals 4

    iget-object p0, p0, Ls3;->c:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/perfectcorp/perfectlib/CameraFrame;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;->e:I

    iget v2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;->f:I

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;->g:Z

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/perfectcorp/perfectlib/CameraFrame;-><init>([BIIZ)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;->b:Lcom/perfectcorp/perfectlib/MakeupCam;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/perfectcorp/perfectlib/MakeupCam;->sendCameraBuffer(Lcom/perfectcorp/perfectlib/CameraFrame;)V

    :cond_0
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;->c:Lcom/perfectcorp/perfectlib/ShadeFinder;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/perfectcorp/perfectlib/ShadeFinder;->sendCameraBuffer(Lcom/perfectcorp/perfectlib/CameraFrame;)V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;->g:Z

    return-void

    :cond_2
    sget p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/utils/CameraController;->i:I

    return-void
.end method

.method public i(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Ls3;->b:I

    iget-object p0, p0, Ls3;->c:Ljava/lang/Object;

    sparse-switch v0, :sswitch_data_0

    check-cast p0, Landroidx/camera/core/CameraX;

    iget-object v0, p0, Landroidx/camera/core/CameraX;->n:Landroidx/camera/core/impl/CameraPresenceProvider;

    invoke-virtual {v0}, Landroidx/camera/core/impl/CameraPresenceProvider;->d()V

    iget-object v0, p0, Landroidx/camera/core/CameraX;->a:Landroidx/camera/core/impl/CameraRepository;

    iget-object v1, v0, Landroidx/camera/core/impl/CameraRepository;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Landroidx/camera/core/impl/CameraRepository;->b:Ljava/util/LinkedHashMap;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, v0, Landroidx/camera/core/impl/CameraRepository;->d:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v2, :cond_1

    if-nez v3, :cond_0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->g(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :cond_1
    const/16 v2, 0xf

    if-nez v3, :cond_2

    new-instance v3, Ls3;

    invoke-direct {v3, v0, v2}, Ls3;-><init>(Ljava/lang/Object;I)V

    invoke-static {v3}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->a(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    iput-object v3, v0, Landroidx/camera/core/impl/CameraRepository;->d:Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_2
    iget-object v4, v0, Landroidx/camera/core/impl/CameraRepository;->c:Ljava/util/HashSet;

    iget-object v5, v0, Landroidx/camera/core/impl/CameraRepository;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v4, v0, Landroidx/camera/core/impl/CameraRepository;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/core/impl/CameraInternal;

    invoke-interface {v5}, Landroidx/camera/core/impl/CameraInternal;->release()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v6

    new-instance v7, Lr6;

    invoke-direct {v7, v0, v5, v2}, Lr6;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->a()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-interface {v6, v7, v5}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_1

    :cond_3
    iget-object v0, v0, Landroidx/camera/core/impl/CameraRepository;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    new-instance v0, Lr6;

    const/16 v1, 0x10

    invoke-direct {v0, p0, p1, v1}, Lr6;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p0, p0, Landroidx/camera/core/CameraX;->d:Ljava/util/concurrent/Executor;

    invoke-interface {v3, v0, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    const-string p0, "CameraX shutdownInternal"

    return-object p0

    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :sswitch_0
    check-cast p0, Landroidx/camera/core/impl/CameraRepository;

    iget-object v0, p0, Landroidx/camera/core/impl/CameraRepository;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Landroidx/camera/core/impl/CameraRepository;->e:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string p0, "CameraRepository-deinit"

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :sswitch_1
    check-cast p0, Landroidx/camera/camera2/internal/Camera2PresenceSource;

    sget v0, Landroidx/camera/camera2/internal/Camera2PresenceSource;->i:I

    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2PresenceSource;->g:Ljava/util/concurrent/Executor;

    new-instance v1, Lr6;

    const/16 v2, 0xc

    invoke-direct {v1, p0, p1, v2}, Lr6;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string p0, "FetchData for CameraAvailability"

    return-object p0

    :sswitch_2
    check-cast p0, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lr6;

    const/16 v2, 0x9

    invoke-direct {v1, p0, p1, v2}, Lr6;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string p0, "updateSessionConfigAsync"

    return-object p0

    :sswitch_3
    check-cast p0, Landroidx/camera/video/internal/audio/AudioSource;

    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/video/internal/audio/c;

    invoke-direct {v1, p0, p1}, Landroidx/camera/video/internal/audio/c;-><init>(Landroidx/camera/video/internal/audio/AudioSource;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string p0, "AudioSource-release"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_3
        0xc -> :sswitch_2
        0xd -> :sswitch_1
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Ls3;->b:I

    iget-object p0, p0, Ls3;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/media3/exoplayer/source/MediaLoadData;

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->c(Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/media3/exoplayer/DecoderCounters;

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->a(Landroidx/media3/exoplayer/DecoderCounters;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch
.end method

.method public onSessionReady()V
    .locals 0

    iget-object p0, p0, Ls3;->c:Ljava/lang/Object;

    check-cast p0, Lcom/appsflyer/AppsFlyerLib;

    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->start()V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ls3;->c:Ljava/lang/Object;

    check-cast p0, Lc1;

    invoke-virtual {p0, p1}, Lc1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
