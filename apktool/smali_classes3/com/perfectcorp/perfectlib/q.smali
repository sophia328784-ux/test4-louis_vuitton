.class public final synthetic Lcom/perfectcorp/perfectlib/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/perfectcorp/perfectlib/q;->b:Z

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/q;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 51

    move-object/from16 v1, p0

    const-string v2, "ExtraData"

    const-string v3, "Thumbnail"

    const-string v4, "ReferencedIds"

    const-string v5, "Id"

    const-string v6, "PaletteInfoDao"

    const-string v7, "GUID"

    invoke-static {}, Lcom/perfectcorp/perfectlib/CacheCleaner;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "SELECT PaletteInfo.GUID FROM "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "PaletteInfo"

    invoke-static {v0, v9}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "EffectInfo"

    invoke-static {v0, v10}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " WHERE EffectInfo.ExtraData LIKE \'%\' || PaletteInfo.GUID || \'%\'"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v0, v8, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v8}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    invoke-static {v8}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    goto :goto_2

    :cond_0
    :try_start_2
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v8, v11

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_27

    goto :goto_0

    :goto_2
    new-instance v8, Lcom/perfectcorp/perfectlib/CacheCleaner$HandlerStatusResetter;

    iget-boolean v0, v1, Lcom/perfectcorp/perfectlib/q;->b:Z

    invoke-direct {v8, v0}, Lcom/perfectcorp/perfectlib/CacheCleaner$HandlerStatusResetter;-><init>(Z)V

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v13, "delete row record="

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v12, Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;->a:Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x3

    const-string v15, "CacheCleaner"

    invoke-static {v14, v15, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/CacheCleaner;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v16

    iget-object v11, v12, Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;->f:Ljava/util/ArrayList;

    const-string v14, "getByContainedReferencedId referencedId="

    move-object/from16 v26, v1

    const-string v1, "IdSystemInfoDao"

    move-object/from16 v27, v10

    iget-object v10, v13, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;->a:Ljava/lang/String;

    move-object/from16 v28, v8

    iget-object v8, v13, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;->c:Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;

    iget-object v13, v13, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;->d:Ljava/lang/String;

    move-object/from16 v29, v6

    const-string v6, "%"

    :try_start_4
    sget-object v0, Lcom/perfectcorp/perfectlib/hc/database/Contract$IdSystemInfo;->a:Ljava/util/List;

    const-string v0, "Size"

    move-object/from16 v30, v9

    const-string v9, "LastModified"

    filled-new-array {v5, v4, v0, v9}, [Ljava/lang/String;

    move-result-object v18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v20

    const-string v17, "IdSystemInfo"

    const-string v19, "ReferencedIds LIKE ?"

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v16 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_25

    move-object/from16 v17, v9

    move-object/from16 v9, v16

    :try_start_5
    invoke-static/range {v17 .. v17}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static/range {v17 .. v17}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    move-object/from16 v31, v8

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v8, v10

    move-object v12, v14

    move-object/from16 v11, v17

    goto/16 :goto_32

    :cond_1
    :try_start_6
    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    move-object/from16 v31, v8

    :goto_4
    invoke-static/range {v17 .. v17}, Lcom/perfectcorp/perfectlib/ph/database/ymk/idsystem/a;->a(Landroid/database/Cursor;)Lcom/perfectcorp/perfectlib/ph/template/a;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_28

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static/range {v17 .. v17}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    :goto_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    move-object/from16 v16, v8

    const-string v8, ")"

    move-object/from16 v32, v14

    const-string v14, "DELETE FROM "

    move-object/from16 v33, v4

    const-string v4, ", referencedId="

    if-eqz v0, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/template/a;

    move-object/from16 v34, v5

    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v35, v6

    const-string v6, "scanIdSystemInfosAndUpdateDb IdSystemInfo="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ph/template/a;->a()Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v6, v15, v5}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "removeReferencedIdFromInfo::idSystemInfoId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/perfectcorp/perfectlib/ph/template/a;->a:Ljava/lang/String;

    invoke-static {v5, v6, v4, v10}, Ld21;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    invoke-static {v6, v15, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/ph/template/a;->b:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    :cond_3
    new-instance v17, Lcom/perfectcorp/perfectlib/ph/template/a;

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/ph/template/a;->a:Ljava/lang/String;

    move-object/from16 v19, v4

    move-object/from16 v18, v5

    iget-wide v4, v0, Lcom/perfectcorp/perfectlib/ph/template/a;->c:J

    move-wide/from16 v20, v4

    iget-wide v4, v0, Lcom/perfectcorp/perfectlib/ph/template/a;->d:J

    move-wide/from16 v22, v4

    invoke-direct/range {v17 .. v23}, Lcom/perfectcorp/perfectlib/ph/template/a;-><init>(Ljava/lang/String;Ljava/util/Collection;JJ)V

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/ph/template/a;->b:Ljava/util/List;

    invoke-static {v4}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/ph/template/a;->a:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v6, " WHERE Id IN ("

    move-object/from16 v17, v4

    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v18, v5

    const-string v5, "IdSystemInfo"

    invoke-static {v9, v5}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->g(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v4, " WHERE GUID IN ("

    :try_start_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "ShapeInfo"

    invoke-static {v9, v6}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->g(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v0

    const-string v4, "ShapeInfoDao"

    const-string v5, "delete by ids"

    invoke-static {v4, v5, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_8
    move-object/from16 v8, v16

    move-object/from16 v14, v32

    move-object/from16 v4, v33

    move-object/from16 v5, v34

    move-object/from16 v6, v35

    goto/16 :goto_6

    :catchall_4
    move-exception v0

    const-string v2, "delete ids"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    invoke-static {v9, v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/idsystem/a;->d(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/ph/template/a;)V

    goto :goto_8

    :cond_5
    move-object/from16 v34, v5

    move-object/from16 v35, v6

    invoke-virtual {v12, v9, v13}, Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/template/a;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/template/a;->a:Ljava/lang/String;

    sget-object v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/DownloadFolderHelper;->d()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v9, v1}, Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_9

    :cond_6
    iget-object v0, v12, Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;->b:Ljava/util/ArrayList;

    new-instance v1, Lg7;

    const/16 v5, 0xc

    invoke-direct {v1, v5}, Lg7;-><init>(I)V

    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->c(Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Ljava/util/AbstractList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v9, v0, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/a;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Z)V

    invoke-static {v9, v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/mask/a;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    invoke-static {v9, v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/b;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    invoke-static {v9, v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/c;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    iget-object v0, v12, Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v6, "db.update exception: "

    const-string v11, ", folderPath="

    const-string v1, "db.update failed. id: "

    const-wide/16 v36, 0x0

    move-object/from16 v16, v5

    if-eqz v0, :cond_c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/template/m;

    const-string v5, "PatternInfoDao"

    move-object/from16 v38, v14

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ph/template/m;->b()Landroid/content/ContentValues;

    move-result-object v14

    move-object/from16 v39, v8

    iget-object v8, v0, Lcom/perfectcorp/perfectlib/ph/template/m;->a:Ljava/lang/String;

    :try_start_9
    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v0

    move-object/from16 v40, v4

    const-string v4, "PatternInfo"

    invoke-static {v9, v4}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v41, v10

    const-string v10, "GUID=?"

    invoke-virtual {v9, v4, v14, v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move-object v4, v2

    move-object v10, v3

    int-to-long v2, v0

    cmp-long v0, v2, v36

    if-gez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1, v5, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_b

    :catchall_5
    move-exception v0

    goto/16 :goto_13

    :cond_7
    :goto_b
    const-string v0, "updateMaskInfoDb::patternId="

    invoke-static {v0, v8, v11, v13}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x3

    invoke-static {v6, v15, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v9, v8}, Lcom/perfectcorp/perfectlib/ph/database/ymk/mask/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/template/c;

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/perfectcorp/perfectlib/ph/template/c;->c:Ljava/util/List;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v13, v5}, Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;->e(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v6, Ljava/util/ArrayList;

    iget-object v11, v0, Lcom/perfectcorp/perfectlib/ph/template/c;->e:Ljava/util/List;

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v13, v6}, Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;->e(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v11, Ljava/util/ArrayList;

    iget-object v14, v0, Lcom/perfectcorp/perfectlib/ph/template/c;->g:Ljava/util/List;

    invoke-direct {v11, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v13, v11}, Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;->e(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v17, v3

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/ph/template/c;->h:Ljava/util/List;

    invoke-direct {v14, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v13, v14}, Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;->e(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v3, Lcom/perfectcorp/perfectlib/ph/template/c$a;

    invoke-direct {v3, v0}, Lcom/perfectcorp/perfectlib/ph/template/c$a;-><init>(Lcom/perfectcorp/perfectlib/ph/template/c;)V

    iput-object v5, v3, Lcom/perfectcorp/perfectlib/ph/template/c$a;->c:Ljava/util/List;

    const-string v5, "secondsrc"

    move-object/from16 v18, v4

    const-string v4, "imagesrc"

    move-object/from16 v19, v10

    const-string v10, "shapesrc3d"

    move-object/from16 v42, v7

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/ph/template/c;->d:Ljava/lang/String;

    :try_start_a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    move-object/from16 v20, v7

    :try_start_b
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v21
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    move-object/from16 v43, v12

    :try_start_c
    invoke-static/range {v21 .. v21}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplatePaths;->e(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v12

    invoke-direct {v7, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v13, v7}, Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;->e(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12, v7}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-static {v10}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplatePaths;->e(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v13, v7}, Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;->e(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10, v7}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplatePaths;->e(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v13, v4}, Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;->e(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    goto :goto_f

    :catchall_6
    move-exception v0

    goto :goto_e

    :catchall_7
    move-exception v0

    :goto_d
    move-object/from16 v43, v12

    goto :goto_e

    :catchall_8
    move-exception v0

    move-object/from16 v20, v7

    goto :goto_d

    :goto_e
    const-string v4, "getUpdatedMaskInfoExtra failed"

    invoke-static {v15, v4, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v7, v20

    :goto_f
    iput-object v7, v3, Lcom/perfectcorp/perfectlib/ph/template/c$a;->d:Ljava/lang/String;

    iput-object v6, v3, Lcom/perfectcorp/perfectlib/ph/template/c$a;->e:Ljava/util/List;

    iput-object v11, v3, Lcom/perfectcorp/perfectlib/ph/template/c$a;->g:Ljava/util/List;

    iput-object v14, v3, Lcom/perfectcorp/perfectlib/ph/template/c$a;->h:Ljava/util/List;

    invoke-virtual {v3}, Lcom/perfectcorp/perfectlib/ph/template/c$a;->a()Lcom/perfectcorp/perfectlib/ph/template/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v10, v19

    move-object/from16 v7, v42

    move-object/from16 v12, v43

    goto/16 :goto_c

    :cond_8
    move-object/from16 v18, v4

    move-object/from16 v42, v7

    move-object/from16 v19, v10

    move-object/from16 v43, v12

    new-instance v0, Lg7;

    const/16 v3, 0xd

    invoke-direct {v0, v3}, Lg7;-><init>(I)V

    invoke-static {v2, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->c(Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Ljava/util/AbstractList;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->t(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->h()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/mask/a;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/template/c;

    invoke-static {v9, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/mask/a;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/ph/template/c;)V

    goto :goto_10

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v9, v8}, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a;->c:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v13, v4}, Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;->e(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a$a;

    invoke-direct {v5, v3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a$a;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a;)V

    new-instance v44, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a;

    const-string v49, ""

    const-string v50, ""

    iget-object v3, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a$a;->a:Ljava/lang/String;

    iget-object v6, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a$a;->b:Ljava/lang/String;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a$a;->d:Ljava/lang/String;

    move-object/from16 v45, v3

    move-object/from16 v47, v4

    move-object/from16 v48, v5

    move-object/from16 v46, v6

    invoke-direct/range {v44 .. v50}, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v44

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_a
    new-instance v2, Lg7;

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Lg7;-><init>(I)V

    invoke-static {v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->c(Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Ljava/util/AbstractList;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->t(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->h()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/b;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a;

    invoke-static {v9, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/b;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a;)V

    goto :goto_12

    :cond_b
    move-object/from16 v5, v16

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v14, v38

    move-object/from16 v8, v39

    move-object/from16 v4, v40

    move-object/from16 v10, v41

    move-object/from16 v7, v42

    move-object/from16 v12, v43

    const/4 v1, 0x0

    goto/16 :goto_a

    :goto_13
    invoke-static {v5, v6, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_c
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v40, v4

    move-object/from16 v42, v7

    move-object/from16 v39, v8

    move-object/from16 v41, v10

    move-object v2, v12

    move-object/from16 v38, v14

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;->d:Ljava/util/ArrayList;

    :try_start_d
    sget-object v0, Lcom/perfectcorp/perfectlib/hc/database/Contract$TextureInfo;->a:Ljava/util/List;

    const-string v0, "_id"
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_10

    move-object/from16 v4, v18

    move-object/from16 v10, v19

    move-object/from16 v5, v42

    :try_start_e
    filled-new-array {v0, v5, v10, v4}, [Ljava/lang/String;

    move-result-object v18
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_f

    :try_start_f
    new-instance v0, Ljava/lang/StringBuilder;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_e

    move-object/from16 v7, v35

    :try_start_10
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v20

    const-string v17, "TextureInfo"

    const-string v19, "Thumbnail LIKE ?"
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_d

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v9

    :try_start_11
    invoke-virtual/range {v16 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    :try_start_12
    invoke-static {v8}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    invoke-static {v8}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    move-object/from16 v35, v4

    goto/16 :goto_1a

    :catchall_9
    move-exception v0

    move-object/from16 v35, v4

    :goto_14
    move-object/from16 v17, v8

    goto/16 :goto_19

    :cond_d
    :try_start_13
    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    :goto_15
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v16, v14

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    move-object/from16 v35, v4

    :try_start_14
    new-instance v4, Lcom/perfectcorp/perfectlib/ph/template/u;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    move-object/from16 v17, v8

    :try_start_15
    invoke-static/range {v16 .. v16}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplatePaths;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v4, v12, v8, v14}, Lcom/perfectcorp/perfectlib/ph/template/u;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    :goto_16
    invoke-static/range {v17 .. v17}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    goto :goto_1a

    :catchall_a
    move-exception v0

    goto :goto_19

    :cond_e
    move-object/from16 v8, v17

    move-object/from16 v4, v35

    goto :goto_15

    :catchall_b
    move-exception v0

    goto :goto_14

    :catchall_c
    move-exception v0

    move-object/from16 v35, v4

    move-object/from16 v9, v16

    :goto_17
    const/16 v17, 0x0

    goto :goto_19

    :catchall_d
    move-exception v0

    :goto_18
    move-object/from16 v35, v4

    goto :goto_17

    :catchall_e
    move-exception v0

    move-object/from16 v7, v35

    goto :goto_18

    :catchall_f
    move-exception v0

    move-object/from16 v7, v35

    goto :goto_18

    :catchall_10
    move-exception v0

    move-object/from16 v10, v19

    move-object/from16 v7, v35

    move-object/from16 v5, v42

    move-object/from16 v35, v18

    goto :goto_17

    :goto_19
    :try_start_16
    const-string v4, "TextureInfoDao"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v12, "getByPossiblePath thumbnailPathPrefix="

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_24

    goto :goto_16

    :goto_1a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/template/u;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v12, "scanTextureAndUpdate TextureInfo="

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v4, Lcom/perfectcorp/perfectlib/ph/template/u;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget-object v14, v4, Lcom/perfectcorp/perfectlib/ph/template/u;->a:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, v5, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v42, v5

    invoke-static {v12}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplatePaths;->d(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x3

    invoke-static {v5, v15, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "removePathFromTextureInfo::textureId="

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v15, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    move-object/from16 v17, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v8

    const-string v8, ", deleted thumb path="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x3

    invoke-static {v8, v15, v5}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    :cond_f
    move-object/from16 v17, v5

    move-object/from16 v18, v8

    :goto_1d
    move-object/from16 v5, v17

    move-object/from16 v8, v18

    goto :goto_1c

    :cond_10
    new-instance v5, Lcom/perfectcorp/perfectlib/ph/template/u$a;

    invoke-direct {v5, v4}, Lcom/perfectcorp/perfectlib/ph/template/u$a;-><init>(Lcom/perfectcorp/perfectlib/ph/template/u;)V

    new-instance v4, Lcom/perfectcorp/perfectlib/ph/template/u;

    iget-object v8, v5, Lcom/perfectcorp/perfectlib/ph/template/u$a;->a:Ljava/lang/String;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/ph/template/u$a;->c:Ljava/lang/String;

    invoke-direct {v4, v8, v0, v5}, Lcom/perfectcorp/perfectlib/ph/template/u;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    move-object/from16 v5, v42

    goto/16 :goto_1b

    :cond_11
    move-object/from16 v42, v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/template/u;

    invoke-static {v9, v3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/texture/a;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/ph/template/u;)Lcom/perfectcorp/perfectlib/ph/template/u;

    goto :goto_1e

    :cond_12
    const-string v3, "ReferenceElementInfoDao"

    :try_start_17
    sget-object v0, Lcom/perfectcorp/perfectlib/hc/database/Contract$ReferenceElementInfo;->a:Ljava/util/List;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_16

    move-object/from16 v4, v33

    move-object/from16 v5, v34

    :try_start_18
    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v18
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_15

    :try_start_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_14

    move-object/from16 v8, v41

    :try_start_1a
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v20

    const-string v17, "ReferenceElementInfo"

    const-string v19, "ReferencedIds LIKE ?"
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_13

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v9

    :try_start_1b
    invoke-virtual/range {v16 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_12

    :try_start_1c
    invoke-static {v7}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_11

    invoke-static {v7}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    goto :goto_23

    :catchall_11
    move-exception v0

    goto :goto_22

    :cond_13
    :try_start_1d
    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    :cond_14
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/perfectcorp/perfectlib/ph/template/n;

    invoke-static {v12}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplatePaths;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    invoke-direct {v13, v11, v12}, Lcom/perfectcorp/perfectlib/ph/template/n;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    invoke-virtual {v0, v13}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_14

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_11

    :goto_1f
    invoke-static {v7}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    goto :goto_23

    :catchall_12
    move-exception v0

    move-object/from16 v9, v16

    :goto_20
    const/4 v7, 0x0

    goto :goto_22

    :catchall_13
    move-exception v0

    goto :goto_20

    :catchall_14
    move-exception v0

    :goto_21
    move-object/from16 v8, v41

    goto :goto_20

    :catchall_15
    move-exception v0

    goto :goto_21

    :catchall_16
    move-exception v0

    move-object/from16 v4, v33

    move-object/from16 v5, v34

    goto :goto_21

    :goto_22
    :try_start_1e
    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v12, v32

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_23

    goto :goto_1f

    :goto_23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/ph/template/n;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "scanReferenceElementInfosAndUpdateDb referenceElementInfo="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/perfectcorp/perfectlib/ph/template/n;->a()Landroid/content/ContentValues;

    move-result-object v12

    iget-object v13, v7, Lcom/perfectcorp/perfectlib/ph/template/n;->a:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    invoke-static {v12, v15, v11}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v14, "removeReferencedIdFromInfo::referenceElementInfoId="

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v14, v40

    invoke-static {v11, v13, v14, v8}, Ld21;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v15, v11}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/util/ArrayList;

    iget-object v7, v7, Lcom/perfectcorp/perfectlib/ph/template/n;->b:Ljava/util/List;

    invoke-direct {v11, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_15
    :goto_25
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_25

    :cond_16
    new-instance v7, Lcom/perfectcorp/perfectlib/ph/template/n;

    invoke-direct {v7, v13, v11}, Lcom/perfectcorp/perfectlib/ph/template/n;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    invoke-virtual {v7}, Lcom/perfectcorp/perfectlib/ph/template/n;->a()Landroid/content/ContentValues;

    move-result-object v11

    :try_start_1f
    iget-object v7, v7, Lcom/perfectcorp/perfectlib/ph/template/n;->a:Ljava/lang/String;

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v12, "ReferenceElementInfo"

    invoke-static {v9, v12}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "Id=?"

    invoke-virtual {v9, v12, v11, v13, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    int-to-long v11, v7

    cmp-long v7, v11, v36

    if-gez v7, :cond_17

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x5

    invoke-static {v11, v3, v7}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_17

    goto :goto_26

    :catchall_17
    move-exception v0

    goto :goto_27

    :cond_17
    :goto_26
    move-object/from16 v40, v14

    goto/16 :goto_24

    :goto_27
    invoke-static {v3, v6, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_18
    sget-object v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;->d:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;

    const-string v1, "referenceId"

    invoke-virtual {v0, v9, v1, v8}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v9, v1, v8}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "scanDownloadImagesAndUpdateDb DownloadImageInfo="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;->o(Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;)Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x3

    invoke-static {v6, v15, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;->d:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;

    iget-object v6, v1, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;->a:Ljava/lang/String;

    const-string v7, "url"

    invoke-virtual {v3, v9, v7, v6}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_19

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_1a
    sget-object v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;->SKU:Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;

    move-object/from16 v3, v31

    if-ne v3, v0, :cond_1b

    const/4 v1, 0x0

    invoke-static {v9, v8, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuDao;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v0, "Can\'t find sku."

    const/4 v1, 0x5

    invoke-static {v1, v15, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    :cond_1b
    :goto_29
    move-object/from16 v13, v29

    move-object/from16 v14, v30

    move-object/from16 v6, v42

    goto/16 :goto_2e

    :cond_1c
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->c(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->b(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v1

    if-eqz v1, :cond_1d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "Skip pattern major sku. beautyMode="

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x3

    invoke-static {v6, v15, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    :cond_1d
    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, " WHERE SkuGUID IN ("

    :try_start_20
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SELECT GUID FROM "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1c

    move-object/from16 v14, v30

    :try_start_21
    invoke-static {v9, v14}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->g(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1b

    move-object/from16 v1, v39

    :try_start_22
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v9, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1a

    :try_start_23
    invoke-static {v7}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_18

    invoke-static {v7}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    move-object/from16 v13, v29

    move-object/from16 v6, v42

    goto :goto_2d

    :catchall_18
    move-exception v0

    move-object/from16 v6, v42

    goto :goto_2c

    :cond_1e
    :try_start_24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_18

    move-object/from16 v6, v42

    :cond_1f
    :try_start_25
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_19

    if-nez v11, :cond_1f

    invoke-static {v7}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    move-object/from16 v13, v29

    goto :goto_2d

    :catchall_19
    move-exception v0

    goto :goto_2c

    :catchall_1a
    move-exception v0

    :goto_2a
    move-object/from16 v6, v42

    const/4 v7, 0x0

    goto :goto_2c

    :catchall_1b
    move-exception v0

    :goto_2b
    move-object/from16 v1, v39

    goto :goto_2a

    :catchall_1c
    move-exception v0

    move-object/from16 v14, v30

    goto :goto_2b

    :goto_2c
    :try_start_26
    const-string v11, "getIdsBySkuId"

    move-object/from16 v13, v29

    invoke-static {v13, v11, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1e

    invoke-static {v7}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    :goto_2d
    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v0

    invoke-static/range {v27 .. v27}, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates;->d(Ljava/util/AbstractCollection;)Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    move-result-object v7

    invoke-static {v7}, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates;->e(Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->i(Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->p()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v0

    const-string v7, " WHERE PaletteGUID IN ("

    :try_start_27
    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v12, v38

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "PatternPaletteInfo"

    invoke-static {v9, v12}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->g(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_1d

    goto :goto_2e

    :catchall_1d
    move-exception v0

    const-string v1, "PatternPaletteInfoDao"

    const-string v7, "delete by palette ids"

    invoke-static {v1, v7, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2e

    :catchall_1e
    move-exception v0

    invoke-static {v7}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw v0

    :goto_2e
    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/b;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/background/b;

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "guid"

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_28
    invoke-static {v1}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->b:Ljava/lang/String;

    invoke-static {v9, v0}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_20

    const/4 v11, 0x0

    :try_start_29
    invoke-virtual {v9, v0, v7, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1f

    goto :goto_30

    :catchall_1f
    move-exception v0

    goto :goto_2f

    :catchall_20
    move-exception v0

    const/4 v11, 0x0

    :goto_2f
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v12, "[deleteByGuids] failed. guids="

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "BackgroundInfoDao"

    invoke-static {v7, v1, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_30
    invoke-virtual {v2, v9}, Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v1, "remove id="

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_2a
    const-string v0, "IdUsage"

    invoke-static {v9, v0}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "KeyId=?"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v0, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_21

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    sget-object v0, Lcom/perfectcorp/perfectlib/CacheCleaner$1;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_23

    const/4 v2, 0x2

    if-eq v0, v2, :cond_22

    const/4 v2, 0x3

    if-eq v0, v2, :cond_21

    const/4 v2, 0x4

    if-eq v0, v2, :cond_20

    move-object/from16 v2, v28

    goto :goto_31

    :cond_20
    move-object/from16 v2, v28

    iput-boolean v1, v2, Lcom/perfectcorp/perfectlib/CacheCleaner$HandlerStatusResetter;->b:Z

    goto :goto_31

    :cond_21
    move-object/from16 v2, v28

    iput-boolean v1, v2, Lcom/perfectcorp/perfectlib/CacheCleaner$HandlerStatusResetter;->e:Z

    goto :goto_31

    :cond_22
    move-object/from16 v2, v28

    iput-boolean v1, v2, Lcom/perfectcorp/perfectlib/CacheCleaner$HandlerStatusResetter;->d:Z

    goto :goto_31

    :cond_23
    move-object/from16 v2, v28

    iput-boolean v1, v2, Lcom/perfectcorp/perfectlib/CacheCleaner$HandlerStatusResetter;->c:Z

    :goto_31
    iget-boolean v0, v2, Lcom/perfectcorp/perfectlib/CacheCleaner$HandlerStatusResetter;->a:Z

    if-eqz v0, :cond_27

    iget-boolean v0, v2, Lcom/perfectcorp/perfectlib/CacheCleaner$HandlerStatusResetter;->b:Z

    if-eqz v0, :cond_24

    iget-boolean v0, v2, Lcom/perfectcorp/perfectlib/CacheCleaner$HandlerStatusResetter;->f:Z

    if-nez v0, :cond_24

    sget-object v0, Lcom/perfectcorp/perfectlib/hc/preferences/SkuHandlerPreferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {v0}, Lcom/perfectcorp/common/utility/j;->m()V

    iput-boolean v1, v2, Lcom/perfectcorp/perfectlib/CacheCleaner$HandlerStatusResetter;->f:Z

    :cond_24
    iget-boolean v0, v2, Lcom/perfectcorp/perfectlib/CacheCleaner$HandlerStatusResetter;->c:Z

    if-eqz v0, :cond_25

    iget-boolean v0, v2, Lcom/perfectcorp/perfectlib/CacheCleaner$HandlerStatusResetter;->g:Z

    if-nez v0, :cond_25

    sget-object v0, Lcom/perfectcorp/perfectlib/hc/preferences/LookHandlerPreferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {v0}, Lcom/perfectcorp/common/utility/j;->m()V

    iput-boolean v1, v2, Lcom/perfectcorp/perfectlib/CacheCleaner$HandlerStatusResetter;->g:Z

    :cond_25
    iget-boolean v0, v2, Lcom/perfectcorp/perfectlib/CacheCleaner$HandlerStatusResetter;->d:Z

    const-string v3, "LOOK_LIST_MESSAGE_DIGEST"

    if-eqz v0, :cond_26

    iget-boolean v0, v2, Lcom/perfectcorp/perfectlib/CacheCleaner$HandlerStatusResetter;->h:Z

    if-nez v0, :cond_26

    sget-object v0, Lcom/perfectcorp/perfectlib/hc/preferences/NailLookHandlerPreferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {v0}, Lcom/perfectcorp/common/utility/j;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-boolean v1, v2, Lcom/perfectcorp/perfectlib/CacheCleaner$HandlerStatusResetter;->h:Z

    :cond_26
    iget-boolean v0, v2, Lcom/perfectcorp/perfectlib/CacheCleaner$HandlerStatusResetter;->e:Z

    if-eqz v0, :cond_27

    iget-boolean v0, v2, Lcom/perfectcorp/perfectlib/CacheCleaner$HandlerStatusResetter;->i:Z

    if-nez v0, :cond_27

    sget-object v0, Lcom/perfectcorp/perfectlib/hc/preferences/JewelryLookHandlerPreferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {v0}, Lcom/perfectcorp/common/utility/j;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-boolean v1, v2, Lcom/perfectcorp/perfectlib/CacheCleaner$HandlerStatusResetter;->i:Z

    :cond_27
    move-object v8, v2

    move-object v7, v6

    move-object v3, v10

    move-object v6, v13

    move-object v9, v14

    move-object/from16 v1, v26

    move-object/from16 v10, v27

    move-object/from16 v2, v35

    goto/16 :goto_3

    :catchall_21
    move-exception v0

    :try_start_2b
    const-string v2, "IdUsageDao"

    invoke-virtual {v1, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_22

    :catchall_22
    move-exception v0

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :catchall_23
    move-exception v0

    invoke-static {v7}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw v0

    :catchall_24
    move-exception v0

    invoke-static/range {v17 .. v17}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw v0

    :cond_28
    move-object v8, v7

    move-object v7, v6

    move-object v6, v8

    move-object/from16 v35, v2

    move-object v8, v10

    move-object v2, v12

    move-object v12, v14

    const/16 v25, 0x0

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    move-object v10, v8

    move-object v12, v2

    move-object/from16 v2, v35

    goto/16 :goto_4

    :catchall_25
    move-exception v0

    move-object v8, v10

    move-object v12, v14

    const/16 v25, 0x0

    move-object/from16 v11, v25

    :goto_32
    :try_start_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_26

    :catchall_26
    move-exception v0

    invoke-static {v11}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw v0

    :cond_29
    return-void

    :catchall_27
    move-exception v0

    invoke-static {v8}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw v0
.end method
