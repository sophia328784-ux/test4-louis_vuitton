.class Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field public final synthetic a:Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder$2;->a:Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder;

    return-void
.end method


# virtual methods
.method public final onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 5

    iget-object p0, p0, Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder$2;->a:Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder;->g:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    sget-object v1, Lcom/otaliastudios/cameraview/picture/FullPictureRecorder;->e:Lcom/otaliastudios/cameraview/CameraLogger;

    const-string v2, "take(): got picture callback."

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroidx/exifinterface/media/ExifInterface;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v4}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    const-string v4, "Orientation"

    invoke-virtual {v2, v3, v4}, Landroidx/exifinterface/media/ExifInterface;->e(ILjava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v1, 0x10e

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    :pswitch_2
    const/16 v1, 0xb4

    :catch_0
    :goto_0
    iget-object v2, p0, Lcom/otaliastudios/cameraview/picture/PictureRecorder;->b:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iput-object p1, v2, Lcom/otaliastudios/cameraview/PictureResult$Stub;->e:[B

    iput v1, v2, Lcom/otaliastudios/cameraview/PictureResult$Stub;->c:I

    sget-object p1, Lcom/otaliastudios/cameraview/picture/FullPictureRecorder;->e:Lcom/otaliastudios/cameraview/CameraLogger;

    const-string v1, "take(): starting preview again. "

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iget-object p1, v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    iget-object p1, p1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->f:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    sget-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->PREVIEW:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    invoke-virtual {p1, v1}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->a(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    sget-object p1, Lcom/otaliastudios/cameraview/engine/offset/Reference;->SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->q(Lcom/otaliastudios/cameraview/engine/offset/Reference;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->U()Lcom/otaliastudios/cameraview/frame/FrameManager;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;

    iget v2, v0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->m:I

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->D:Lcom/otaliastudios/cameraview/engine/offset/Angles;

    invoke-virtual {v1, v2, p1, v0}, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;->d(ILcom/otaliastudios/cameraview/size/Size;Lcom/otaliastudios/cameraview/engine/offset/Angles;)V

    invoke-virtual {p2}, Landroid/hardware/Camera;->startPreview()V

    goto :goto_1

    :cond_0
    const-string p0, "Preview stream size should never be null here."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/picture/Full1PictureRecorder;->a()V

    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
