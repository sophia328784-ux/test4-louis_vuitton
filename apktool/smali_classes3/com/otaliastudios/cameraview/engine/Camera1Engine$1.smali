.class Lcom/otaliastudios/cameraview/engine/Camera1Engine$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

.field final synthetic val$old:Lcom/otaliastudios/cameraview/controls/Flash;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine;Lcom/otaliastudios/cameraview/controls/Flash;)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$1;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$1;->val$old:Lcom/otaliastudios/cameraview/controls/Flash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$1;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->X:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$1;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$1;->val$old:Lcom/otaliastudios/cameraview/controls/Flash;

    invoke-virtual {v1, v0, v2}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->l0(Landroid/hardware/Camera$Parameters;Lcom/otaliastudios/cameraview/controls/Flash;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$1;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->X:Landroid/hardware/Camera;

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method
