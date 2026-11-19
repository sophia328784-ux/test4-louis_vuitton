.class Lcom/otaliastudios/cameraview/engine/Camera2Engine$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

.field final synthetic val$format:I


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;I)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$21;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iput p2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$21;->val$format:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$21;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->f:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->BIND:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->a(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$21;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$21;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iget p0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$21;->val$format:I

    invoke-virtual {v0, p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->D(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$21;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iget v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$21;->val$format:I

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x23

    :goto_0
    iput v2, v0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->m:I

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->f:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->a(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$21;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->A()V

    :cond_2
    return-void
.end method
