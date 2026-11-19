.class Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$2;
.super Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;


# instance fields
.field public final synthetic l:Lcom/perfectcorp/perfectlib/PhotoAccessoryAr;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;Lcom/perfectcorp/perfectlib/PhotoAccessoryAr;)V
    .locals 0

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$2;->l:Lcom/perfectcorp/perfectlib/PhotoAccessoryAr;

    const-string p3, "AccessoryVtoApplierPhotoAccessoryAr"

    invoke-direct {p0, p3, p1, p2}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;-><init>(Ljava/lang/String;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;)V

    return-void
.end method


# virtual methods
.method public final d(Lcom/perfectcorp/perfectlib/ph/utility/a;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$2;->l:Lcom/perfectcorp/perfectlib/PhotoAccessoryAr;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/PhotoAccessoryAr;->accessoryEngineCtrl:Lcom/perfectcorp/perfectlib/PhotoAccessoryAr$AccessoryEngineCtrl;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$2;->l:Lcom/perfectcorp/perfectlib/PhotoAccessoryAr;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/utility/a;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/PhotoAccessoryAr;->loadNecklace3dObject(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/perfectcorp/perfectlib/PhotoAccessoryAr$AccessoryEngineCtrl;->applyNecklace(Ljava/lang/Runnable;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final f()V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$2;->l:Lcom/perfectcorp/perfectlib/PhotoAccessoryAr;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/PhotoAccessoryAr;->assertNotReleased()V

    return-void
.end method

.method public final h()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$2;->l:Lcom/perfectcorp/perfectlib/PhotoAccessoryAr;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoAccessoryAr;->accessoryEngineCtrl:Lcom/perfectcorp/perfectlib/PhotoAccessoryAr$AccessoryEngineCtrl;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/PhotoAccessoryAr$AccessoryEngineCtrl;->clearAllEffects()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final k()V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$2;->l:Lcom/perfectcorp/perfectlib/PhotoAccessoryAr;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/PhotoAccessoryAr;->validateState()V

    return-void
.end method
