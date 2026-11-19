.class public abstract Lcom/perfectcorp/perfectlib/AccessoryVtoApplier;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ProductIdCallback;,
        Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$EffectIdCallback;,
        Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ApplyCallback;,
        Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$CreateCallback;
    }
.end annotation


# direct methods
.method public static synthetic a(Lcom/perfectcorp/perfectlib/AccessoryApplierTarget;)Lcom/perfectcorp/perfectlib/AccessoryVtoApplierImpl;
    .locals 3

    sget-boolean v0, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->y:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    instance-of v0, p0, Lcom/perfectcorp/perfectlib/AccessoryCam;

    const-string v2, "Doesn\'t have a valid license."

    if-eqz v0, :cond_1

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->accessoryFunctionalities:Lcom/perfectcorp/perfectlib/AccessoryFunctionalities;

    iget-boolean v0, v0, Lcom/perfectcorp/perfectlib/AccessoryFunctionalities;->isNecklaceLiveEnabled:Z

    if-eqz v0, :cond_0

    check-cast p0, Lcom/perfectcorp/perfectlib/AccessoryCam;

    sget-object v0, Lcom/perfectcorp/perfectlib/Functionality;->NECKLACE:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/AccessoryCam;->enableFunctionality(Lcom/perfectcorp/perfectlib/Functionality;)V

    new-instance v0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$1;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/AccessoryCam;->taskDisposables:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    sget-object v2, Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;->a:Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;

    invoke-direct {v0, v1, v2, p0}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$1;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;Lcom/perfectcorp/perfectlib/AccessoryCam;)V

    new-instance v1, Lp2;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/AccessoryCam;->onPictureTakenListener:Lcom/perfectcorp/perfectlib/AccessoryCam$OnPictureTakenListener;

    return-object v0

    :cond_0
    invoke-static {v2}, Lmt;->i(Ljava/lang/String;)V

    return-object v1

    :cond_1
    instance-of v0, p0, Lcom/perfectcorp/perfectlib/PhotoAccessoryAr;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->accessoryFunctionalities:Lcom/perfectcorp/perfectlib/AccessoryFunctionalities;

    iget-boolean v0, v0, Lcom/perfectcorp/perfectlib/AccessoryFunctionalities;->isNecklacePhotoEnabled:Z

    if-eqz v0, :cond_2

    check-cast p0, Lcom/perfectcorp/perfectlib/PhotoAccessoryAr;

    sget-object v0, Lcom/perfectcorp/perfectlib/Functionality;->NECKLACE:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/PhotoAccessoryAr;->enableFunctionality(Lcom/perfectcorp/perfectlib/Functionality;)V

    new-instance v0, Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$2;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/PhotoAccessoryAr;->taskDisposables:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    sget-object v2, Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;->b:Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;

    invoke-direct {v0, v1, v2, p0}, Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$2;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;Lcom/perfectcorp/perfectlib/PhotoAccessoryAr;)V

    return-object v0

    :cond_2
    invoke-static {v2}, Lmt;->i(Ljava/lang/String;)V

    return-object v1

    :cond_3
    const-string p0, "Unknown instance of applier target."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v1
.end method

.method public static create(Lcom/perfectcorp/perfectlib/AccessoryApplierTarget;Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$CreateCallback;)V
    .locals 4

    const-string v0, "accessoryApplierTarget can\'t be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "createCallback can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ln2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ln2;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/perfectlib/b;

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

    new-instance v3, Lo2;

    invoke-direct {v3, p1, v1}, Lo2;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    return-void
.end method


# virtual methods
.method public abstract apply(Ljava/util/List;Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ApplyCallback;)Lcom/perfectcorp/perfectlib/Cancelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/VtoSetting;",
            ">;",
            "Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ApplyCallback;",
            ")",
            "Lcom/perfectcorp/perfectlib/Cancelable;"
        }
    .end annotation
.end method

.method public abstract applyEffectIds(Ljava/util/List;Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ApplyCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/EffectId;",
            ">;",
            "Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ApplyCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract clearAllEffects(Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ApplyCallback;)V
.end method

.method public abstract getEffectIds(Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$EffectIdCallback;)V
.end method

.method public abstract getProductIds(Lcom/perfectcorp/perfectlib/AccessoryVtoApplier$ProductIdCallback;)V
.end method
