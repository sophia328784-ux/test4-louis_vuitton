.class Lcom/otaliastudios/cameraview/engine/Camera2Engine$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

.field final synthetic val$flash:Lcom/otaliastudios/cameraview/controls/Flash;

.field final synthetic val$old:Lcom/otaliastudios/cameraview/controls/Flash;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;Lcom/otaliastudios/cameraview/controls/Flash;Lcom/otaliastudios/cameraview/controls/Flash;)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$11;->val$old:Lcom/otaliastudios/cameraview/controls/Flash;

    iput-object p3, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$11;->val$flash:Lcom/otaliastudios/cameraview/controls/Flash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iget-object v1, v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->t0:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$11;->val$old:Lcom/otaliastudios/cameraview/controls/Flash;

    invoke-virtual {v0, v1, v2}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->l0(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/otaliastudios/cameraview/controls/Flash;)Z

    move-result v0

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iget-object v2, v1, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    iget-object v2, v2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->f:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    sget-object v3, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->PREVIEW:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    if-ne v2, v3, :cond_0

    sget-object v0, Lcom/otaliastudios/cameraview/controls/Flash;->OFF:Lcom/otaliastudios/cameraview/controls/Flash;

    iput-object v0, v1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->o:Lcom/otaliastudios/cameraview/controls/Flash;

    iget-object v0, v1, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->t0:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$11;->val$old:Lcom/otaliastudios/cameraview/controls/Flash;

    invoke-virtual {v1, v0, v2}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->l0(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/otaliastudios/cameraview/controls/Flash;)Z

    :try_start_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iget-object v1, v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->h0:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->t0:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$11;->val$flash:Lcom/otaliastudios/cameraview/controls/Flash;

    iput-object v1, v0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->o:Lcom/otaliastudios/cameraview/controls/Flash;

    iget-object v1, v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->t0:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$11;->val$old:Lcom/otaliastudios/cameraview/controls/Flash;

    invoke-virtual {v0, v1, v2}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->l0(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/otaliastudios/cameraview/controls/Flash;)Z

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->o0()V

    return-void

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->s0(Landroid/hardware/camera2/CameraAccessException;)Lcom/otaliastudios/cameraview/CameraException;

    move-result-object p0

    throw p0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->o0()V

    :cond_1
    return-void
.end method
