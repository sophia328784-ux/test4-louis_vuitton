.class public final synthetic Lgx0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/database/sqlite/SQLiteDatabase;

.field public final synthetic d:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;


# direct methods
.method public synthetic constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;I)V
    .locals 0

    iput p3, p0, Lgx0;->b:I

    iput-object p1, p0, Lgx0;->c:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p2, p0, Lgx0;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lgx0;->b:I

    const-string v2, ", rowsAffected: "

    const-string v3, "itemGuid = ?"

    const/4 v4, 0x1

    const-string v5, "[markAsDeleted] start, skuGuids="

    const-string v6, "SkuDbHelper"

    const/4 v7, 0x5

    const-string v8, "[delete] delete id: "

    const/4 v9, 0x0

    const-string v12, "[insertOrReplace] failed. id: "

    const-string v13, "[insertOrReplace] error"

    iget-object v14, v0, Lgx0;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    iget-object v0, v0, Lgx0;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v15, 0x3

    packed-switch v1, :pswitch_data_0

    iget-object v1, v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-wide/16 v16, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v6, v5}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v5, Leq0;

    invoke-direct {v5, v0, v1, v15}, Leq0;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;I)V

    invoke-static {v0, v5}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    iget-object v1, v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "SkuOnly"

    invoke-static {v0, v6}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "skuGuid = ?"

    invoke-virtual {v0, v10, v11, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    const-string v10, "SkuOnlyDao"

    if-eq v5, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rowsAffected != 1, rowsAffected: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v10, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    invoke-direct {v1, v14}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;)V

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->a()Landroid/content/ContentValues;

    move-result-object v1

    :try_start_0
    invoke-static {v0, v6}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    cmp-long v1, v4, v16

    if-gez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v10, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v1, v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;

    iget-object v5, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;->itemGUID:Ljava/lang/String;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v6

    const-string v10, "SkuItemOnly"

    invoke-static {v0, v10}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SkuItemOnlyDao"

    invoke-static {v15, v6, v5}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;

    iget-object v11, v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    invoke-direct {v5, v11, v4}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;)V

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-virtual {v5}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->c()Landroid/content/ContentValues;

    move-result-object v4

    :try_start_1
    invoke-static {v0, v10}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v9, v4}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    cmp-long v10, v4, v16

    if-gez v10, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v6, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-static {v6, v13, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    return-void

    :goto_2
    invoke-static {v10, v13, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_0
    const-wide/16 v16, 0x0

    iget-object v1, v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v6, v5}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v5, Leq0;

    invoke-direct {v5, v0, v1, v4}, Leq0;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;I)V

    invoke-static {v0, v5}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    iget-object v1, v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuDao;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    invoke-direct {v1, v14}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;)V

    const-string v4, "SkuDao"

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->a()Landroid/content/ContentValues;

    move-result-object v1

    :try_start_2
    const-string v5, "Sku"

    invoke-static {v0, v5}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    cmp-long v1, v5, v16

    if-gez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v4, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_5

    :cond_4
    :goto_3
    iget-object v1, v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;

    iget-object v5, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;->itemGUID:Ljava/lang/String;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v6

    const-string v10, "SkuItem"

    invoke-static {v0, v10}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SkuItemDao"

    invoke-static {v15, v6, v5}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;

    iget-object v11, v14, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    invoke-direct {v5, v11, v4}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;)V

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-virtual {v5}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->c()Landroid/content/ContentValues;

    move-result-object v4

    :try_start_3
    invoke-static {v0, v10}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v9, v4}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    cmp-long v10, v4, v16

    if-gez v10, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v6, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    invoke-static {v6, v13, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_6
    return-void

    :goto_5
    invoke-static {v4, v13, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
