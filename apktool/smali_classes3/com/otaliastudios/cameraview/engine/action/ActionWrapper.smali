.class public abstract Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;
.super Lcom/otaliastudios/cameraview/engine/action/BaseAction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;->n()Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->b(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method public final c(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->c(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;)V

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;->n()Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->c(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method public final d(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;->n()Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->d(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public final g(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;->n()Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->g(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    return-void
.end method

.method public i(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V
    .locals 2

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->c:Lcom/otaliastudios/cameraview/engine/action/ActionHolder;

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;->n()Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    move-result-object v0

    new-instance v1, Lcom/otaliastudios/cameraview/engine/action/ActionWrapper$1;

    invoke-direct {v1, p0}, Lcom/otaliastudios/cameraview/engine/action/ActionWrapper$1;-><init>(Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;)V

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->e(Lcom/otaliastudios/cameraview/engine/action/ActionCallback;)V

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;->n()Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->i(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    return-void
.end method

.method public abstract n()Lcom/otaliastudios/cameraview/engine/action/BaseAction;
.end method
