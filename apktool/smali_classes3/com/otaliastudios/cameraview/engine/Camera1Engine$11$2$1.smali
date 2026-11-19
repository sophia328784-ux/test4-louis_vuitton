.class Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2$1;->this$2:Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2$1;->this$2:Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;->a:Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->X:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2$1;->this$2:Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;->a:Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->X:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v1

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v2

    const/4 v3, 0x0

    if-lez v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    :cond_0
    if-lez v2, :cond_1

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    :cond_1
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2$1;->this$2:Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;->a:Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    invoke-virtual {v1, v0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->j0(Landroid/hardware/Camera$Parameters;)V

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2$1;->this$2:Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;->a:Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->X:Landroid/hardware/Camera;

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method
