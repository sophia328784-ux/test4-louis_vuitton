.class public final synthetic Lz7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    .line 11
    iput p1, p0, Lz7;->b:I

    iput-boolean p3, p0, Lz7;->d:Z

    iput-object p2, p0, Lz7;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lz7;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz7;->c:Ljava/lang/String;

    iput-boolean p2, p0, Lz7;->d:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lz7;->b:I

    iget-object v2, v0, Lz7;->c:Ljava/lang/String;

    iget-boolean v3, v0, Lz7;->d:Z

    packed-switch v1, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;

    invoke-static {v0, v3}, Lcom/perfectcorp/perfectlib/SkuSetInfo;->b(Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;Z)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v1

    new-instance v3, Lyw0;

    const/16 v4, 0x13

    invoke-direct {v3, v4}, Lyw0;-><init>(I)V

    invoke-virtual {v1, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->filter(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v1

    new-instance v3, Lhx0;

    const/4 v5, 0x1

    invoke-direct {v3, v0, v5}, Lhx0;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;I)V

    invoke-virtual {v1, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v0

    new-instance v1, Lt7;

    invoke-direct {v1, v2, v4}, Lt7;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object v2

    :pswitch_0
    move-object/from16 v0, p1

    check-cast v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/shadefinder/b$a;

    new-instance v0, Lcom/perfectcorp/perfectlib/ShadeFinder;

    invoke-direct {v0, v2, v3}, Lcom/perfectcorp/perfectlib/ShadeFinder;-><init>(Ljava/lang/String;Z)V

    return-object v0

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Landroid/util/Pair;

    sget-object v2, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "[downloadSkuByProtocolMethod] insertToDb id="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x3

    const-string v6, "ApplyEffectUtility"

    invoke-static {v2, v4, v5, v6}, La;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->k()V

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    move-result-object v1

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    iget-object v9, v0, Lz7;->c:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v1, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->items:Ljava/util/List;

    invoke-static {v2}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, ""

    if-eqz v2, :cond_0

    move-object v8, v4

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->items:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;->itemGUID:Ljava/lang/String;

    move-object v8, v2

    :goto_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v4, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;

    iget-object v5, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->type:Ljava/lang/String;

    iget-object v6, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    iget-object v7, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->productId:Ljava/lang/String;

    invoke-direct/range {v4 .. v9}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_1
    iget-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;

    new-instance v10, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;

    iget-object v11, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->type:Ljava/lang/String;

    iget-object v12, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    iget-object v13, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->productId:Ljava/lang/String;

    iget-object v6, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;->itemGUID:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v14, v4

    goto :goto_2

    :cond_2
    iget-object v6, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;->itemGUID:Ljava/lang/String;

    move-object v14, v6

    :goto_2
    iget-object v6, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;->shadeId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v15, v9

    goto :goto_3

    :cond_3
    iget-object v5, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;->shadeId:Ljava/lang/String;

    move-object v15, v5

    :goto_3
    invoke-direct/range {v10 .. v15}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_4
    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/a;->h()Lcom/perfectcorp/perfectlib/ph/database/mcsdk/a;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v0, "SkuAndShadeIdMappingDatabase"

    const-string v2, "[insert] insert value is empty"

    invoke-static {v0, v2}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sget-object v4, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/a;->b:Ljava/util/List;

    check-cast v4, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-virtual {v4, v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->r(I)Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    move-result-object v3

    :catchall_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :try_start_0
    invoke-static {v0, v2, v4}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/a;->k(Ljava/util/ArrayList;Landroid/database/sqlite/SQLiteDatabase;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :cond_6
    const/16 v3, 0x7d

    invoke-static {v0, v2, v3}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/a;->k(Ljava/util/ArrayList;Landroid/database/sqlite/SQLiteDatabase;I)V

    goto :goto_5

    :cond_7
    new-instance v0, Lcom/perfectcorp/perfectlib/exceptions/SkuAndShadeIdMappingFailedException;

    const-string v1, "shadeId and skuMetadata can not be empty"

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/exceptions/SkuAndShadeIdMappingFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
