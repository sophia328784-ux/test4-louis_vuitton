.class Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$3;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/common/util/concurrent/SettableFuture;

.field public final synthetic b:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;


# direct methods
.method public constructor <init>(Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$3;->b:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;

    iput-object p2, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$3;->a:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "configure camera failed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$3;->a:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 6

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$3;->b:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;

    iget-object v0, v0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$3;->b:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;

    iput-object p1, v3, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->k:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v4, v3, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->m:Ljava/lang/String;

    iget-object v5, v3, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->j:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v3, v4, v5}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->n(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$3;->b:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;

    iget-object v3, v3, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->j:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$3;->b:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;

    iget-object v4, v4, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->g:Landroid/os/Handler;

    invoke-virtual {p1, v3, v2, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :goto_0
    :try_start_1
    const-string v3, "configure camera failed with reason: "

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    iget-object p1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$3;->b:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;

    iget-object p1, p1, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->a:Landroid/content/Context;

    invoke-static {p1, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_1
    const-string v3, "configure camera failed"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    iget-object p1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$3;->b:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;

    iget-object p1, p1, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->a:Landroid/content/Context;

    invoke-static {p1, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$3;->a:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {p0, v2}, Lcom/google/common/util/concurrent/AbstractFuture;->set(Ljava/lang/Object;)Z

    return-void

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
