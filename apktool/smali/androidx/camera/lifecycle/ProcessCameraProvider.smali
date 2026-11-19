.class public final Landroidx/camera/lifecycle/ProcessCameraProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/CameraProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Landroidx/camera/lifecycle/ProcessCameraProvider;",
        "Landroidx/camera/core/CameraProvider;",
        "Companion",
        "camera-lifecycle_release"
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
.field public static final b:Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;

.field public static final c:Landroidx/camera/lifecycle/ProcessCameraProvider;


# instance fields
.field public final a:Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/lifecycle/ProcessCameraProvider;->b:Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;

    new-instance v0, Landroidx/camera/lifecycle/ProcessCameraProvider;

    new-instance v1, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;

    invoke-direct {v1}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;-><init>()V

    invoke-direct {v0, v1}, Landroidx/camera/lifecycle/ProcessCameraProvider;-><init>(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)V

    sput-object v0, Landroidx/camera/lifecycle/ProcessCameraProvider;->c:Landroidx/camera/lifecycle/ProcessCameraProvider;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->a:Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/UseCaseGroup;)Landroidx/camera/core/Camera;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->a:Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;

    const-string v0, "CX:bindToLifecycle-UseCaseGroup"

    invoke-static {v0}, Landroidx/tracing/Trace;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->e:Landroidx/camera/core/CameraX;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroidx/camera/core/CameraX;->g:Landroidx/camera/core/impl/CameraFactory;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraFactory;->f()Landroidx/camera/camera2/internal/concurrent/Camera2CameraCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/concurrent/Camera2CameraCoordinator;->c()I

    move-result v0

    :goto_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->e:Landroidx/camera/core/CameraX;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, v0, Landroidx/camera/core/CameraX;->g:Landroidx/camera/core/impl/CameraFactory;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraFactory;->f()Landroidx/camera/camera2/internal/concurrent/Camera2CameraCoordinator;

    move-result-object v0

    iget-object v2, v0, Landroidx/camera/camera2/internal/concurrent/Camera2CameraCoordinator;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v3, v0, Landroidx/camera/camera2/internal/concurrent/Camera2CameraCoordinator;->g:I

    const/4 v4, 0x1

    if-ne v4, v3, :cond_2

    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    iput v4, v0, Landroidx/camera/camera2/internal/concurrent/Camera2CameraCoordinator;->g:I

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v0, Landroidx/camera/camera2/internal/concurrent/Camera2CameraCoordinator;->c:Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-ne v3, v1, :cond_3

    iget-object v0, v0, Landroidx/camera/camera2/internal/concurrent/Camera2CameraCoordinator;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/concurrent/CameraCoordinator$ConcurrentCameraModeListener;

    invoke-interface {v1, v3, v4}, Landroidx/camera/core/concurrent/CameraCoordinator$ConcurrentCameraModeListener;->a(II)V

    goto :goto_1

    :cond_4
    :goto_2
    new-instance v0, Landroidx/camera/core/LegacySessionConfig;

    invoke-direct {v0, p3}, Landroidx/camera/core/LegacySessionConfig;-><init>(Landroidx/camera/core/UseCaseGroup;)V

    invoke-static {p0, p1, p2, v0}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->b(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/LegacySessionConfig;)Landroidx/camera/lifecycle/LifecycleCamera;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p0

    :goto_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "CameraX not initialized yet."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "bindToLifecycle for single camera is not supported in concurrent camera mode, call unbindAll() first."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "CameraX not initialized yet."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method
