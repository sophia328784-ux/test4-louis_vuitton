.class public final synthetic Lxo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/processing/DefaultSurfaceProcessor;Landroidx/camera/core/DynamicRange;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lxo;->b:I

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxo;->c:Ljava/lang/Object;

    iput-object p2, p0, Lxo;->d:Ljava/lang/Object;

    iput-object v0, p0, Lxo;->e:Ljava/lang/Object;

    iput-object p3, p0, Lxo;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;Landroidx/camera/core/DynamicRange;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 1

    .line 17
    const/4 v0, 0x3

    iput v0, p0, Lxo;->b:I

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxo;->c:Ljava/lang/Object;

    iput-object p2, p0, Lxo;->d:Ljava/lang/Object;

    iput-object v0, p0, Lxo;->e:Ljava/lang/Object;

    iput-object p3, p0, Lxo;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/batch/android/q/f;Lcom/batch/android/n1/c;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .line 18
    const/4 v0, 0x7

    iput v0, p0, Lxo;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxo;->d:Ljava/lang/Object;

    iput-object p2, p0, Lxo;->e:Ljava/lang/Object;

    iput-object p3, p0, Lxo;->f:Ljava/lang/Object;

    iput-object p4, p0, Lxo;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 19
    iput p5, p0, Lxo;->b:I

    iput-object p1, p0, Lxo;->c:Ljava/lang/Object;

    iput-object p2, p0, Lxo;->d:Ljava/lang/Object;

    iput-object p3, p0, Lxo;->e:Ljava/lang/Object;

    iput-object p4, p0, Lxo;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lxo;->b:I

    const/4 v1, 0x0

    iget-object v2, p0, Lxo;->e:Ljava/lang/Object;

    iget-object v3, p0, Lxo;->c:Ljava/lang/Object;

    iget-object v4, p0, Lxo;->f:Ljava/lang/Object;

    iget-object p0, p0, Lxo;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/batch/android/q/f;

    check-cast v2, Lcom/batch/android/n1/c;

    check-cast v4, Ljava/lang/String;

    check-cast v3, Ljava/util/List;

    invoke-static {p0, v2, v4, v3}, Lcom/batch/android/q/f;->b(Lcom/batch/android/q/f;Lcom/batch/android/n1/c;Ljava/lang/String;Ljava/util/List;)V

    return-void

    :pswitch_0
    check-cast v3, Lcom/appsflyer/internal/AFi1aSDK;

    check-cast p0, Landroid/content/Context;

    check-cast v2, Lcom/appsflyer/sdk_base/referrer/ReferrerProp;

    check-cast v4, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-static {v3, p0, v2, v4}, Lcom/appsflyer/internal/AFi1aSDK;->g(Lcom/appsflyer/internal/AFi1aSDK;Landroid/content/Context;Lcom/appsflyer/sdk_base/referrer/ReferrerProp;Lcom/appsflyer/internal/AFc1bSDK;)V

    return-void

    :pswitch_1
    check-cast v3, Ljava/util/List;

    check-cast p0, Landroidx/work/impl/model/WorkGenerationalId;

    check-cast v2, Landroidx/work/Configuration;

    check-cast v4, Landroidx/work/impl/WorkDatabase;

    sget v0, Landroidx/work/impl/Schedulers;->a:I

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/Scheduler;

    iget-object v5, p0, Landroidx/work/impl/model/WorkGenerationalId;->a:Ljava/lang/String;

    invoke-interface {v1, v5}, Landroidx/work/impl/Scheduler;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v2, v4, v3}, Landroidx/work/impl/Schedulers;->b(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void

    :pswitch_2
    check-cast v3, Landroidx/camera/core/ImageCapture;

    check-cast p0, Landroidx/camera/core/ImageCapture$OutputFileOptions;

    check-cast v2, Ljava/util/concurrent/Executor;

    check-cast v4, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2$1$1;

    sget-object v0, Landroidx/camera/core/ImageCapture;->B:Landroidx/camera/core/ImageCapture$Defaults;

    invoke-virtual {v3, p0, v2, v4}, Landroidx/camera/core/ImageCapture;->J(Landroidx/camera/core/ImageCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$takePhoto$2$1$1;)V

    return-void

    :pswitch_3
    check-cast v3, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;

    check-cast p0, Landroidx/camera/core/DynamicRange;

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    check-cast v4, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    :try_start_0
    iget-object v0, v3, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;->b:Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;

    invoke-virtual {v0, p0}, Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;->e(Landroidx/camera/core/DynamicRange;)Landroidx/camera/core/processing/util/GraphicDeviceInfo;

    invoke-virtual {v4, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->b(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {v4, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->d(Ljava/lang/Throwable;)Z

    :goto_1
    return-void

    :pswitch_4
    check-cast v3, Landroidx/camera/core/processing/DefaultSurfaceProcessor;

    check-cast p0, Landroidx/camera/core/DynamicRange;

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    check-cast v4, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    :try_start_1
    iget-object v0, v3, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->b:Landroidx/camera/core/processing/OpenGlRenderer;

    invoke-virtual {v0, p0}, Landroidx/camera/core/processing/OpenGlRenderer;->e(Landroidx/camera/core/DynamicRange;)Landroidx/camera/core/processing/util/GraphicDeviceInfo;

    invoke-virtual {v4, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->b(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {v4, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->d(Ljava/lang/Throwable;)Z

    :goto_2
    return-void

    :pswitch_5
    check-cast v3, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;

    check-cast p0, Lcom/google/android/datatransport/runtime/TransportContext;

    check-cast v2, Lcom/google/android/datatransport/TransportScheduleCallback;

    check-cast v4, Lcom/google/android/datatransport/runtime/EventInternal;

    sget-object v0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;->f:Ljava/util/logging/Logger;

    const-string v5, "Transport backend \'"

    :try_start_2
    iget-object v6, v3, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;->c:Lcom/google/android/datatransport/runtime/backends/BackendRegistry;

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/TransportContext;->b()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/android/datatransport/runtime/backends/BackendRegistry;->get(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/backends/TransportBackend;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/TransportContext;->b()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' is not registered"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v1}, Lcom/google/android/datatransport/TransportScheduleCallback;->g(Ljava/lang/Exception;)V

    goto :goto_4

    :catch_2
    move-exception p0

    goto :goto_3

    :cond_1
    invoke-interface {v6, v4}, Lcom/google/android/datatransport/runtime/backends/TransportBackend;->a(Lcom/google/android/datatransport/runtime/EventInternal;)Lcom/google/android/datatransport/runtime/EventInternal;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;->e:Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;

    new-instance v6, Ly81;

    const/4 v7, 0x6

    invoke-direct {v6, v3, p0, v4, v7}, Ly81;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v5, v6}, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;->c(Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;)Ljava/lang/Object;

    invoke-interface {v2, v1}, Lcom/google/android/datatransport/TransportScheduleCallback;->g(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Error scheduling event "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    invoke-interface {v2, p0}, Lcom/google/android/datatransport/TransportScheduleCallback;->g(Ljava/lang/Exception;)V

    :goto_4
    return-void

    :pswitch_6
    check-cast v3, Ljava/util/List;

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiFragment;

    check-cast v2, Lwo;

    check-cast v4, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiFragment$setWLANList$1;

    if-eqz v3, :cond_3

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiFragment;->J:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lp/ble/manager/ApItem;

    goto :goto_5

    :cond_2
    invoke-virtual {v2}, Lwo;->invoke()Ljava/lang/Object;

    goto :goto_6

    :cond_3
    invoke-virtual {v4, v1}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiFragment$setWLANList$1;->onFailed(Ljava/lang/Exception;)V

    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
