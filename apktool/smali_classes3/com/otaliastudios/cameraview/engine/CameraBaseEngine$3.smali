.class Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

.field final synthetic val$metering:Z

.field final synthetic val$stub:Lcom/otaliastudios/cameraview/PictureResult$Stub;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;Lcom/otaliastudios/cameraview/PictureResult$Stub;Z)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$3;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$3;->val$stub:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iput-boolean p3, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$3;->val$metering:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    sget-object v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->f:Lcom/otaliastudios/cameraview/CameraLogger;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$3;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->i:Lcom/otaliastudios/cameraview/picture/PictureRecorder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v4, "takePicture:"

    const-string v5, "running. isTakingPicture:"

    filled-new-array {v4, v5, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$3;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object v1, v0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->i:Lcom/otaliastudios/cameraview/picture/PictureRecorder;

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->I:Lcom/otaliastudios/cameraview/controls/Mode;

    sget-object v3, Lcom/otaliastudios/cameraview/controls/Mode;->VIDEO:Lcom/otaliastudios/cameraview/controls/Mode;

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$3;->val$stub:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iput-boolean v2, v1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->a:Z

    iget-object v2, v0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->u:Landroid/location/Location;

    iput-object v2, v1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->b:Landroid/location/Location;

    iget-object v2, v0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->t:Lcom/otaliastudios/cameraview/controls/PictureFormat;

    iput-object v2, v1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->f:Lcom/otaliastudios/cameraview/controls/PictureFormat;

    iget-boolean p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$3;->val$metering:Z

    invoke-virtual {v0, v1, p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->b0(Lcom/otaliastudios/cameraview/PictureResult$Stub;Z)V

    return-void

    :cond_2
    const-string p0, "Can\'t take hq pictures while in VIDEO mode"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method
