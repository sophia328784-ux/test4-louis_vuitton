.class public abstract Lcom/perfectcorp/perfectlib/ph/database/ymk/makeupitem/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/n;
    .locals 12

    const-string v0, "ReferencedIds"

    const-string v1, "Id"

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/perfectcorp/perfectlib/hc/database/Contract$ReferenceElementInfo;->a:Ljava/util/List;

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v8

    const-string v5, "ReferenceElementInfo"

    const-string v7, "Id=?"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p0}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object v2

    :cond_0
    :try_start_3
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/perfectcorp/perfectlib/ph/template/n;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplatePaths;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lcom/perfectcorp/perfectlib/ph/template/n;-><init>(Ljava/lang/String;Ljava/util/Collection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {p0}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_0
    move-object p0, v2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :goto_1
    :try_start_4
    const-string v1, "ReferenceElementInfoDao"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getByID id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    invoke-static {p0}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object v2

    :catchall_3
    move-exception v0

    move-object p1, v0

    invoke-static {p0}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw p1
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/ph/template/n;)V
    .locals 13

    const-string v1, "ReferenceElementInfoDao"

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/n;->a:Ljava/lang/String;

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "Id"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v8

    const-string v5, "ReferenceElementInfo"

    const-string v7, "Id=?"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    :try_start_1
    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p0}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p0}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_0
    move-object p0, v2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v4, p0

    goto :goto_0

    :goto_1
    :try_start_3
    const-string v3, "exists"

    invoke-static {v1, v3, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    invoke-static {p0}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    const/4 v0, 0x0

    :goto_2
    const-string p0, "ReferenceElementInfo"

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/n;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v3, " WHERE Id IN ("

    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DELETE FROM "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, p0}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->g(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    const-string v3, "delete ids"

    invoke-static {v1, v3, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_3
    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/template/n;->a()Landroid/content/ContentValues;

    move-result-object p1

    :try_start_5
    invoke-static {v4, p0}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    const-wide/16 v2, 0x0

    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "db.insert failed. id: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x5

    invoke-static {p1, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :cond_1
    :goto_4
    return-void

    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "db.insert exception: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :catchall_5
    move-exception v0

    move-object p1, v0

    invoke-static {p0}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw p1
.end method
