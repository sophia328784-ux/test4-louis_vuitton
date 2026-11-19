.class public final Landroidx/camera/camera2/internal/Camera2PresenceSource;
.super Landroidx/camera/core/impl/AbstractCameraPresenceSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/internal/Camera2PresenceSource$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u000bB%\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/camera/camera2/internal/Camera2PresenceSource;",
        "Landroidx/camera/core/impl/AbstractCameraPresenceSource;",
        "",
        "",
        "initialCameraIds",
        "Landroidx/camera/camera2/internal/compat/CameraManagerCompat;",
        "cameraManager",
        "Ljava/util/concurrent/Executor;",
        "systemCallbackExecutor",
        "<init>",
        "(Ljava/util/List;Landroidx/camera/camera2/internal/compat/CameraManagerCompat;Ljava/util/concurrent/Executor;)V",
        "Companion",
        "camera-camera2_release"
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
.field public static final synthetic i:I


# instance fields
.field public final f:Landroidx/camera/camera2/internal/compat/CameraManagerCompat;

.field public final g:Ljava/util/concurrent/Executor;

.field public h:Landroidx/camera/camera2/internal/Camera2PresenceSource$startMonitoring$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/internal/Camera2PresenceSource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/internal/Camera2PresenceSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroidx/camera/camera2/internal/compat/CameraManagerCompat;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/camera/camera2/internal/compat/CameraManagerCompat;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Landroidx/camera/core/impl/AbstractCameraPresenceSource;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Landroidx/camera/camera2/internal/Camera2PresenceSource;->f:Landroidx/camera/camera2/internal/compat/CameraManagerCompat;

    iput-object p3, p0, Landroidx/camera/camera2/internal/Camera2PresenceSource;->g:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    new-instance v0, Ls3;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Ls3;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->a(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2PresenceSource;->h:Landroidx/camera/camera2/internal/Camera2PresenceSource$startMonitoring$1;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/camera/camera2/internal/Camera2PresenceSource;->f()V

    :cond_0
    new-instance v0, Landroidx/camera/camera2/internal/Camera2PresenceSource$startMonitoring$1;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/internal/Camera2PresenceSource$startMonitoring$1;-><init>(Landroidx/camera/camera2/internal/Camera2PresenceSource;)V

    iput-object v0, p0, Landroidx/camera/camera2/internal/Camera2PresenceSource;->h:Landroidx/camera/camera2/internal/Camera2PresenceSource$startMonitoring$1;

    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2PresenceSource;->f:Landroidx/camera/camera2/internal/compat/CameraManagerCompat;

    iget-object v2, p0, Landroidx/camera/camera2/internal/Camera2PresenceSource;->g:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v0}, Landroidx/camera/camera2/internal/compat/CameraManagerCompat;->d(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    invoke-virtual {p0}, Landroidx/camera/camera2/internal/Camera2PresenceSource;->a()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    new-instance v0, Lq00;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lq00;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;I)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->a(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2PresenceSource;->h:Landroidx/camera/camera2/internal/Camera2PresenceSource$startMonitoring$1;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroidx/camera/camera2/internal/Camera2PresenceSource;->f:Landroidx/camera/camera2/internal/compat/CameraManagerCompat;

    invoke-virtual {v2, v0}, Landroidx/camera/camera2/internal/compat/CameraManagerCompat;->e(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Landroidx/camera/camera2/internal/Camera2PresenceSource;->h:Landroidx/camera/camera2/internal/Camera2PresenceSource$startMonitoring$1;

    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Landroidx/camera/camera2/internal/Camera2PresenceSource;->h:Landroidx/camera/camera2/internal/Camera2PresenceSource$startMonitoring$1;

    throw v0

    :catch_0
    iput-object v1, p0, Landroidx/camera/camera2/internal/Camera2PresenceSource;->h:Landroidx/camera/camera2/internal/Camera2PresenceSource$startMonitoring$1;

    :cond_0
    return-void
.end method
