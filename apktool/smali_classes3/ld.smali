.class public final synthetic Lld;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/j1/h;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;ZLjava/util/concurrent/atomic/AtomicReference;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lld;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lld;->d:Ljava/lang/Object;

    iput-object p2, p0, Lld;->e:Ljava/lang/Object;

    iput-boolean p3, p0, Lld;->c:Z

    iput-object p4, p0, Lld;->f:Ljava/io/Serializable;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/io/Serializable;ZI)V
    .locals 0

    .line 15
    iput p5, p0, Lld;->b:I

    iput-object p1, p0, Lld;->d:Ljava/lang/Object;

    iput-object p2, p0, Lld;->e:Ljava/lang/Object;

    iput-object p3, p0, Lld;->f:Ljava/io/Serializable;

    iput-boolean p4, p0, Lld;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/j1/g;)V
    .locals 3

    iget-object v0, p0, Lld;->d:Ljava/lang/Object;

    check-cast v0, Lcom/batch/android/j1/e;

    iget-object v1, p0, Lld;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lld;->f:Ljava/io/Serializable;

    check-cast v2, Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lld;->c:Z

    invoke-static {v0, v1, v2, p0, p1}, Lcom/batch/android/Batch;->n(Lcom/batch/android/j1/e;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/StringBuilder;ZLcom/batch/android/j1/g;)V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lld;->b:I

    iget-object v1, p0, Lld;->f:Ljava/io/Serializable;

    iget-object v2, p0, Lld;->e:Ljava/lang/Object;

    iget-object v3, p0, Lld;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v3, Lcom/perfectcorp/perfectlib/SkuHandler;

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    check-cast p1, Ljava/util/List;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuDao;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    sget v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->d:I

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    iget-object v5, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->b:Ljava/lang/String;

    iget-object v6, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->f:Ljava/lang/String;

    invoke-static {v5}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->c(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-result-object v5

    invoke-virtual {v2, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v8, p0, Lld;->c:Z

    invoke-virtual {v3, v5, v7, v4, v8}, Lcom/perfectcorp/perfectlib/SkuHandler;->l(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Z)Lcom/perfectcorp/perfectlib/ProductInfo;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v6}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;->h(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;->j()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast v3, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    move-object v5, v2

    check-cast v5, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

    move-object v7, v1

    check-cast v7, Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Ljava/util/List;

    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {}, Lpq0;->v()Ljava/util/List;

    move-result-object v8

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;-><init>()V

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimaps;->b(Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;)Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/z;

    const/16 v2, 0xc

    invoke-direct {v1, v3, p1, v2}, Lcom/perfectcorp/perfectlib/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v1, Ltw0;

    const/4 v2, 0x0

    invoke-direct {v1, v8, v4, v5, v2}, Ltw0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object p1

    move-object v2, v3

    move-object v3, v0

    new-instance v0, Luc0;

    const/4 v1, 0x2

    iget-boolean v6, p0, Lld;->c:Z

    invoke-direct/range {v0 .. v6}, Luc0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p0, p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p1, Ldq0;

    invoke-direct {p1, v7, v4, v8, v3}, Ldq0;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object p0

    new-instance p1, Lpv0;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Lpv0;-><init>(I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/h;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/h;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    new-instance p0, Lrh;

    const/4 p1, 0x6

    invoke-direct {p0, v7, p1}, Lrh;-><init>(Ljava/util/concurrent/atomic/AtomicReference;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/n;

    invoke-direct {p1, v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/n;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
