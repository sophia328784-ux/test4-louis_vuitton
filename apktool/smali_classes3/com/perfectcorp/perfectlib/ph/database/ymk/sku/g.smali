.class public abstract Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/g;
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

.method public static b(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;
    .locals 4

    const-string v0, " WHERE itemGuid IN ("

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT * FROM "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "SkuItemOnly"

    invoke-static {p0, v3}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->g(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/g;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    const-string p1, "SkuItemOnlyDao"

    const-string v0, "[get] error"

    invoke-static {p1, v0, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw p0
.end method

.method public static c(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 10

    const-string v7, "_id ASC"

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    const/4 v9, 0x0

    :try_start_0
    const-string v1, "SkuItemOnly"

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    invoke-static {v9}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/g;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v9}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    const-string p1, "SkuItemOnlyDao"

    const-string p2, "[get] error"

    invoke-static {p1, p2, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v9}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw p0
.end method
