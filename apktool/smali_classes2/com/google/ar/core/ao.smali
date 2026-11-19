.class final Lcom/google/ar/core/ao;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SourceFile"


# static fields
.field public static final synthetic d:I


# instance fields
.field public final synthetic a:Landroid/os/Handler;

.field public final synthetic b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field public final synthetic c:Lcom/google/ar/core/SharedCamera;


# direct methods
.method public constructor <init>(Lcom/google/ar/core/SharedCamera;Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .locals 0

    iput-object p2, p0, Lcom/google/ar/core/ao;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/ar/core/ao;->b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iput-object p1, p0, Lcom/google/ar/core/ao;->c:Lcom/google/ar/core/SharedCamera;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActive(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    new-instance v0, Lcom/google/ar/core/al;

    iget-object v1, p0, Lcom/google/ar/core/ao;->b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    const/4 v2, 0x6

    invoke-direct {v0, v1, p1, v2}, Lcom/google/ar/core/al;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v1, p0, Lcom/google/ar/core/ao;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/google/ar/core/ao;->c:Lcom/google/ar/core/SharedCamera;

    invoke-virtual {p0, p1}, Lcom/google/ar/core/SharedCamera;->g(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public final onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    new-instance v0, Lcom/google/ar/core/al;

    iget-object v1, p0, Lcom/google/ar/core/ao;->b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    const/4 v2, 0x7

    invoke-direct {v0, v1, p1, v2}, Lcom/google/ar/core/al;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v1, p0, Lcom/google/ar/core/ao;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/google/ar/core/ao;->c:Lcom/google/ar/core/SharedCamera;

    invoke-virtual {p0, p1}, Lcom/google/ar/core/SharedCamera;->h(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public final onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    new-instance v0, Lcom/google/ar/core/al;

    iget-object v1, p0, Lcom/google/ar/core/ao;->b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    const/4 v2, 0x4

    invoke-direct {v0, v1, p1, v2}, Lcom/google/ar/core/al;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v1, p0, Lcom/google/ar/core/ao;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/google/ar/core/ao;->c:Lcom/google/ar/core/SharedCamera;

    invoke-virtual {p0, p1}, Lcom/google/ar/core/SharedCamera;->i(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public final onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    new-instance v0, Lcom/google/ar/core/al;

    iget-object v1, p0, Lcom/google/ar/core/ao;->b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    const/4 v2, 0x3

    invoke-direct {v0, v1, p1, v2}, Lcom/google/ar/core/al;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v1, p0, Lcom/google/ar/core/ao;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/google/ar/core/ao;->c:Lcom/google/ar/core/SharedCamera;

    invoke-virtual {p0, p1}, Lcom/google/ar/core/SharedCamera;->j(Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-virtual {p0}, Lcom/google/ar/core/SharedCamera;->n()Lcom/google/ar/core/aq;

    move-result-object p1

    iget-object p1, p1, Lcom/google/ar/core/aq;->a:Landroid/hardware/camera2/CameraDevice;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/ar/core/SharedCamera;->c()V

    :cond_0
    return-void
.end method

.method public final onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    new-instance v0, Lcom/google/ar/core/al;

    iget-object v1, p0, Lcom/google/ar/core/ao;->b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    const/4 v2, 0x5

    invoke-direct {v0, v1, p1, v2}, Lcom/google/ar/core/al;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v1, p0, Lcom/google/ar/core/ao;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/google/ar/core/ao;->c:Lcom/google/ar/core/SharedCamera;

    invoke-virtual {p0, p1}, Lcom/google/ar/core/SharedCamera;->k(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method
