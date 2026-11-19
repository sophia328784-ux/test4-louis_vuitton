.class public abstract Lcom/perfectcorp/perfectlib/RingVtoApplier;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/RingVtoApplier$ProductIdCallback;,
        Lcom/perfectcorp/perfectlib/RingVtoApplier$EffectIdCallback;,
        Lcom/perfectcorp/perfectlib/RingVtoApplier$ApplyCallback;,
        Lcom/perfectcorp/perfectlib/RingVtoApplier$CreateCallback;
    }
.end annotation


# direct methods
.method public static synthetic a(Lcom/perfectcorp/perfectlib/HandApplierTarget;)Lcom/perfectcorp/perfectlib/RingVtoApplierImpl;
    .locals 3

    sget-boolean v0, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->v:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    instance-of v0, p0, Lcom/perfectcorp/perfectlib/HandCam;

    const-string v2, "Doesn\'t have a valid license."

    if-eqz v0, :cond_1

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->c:Lcom/perfectcorp/perfectlib/HandFunctionalities;

    iget-boolean v0, v0, Lcom/perfectcorp/perfectlib/HandFunctionalities;->c:Z

    if-eqz v0, :cond_0

    check-cast p0, Lcom/perfectcorp/perfectlib/HandCam;

    sget-object v0, Lcom/perfectcorp/perfectlib/Functionality;->RING:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/HandCam;->enableFunctionality(Lcom/perfectcorp/perfectlib/Functionality;)V

    new-instance v0, Lcom/perfectcorp/perfectlib/RingVtoApplier$1;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/HandCam;->taskDisposables:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    sget-object v2, Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;->a:Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;

    invoke-direct {v0, v1, v2, p0}, Lcom/perfectcorp/perfectlib/RingVtoApplier$1;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;Lcom/perfectcorp/perfectlib/HandCam;)V

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

    iget-boolean v0, v0, Lcom/perfectcorp/perfectlib/HandFunctionalities;->d:Z

    if-eqz v0, :cond_2

    check-cast p0, Lcom/perfectcorp/perfectlib/PhotoHandAr;

    sget-object v0, Lcom/perfectcorp/perfectlib/Functionality;->RING:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/PhotoHandAr;->enableFunctionality(Lcom/perfectcorp/perfectlib/Functionality;)V

    new-instance v0, Lcom/perfectcorp/perfectlib/RingVtoApplier$2;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/PhotoHandAr;->taskDisposables:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    sget-object v2, Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;->b:Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;

    invoke-direct {v0, v1, v2, p0}, Lcom/perfectcorp/perfectlib/RingVtoApplier$2;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;Lcom/perfectcorp/perfectlib/PhotoHandAr;)V

    return-object v0

    :cond_2
    invoke-static {v2}, Lmt;->i(Ljava/lang/String;)V

    return-object v1

    :cond_3
    const-string p0, "Unknown instance of applier target."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v1
.end method

.method public static b(Lcom/perfectcorp/perfectlib/HandApplierTarget;Ljava/util/ArrayList;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    .locals 18

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/utility/b;

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/ph/utility/b;->l:Lcom/perfectcorp/perfectlib/RingPosition;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/ph/utility/b;->l:Lcom/perfectcorp/perfectlib/RingPosition;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/utility/b;->l:Lcom/perfectcorp/perfectlib/RingPosition;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    new-array v13, v3, [Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v14, 0x0

    move v4, v14

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v15, 0x1

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/RingPosition;

    invoke-static {v5}, Lcom/perfectcorp/perfectlib/ymk/utility/RingPositionHelper;->a(Lcom/perfectcorp/perfectlib/RingPosition;)Lcom/perfectcorp/perfectlib/ymk/utility/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perfectcorp/perfectlib/ymk/utility/a;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v13, v4

    add-int/2addr v4, v15

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v14

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/RingPosition;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    move v6, v14

    :goto_4
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v5

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/ph/utility/b;

    iget-object v8, v7, Lcom/perfectcorp/perfectlib/ph/utility/b;->l:Lcom/perfectcorp/perfectlib/RingPosition;

    invoke-static {v8}, Lcom/perfectcorp/perfectlib/ymk/utility/RingPositionHelper;->a(Lcom/perfectcorp/perfectlib/RingPosition;)Lcom/perfectcorp/perfectlib/ymk/utility/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/perfectcorp/perfectlib/ymk/utility/a;->b()I

    move-result v8

    instance-of v9, v0, Lcom/perfectcorp/perfectlib/HandCam;

    if-eqz v9, :cond_4

    move-object v3, v0

    check-cast v3, Lcom/perfectcorp/perfectlib/HandCam;

    iget-object v9, v7, Lcom/perfectcorp/perfectlib/ph/utility/b;->f:Ljava/lang/String;

    invoke-virtual {v3, v9, v6, v8}, Lcom/perfectcorp/perfectlib/HandCam;->loadRing3dObject(Ljava/lang/String;II)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v15

    if-ne v4, v9, :cond_3

    move-object v9, v5

    move-object v5, v8

    move v8, v15

    goto :goto_5

    :cond_3
    move-object v9, v5

    move-object v5, v8

    move v8, v14

    :goto_5
    iget-object v3, v3, Lcom/perfectcorp/perfectlib/HandCam;->handEngineCtrl:Lcom/perfectcorp/perfectlib/HandCam$HandEngineCtrl;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    move-object v11, v9

    iget v9, v7, Lcom/perfectcorp/perfectlib/ph/utility/b;->i:F

    move v12, v10

    iget v10, v7, Lcom/perfectcorp/perfectlib/ph/utility/b;->j:F

    move-object/from16 v16, v11

    iget-boolean v11, v7, Lcom/perfectcorp/perfectlib/ph/utility/b;->k:Z

    move/from16 v17, v12

    iget-object v12, v7, Lcom/perfectcorp/perfectlib/ph/utility/b;->l:Lcom/perfectcorp/perfectlib/RingPosition;

    move v7, v4

    move-object v4, v3

    move v3, v7

    move/from16 v7, v17

    invoke-virtual/range {v4 .. v13}, Lcom/perfectcorp/perfectlib/HandCam$HandEngineCtrl;->applyRing(Ljava/lang/Runnable;IIZFFZLcom/perfectcorp/perfectlib/RingPosition;[Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    move/from16 v17, v3

    move-object v3, v4

    goto :goto_7

    :cond_4
    move-object/from16 v16, v5

    instance-of v5, v0, Lcom/perfectcorp/perfectlib/PhotoHandAr;

    if-eqz v5, :cond_6

    move-object v3, v0

    check-cast v3, Lcom/perfectcorp/perfectlib/PhotoHandAr;

    iget-object v5, v7, Lcom/perfectcorp/perfectlib/ph/utility/b;->f:Ljava/lang/String;

    invoke-virtual {v3, v5, v6, v8}, Lcom/perfectcorp/perfectlib/PhotoHandAr;->loadRing3dObject(Ljava/lang/String;II)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v15

    if-ne v4, v8, :cond_5

    move v8, v15

    goto :goto_6

    :cond_5
    move v8, v14

    :goto_6
    iget-object v3, v3, Lcom/perfectcorp/perfectlib/PhotoHandAr;->handEngineCtrl:Lcom/perfectcorp/perfectlib/PhotoHandAr$HandEngineCtrl;

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v9

    move v10, v9

    iget v9, v7, Lcom/perfectcorp/perfectlib/ph/utility/b;->i:F

    move v11, v10

    iget v10, v7, Lcom/perfectcorp/perfectlib/ph/utility/b;->j:F

    move v12, v11

    iget-boolean v11, v7, Lcom/perfectcorp/perfectlib/ph/utility/b;->k:Z

    iget-object v7, v7, Lcom/perfectcorp/perfectlib/ph/utility/b;->l:Lcom/perfectcorp/perfectlib/RingPosition;

    move/from16 v17, v12

    move-object v12, v7

    move/from16 v7, v17

    move/from16 v17, v4

    move-object v4, v3

    invoke-virtual/range {v4 .. v13}, Lcom/perfectcorp/perfectlib/PhotoHandAr$HandEngineCtrl;->applyRing(Ljava/lang/Runnable;IIZFFZLcom/perfectcorp/perfectlib/RingPosition;[Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    goto :goto_7

    :cond_6
    move/from16 v17, v4

    :goto_7
    add-int/lit8 v4, v17, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v5, v16

    goto/16 :goto_4

    :cond_7
    move/from16 v17, v4

    goto/16 :goto_3

    :cond_8
    return-object v3
.end method

.method public static create(Lcom/perfectcorp/perfectlib/HandApplierTarget;Lcom/perfectcorp/perfectlib/RingVtoApplier$CreateCallback;)V
    .locals 4

    const-string v0, "handApplierTarget can\'t be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "createCallback can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lph;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lph;-><init>(Lcom/perfectcorp/perfectlib/HandApplierTarget;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/perfectlib/b;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/b;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    new-instance v1, Lcom/perfectcorp/perfectlib/c;

    const/4 v2, 0x6

    invoke-direct {v1, p1, v2}, Lcom/perfectcorp/perfectlib/c;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lo2;

    const/16 v3, 0x10

    invoke-direct {v2, p1, v3}, Lo2;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    return-void
.end method


# virtual methods
.method public abstract apply(Ljava/util/List;Lcom/perfectcorp/perfectlib/RingVtoApplier$ApplyCallback;)Lcom/perfectcorp/perfectlib/Cancelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/VtoSetting;",
            ">;",
            "Lcom/perfectcorp/perfectlib/RingVtoApplier$ApplyCallback;",
            ")",
            "Lcom/perfectcorp/perfectlib/Cancelable;"
        }
    .end annotation
.end method

.method public abstract applyEffectIds(Ljava/util/List;Lcom/perfectcorp/perfectlib/RingVtoApplier$ApplyCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/EffectId;",
            ">;",
            "Lcom/perfectcorp/perfectlib/RingVtoApplier$ApplyCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract clearAllEffects(Lcom/perfectcorp/perfectlib/RingVtoApplier$ApplyCallback;)V
.end method

.method public abstract getEffectIds(Lcom/perfectcorp/perfectlib/RingVtoApplier$EffectIdCallback;)V
.end method

.method public abstract getProductIds(Lcom/perfectcorp/perfectlib/RingVtoApplier$ProductIdCallback;)V
.end method

.method public abstract setRingPositionAndApply(Ljava/util/List;Ljava/util/List;Lcom/perfectcorp/perfectlib/RingVtoApplier$ApplyCallback;)Lcom/perfectcorp/perfectlib/Cancelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/EffectId;",
            ">;",
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/RingPosition;",
            ">;",
            "Lcom/perfectcorp/perfectlib/RingVtoApplier$ApplyCallback;",
            ")",
            "Lcom/perfectcorp/perfectlib/Cancelable;"
        }
    .end annotation
.end method
