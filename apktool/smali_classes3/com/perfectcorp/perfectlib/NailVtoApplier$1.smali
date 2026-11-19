.class Lcom/perfectcorp/perfectlib/NailVtoApplier$1;
.super Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;


# instance fields
.field public final synthetic k:Lcom/perfectcorp/perfectlib/HandCam;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;Lcom/perfectcorp/perfectlib/HandCam;)V
    .locals 0

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/NailVtoApplier$1;->k:Lcom/perfectcorp/perfectlib/HandCam;

    const-string p3, "NailVtoApplierHandCam"

    invoke-direct {p0, p3, p1, p2}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;-><init>(Ljava/lang/String;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;)V

    return-void
.end method


# virtual methods
.method public final p(Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplier$1;->k:Lcom/perfectcorp/perfectlib/HandCam;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/HandCam;->handEngineCtrl:Lcom/perfectcorp/perfectlib/HandCam$HandEngineCtrl;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplier$1;->k:Lcom/perfectcorp/perfectlib/HandCam;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/HandCam;->loadNail3dObject(Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/perfectcorp/perfectlib/HandCam$HandEngineCtrl;->applyNail(Ljava/lang/Runnable;Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final r()V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplier$1;->k:Lcom/perfectcorp/perfectlib/HandCam;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/HandCam;->assertNotReleased()V

    return-void
.end method
