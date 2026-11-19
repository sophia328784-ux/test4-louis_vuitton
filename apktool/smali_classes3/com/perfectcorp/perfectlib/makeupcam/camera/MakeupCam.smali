.class public abstract Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/makeupcam/camera/k;


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

.field public final b:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

.field public final c:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

.field public final d:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/core/BaseVenus;Lcom/cyberlink/clgpuimage/GPUImageRenderer;Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;ZLcom/perfectcorp/perfectlib/AccessoryCamWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->c:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->d:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    move-object p2, p1

    move-object p1, p0

    new-instance p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    invoke-direct/range {p0 .. p6}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/k;Lcom/perfectcorp/perfectlib/core/BaseVenus;Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;ZLcom/perfectcorp/perfectlib/AccessoryCamWrapper;)V

    iput-object p0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->w:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iput-object p0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    return-void
.end method


# virtual methods
.method public final a()Lcom/cyberlink/clgpuimage/GPUImageRenderer;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->c:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    return-object p0
.end method

.method public final b(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->c(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;->create(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->d(Ljava/lang/Runnable;)V

    return-object p1
.end method

.method public c(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance p0, Ln2;

    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Ln2;-><init>(Ljava/lang/Object;I)V

    return-object p0
.end method

.method public abstract d(Ljava/lang/Runnable;)V
.end method
