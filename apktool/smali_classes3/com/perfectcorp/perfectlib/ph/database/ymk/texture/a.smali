.class public abstract Lcom/perfectcorp/perfectlib/ph/database/ymk/texture/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/u;
    .locals 16

    move-object/from16 v1, p1

    const-string v0, "ExtraData"

    const-string v2, "Thumbnail"

    const-string v3, "GUID"

    const-string v4, "TextureInfoDao"

    const/4 v5, 0x0

    :try_start_0
    sget-object v6, Lcom/perfectcorp/perfectlib/hc/database/Contract$TextureInfo;->a:Ljava/util/List;

    const-string v6, "_id"

    filled-new-array {v6, v3, v2, v0}, [Ljava/lang/String;

    move-result-object v9

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v11

    const-string v8, "TextureInfo"

    const-string v10, "GUID=?"

    const-string v15, "1"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v6}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "get: Failed to query, GUID: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v2, v4, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object v5

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_2
    new-instance v7, Lcom/perfectcorp/perfectlib/ph/template/u;

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplatePaths;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v3, v2, v0}, Lcom/perfectcorp/perfectlib/ph/template/u;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v6}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object v7

    :catchall_1
    move-exception v0

    move-object v6, v5

    :goto_0
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get, id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v6}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object v5

    :catchall_2
    move-exception v0

    invoke-static {v6}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw v0
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/ph/template/u;)Lcom/perfectcorp/perfectlib/ph/template/u;
    .locals 6

    const-string v0, "TextureInfoDao"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "GUID"

    iget-object v3, p1, Lcom/perfectcorp/perfectlib/ph/template/u;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/ph/template/u;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplatePaths;->d(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Thumbnail"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v2, "TextureInfo"

    invoke-static {p0, v2}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long p0, v1, v4

    if-gez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "db.insert failed. id: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x5

    invoke-static {p1, v0, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    return-object p1

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "db.insert exception: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method
