.class public final synthetic Lcom/perfectcorp/perfectlib/i1;
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


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/MakeupCam;ZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/i1;->b:Lcom/perfectcorp/perfectlib/MakeupCam;

    iput-boolean p2, p0, Lcom/perfectcorp/perfectlib/i1;->c:Z

    iput-boolean p3, p0, Lcom/perfectcorp/perfectlib/i1;->d:Z

    iput-boolean p4, p0, Lcom/perfectcorp/perfectlib/i1;->e:Z

    iput-boolean p5, p0, Lcom/perfectcorp/perfectlib/i1;->f:Z

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/i1;->b:Lcom/perfectcorp/perfectlib/MakeupCam;

    iget-boolean v1, p0, Lcom/perfectcorp/perfectlib/i1;->c:Z

    iget-boolean v4, p0, Lcom/perfectcorp/perfectlib/i1;->d:Z

    iget-boolean v5, p0, Lcom/perfectcorp/perfectlib/i1;->e:Z

    iget-boolean v6, p0, Lcom/perfectcorp/perfectlib/i1;->f:Z

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->d:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getOutputWidth()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getOutputHeight()I

    move-result p0

    if-lez p0, :cond_0

    const-string p0, ", flipForFrontCamera="

    const-string v2, ", continueCapture="

    const-string v3, "[takePicture] isFrontCamera="

    invoke-static {v3, p0, v2, v1, v4}, Lcj;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", needOriginal="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x3

    const-string v3, "MakeupCam"

    invoke-static {v2, v3, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    xor-int/lit8 v3, v1, 0x1

    const/4 v7, 0x0

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
