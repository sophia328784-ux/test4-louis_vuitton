.class Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$8;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$8;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->T()Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v0

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$8;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->k:Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/size/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "onSurfaceChanged:"

    if-eqz v1, :cond_0

    sget-object p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->f:Lcom/otaliastudios/cameraview/CameraLogger;

    const-string v0, "The computed preview size is identical. No op."

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    return-void

    :cond_0
    sget-object v1, Lcom/otaliastudios/cameraview/engine/CameraEngine;->f:Lcom/otaliastudios/cameraview/CameraLogger;

    const-string v4, "Computed a new preview size. Calling onPreviewStreamSizeChanged()."

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$8;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iput-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->k:Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->a0()V

    return-void
.end method
