.class Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field public final synthetic b:Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1;->b:Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;

    return-void
.end method


# virtual methods
.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 8

    iget-object v0, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1;->b:Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;

    iget-object v1, v0, Lcom/otaliastudios/cameraview/picture/PictureRecorder;->c:Lcom/otaliastudios/cameraview/picture/PictureRecorder$PictureResultListener;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/otaliastudios/cameraview/picture/PictureRecorder$PictureResultListener;->j(Z)V

    :cond_0
    iget-object v1, v0, Lcom/otaliastudios/cameraview/picture/PictureRecorder;->b:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iget v6, v1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->c:I

    iget-object v7, v1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->d:Lcom/otaliastudios/cameraview/size/Size;

    iget-object v1, v0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->f:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    sget-object v2, Lcom/otaliastudios/cameraview/engine/offset/Reference;->SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {v1, v2}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->q(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v5

    if-eqz v5, :cond_1

    new-instance v2, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1$1;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1$1;-><init>(Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1;[BLcom/otaliastudios/cameraview/size/Size;ILcom/otaliastudios/cameraview/size/Size;)V

    const-string p0, "FallbackCameraThread"

    invoke-static {p0}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->a(Ljava/lang/String;)Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    move-result-object p0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->c:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object p0, v0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->f:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    invoke-virtual {p2, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object p0, v0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->f:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->U()Lcom/otaliastudios/cameraview/frame/FrameManager;

    move-result-object p0

    check-cast p0, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;

    iget p1, v0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->i:I

    iget-object p2, v0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->f:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iget-object p2, p2, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->D:Lcom/otaliastudios/cameraview/engine/offset/Angles;

    invoke-virtual {p0, p1, v5, p2}, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;->d(ILcom/otaliastudios/cameraview/size/Size;Lcom/otaliastudios/cameraview/engine/offset/Angles;)V

    return-void

    :cond_1
    const-string p0, "Preview stream size should never be null here."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method
