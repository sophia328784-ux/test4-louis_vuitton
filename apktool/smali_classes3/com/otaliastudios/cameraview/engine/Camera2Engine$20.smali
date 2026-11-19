.class Lcom/otaliastudios/cameraview/engine/Camera2Engine$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

.field final synthetic val$hasFrameProcessors:Z


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;Z)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$20;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iput-boolean p2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$20;->val$hasFrameProcessors:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$20;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->f:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->BIND:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->a(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$20;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$20;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iget-boolean p0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$20;->val$hasFrameProcessors:Z

    invoke-virtual {v0, p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->E(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$20;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iget-boolean v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$20;->val$hasFrameProcessors:Z

    iput-boolean v2, v0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->n:Z

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->f:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->a(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$20;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->A()V

    :cond_1
    return-void
.end method
