.class public final synthetic Lw81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/database/sqlite/SQLiteDatabase;

.field public final synthetic d:Ljava/lang/Iterable;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Iterable;ZI)V
    .locals 0

    iput p4, p0, Lw81;->b:I

    iput-object p1, p0, Lw81;->c:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p2, p0, Lw81;->d:Ljava/lang/Iterable;

    iput-boolean p3, p0, Lw81;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 29

    move-object/from16 v0, p0

    iget v1, v0, Lw81;->b:I

    const-string v2, "[getSkuSetIdToSkuSetUpdateInfoMap]"

    const-string v3, "[resetIsDeletedFlag]"

    const-string v4, ")"

    const-string v5, " IN ("

    const-string v6, " = 0 WHERE SkuSetID"

    const-string v7, " SET IsDeleted"

    const-string v8, "UPDATE "

    const/4 v10, 0x0

    const-string v11, "SkuSetID"

    const-string v12, "LastModified"

    const-string v13, "IsDeleted"

    iget-boolean v15, v0, Lw81;->e:Z

    iget-object v9, v0, Lw81;->d:Ljava/lang/Iterable;

    packed-switch v1, :pswitch_data_0

    iget-object v0, v0, Lw81;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SkuSetListDao"

    :try_start_0
    const-string v18, "SkuSetList"

    filled-new-array {v11, v12, v13}, [Ljava/lang/String;

    move-result-object v19

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v25}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v10}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez v17, :cond_0

    :try_start_2
    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v10}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    move-object/from16 v18, v9

    move/from16 v19, v15

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_0
    :try_start_3
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v18, v9

    :goto_0
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v19, v15

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    invoke-interface {v10, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v10, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-lez v15, :cond_1

    const/4 v15, 0x1

    :goto_1
    move-object/from16 p0, v10

    goto :goto_2

    :cond_1
    const/4 v15, 0x0

    goto :goto_1

    :goto_2
    :try_start_4
    new-instance v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;

    invoke-direct {v10, v9}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;-><init>(Ljava/lang/String;)V

    iput-wide v11, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;->e:J

    iput-boolean v15, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;->h:Z

    new-instance v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;

    invoke-direct {v11, v10}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;)V

    invoke-virtual {v14, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v9, :cond_8

    invoke-static/range {p0 .. p0}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    move-object v2, v14

    :goto_3
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;

    iget-object v13, v11, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->skuSetId:Ljava/lang/String;

    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;

    if-nez v13, :cond_2

    invoke-static {v0, v11}, Lcom/perfectcorp/perfectlib/ph/template/e$e;->d(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;)V

    goto :goto_4

    :cond_2
    iget-wide v14, v13, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->e:J

    move-object/from16 v16, v13

    iget-wide v12, v11, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->lastModified:J

    cmp-long v12, v14, v12

    if-gez v12, :cond_3

    iget-object v12, v11, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->skuSetId:Ljava/lang/String;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    new-instance v13, Lyp;

    const/4 v14, 0x3

    invoke-direct {v13, v14, v0, v12}, Lyp;-><init>(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-static {v0, v13}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    invoke-static {v0, v11}, Lcom/perfectcorp/perfectlib/ph/template/e$e;->d(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;)V

    :goto_5
    iget-object v11, v11, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->skuSetId:Ljava/lang/String;

    invoke-interface {v9, v11}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    move-object/from16 v13, v16

    iget-boolean v12, v13, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->h:Z

    iget-object v13, v11, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->skuSetId:Ljava/lang/String;

    if-eqz v12, :cond_4

    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    :try_start_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "SkuSetList"

    invoke-static {v0, v14}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->g(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    invoke-static {v1, v3, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    invoke-interface {v9, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    if-eqz v19, :cond_7

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v4, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->h:Z

    if-nez v4, :cond_6

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    new-instance v4, Lyp;

    const/4 v14, 0x3

    invoke-direct {v4, v14, v0, v3}, Lyp;-><init>(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_6
    const/4 v14, 0x3

    goto :goto_6

    :cond_7
    return-void

    :cond_8
    move-object/from16 v10, p0

    move/from16 v15, v19

    move-object/from16 v11, v20

    move-object/from16 v12, v21

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move-object/from16 v10, p0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 p0, v10

    :goto_7
    :try_start_6
    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    invoke-static {v10}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw v0

    :pswitch_0
    move-object/from16 v18, v9

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    move/from16 v19, v15

    iget-object v0, v0, Lw81;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SkuSetDao"

    move-object/from16 v9, v21

    :try_start_7
    const-string v21, "SkuSet"

    move-object v11, v9

    move-object/from16 v9, v20

    filled-new-array {v9, v11, v13}, [Ljava/lang/String;

    move-result-object v22

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v28}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    invoke-static {v10}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    if-nez v12, :cond_9

    :try_start_8
    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    invoke-static {v10}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    move-object/from16 p0, v1

    goto :goto_b

    :catchall_5
    move-exception v0

    move-object v14, v1

    move-object v1, v2

    goto/16 :goto_10

    :cond_9
    :try_start_9
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    :goto_8
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    move-object/from16 p0, v1

    move-object/from16 v20, v2

    :try_start_a
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v10, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    if-lez v15, :cond_a

    const/4 v15, 0x1

    :goto_9
    move-object/from16 v21, v9

    goto :goto_a

    :cond_a
    const/4 v15, 0x0

    goto :goto_9

    :goto_a
    new-instance v9, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;

    invoke-direct {v9, v14}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;-><init>(Ljava/lang/String;)V

    iput-wide v1, v9, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;->e:J

    iput-boolean v15, v9, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;->h:Z

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;

    invoke-direct {v1, v9}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;)V

    invoke-virtual {v12, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    if-nez v1, :cond_11

    invoke-static {v10}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    move-object v2, v12

    :goto_b
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;

    iget-object v12, v10, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->skuSetId:Ljava/lang/String;

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;

    if-nez v12, :cond_b

    invoke-static {v0, v10}, Lcom/perfectcorp/perfectlib/ph/template/e$e;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;)V

    goto :goto_c

    :cond_b
    iget-wide v13, v12, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->e:J

    move-object/from16 v16, v12

    iget-wide v11, v10, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->lastModified:J

    cmp-long v11, v13, v11

    if-gez v11, :cond_c

    iget-object v11, v10, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->skuSetId:Ljava/lang/String;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    new-instance v12, Lyp;

    const/4 v15, 0x2

    invoke-direct {v12, v15, v0, v11}, Lyp;-><init>(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-static {v0, v12}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    invoke-static {v0, v10}, Lcom/perfectcorp/perfectlib/ph/template/e$e;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;)V

    :goto_d
    iget-object v10, v10, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->skuSetId:Ljava/lang/String;

    invoke-interface {v1, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_c
    move-object/from16 v12, v16

    iget-boolean v11, v12, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->h:Z

    iget-object v12, v10, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->skuSetId:Ljava/lang/String;

    if-eqz v11, :cond_d

    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    :try_start_b
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "SkuSet"

    invoke-static {v0, v13}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->g(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_d

    :catchall_6
    move-exception v0

    move-object/from16 v14, p0

    invoke-static {v14, v3, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_d
    move-object/from16 v14, p0

    invoke-interface {v1, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_e
    if-eqz v19, :cond_10

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v4, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->h:Z

    if-nez v4, :cond_f

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    new-instance v4, Lyp;

    const/4 v15, 0x2

    invoke-direct {v4, v15, v0, v3}, Lyp;-><init>(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    goto :goto_e

    :cond_f
    const/4 v15, 0x2

    goto :goto_e

    :cond_10
    return-void

    :cond_11
    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v9, v21

    goto/16 :goto_8

    :catchall_7
    move-exception v0

    move-object/from16 v14, p0

    :goto_f
    move-object/from16 v1, v20

    goto :goto_10

    :catchall_8
    move-exception v0

    move-object v14, v1

    move-object/from16 v20, v2

    goto :goto_f

    :goto_10
    :try_start_c
    invoke-static {v14, v1, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    :catchall_9
    move-exception v0

    invoke-static {v10}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
