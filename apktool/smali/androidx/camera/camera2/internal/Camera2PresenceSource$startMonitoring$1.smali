.class public final Landroidx/camera/camera2/internal/Camera2PresenceSource$startMonitoring$1;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "androidx/camera/camera2/internal/Camera2PresenceSource$startMonitoring$1",
        "Landroid/hardware/camera2/CameraManager$AvailabilityCallback;",
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


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/internal/Camera2PresenceSource;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/internal/Camera2PresenceSource;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/internal/Camera2PresenceSource$startMonitoring$1;->a:Landroidx/camera/camera2/internal/Camera2PresenceSource;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraAccessPrioritiesChanged()V
    .locals 2

    iget-object p0, p0, Landroidx/camera/camera2/internal/Camera2PresenceSource$startMonitoring$1;->a:Landroidx/camera/camera2/internal/Camera2PresenceSource;

    invoke-virtual {p0}, Landroidx/camera/camera2/internal/Camera2PresenceSource;->a()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    new-instance v0, Lq00;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lq00;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;I)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->a(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public final onCameraAvailable(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/internal/Camera2PresenceSource$startMonitoring$1;->a:Landroidx/camera/camera2/internal/Camera2PresenceSource;

    invoke-virtual {p0}, Landroidx/camera/camera2/internal/Camera2PresenceSource;->a()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    new-instance p1, Lq00;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lq00;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;I)V

    invoke-static {p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->a(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public final onCameraUnavailable(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/internal/Camera2PresenceSource$startMonitoring$1;->a:Landroidx/camera/camera2/internal/Camera2PresenceSource;

    invoke-virtual {p0}, Landroidx/camera/camera2/internal/Camera2PresenceSource;->a()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    new-instance p1, Lq00;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lq00;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;I)V

    invoke-static {p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->a(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method
