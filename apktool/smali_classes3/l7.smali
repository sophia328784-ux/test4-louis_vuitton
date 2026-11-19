.class public final synthetic Ll7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/perfectcorp/common/network/ProgressCallback;

.field public final synthetic e:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

.field public final synthetic f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/perfectcorp/common/network/ProgressCallback;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V
    .locals 0

    .line 15
    iput p5, p0, Ll7;->b:I

    iput-object p1, p0, Ll7;->c:Ljava/lang/String;

    iput-object p2, p0, Ll7;->d:Lcom/perfectcorp/common/network/ProgressCallback;

    iput-object p3, p0, Ll7;->e:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    iput-object p4, p0, Ll7;->f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/network/ProgressCallback;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Ll7;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll7;->c:Ljava/lang/String;

    iput-object p2, p0, Ll7;->e:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    iput-object p3, p0, Ll7;->f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-object p4, p0, Ll7;->d:Lcom/perfectcorp/common/network/ProgressCallback;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    iget v0, p0, Ll7;->b:I

    const-string v1, "ApplyEffectUtility"

    const/4 v2, 0x0

    iget-object v3, p0, Ll7;->d:Lcom/perfectcorp/common/network/ProgressCallback;

    iget-object v4, p0, Ll7;->f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iget-object v5, p0, Ll7;->e:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    iget-object v6, p0, Ll7;->c:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x3

    packed-switch v0, :pswitch_data_0

    invoke-static {v6}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->F(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v0

    const-string v1, "LookCacheFirstThenUpdateStrategy"

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[newSingle] Look status checking. lookGuid="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v1, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Lg8;

    invoke-direct {v1, v6, v7}, Lg8;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object v2

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/perfectcorp/perfectlib/LookHandler;->getInstance()Lcom/perfectcorp/perfectlib/LookHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$g;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$g;-><init>(Ljava/util/Collection;Z)V

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$g;->c()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v1

    new-instance v2, Lv7;

    const/16 v9, 0xf

    invoke-direct {v2, v9}, Lv7;-><init>(I)V

    new-instance v9, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v9, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v1, Ly81;

    invoke-direct {v1, v6, v5, v4, v8}, Ly81;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {v2, v9, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v1, Lh8;

    invoke-direct {v1, v6, v7}, Lh8;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lh8;

    invoke-direct {v4, v6, v3}, Lh8;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {v3, v1, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/LookHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    goto :goto_0

    :cond_1
    const-string p0, "LookHandler is null. SDK might be released."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p0, "[newSingle] Start downloading. lookGuid="

    invoke-static {v8, p0, v6, v1}, La;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;->CACHE_FIRST_THEN_UPDATE:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    invoke-static {v3, v5, p0, v4, v6}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->A(Lcom/perfectcorp/common/network/ProgressCallback;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    move-result-object v2

    :goto_1
    return-object v2

    :pswitch_0
    invoke-static {v6}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->F(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[newLookCacheFirstStrategySingle] Look downloaded. lookGuid="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v1, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object p0

    goto :goto_2

    :cond_3
    const-string p0, "[newLookCacheFirstStrategySingle] Start downloading. lookGuid="

    invoke-static {v8, p0, v6, v1}, La;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;->CACHE_FIRST:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    invoke-static {v3, v5, p0, v4, v6}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->A(Lcom/perfectcorp/common/network/ProgressCallback;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    move-result-object p0

    :goto_2
    return-object p0

    :pswitch_1
    move-object v0, v1

    iget-object v1, p0, Ll7;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->F(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v3

    move-object v4, v2

    iget-object v2, p0, Ll7;->d:Lcom/perfectcorp/common/network/ProgressCallback;

    move v6, v3

    iget-object v3, p0, Ll7;->e:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    iget-object p0, p0, Ll7;->f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "[newLookUpdateFirstStrategySingle] Look status checking. lookGuid="

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v0, v6}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/LookHandler;->a(Ljava/util/List;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v0

    new-instance v6, Lx1;

    const/16 v8, 0x1d

    invoke-direct {v6, v8}, Lx1;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v8, v0, v6}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v0, Lt7;

    invoke-direct {v0, v1, v7}, Lt7;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/v;

    invoke-direct {v6, v8, v0, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/v;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;Ljava/lang/Object;)V

    new-instance v0, Lcom/perfectcorp/perfectlib/o;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/perfectcorp/perfectlib/o;-><init>(Ljava/lang/String;Lcom/perfectcorp/common/network/ProgressCallback;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p0, v6, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    goto :goto_3

    :cond_4
    move-object v4, p0

    const-string p0, "[newLookUpdateFirstStrategySingle] Start downloading. lookGuid="

    invoke-static {v8, p0, v1, v0}, La;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;->UPDATE_FIRST:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    invoke-static {v2, v3, p0, v4, v1}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->A(Lcom/perfectcorp/common/network/ProgressCallback;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    move-result-object p0

    :goto_3
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
