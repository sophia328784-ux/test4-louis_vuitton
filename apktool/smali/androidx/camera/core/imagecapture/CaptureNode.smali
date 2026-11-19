.class Landroidx/camera/core/imagecapture/CaptureNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/processing/Node;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/imagecapture/CaptureNode$In;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/processing/Node<",
        "Landroidx/camera/core/imagecapture/CaptureNode$In;",
        "Landroidx/camera/core/imagecapture/ProcessingNode$In;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroidx/camera/core/imagecapture/ProcessingRequest;

.field public b:Landroidx/camera/core/SafeCloseImageReaderProxy;

.field public c:Landroidx/camera/core/SafeCloseImageReaderProxy;

.field public d:Landroidx/camera/core/SafeCloseImageReaderProxy;

.field public e:Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_In;

.field public f:Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_In;

.field public g:Landroidx/camera/core/imagecapture/NoMetadataImageReader;


# virtual methods
.method public final a()I
    .locals 2

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    iget-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode;->b:Landroidx/camera/core/SafeCloseImageReaderProxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "The ImageReader is not initialized."

    invoke-static {v1, v0}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    iget-object p0, p0, Landroidx/camera/core/imagecapture/CaptureNode;->b:Landroidx/camera/core/SafeCloseImageReaderProxy;

    iget-object v0, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->d:Landroidx/camera/core/impl/ImageReaderProxy;

    invoke-interface {v1}, Landroidx/camera/core/impl/ImageReaderProxy;->d()I

    move-result v1

    iget p0, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->b:I

    sub-int/2addr v1, p0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b(Landroidx/camera/core/ImageProxy;)V
    .locals 4

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    iget-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode;->a:Landroidx/camera/core/imagecapture/ProcessingRequest;

    const/4 v1, 0x5

    const-string v2, "CaptureNode"

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v1, v2}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    return-void

    :cond_0
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->p1()Landroidx/camera/core/ImageInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/ImageInfo;->c()Landroidx/camera/core/impl/TagBundle;

    move-result-object v0

    iget-object v3, p0, Landroidx/camera/core/imagecapture/CaptureNode;->a:Landroidx/camera/core/imagecapture/ProcessingRequest;

    iget-object v3, v3, Landroidx/camera/core/imagecapture/ProcessingRequest;->j:Ljava/lang/String;

    iget-object v0, v0, Landroidx/camera/core/impl/TagBundle;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    invoke-static {v1, v2}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    return-void

    :cond_1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    iget-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode;->e:Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_In;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_In;->a:Landroidx/camera/core/processing/Edge;

    iget-object v1, p0, Landroidx/camera/core/imagecapture/CaptureNode;->a:Landroidx/camera/core/imagecapture/ProcessingRequest;

    new-instance v2, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_InputPacket;

    invoke-direct {v2, v1, p1}, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_InputPacket;-><init>(Landroidx/camera/core/imagecapture/ProcessingRequest;Landroidx/camera/core/ImageProxy;)V

    invoke-virtual {v0, v2}, Landroidx/camera/core/processing/Edge;->accept(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode;->a:Landroidx/camera/core/imagecapture/ProcessingRequest;

    iget-object v1, p0, Landroidx/camera/core/imagecapture/CaptureNode;->f:Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_In;

    if-eqz v1, :cond_2

    iget-object v1, v1, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_In;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    iget-object v1, p0, Landroidx/camera/core/imagecapture/CaptureNode;->a:Landroidx/camera/core/imagecapture/ProcessingRequest;

    if-eqz v1, :cond_3

    iget-object v1, v1, Landroidx/camera/core/imagecapture/ProcessingRequest;->b:Landroidx/camera/core/imagecapture/TakePictureRequest;

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getFormat()I

    move-result p1

    invoke-virtual {v1, p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->n(I)V

    :cond_3
    const/4 p1, 0x0

    if-eqz v2, :cond_4

    iget-object v1, p0, Landroidx/camera/core/imagecapture/CaptureNode;->a:Landroidx/camera/core/imagecapture/ProcessingRequest;

    if-eqz v1, :cond_5

    iget-object v1, v1, Landroidx/camera/core/imagecapture/ProcessingRequest;->b:Landroidx/camera/core/imagecapture/TakePictureRequest;

    invoke-virtual {v1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->l()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iput-object p1, p0, Landroidx/camera/core/imagecapture/CaptureNode;->a:Landroidx/camera/core/imagecapture/ProcessingRequest;

    :cond_5
    iget-object p0, v0, Landroidx/camera/core/imagecapture/ProcessingRequest;->i:Landroidx/camera/core/imagecapture/RequestWithCallback;

    iget v1, v0, Landroidx/camera/core/imagecapture/ProcessingRequest;->m:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    const/16 v2, 0x64

    if-eq v1, v2, :cond_7

    iput v2, v0, Landroidx/camera/core/imagecapture/ProcessingRequest;->m:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    iget-boolean v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->g:Z

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    iget-object v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->a:Landroidx/camera/core/imagecapture/TakePictureRequest;

    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/TakePictureRequest;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lhn0;

    const/16 v3, 0x1c

    invoke-direct {v2, v0, v3}, Lhn0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_7
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    iget-boolean v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->g:Z

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-boolean v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->h:Z

    if-nez v0, :cond_9

    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/RequestWithCallback;->b()V

    :cond_9
    iget-object p0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->e:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {p0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Landroidx/camera/core/imagecapture/ProcessingRequest;)V
    .locals 4

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    iget-object v0, p1, Landroidx/camera/core/imagecapture/ProcessingRequest;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "only one capture stage is supported."

    invoke-static {v3, v0}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/CaptureNode;->a()I

    move-result v0

    if-lez v0, :cond_1

    move v1, v2

    :cond_1
    const-string v0, "Too many acquire images. Close image to be able to process next."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    iput-object p1, p0, Landroidx/camera/core/imagecapture/CaptureNode;->a:Landroidx/camera/core/imagecapture/ProcessingRequest;

    iget-object v0, p1, Landroidx/camera/core/imagecapture/ProcessingRequest;->l:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Landroidx/camera/core/imagecapture/CaptureNode$2;

    invoke-direct {v1, p0, p1}, Landroidx/camera/core/imagecapture/CaptureNode$2;-><init>(Landroidx/camera/core/imagecapture/CaptureNode;Landroidx/camera/core/imagecapture/ProcessingRequest;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->a()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {v0, v1, p0}, Landroidx/camera/core/impl/utils/futures/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final d(Landroidx/camera/core/imagecapture/TakePictureManager$CaptureError;)V
    .locals 5

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    iget-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode;->a:Landroidx/camera/core/imagecapture/ProcessingRequest;

    if-eqz v0, :cond_3

    iget v0, v0, Landroidx/camera/core/imagecapture/ProcessingRequest;->a:I

    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/TakePictureManager$CaptureError;->b()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Landroidx/camera/core/imagecapture/CaptureNode;->a:Landroidx/camera/core/imagecapture/ProcessingRequest;

    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/TakePictureManager$CaptureError;->a()Landroidx/camera/core/ImageCaptureException;

    move-result-object p1

    iget-object p0, p0, Landroidx/camera/core/imagecapture/ProcessingRequest;->i:Landroidx/camera/core/imagecapture/RequestWithCallback;

    iget-object v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->a:Landroidx/camera/core/imagecapture/TakePictureRequest;

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    iget-boolean v1, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->g:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    iget v1, v0, Landroidx/camera/core/imagecapture/TakePictureRequest;->a:I

    const/4 v2, 0x1

    if-lez v1, :cond_1

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/core/imagecapture/TakePictureRequest;->a:I

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->a()V

    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/TakePictureRequest;->a()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lw21;

    invoke-direct {v4, v0, p1, v2}, Lw21;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/RequestWithCallback;->a()V

    iget-object v2, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->e:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v2, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->d(Ljava/lang/Throwable;)Z

    if-eqz v1, :cond_3

    iget-object p0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->b:Landroidx/camera/core/imagecapture/TakePictureManagerImpl;

    invoke-virtual {p0, v0}, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;->e(Landroidx/camera/core/imagecapture/TakePictureRequest;)V

    :cond_3
    :goto_1
    return-void
.end method
