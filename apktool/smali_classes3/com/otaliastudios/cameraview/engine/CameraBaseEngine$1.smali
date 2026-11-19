.class Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

.field final synthetic val$facing:Lcom/otaliastudios/cameraview/controls/Facing;

.field final synthetic val$old:Lcom/otaliastudios/cameraview/controls/Facing;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;Lcom/otaliastudios/cameraview/controls/Facing;Lcom/otaliastudios/cameraview/controls/Facing;)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$1;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$1;->val$facing:Lcom/otaliastudios/cameraview/controls/Facing;

    iput-object p3, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$1;->val$old:Lcom/otaliastudios/cameraview/controls/Facing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$1;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$1;->val$facing:Lcom/otaliastudios/cameraview/controls/Facing;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->o(Lcom/otaliastudios/cameraview/controls/Facing;)Z

    move-result v0

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$1;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->z()V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$1;->val$old:Lcom/otaliastudios/cameraview/controls/Facing;

    iput-object p0, v1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->H:Lcom/otaliastudios/cameraview/controls/Facing;

    return-void
.end method
