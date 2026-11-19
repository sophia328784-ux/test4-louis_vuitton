.class final Lcom/perfectcorp/perfectlib/MakeupCam$MakeupPluginFilter;
.super Lcom/cyberlink/clgpuimage/CLMakeupLivePluginFilter;

# interfaces
.implements Lcom/cyberlink/clgpuimage/GPUImageRenderer$OnFrameAvailableListener;
.implements Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/MakeupCam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MakeupPluginFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cyberlink/clgpuimage/CLMakeupLivePluginFilter;",
        "Lcom/cyberlink/clgpuimage/GPUImageRenderer$OnFrameAvailableListener<",
        "Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;",
        ">;",
        "Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$e;"
    }
.end annotation


# instance fields
.field public final p:Lcom/perfectcorp/perfectlib/MakeupPlugin;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/MakeupPlugin;)V
    .locals 0

    invoke-direct {p0}, Lcom/cyberlink/clgpuimage/CLMakeupLivePluginFilter;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/MakeupCam$MakeupPluginFilter;->p:Lcom/perfectcorp/perfectlib/MakeupPlugin;

    return-void
.end method


# virtual methods
.method public final GetEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam$MakeupPluginFilter;->p:Lcom/perfectcorp/perfectlib/MakeupPlugin;

    invoke-interface {p0}, Lcom/perfectcorp/perfectlib/MakeupPlugin;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam$MakeupPluginFilter;->p:Lcom/perfectcorp/perfectlib/MakeupPlugin;

    iget-wide v0, p1, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;->d:J

    invoke-interface {p0, v0, v1}, Lcom/perfectcorp/perfectlib/MakeupPlugin;->onFrameReady(J)V

    return-void
.end method

.method public final b([Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;[Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    aget-object p2, p2, v0

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->m_is_data_valid:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Lcom/perfectcorp/perfectlib/FaceAlignmentData$Impl;

    invoke-direct {v0, p1, p2}, Lcom/perfectcorp/perfectlib/FaceAlignmentData$Impl;-><init>(Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/perfectcorp/perfectlib/FaceAlignmentData;->a:Lcom/perfectcorp/perfectlib/FaceAlignmentData;

    :goto_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam$MakeupPluginFilter;->p:Lcom/perfectcorp/perfectlib/MakeupPlugin;

    invoke-interface {p0, v0}, Lcom/perfectcorp/perfectlib/MakeupPlugin;->setMetadata(Lcom/perfectcorp/perfectlib/FaceAlignmentData;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam$MakeupPluginFilter;->p:Lcom/perfectcorp/perfectlib/MakeupPlugin;

    invoke-interface {p0}, Lcom/perfectcorp/perfectlib/MakeupPlugin;->onDestroy()V

    return-void
.end method

.method public final onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam$MakeupPluginFilter;->p:Lcom/perfectcorp/perfectlib/MakeupPlugin;

    invoke-interface {p0, p1, p2, p3}, Lcom/perfectcorp/perfectlib/MakeupPlugin;->onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    return-void
.end method

.method public final onInit()V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam$MakeupPluginFilter;->p:Lcom/perfectcorp/perfectlib/MakeupPlugin;

    invoke-interface {p0}, Lcom/perfectcorp/perfectlib/MakeupPlugin;->onInit()V

    return-void
.end method

.method public final onOutputSizeChanged(II)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam$MakeupPluginFilter;->p:Lcom/perfectcorp/perfectlib/MakeupPlugin;

    invoke-interface {p0, p1, p2}, Lcom/perfectcorp/perfectlib/MakeupPlugin;->onOutputSizeChanged(II)V

    return-void
.end method
