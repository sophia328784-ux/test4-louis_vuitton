.class public final synthetic Landroidx/camera/camera2/internal/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/camera2/internal/Camera2CameraImpl;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraImpl;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/f;->b:Landroidx/camera/camera2/internal/Camera2CameraImpl;

    iput-boolean p2, p0, Landroidx/camera/camera2/internal/f;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/internal/f;->b:Landroidx/camera/camera2/internal/Camera2CameraImpl;

    iget-boolean p0, p0, Landroidx/camera/camera2/internal/f;->c:Z

    iput-boolean p0, v0, Landroidx/camera/camera2/internal/Camera2CameraImpl;->J:Z

    if-eqz p0, :cond_1

    iget-object p0, v0, Landroidx/camera/camera2/internal/Camera2CameraImpl;->f:Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    sget-object v1, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;->PENDING_OPEN:Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    if-eq p0, v1, :cond_0

    iget-object p0, v0, Landroidx/camera/camera2/internal/Camera2CameraImpl;->f:Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    sget-object v1, Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;->OPENING_WITH_ERROR:Landroidx/camera/camera2/internal/Camera2CameraImpl$InternalState;

    if-ne p0, v1, :cond_1

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/internal/Camera2CameraImpl;->K(Z)V

    :cond_1
    return-void
.end method
