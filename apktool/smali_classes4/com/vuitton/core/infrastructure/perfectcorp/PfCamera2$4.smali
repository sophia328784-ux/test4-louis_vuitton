.class Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$4;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lmd;

.field public final synthetic b:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;


# direct methods
.method public constructor <init>(Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;Lmd;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$4;->b:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;

    iput-object p2, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$4;->a:Lmd;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$4;->b:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->j:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->k:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->j:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->g:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    const-string p0, "configure camera failed with reason: "

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    const-string p0, "disable auto focus failed"

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void
.end method

.method public final onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    iget-object p1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$4;->b:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;

    iget-object p1, p1, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->e:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$4;->a:Lmd;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lmd;->o(Z)V

    invoke-virtual {p0}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$4;->a()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    iget-object p1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$4;->b:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;

    iget-object p1, p1, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->e:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    iget-object p2, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$4;->a:Lmd;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lmd;->o(Z)V

    invoke-virtual {p0}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$4;->a()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
