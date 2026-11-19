.class public abstract Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/i;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;
    .locals 2

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    const-string v0, "0"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    const-string v1, "skuGuid=? AND isDeleted=?"

    invoke-static {p0, v1, v0, p1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

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

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->e(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 11

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "SkuOnly"

    sget-object v4, Lcom/perfectcorp/perfectlib/hc/database/Contract$SkuOnly;->a:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v5, p1

    move-object v10, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2

    :cond_0
    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    :cond_1
    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->b()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku$a;

    move-result-object p1

    const-string p2, "skuId"

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    iput-wide p2, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku$a;->a:J

    const-string p2, "skuGuid"

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku$a;->f:Ljava/lang/String;

    const-string p2, "name"

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku$a;->d:Ljava/lang/String;

    const-string p2, "longName"

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku$a;->e:Ljava/lang/String;

    const-string p2, "isDefault"

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    move p2, v0

    goto :goto_0

    :cond_2
    move p2, p3

    :goto_0
    iput p2, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku$a;->n:I

    const-string p2, "vendor"

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku$a;->g:Ljava/lang/String;

    const-string p2, "startDate"

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku$a;->h:J

    const-string p2, "endDate"

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku$a;->i:J

    const-string p2, "featureType"

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku$a;->b:Ljava/lang/String;

    const-string p2, "featureSubtype"

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku$a;->c:Ljava/lang/String;

    const-string p2, "lastModified"

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku$a;->j:J

    const-string p2, "info"

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku$a;->l:Ljava/lang/String;

    const-string p2, "customerId"

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku$a;->k:J

    const-string p2, "isDeleted"

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-ne p2, v0, :cond_3

    move p3, v0

    :cond_3
    iput p3, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku$a;->o:I

    const-string p2, "extraInfo"

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku$a;->m:Ljava/lang/String;

    const-string p2, "hidden"

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku$a;->p:Ljava/lang/String;

    new-instance p2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    invoke-direct {p2, p1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku$a;)V

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object p0

    :goto_2
    :try_start_1
    const-string p1, "SkuOnlyDao"

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
