.class public final synthetic Ldq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/io/Serializable;

.field public final synthetic d:Ljava/io/Serializable;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/e;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ldq0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldq0;->c:Ljava/io/Serializable;

    iput-object p2, p0, Ldq0;->d:Ljava/io/Serializable;

    iput-object p3, p0, Ldq0;->e:Ljava/lang/Object;

    iput-object p4, p0, Ldq0;->b:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;)V
    .locals 1

    .line 15
    const/4 v0, 0x1

    iput v0, p0, Ldq0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldq0;->c:Ljava/io/Serializable;

    iput-object p2, p0, Ldq0;->d:Ljava/io/Serializable;

    iput-object p3, p0, Ldq0;->b:Ljava/util/List;

    iput-object p4, p0, Ldq0;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 11

    iget v0, p0, Ldq0;->a:I

    const/4 v1, 0x3

    iget-object v2, p0, Ldq0;->e:Ljava/lang/Object;

    iget-object v3, p0, Ldq0;->d:Ljava/io/Serializable;

    iget-object v4, p0, Ldq0;->c:Ljava/io/Serializable;

    packed-switch v0, :pswitch_data_0

    check-cast v4, Ljava/util/concurrent/atomic/AtomicReference;

    move-object v7, v3

    check-cast v7, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v9, v2

    check-cast v9, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

    move-object v6, p1

    check-cast v6, Ljava/util/Map;

    new-instance v5, Lww0;

    const/4 v10, 0x0

    iget-object v8, p0, Ldq0;->b:Ljava/util/List;

    invoke-direct/range {v5 .. v10}, Lww0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const-string p0, "SkinCare3RecommendationHandler"

    const-string p1, "[downloadProducts] end"

    invoke-static {v1, p0, p1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    check-cast v4, Ljava/lang/String;

    check-cast v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/e;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "[syncServer] update product list for featureType="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "ProductMaskHelper"

    invoke-static {v1, v5, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "productGuid"

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v8, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/d;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/d;

    invoke-virtual {v8, p1, v7, v6}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/d;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/d;

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/e;->a()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v2

    new-instance v6, Lt7;

    const/16 v8, 0x16

    invoke-direct {v6, v4, v8}, Lt7;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v6}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0, p1, v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->k(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[syncServer] update product mask for featureType="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v5, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/b;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/b;

    invoke-virtual {v3, p1, v7, v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/b;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/b;

    iget-object p0, p0, Ldq0;->b:Ljava/util/List;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance v2, Lt7;

    const/16 v3, 0x14

    invoke-direct {v2, v4, v3}, Lt7;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMap(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {v0, p1, p0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->k(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "[syncServer] DB updated for featureType="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v5, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
