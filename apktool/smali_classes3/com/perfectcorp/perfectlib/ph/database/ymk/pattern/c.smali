.class public abstract Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/database/Cursor;)Ljava/util/List;
    .locals 14

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    new-instance v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;

    const-string v2, "PatternGUID"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PaletteGUID"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PaletteColorIndex"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Source"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ColorCount"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v7, "ColorIntensities"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Radius"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "HiddenIntensity"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "extra"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    sget-object v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->j:Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;

    goto :goto_0

    :cond_2
    new-instance v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;

    sget-object v12, Lcom/perfectcorp/common/gson/GsonHelper;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    const-class v13, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-virtual {v12, v10, v13}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    const/4 v12, 0x0

    invoke-direct {v11, v10, v12}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;-><init>(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Z)V

    move-object v10, v11

    :goto_0
    invoke-direct/range {v1 .. v10}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;
    .locals 11

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/database/Contract$PatternPaletteInfo;->a()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "PatternGUID=? AND PatternPaletteInfo.isDeleted=0"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v6

    const-string v3, "PatternPaletteInfo"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/c;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object p0

    :goto_0
    :try_start_2
    const-string p1, "PatternPaletteInfoDao"

    const-string v0, "getByPatternId failed"

    invoke-static {p1, v0, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw p0
.end method

.method public static c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/database/Contract$PatternPaletteInfo;->a()[Ljava/lang/String;

    move-result-object v4

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v6

    const-string v3, "PatternPaletteInfo"

    const-string v5, "PaletteGUID=?"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v10, p2

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/c;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object p0

    :goto_1
    :try_start_2
    const-string p1, "PatternPaletteInfoDao"

    sget p2, Lcom/perfectcorp/common/utility/Log;->a:I

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/perfectcorp/common/utility/Log;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw p0
.end method

.method public static d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 13

    const-string v0, "PatternGUID"

    const-string v1, " AND PatternPaletteInfo.isDeleted=0"

    const/4 v2, 0x0

    :try_start_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const-string v3, "PatternPaletteInfo.PaletteGUID=? AND PatternInfo.GUID = PatternGUID"

    if-eqz p2, :cond_0

    const-string v3, "PatternPaletteInfo.PaletteGUID=? AND PatternInfo.GUID = PatternGUID AND PatternPaletteInfo.PaletteColorIndex=?"

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_0
    :goto_0
    if-nez p3, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    move-object v7, v3

    if-eqz p2, :cond_2

    filled-new-array/range {p1 .. p2}, [Ljava/lang/String;

    move-result-object p1

    :goto_1
    move-object v8, p1

    goto :goto_2

    :cond_2
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :goto_2
    const-string v5, "PatternPaletteInfo, PatternInfo"

    const-string v9, "PatternPaletteInfo.PatternGUID"

    const-string v11, "MIN(PatternPaletteInfo._id)"

    const/4 v12, 0x0

    const/4 v4, 0x1

    const/4 v10, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object p0

    :cond_3
    :try_start_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_4

    invoke-static {v2}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object p0

    :goto_3
    :try_start_2
    const-string p1, "PatternPaletteInfoDao"

    const-string p2, "getPatternIds failed"

    invoke-static {p1, p2, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v2}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw p0
.end method

.method public static e(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Z)Ljava/util/List;
    .locals 4

    const-string v0, " AND isDeleted=0"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT PaletteGUID FROM "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "PatternPaletteInfo"

    invoke-static {p0, v3}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " WHERE PatternGUID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object p0

    :cond_1
    :try_start_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    const-string p1, "PaletteGUID"

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_2

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object p0

    :goto_1
    :try_start_2
    const-string p1, "PatternPaletteInfoDao"

    const-string p2, "getPaletteIds"

    invoke-static {p1, p2, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object p0

    :catchall_1
    move-exception p0

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw p0
.end method

.method public static f(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;)V
    .locals 5

    const-string v0, "PatternPaletteInfoDao"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "PatternGUID"

    iget-object v3, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "PaletteGUID"

    iget-object v3, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "PaletteColorIndex"

    iget-object v3, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Source"

    iget-object v3, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ColorCount"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "ColorIntensities"

    iget-object v3, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Radius"

    iget-object v3, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "HiddenIntensity"

    iget-object v3, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->i:Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    sget-object v3, Lcom/perfectcorp/common/gson/GsonHelper;->b:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->q()Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    move-result-object p1

    const-class v4, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-virtual {v3, p1, v4}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->l(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    const-string v3, "extra"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string p1, "PatternPaletteInfo"

    invoke-static {p0, p1}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "db.insert failed. id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x5

    invoke-static {p1, v0, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    return-void

    :goto_1
    const-string p1, "insert"

    invoke-static {v0, p1, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static g(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 3

    const-string v0, " SET isDeleted=1 WHERE PaletteGUID"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UPDATE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "PatternPaletteInfo"

    invoke-static {p0, v2}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " OR PatternGUID"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "PatternPaletteInfoDao"

    const-string v0, "[markAsDeleted] failed"

    invoke-static {p1, v0, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static h(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 3

    const-string v0, " WHERE PatternGUID IN ("

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DELETE FROM "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "PatternPaletteInfo"

    invoke-static {p0, v2}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->g(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "PatternPaletteInfoDao"

    const-string v0, "delete by pattern ids"

    invoke-static {p1, v0, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;
    .locals 10

    const-string v8, "1"

    const/4 v9, 0x0

    :try_start_0
    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/database/Contract$PatternPaletteInfo;->a()[Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object v4

    const-string v1, "PatternPaletteInfo"

    const-string v3, "PaletteGUID=? AND PatternGUID=?"

    const-string v7, "_id"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    invoke-static {v9}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/c;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->e(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v9}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object p0

    :goto_1
    :try_start_1
    const-string p1, "PatternPaletteInfoDao"

    sget p2, Lcom/perfectcorp/common/utility/Log;->a:I

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/perfectcorp/common/utility/Log;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v9}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v9}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw p0
.end method

.method public static j(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;
    .locals 11

    const-string v0, "extra"

    const/4 v1, 0x0

    :try_start_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object v6

    const-string v3, "PatternPaletteInfo"

    const-string v5, "PatternGUID=? AND PaletteGUID=?"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->j:Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->j:Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->j:Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;

    sget-object p2, Lcom/perfectcorp/common/gson/GsonHelper;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    const-class v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-virtual {p2, p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;-><init>(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p0, p1

    :goto_0
    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object p0

    :goto_1
    :try_start_2
    const-string p1, "PatternPaletteInfoDao"

    const-string p2, ""

    invoke-static {p1, p2, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->j:Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw p0
.end method
