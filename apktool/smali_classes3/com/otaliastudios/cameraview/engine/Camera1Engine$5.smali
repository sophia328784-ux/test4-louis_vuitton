.class Lcom/otaliastudios/cameraview/engine/Camera1Engine$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

.field final synthetic val$notify:Z

.field final synthetic val$old:F

.field final synthetic val$points:[Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine;FZ[Landroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$5;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iput p2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$5;->val$old:F

    iput-boolean p3, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$5;->val$notify:Z

    iput-object p4, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$5;->val$points:[Landroid/graphics/PointF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$5;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->X:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$5;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iget v2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$5;->val$old:F

    invoke-virtual {v1, v0, v2}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->r0(Landroid/hardware/Camera$Parameters;F)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$5;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->X:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$5;->val$notify:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$5;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iget-object v1, v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->d:Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;

    iget v0, v0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->v:F

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$5;->val$points:[Landroid/graphics/PointF;

    invoke-interface {v1, v0, p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;->m(F[Landroid/graphics/PointF;)V

    :cond_0
    return-void
.end method
