.class Lcom/perfectcorp/perfectlib/MakeupCam$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyberlink/clgpuimage/GPUImageRenderer$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/cyberlink/clgpuimage/GPUImageRenderer$OnFrameAvailableListener<",
        "Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/perfectcorp/perfectlib/makeupcam/video/a;

.field public synthetic b:Lcom/perfectcorp/perfectlib/MakeupCam;


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCam$2;->b:Lcom/perfectcorp/perfectlib/MakeupCam;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/MakeupCam;->f:Lcom/perfectcorp/perfectlib/makeupcam/video/e;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/makeupcam/video/e;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCam$2;->b:Lcom/perfectcorp/perfectlib/MakeupCam;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/MakeupCam;->f:Lcom/perfectcorp/perfectlib/makeupcam/video/e;

    iget-boolean v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/e;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_1

    :cond_1
    :goto_0
    iget-wide v0, p1, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;->d:J

    :goto_1
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam$2;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/a;

    new-instance v2, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer$Builder;

    invoke-direct {v2, p1}, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer$Builder;-><init>(Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;)V

    iput-wide v0, v2, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer$Builder;->d:J

    new-instance p1, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;

    invoke-direct {p1, v2}, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;-><init>(Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer$Builder;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->a(Ljava/lang/Object;)V

    return-void
.end method
