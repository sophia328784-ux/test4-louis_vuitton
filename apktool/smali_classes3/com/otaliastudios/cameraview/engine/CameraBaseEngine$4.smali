.class Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$4;
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

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$4;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$4;->val$stub:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iput-boolean p3, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$4;->val$metering:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    sget-object v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->f:Lcom/otaliastudios/cameraview/CameraLogger;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$4;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->i:Lcom/otaliastudios/cameraview/picture/PictureRecorder;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "takePictureSnapshot:"

    const-string v4, "running. isTakingPicture:"

    filled-new-array {v3, v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$4;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object v1, v0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->i:Lcom/otaliastudios/cameraview/picture/PictureRecorder;

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$4;->val$stub:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iget-object v3, v0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->u:Landroid/location/Location;

    iput-object v3, v1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->b:Landroid/location/Location;

    iput-boolean v2, v1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->a:Z

    sget-object v2, Lcom/otaliastudios/cameraview/controls/PictureFormat;->JPEG:Lcom/otaliastudios/cameraview/controls/PictureFormat;

    iput-object v2, v1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->f:Lcom/otaliastudios/cameraview/controls/PictureFormat;

    sget-object v1, Lcom/otaliastudios/cameraview/engine/offset/Reference;->OUTPUT:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->X(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v0

    sget-object v1, Lcom/otaliastudios/cameraview/size/AspectRatio;->d:Ljava/util/HashMap;

    iget v1, v0, Lcom/otaliastudios/cameraview/size/Size;->b:I

    iget v0, v0, Lcom/otaliastudios/cameraview/size/Size;->c:I

    invoke-static {v1, v0}, Lcom/otaliastudios/cameraview/size/AspectRatio;->a(II)Lcom/otaliastudios/cameraview/size/AspectRatio;

    move-result-object v0

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$4;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$4;->val$stub:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iget-boolean p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$4;->val$metering:Z

    invoke-virtual {v1, v2, v0, p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->c0(Lcom/otaliastudios/cameraview/PictureResult$Stub;Lcom/otaliastudios/cameraview/size/AspectRatio;Z)V

    return-void
.end method
