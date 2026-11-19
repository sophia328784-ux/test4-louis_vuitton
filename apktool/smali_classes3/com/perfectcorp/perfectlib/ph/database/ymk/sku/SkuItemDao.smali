.class public abstract Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuItemDao;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/database/Cursor;)Ljava/util/List;
    .locals 4

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    :cond_1
    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->d()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$a;

    move-result-object v1

    const-string v2, "itemGuid"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$a;->a:Ljava/lang/String;

    const-string v2, "skuGuid"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$a;->b:Ljava/lang/String;

    const-string v2, "isHot"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iput v3, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$a;->c:I

    const-string v2, "freeSampleUrl"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$a;->d:Ljava/lang/String;

    const-string v2, "shoppingUrl"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$a;->e:Ljava/lang/String;

    const-string v2, "moreInfoUrl"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$a;->f:Ljava/lang/String;

    const-string v2, "itemDescription"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$a;->j:Ljava/lang/String;

    const-string v2, "customerInfo"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$a;->s:Ljava/lang/String;

    const-string v2, "itemThumbnailPath"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$a;->g:Ljava/lang/String;

    const-string v2, "itemThumbnailIndexedPath"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$a;->h:Ljava/lang/String;

    const-string v2, "itemPaletteThumbnail"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$a;->i:Ljava/lang/String;

    const-string v2, "displayColorList"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$a;->k:Ljava/lang/String;

    const-string v2, "colorNumber"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$a;->l:Ljava/lang/String;

    const-string v2, "itemName"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$a;->m:Ljava/lang/String;

    const-string v2, "itemLongName"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$a;->n:Ljava/lang/String;

    const-string v2, "isIntensitySliderHidden"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$a;->o:Ljava/lang/String;

    const-string v2, "isRadiusSliderHidden"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$a;->p:Ljava/lang/String;

    const-string v2, "isHiddenIntensitySliderHidden"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$a;->q:Ljava/lang/String;

    const-string v2, "isShineIntensitySliderHidden"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$a;->r:Ljava/lang/String;

    const-string v2, "extraData"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$a;->t:Ljava/lang/String;

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;

    invoke-direct {v2, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$a;)V

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;
    .locals 6

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    sget-object v1, Lcom/perfectcorp/perfectlib/hc/database/Contract$SkuItem;->a:[Ljava/lang/String;

    const-string v0, "0"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "_id ASC"

    const/4 v5, 0x0

    const-string v2, "skuGuid=? AND isDeleted=?"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuItemDao;->c(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "SkuItem"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuItemDao;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    const-string p1, "SkuItemDao"

    const-string p2, "[get] error"

    invoke-static {p1, p2, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw p0
.end method

.method public static d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;
    .locals 6

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    sget-object v1, Lcom/perfectcorp/perfectlib/hc/database/Contract$SkuItem;->a:[Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "1"

    const-string v2, "itemGuid=?"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuItemDao;->c(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->e(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0
.end method
