.class public final Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;
.super Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$Builder;,
        Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$CompareSizesByArea;,
        Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$Camera2Parameters;
    }
.end annotation


# static fields
.field public static p:Ljava/util/List;

.field public static final q:Lcom/google/common/collect/ImmutableMap;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/hardware/camera2/CameraManager;

.field public final c:Ljava/lang/String;

.field public final d:Landroid/hardware/camera2/CameraCharacteristics;

.field public final e:Ljava/lang/Object;

.field public final f:Landroid/os/HandlerThread;

.field public final g:Landroid/os/Handler;

.field public h:Landroid/hardware/camera2/CameraDevice;

.field public i:Landroid/media/ImageReader;

.field public j:Landroid/hardware/camera2/CaptureRequest$Builder;

.field public k:Landroid/hardware/camera2/CameraCaptureSession;

.field public l:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;

.field public m:Ljava/lang/String;

.field public n:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$PreviewCallback;

.field public final o:Landroid/media/ImageReader$OnImageAvailableListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/vuitton/core/infrastructure/perfectcorp/CameraFacing;->FRONT:Lcom/vuitton/core/infrastructure/perfectcorp/CameraFacing;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/vuitton/core/infrastructure/perfectcorp/CameraFacing;->BACK:Lcom/vuitton/core/infrastructure/perfectcorp/CameraFacing;

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->a(Z)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->q:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$Builder;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->e:Ljava/lang/Object;

    new-instance v1, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$2;

    invoke-direct {v1, p0}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$2;-><init>(Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;)V

    iput-object v1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->o:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v1, p1, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$Builder;->a:Landroid/content/Context;

    iput-object v1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->a:Landroid/content/Context;

    iget-object v1, p1, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$Builder;->b:Landroid/hardware/camera2/CameraManager;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->b:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p1, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$Builder;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->c:Ljava/lang/String;

    monitor-enter v0

    :try_start_0
    iget-object p1, p1, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$Builder;->d:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->l:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance p1, Landroid/os/HandlerThread;

    const-string v3, "Camera2Background"

    invoke-direct {p1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->f:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v3, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->g:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->d:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {p1}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$Camera2Parameters;->f(Landroid/hardware/camera2/CameraCharacteristics;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    monitor-enter v0

    :try_start_1
    const-string v4, "auto"

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string p1, "auto"

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->m:Ljava/lang/String;

    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_2
    new-instance p1, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$1;

    invoke-direct {p1, p0}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$1;-><init>(Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;)V

    invoke-virtual {v1, v2, p1, v3}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method


# virtual methods
.method public final a(Lmd;)V
    .locals 7

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->j:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->j:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->k:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->j:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    iget-object v5, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->g:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v5}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :try_start_2
    invoke-virtual {p1, v4}, Lmd;->o(Z)V

    :goto_0
    iget-object v2, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->j:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->j:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->j:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->k:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->j:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    new-instance v3, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$4;

    invoke-direct {v3, p0, p1}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$4;-><init>(Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;Lmd;)V

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->g:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    :try_start_4
    invoke-virtual {p1, v4}, Lmd;->o(Z)V

    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final b()Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$CameraInfo;
    .locals 3

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->b:Landroid/hardware/camera2/CameraManager;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$CameraInfo;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/vuitton/core/infrastructure/perfectcorp/CameraFacing;->BACK:Lcom/vuitton/core/infrastructure/perfectcorp/CameraFacing;

    goto :goto_0

    :cond_0
    const-string p0, "Only supports front and back camera."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object v0, Lcom/vuitton/core/infrastructure/perfectcorp/CameraFacing;->FRONT:Lcom/vuitton/core/infrastructure/perfectcorp/CameraFacing;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v1, v0, p0}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$CameraInfo;-><init>(Lcom/vuitton/core/infrastructure/perfectcorp/CameraFacing;I)V

    return-object v1
.end method

.method public final c()Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Parameters;
    .locals 2

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$Camera2Parameters;

    invoke-direct {v1, p0}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$Camera2Parameters;-><init>(Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final e()V
    .locals 1

    invoke-virtual {p0}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->m()V

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->f:Landroid/os/HandlerThread;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    throw p0

    :catch_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final f(Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Parameters;)V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Parameters;->getPreviewSize()Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;

    move-result-object v1

    iput-object v1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->l:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;

    invoke-interface {p1}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Parameters;->a()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->m:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->j:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, p1, v1}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->n(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->j:Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->k:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->g:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    throw p0

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final g(Ls3;)V
    .locals 1

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->n:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$PreviewCallback;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->k()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final i(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public final j()V
    .locals 6

    new-instance v0, Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->l:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;

    iget v3, v2, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;->a:I

    iget v2, v2, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;->b:I

    const/16 v4, 0x23

    const/4 v5, 0x1

    invoke-static {v3, v2, v4, v5}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v2

    iput-object v2, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->i:Landroid/media/ImageReader;

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->o:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v4, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->g:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->h:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v2, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    iput-object v2, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->j:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->i:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-object v2, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->i:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->p:Ljava/util/List;

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->h:Landroid/hardware/camera2/CameraDevice;

    new-instance v4, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$3;

    invoke-direct {v4, p0, v0}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$3;-><init>(Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;Lcom/google/common/util/concurrent/SettableFuture;)V

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->g:Landroid/os/Handler;

    invoke-virtual {v3, v2, v4, p0}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Uninterruptibles;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final k()V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->k:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    iput-object v2, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->k:Landroid/hardware/camera2/CameraCaptureSession;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->i:Landroid/media/ImageReader;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    iput-object v2, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->i:Landroid/media/ImageReader;

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final m()V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->n:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$PreviewCallback;

    iget-object v2, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->i:Landroid/media/ImageReader;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/media/ImageReader;->close()V

    iput-object v1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->i:Landroid/media/ImageReader;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->h:Landroid/hardware/camera2/CameraDevice;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraDevice;->close()V

    iput-object v1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->h:Landroid/hardware/camera2/CameraDevice;

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final n(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 8

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "continuous-picture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x6

    goto :goto_0

    :sswitch_1
    const-string v0, "infinity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v7, v1

    goto :goto_0

    :sswitch_2
    const-string v0, "macro"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v7, v2

    goto :goto_0

    :sswitch_3
    const-string v0, "fixed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v7, v3

    goto :goto_0

    :sswitch_4
    const-string v0, "edof"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v7, v6

    goto :goto_0

    :sswitch_5
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v7, v4

    goto :goto_0

    :sswitch_6
    const-string v0, "continuous-video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    move v7, v5

    :goto_0
    packed-switch v7, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    :pswitch_1
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->d:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v6, :cond_7

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne v6, p0, :cond_8

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-gt v6, p0, :cond_8

    :goto_1
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    :pswitch_3
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    :pswitch_4
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    :pswitch_5
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_8
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0xb99cbc3 -> :sswitch_6
        0x2dddaf -> :sswitch_5
        0x2f6eb6 -> :sswitch_4
        0x5cee774 -> :sswitch_3
        0x62d9bcc -> :sswitch_2
        0xa526a28 -> :sswitch_1
        0x363d9440 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
