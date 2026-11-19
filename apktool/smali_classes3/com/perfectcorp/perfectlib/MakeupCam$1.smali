.class Lcom/perfectcorp/perfectlib/MakeupCam$1;
.super Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;


# instance fields
.field public final synthetic e:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

.field public final synthetic f:Lcom/perfectcorp/perfectlib/MakeupCam;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/MakeupCam;Lcom/perfectcorp/perfectlib/core/BaseVenus;Lcom/cyberlink/clgpuimage/GPUImageRenderer;Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;Lcom/perfectcorp/perfectlib/AccessoryCamWrapper;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/MakeupCam$1;->f:Lcom/perfectcorp/perfectlib/MakeupCam;

    iput-object p7, p0, Lcom/perfectcorp/perfectlib/MakeupCam$1;->e:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    move-object p1, p2

    move-object p2, p3

    move-object p3, p4

    move-object p4, p5

    const/4 p5, 0x0

    invoke-direct/range {p0 .. p6}, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;-><init>(Lcom/perfectcorp/perfectlib/core/BaseVenus;Lcom/cyberlink/clgpuimage/GPUImageRenderer;Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;ZLcom/perfectcorp/perfectlib/AccessoryCamWrapper;)V

    return-void
.end method


# virtual methods
.method public final c(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/MakeupCam$1$1;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/perfectlib/MakeupCam$1$1;-><init>(Lcom/perfectcorp/perfectlib/MakeupCam$1;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)V

    return-object v0
.end method

.method public final d(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam$1;->e:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
