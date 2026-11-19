.class public abstract Lcom/perfectcorp/perfectlib/JewelryVtoApplier;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/JewelryVtoApplier$ProductIdCallback;,
        Lcom/perfectcorp/perfectlib/JewelryVtoApplier$EffectIdCallback;,
        Lcom/perfectcorp/perfectlib/JewelryVtoApplier$DownloadAndApplyCallback;,
        Lcom/perfectcorp/perfectlib/JewelryVtoApplier$ApplyCallback;,
        Lcom/perfectcorp/perfectlib/JewelryVtoApplier$CreateCallback;
    }
.end annotation


# direct methods
.method public static synthetic a(Lcom/perfectcorp/perfectlib/HandApplierTarget;)Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;
    .locals 3

    sget-boolean v0, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->v:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    instance-of v0, p0, Lcom/perfectcorp/perfectlib/HandCam;

    const-string v2, "Doesn\'t have a valid license."

    if-eqz v0, :cond_1

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->c:Lcom/perfectcorp/perfectlib/HandFunctionalities;

    iget-boolean v0, v0, Lcom/perfectcorp/perfectlib/HandFunctionalities;->i:Z

    if-eqz v0, :cond_0

    check-cast p0, Lcom/perfectcorp/perfectlib/HandCam;

    sget-object v0, Lcom/perfectcorp/perfectlib/Functionality;->JEWELRY:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/HandCam;->enableFunctionality(Lcom/perfectcorp/perfectlib/Functionality;)V

    new-instance v0, Lcom/perfectcorp/perfectlib/JewelryVtoApplier$1;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/HandCam;->taskDisposables:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    sget-object v2, Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;->a:Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;

    invoke-direct {v0, v1, v2, p0}, Lcom/perfectcorp/perfectlib/JewelryVtoApplier$1;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;Lcom/perfectcorp/perfectlib/HandCam;)V

    new-instance v1, Lqh;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/HandCam;->onPictureTakenListener:Lcom/perfectcorp/perfectlib/HandCam$OnPictureTakenListener;

    return-object v0

    :cond_0
    invoke-static {v2}, Lmt;->i(Ljava/lang/String;)V

    return-object v1

    :cond_1
    instance-of v0, p0, Lcom/perfectcorp/perfectlib/PhotoHandAr;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->c:Lcom/perfectcorp/perfectlib/HandFunctionalities;

    iget-boolean v0, v0, Lcom/perfectcorp/perfectlib/HandFunctionalities;->j:Z

    if-eqz v0, :cond_2

    check-cast p0, Lcom/perfectcorp/perfectlib/PhotoHandAr;

    sget-object v0, Lcom/perfectcorp/perfectlib/Functionality;->JEWELRY:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/PhotoHandAr;->enableFunctionality(Lcom/perfectcorp/perfectlib/Functionality;)V

    new-instance v0, Lcom/perfectcorp/perfectlib/JewelryVtoApplier$2;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/PhotoHandAr;->taskDisposables:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    sget-object v2, Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;->b:Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;

    invoke-direct {v0, v1, v2, p0}, Lcom/perfectcorp/perfectlib/JewelryVtoApplier$2;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;Lcom/perfectcorp/perfectlib/PhotoHandAr;)V

    return-object v0

    :cond_2
    invoke-static {v2}, Lmt;->i(Ljava/lang/String;)V

    return-object v1

    :cond_3
    const-string p0, "Unknown instance of applier target."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v1
.end method

.method public static synthetic b(Lcom/perfectcorp/perfectlib/HandApplierTarget;Ljava/util/ArrayList;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/utility/b;

    sget-object v3, Lcom/perfectcorp/perfectlib/PerfectEffect;->WATCH:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object v4, v2, Lcom/perfectcorp/perfectlib/ph/utility/b;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    if-eq v3, v4, :cond_2

    sget-object v3, Lcom/perfectcorp/perfectlib/PerfectEffect;->BRACELET:Lcom/perfectcorp/perfectlib/PerfectEffect;

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/perfectcorp/perfectlib/PerfectEffect;->RING:Lcom/perfectcorp/perfectlib/PerfectEffect;

    if-ne v3, v4, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {p0, v0}, Lcom/perfectcorp/perfectlib/BraceletVtoApplier;->b(Lcom/perfectcorp/perfectlib/HandApplierTarget;Ljava/util/ArrayList;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-static {p0, v1}, Lcom/perfectcorp/perfectlib/RingVtoApplier;->b(Lcom/perfectcorp/perfectlib/HandApplierTarget;Ljava/util/ArrayList;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    if-eqz p0, :cond_4

    return-object p0

    :cond_4
    return-object p1
.end method

.method public static create(Lcom/perfectcorp/perfectlib/HandApplierTarget;Lcom/perfectcorp/perfectlib/JewelryVtoApplier$CreateCallback;)V
    .locals 4

    const-string v0, "handApplierTarget can\'t be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "createCallback can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lph;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lph;-><init>(Lcom/perfectcorp/perfectlib/HandApplierTarget;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/perfectlib/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/b;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    new-instance v2, Lcom/perfectcorp/perfectlib/c;

    invoke-direct {v2, p1, v1}, Lcom/perfectcorp/perfectlib/c;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lo2;

    const/4 v3, 0x6

    invoke-direct {v1, p1, v3}, Lo2;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    return-void
.end method


# virtual methods
.method public abstract apply(Lcom/perfectcorp/perfectlib/LookSetting;Lcom/perfectcorp/perfectlib/JewelryVtoApplier$DownloadAndApplyCallback;)Lcom/perfectcorp/perfectlib/Cancelable;
.end method

.method public abstract apply(Ljava/util/List;Lcom/perfectcorp/perfectlib/JewelryVtoApplier$ApplyCallback;)Lcom/perfectcorp/perfectlib/Cancelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/VtoSetting;",
            ">;",
            "Lcom/perfectcorp/perfectlib/JewelryVtoApplier$ApplyCallback;",
            ")",
            "Lcom/perfectcorp/perfectlib/Cancelable;"
        }
    .end annotation
.end method

.method public abstract applyEffectIds(Ljava/util/List;Lcom/perfectcorp/perfectlib/JewelryVtoApplier$ApplyCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/EffectId;",
            ">;",
            "Lcom/perfectcorp/perfectlib/JewelryVtoApplier$ApplyCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract clearAllEffects(Lcom/perfectcorp/perfectlib/JewelryVtoApplier$ApplyCallback;)V
.end method

.method public abstract getEffectIds(Lcom/perfectcorp/perfectlib/JewelryVtoApplier$EffectIdCallback;)V
.end method

.method public abstract getProductIds(Lcom/perfectcorp/perfectlib/JewelryVtoApplier$ProductIdCallback;)V
.end method

.method public abstract setRingPositionAndApply(Ljava/util/List;Ljava/util/List;Lcom/perfectcorp/perfectlib/JewelryVtoApplier$ApplyCallback;)Lcom/perfectcorp/perfectlib/Cancelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/EffectId;",
            ">;",
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/RingPosition;",
            ">;",
            "Lcom/perfectcorp/perfectlib/JewelryVtoApplier$ApplyCallback;",
            ")",
            "Lcom/perfectcorp/perfectlib/Cancelable;"
        }
    .end annotation
.end method
