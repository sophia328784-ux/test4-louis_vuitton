.class Lcom/perfectcorp/perfectlib/RingVtoApplier$2;
.super Lcom/perfectcorp/perfectlib/RingVtoApplierImpl;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/PhotoHandAr;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;Lcom/perfectcorp/perfectlib/PhotoHandAr;)V
    .locals 0

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/RingVtoApplier$2;->b:Lcom/perfectcorp/perfectlib/PhotoHandAr;

    const-string p3, "RingVtoApplierPhotoHandAr"

    invoke-direct {p0, p3, p1, p2}, Lcom/perfectcorp/perfectlib/RingVtoApplierImpl;-><init>(Ljava/lang/String;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/util/ArrayList;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/RingVtoApplier$2;->b:Lcom/perfectcorp/perfectlib/PhotoHandAr;

    invoke-static {p0, p1}, Lcom/perfectcorp/perfectlib/RingVtoApplier;->b(Lcom/perfectcorp/perfectlib/HandApplierTarget;Ljava/util/ArrayList;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final e()V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/RingVtoApplier$2;->b:Lcom/perfectcorp/perfectlib/PhotoHandAr;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/PhotoHandAr;->assertNotReleased()V

    return-void
.end method

.method public final f()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/RingVtoApplier$2;->b:Lcom/perfectcorp/perfectlib/PhotoHandAr;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoHandAr;->handEngineCtrl:Lcom/perfectcorp/perfectlib/PhotoHandAr$HandEngineCtrl;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/PhotoHandAr$HandEngineCtrl;->clearAllEffects()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final h()V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/RingVtoApplier$2;->b:Lcom/perfectcorp/perfectlib/PhotoHandAr;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/PhotoHandAr;->validateState()V

    return-void
.end method
