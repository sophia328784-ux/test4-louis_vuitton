.class public final synthetic Lcom/perfectcorp/perfectlib/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Future;Lcom/perfectcorp/common/debug/NotAnError;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/perfectcorp/perfectlib/r;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/r;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/r;->e:Ljava/lang/Object;

    iput p3, p0, Lcom/perfectcorp/perfectlib/r;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;ILcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;)V
    .locals 1

    .line 13
    const/4 v0, 0x1

    iput v0, p0, Lcom/perfectcorp/perfectlib/r;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/r;->d:Ljava/lang/Object;

    iput p2, p0, Lcom/perfectcorp/perfectlib/r;->c:I

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/r;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 28

    move-object/from16 v0, p0

    iget v1, v0, Lcom/perfectcorp/perfectlib/r;->b:I

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/r;->e:Ljava/lang/Object;

    iget v3, v0, Lcom/perfectcorp/perfectlib/r;->c:I

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/r;->d:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    check-cast v2, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    int-to-double v0, v0

    int-to-double v3, v3

    div-double/2addr v0, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v3

    const-wide v3, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v0, v3

    const-wide v3, 0x3fd999999999999aL    # 0.4

    add-double/2addr v0, v3

    check-cast v2, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$1;

    invoke-virtual {v2, v0, v1}, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$1;->progress(D)V

    return-void

    :pswitch_0
    check-cast v0, Ljava/util/concurrent/Future;

    check-cast v2, Lcom/perfectcorp/common/debug/NotAnError;

    const-string v1, "IdUsageDao"

    const-string v4, "[getSizeSummation] failed."

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/CacheCleaner;->c(Ljava/util/concurrent/Future;)V

    const-string v5, "cleanUp::start search"

    const-string v6, "CacheCleaner"

    invoke-static {v6, v5, v2}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    int-to-long v7, v3

    const/16 v3, 0x14

    shl-long/2addr v7, v3

    invoke-static {}, Lcom/perfectcorp/perfectlib/CacheCleaner;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-instance v5, Lcom/perfectcorp/perfectlib/t;

    const/4 v9, 0x0

    invoke-direct {v5, v9}, Lcom/perfectcorp/perfectlib/t;-><init>(I)V

    invoke-static {v3, v5}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/CacheCleaner;->c(Ljava/util/concurrent/Future;)V

    invoke-static {}, Lcom/perfectcorp/perfectlib/CacheCleaner;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    :try_start_0
    const-string v5, "SUM(ValueFolderSizeInByte)"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v12

    const-string v11, "IdUsage"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v10 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    :try_start_1
    invoke-static {v5}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    if-nez v10, :cond_0

    invoke-static {v5}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    const-wide/16 v10, 0x0

    goto :goto_0

    :cond_0
    :try_start_2
    aget-object v10, v12, v9

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    invoke-static {v5}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    :goto_0
    invoke-static {}, Lcom/perfectcorp/perfectlib/CacheCleaner;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    :try_start_3
    const-string v5, "SUM(Size)"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    const-string v16, "IdSystemInfo"

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v15 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    :try_start_4
    invoke-static {v5}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-nez v12, :cond_1

    invoke-static {v5}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    const-wide/16 v13, 0x0

    goto :goto_1

    :cond_1
    :try_start_5
    aget-object v12, v17, v9

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    invoke-static {v5}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    move-wide v13, v15

    :goto_1
    invoke-static {}, Lcom/perfectcorp/perfectlib/CacheCleaner;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v19

    sget-object v5, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;->SKU:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;

    sget-object v12, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;->LOOK:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;

    filled-new-array {v5, v12}, [Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;

    move-result-object v5

    sget-object v12, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;->d:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;

    const-string v12, " GROUP BY url)"

    const-string v15, " WHERE "

    :try_start_6
    const-string v16, "SUM(size)"

    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    move-result-object v21

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v5

    new-instance v3, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/a;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->r(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v3

    const-string v5, " OR "

    move/from16 v16, v9

    new-instance v9, Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;

    invoke-direct {v9, v5}, Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "(SELECT size FROM DownloadImage"

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v19 .. v27}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    invoke-static {v3}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-nez v5, :cond_2

    invoke-static {v3}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    const-wide/16 v4, 0x0

    goto :goto_2

    :cond_2
    :try_start_8
    aget-object v5, v21, v16

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    invoke-static {v3}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    :goto_2
    add-long v15, v10, v13

    move-wide/from16 v17, v7

    add-long v7, v15, v4

    const-string v3, "getTotalSize total="

    const-string v9, ", idUsageSize="

    invoke-static {v7, v8, v3, v9}, Lpq0;->q(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", idSystemSize="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", downloadImageSize="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4, v6, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/CacheCleaner;->c(Ljava/util/concurrent/Future;)V

    cmp-long v3, v7, v17

    if-lez v3, :cond_7

    const-string v3, "cleanUp::start delete rows"

    invoke-static {v6, v3, v2}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/perfectcorp/perfectlib/CacheCleaner;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v19

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    :try_start_9
    const-string v20, "IdUsage"

    const-string v26, "ValueTimestamp ASC"

    const/16 v27, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v19 .. v27}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    move-object v2, v0

    goto :goto_5

    :cond_3
    :try_start_c
    sget-object v5, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v5, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    :cond_4
    invoke-static {v3}, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao;->a(Landroid/database/Cursor;)Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :goto_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;

    cmp-long v5, v7, v17

    if-gtz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "Keep row="

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v6, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v5, 0x1

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3, v5}, Lcom/perfectcorp/perfectlib/CacheCleaner;->a(Ljava/util/Collection;Z)J

    move-result-wide v9

    sub-long/2addr v7, v9

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "remaining totalSize="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v6, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/CacheCleaner;->c(Ljava/util/concurrent/Future;)V

    goto :goto_4

    :goto_5
    if-eqz v3, :cond_6

    :try_start_e
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    :try_start_f
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_6
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :goto_7
    const-string v2, "sortByTimestamp"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_7
    const-string v0, "cleanUp::max cache size="

    const-string v1, " bytes, kept size="

    move-wide/from16 v9, v17

    invoke-static {v9, v10, v0, v1}, Lpq0;->q(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes."

    invoke-static {v7, v8, v1, v0}, Lo60;->j(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v6, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string v0, "cleanUp::end"

    invoke-static {v6, v0, v2}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catchall_3
    move-exception v0

    goto :goto_8

    :catchall_4
    move-exception v0

    const/4 v3, 0x0

    :goto_8
    :try_start_10
    const-string v1, "DownloadImageDao"

    invoke-static {v1, v4, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :catchall_5
    move-exception v0

    invoke-static {v3}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw v0

    :catchall_6
    move-exception v0

    move-object v3, v5

    goto :goto_9

    :catchall_7
    move-exception v0

    const/4 v3, 0x0

    :goto_9
    :try_start_11
    const-string v1, "IdSystemInfoDao"

    invoke-static {v1, v4, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    :catchall_8
    move-exception v0

    invoke-static {v3}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw v0

    :catchall_9
    move-exception v0

    move-object v3, v5

    goto :goto_a

    :catchall_a
    move-exception v0

    const/4 v3, 0x0

    :goto_a
    :try_start_12
    invoke-static {v1, v4, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    :catchall_b
    move-exception v0

    invoke-static {v3}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
