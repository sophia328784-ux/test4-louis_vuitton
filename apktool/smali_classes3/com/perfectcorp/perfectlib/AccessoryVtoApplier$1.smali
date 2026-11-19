.class Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$1;
.super Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;


# instance fields
.field public final synthetic l:Lcom/perfectcorp/perfectlib/AccessoryCam;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;Lcom/perfectcorp/perfectlib/AccessoryCam;)V
    .locals 0

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$1;->l:Lcom/perfectcorp/perfectlib/AccessoryCam;

    const-string p3, "AccessoryVtoApplierAccessoryCam"

    invoke-direct {p0, p3, p1, p2}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;-><init>(Ljava/lang/String;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;)V

    return-void
.end method


# virtual methods
.method public final d(Lcom/perfectcorp/perfectlib/ph/utility/a;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$1;->l:Lcom/perfectcorp/perfectlib/AccessoryCam;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/AccessoryCam;->accessoryEngineCtrl:Lcom/perfectcorp/perfectlib/AccessoryCam$AccessoryEngineCtrl;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$1;->l:Lcom/perfectcorp/perfectlib/AccessoryCam;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/utility/a;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/AccessoryCam;->loadNecklace3dObject(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/perfectcorp/perfectlib/AccessoryCam$AccessoryEngineCtrl;->applyNecklace(Ljava/lang/Runnable;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final f()V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$1;->l:Lcom/perfectcorp/perfectlib/AccessoryCam;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/AccessoryCam;->assertNotReleased()V

    return-void
.end method

.method public final h()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$1;->l:Lcom/perfectcorp/perfectlib/AccessoryCam;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/AccessoryCam;->accessoryEngineCtrl:Lcom/perfectcorp/perfectlib/AccessoryCam$AccessoryEngineCtrl;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$1;->l:Lcom/perfectcorp/perfectlib/AccessoryCam;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/AccessoryCam;->clearNecklace3dObject()Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/perfectcorp/perfectlib/AccessoryCam$AccessoryEngineCtrl;->clearAllEffects(Ljava/lang/Runnable;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method
