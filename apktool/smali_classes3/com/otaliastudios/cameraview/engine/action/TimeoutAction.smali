.class Lcom/otaliastudios/cameraview/engine/action/TimeoutAction;
.super Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;
.source "SourceFile"


# instance fields
.field public e:J

.field public f:J

.field public g:Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;


# virtual methods
.method public final b(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;->b(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->f()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-wide v0, p0, Lcom/otaliastudios/cameraview/engine/action/TimeoutAction;->e:J

    iget-wide v2, p0, Lcom/otaliastudios/cameraview/engine/action/TimeoutAction;->f:J

    add-long/2addr v0, v2

    cmp-long p2, p2, v0

    if-lez p2, :cond_0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/action/TimeoutAction;->g:Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->a(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    :cond_0
    return-void
.end method

.method public final i(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/otaliastudios/cameraview/engine/action/TimeoutAction;->e:J

    invoke-super {p0, p1}, Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;->i(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    return-void
.end method

.method public final n()Lcom/otaliastudios/cameraview/engine/action/BaseAction;
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/action/TimeoutAction;->g:Lcom/otaliastudios/cameraview/engine/action/ActionWrapper;

    return-object p0
.end method
