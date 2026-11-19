.class public final synthetic Lcom/perfectcorp/perfectlib/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/MakeupCam;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:[B

.field public final synthetic h:I

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/MakeupCam;ZZZZ[BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/h1;->b:Lcom/perfectcorp/perfectlib/MakeupCam;

    iput-boolean p2, p0, Lcom/perfectcorp/perfectlib/h1;->c:Z

    iput-boolean p3, p0, Lcom/perfectcorp/perfectlib/h1;->d:Z

    iput-boolean p4, p0, Lcom/perfectcorp/perfectlib/h1;->e:Z

    iput-boolean p5, p0, Lcom/perfectcorp/perfectlib/h1;->f:Z

    iput-object p6, p0, Lcom/perfectcorp/perfectlib/h1;->g:[B

    iput p7, p0, Lcom/perfectcorp/perfectlib/h1;->h:I

    iput p8, p0, Lcom/perfectcorp/perfectlib/h1;->i:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/h1;->b:Lcom/perfectcorp/perfectlib/MakeupCam;

    iget-boolean v1, p0, Lcom/perfectcorp/perfectlib/h1;->c:Z

    iget-boolean v4, p0, Lcom/perfectcorp/perfectlib/h1;->d:Z

    iget-boolean v5, p0, Lcom/perfectcorp/perfectlib/h1;->e:Z

    iget-boolean v6, p0, Lcom/perfectcorp/perfectlib/h1;->f:Z

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/h1;->g:[B

    iget v3, p0, Lcom/perfectcorp/perfectlib/h1;->h:I

    iget p0, p0, Lcom/perfectcorp/perfectlib/h1;->i:I

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object v7, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->d:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    invoke-virtual {v7}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getOutputWidth()I

    move-result v8

    if-lez v8, :cond_0

    invoke-virtual {v7}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getOutputHeight()I

    move-result v7

    if-lez v7, :cond_0

    const-string v7, ", flipForFrontCamera="

    const-string v8, ", continueCapture="

    const-string v9, "[takePictureByBuffer] isFrontCamera="

    invoke-static {v9, v7, v8, v1, v4}, Lcj;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", needOriginal="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    const-string v9, "MakeupCam"

    invoke-static {v8, v9, v7}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;

    invoke-direct {v7}, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;-><init>()V

    iput-object v2, v7, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->d:[B

    iput v3, v7, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->b:I

    iput p0, v7, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->c:I

    const/4 p0, 0x0

    iput-object p0, v7, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->e:Lcom/cyberlink/clgpuimage/GPUImageRenderer$OnFrameAvailableListener;

    const-wide/16 v2, -0x1

    iput-wide v2, v7, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->a:J

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "[takePictureByBuffer] frame="

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, v9, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    xor-int/lit8 v3, v1, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->b(ZZZZLcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;)Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$a;

    move-result-object p0

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/MakeupCam;->h:Lcom/perfectcorp/perfectlib/MakeupCam$OnPictureTakenListener;

    invoke-interface {v0}, Lcom/perfectcorp/perfectlib/MakeupCam$OnPictureTakenListener;->onTaken()V

    return-object p0

    :cond_0
    new-instance p0, Lcom/perfectcorp/perfectlib/MakeupCam$GpuFilterNotReadyException;

    const-string v0, "GPU filter not ready yet."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
