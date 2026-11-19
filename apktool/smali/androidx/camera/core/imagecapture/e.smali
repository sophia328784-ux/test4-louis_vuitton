.class public final synthetic Landroidx/camera/core/imagecapture/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/camera/core/imagecapture/ProcessingNode;

.field public final synthetic d:Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/imagecapture/ProcessingNode;Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;I)V
    .locals 0

    iput p3, p0, Landroidx/camera/core/imagecapture/e;->b:I

    iput-object p1, p0, Landroidx/camera/core/imagecapture/e;->c:Landroidx/camera/core/imagecapture/ProcessingNode;

    iput-object p2, p0, Landroidx/camera/core/imagecapture/e;->d:Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Landroidx/camera/core/imagecapture/e;->b:I

    iget-object v1, p0, Landroidx/camera/core/imagecapture/e;->d:Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;

    iget-object p0, p0, Landroidx/camera/core/imagecapture/e;->c:Landroidx/camera/core/imagecapture/ProcessingNode;

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    check-cast v0, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_InputPacket;

    iget-object v0, v0, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_InputPacket;->a:Landroidx/camera/core/imagecapture/ProcessingRequest;

    const/4 v4, 0x3

    :try_start_0
    iget-object v5, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->d:Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_In;

    iget-object v5, v5, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_In;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v3, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    move-object v6, v1

    check-cast v6, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_InputPacket;

    iget-object v6, v6, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_InputPacket;->a:Landroidx/camera/core/imagecapture/ProcessingRequest;

    iget-object v7, v6, Landroidx/camera/core/imagecapture/ProcessingRequest;->c:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    if-nez v7, :cond_1

    iget-object v6, v6, Landroidx/camera/core/imagecapture/ProcessingRequest;->d:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    if-nez v6, :cond_1

    invoke-virtual {p0, v1}, Landroidx/camera/core/imagecapture/ProcessingNode;->a(Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;)Landroidx/camera/core/ImageProxy;

    move-result-object p0

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    new-instance v3, Landroidx/camera/core/imagecapture/f;

    invoke-direct {v3, v0, p0, v2}, Landroidx/camera/core/imagecapture/f;-><init>(Landroidx/camera/core/imagecapture/ProcessingRequest;Ljava/lang/Object;I)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_3

    :cond_1
    invoke-virtual {p0, v1}, Landroidx/camera/core/imagecapture/ProcessingNode;->b(Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;)Landroidx/camera/core/ImageCapture$OutputFileResults;

    move-result-object p0

    if-eqz v5, :cond_2

    iget-object v1, v0, Landroidx/camera/core/imagecapture/ProcessingRequest;->b:Landroidx/camera/core/imagecapture/TakePictureRequest;

    invoke-virtual {v1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->l()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    new-instance v5, Landroidx/camera/core/imagecapture/f;

    invoke-direct {v5, v0, p0, v3}, Landroidx/camera/core/imagecapture/f;-><init>(Landroidx/camera/core/imagecapture/ProcessingRequest;Ljava/lang/Object;I)V

    invoke-interface {v1, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroidx/camera/core/ImageCaptureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_1
    new-instance v1, Landroidx/camera/core/ImageCaptureException;

    const-string v3, "Processing failed."

    invoke-direct {v1, v2, v3, p0}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    new-instance v2, Landroidx/camera/core/imagecapture/f;

    invoke-direct {v2, v0, v1, v4}, Landroidx/camera/core/imagecapture/f;-><init>(Landroidx/camera/core/imagecapture/ProcessingRequest;Ljava/lang/Object;I)V

    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    :goto_2
    new-instance v1, Landroidx/camera/core/ImageCaptureException;

    const-string v3, "Processing failed due to low memory."

    invoke-direct {v1, v2, v3, p0}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    new-instance v2, Landroidx/camera/core/imagecapture/f;

    invoke-direct {v2, v0, v1, v4}, Landroidx/camera/core/imagecapture/f;-><init>(Landroidx/camera/core/imagecapture/ProcessingRequest;Ljava/lang/Object;I)V

    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    :goto_3
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    new-instance v2, Landroidx/camera/core/imagecapture/f;

    invoke-direct {v2, v0, p0, v4}, Landroidx/camera/core/imagecapture/f;-><init>(Landroidx/camera/core/imagecapture/ProcessingRequest;Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    :goto_4
    return-void

    :pswitch_0
    const-string v0, "Postview only supports to convert YUV, JPEG and JPEG_R format image to the postview output bitmap. Image format: "

    move-object v4, v1

    check-cast v4, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_InputPacket;

    iget-object v4, v4, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_InputPacket;->a:Landroidx/camera/core/imagecapture/ProcessingRequest;

    :try_start_1
    iget-object v5, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->e:Landroidx/camera/core/processing/Operation;

    check-cast v5, Landroidx/camera/core/imagecapture/ProcessingInput2Packet;

    invoke-virtual {v5, v1}, Landroidx/camera/core/imagecapture/ProcessingInput2Packet;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/core/processing/Packet;

    invoke-virtual {v5}, Landroidx/camera/core/processing/Packet;->e()I

    move-result v6

    const/16 v7, 0x23

    if-eq v6, v7, :cond_4

    const/16 v7, 0x100

    if-eq v6, v7, :cond_4

    const/16 v7, 0x1005

    if-ne v6, v7, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroidx/core/util/Preconditions;->b(ZLjava/lang/String;)V

    iget-object p0, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->l:Landroidx/camera/core/imagecapture/Image2Bitmap;

    invoke-virtual {p0, v5}, Landroidx/camera/core/imagecapture/Image2Bitmap;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v2, Landroidx/camera/core/imagecapture/f;

    const/4 v3, 0x2

    invoke-direct {v2, v4, p0, v3}, Landroidx/camera/core/imagecapture/f;-><init>(Landroidx/camera/core/imagecapture/ProcessingRequest;Ljava/lang/Object;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_5

    :catch_3
    check-cast v1, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_InputPacket;

    iget-object p0, v1, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_InputPacket;->b:Landroidx/camera/core/ImageProxy;

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    const-string p0, "ProcessingNode"

    invoke-static {p0}, Landroidx/camera/core/Logger;->b(Ljava/lang/String;)V

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
