.class public final synthetic Lfx0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public synthetic constructor <init>(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 0

    iput p2, p0, Lfx0;->b:I

    iput-object p1, p0, Lfx0;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lfx0;->b:I

    const-string v1, "SkuItem"

    const/4 v2, 0x3

    const/4 v3, 0x0

    iget-object p0, p0, Lfx0;->c:Landroid/database/sqlite/SQLiteDatabase;

    packed-switch v0, :pswitch_data_0

    const-string v0, "CREATE TABLE IF NOT EXISTS IdUsage(KeyId TEXT PRIMARY KEY NOT NULL DEFAULT \'\',ValueTimestamp INTEGER DEFAULT 0,ValueType TEXT NOT NULL DEFAULT \'\',ValueFolderPath TEXT NOT NULL DEFAULT \'\',ValueFolderSizeInByte INTEGER DEFAULT 0);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS \'index_id_usage\' ON IdUsage(KeyId)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a;->h()Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$c;->b:Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$c;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a;->j(Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$b;

    new-instance v2, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$b;->a:Ljava/lang/String;

    iget-wide v4, v1, Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$b;->b:J

    sget-object v6, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;->MAKEUP_LOOK:Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;

    iget-object v7, v1, Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$b;->d:Ljava/lang/String;

    iget-wide v8, v1, Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$b;->e:J

    invoke-direct/range {v2 .. v9}, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;-><init>(Ljava/lang/String;JLcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;Ljava/lang/String;J)V

    invoke-static {p0, v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a;->h()Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$c;->a:Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$c;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a;->j(Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$b;

    new-instance v2, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$b;->a:Ljava/lang/String;

    iget-wide v4, v1, Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$b;->b:J

    sget-object v6, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;->SKU:Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;

    iget-object v7, v1, Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$b;->d:Ljava/lang/String;

    iget-wide v8, v1, Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$b;->e:J

    invoke-direct/range {v2 .. v9}, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;-><init>(Ljava/lang/String;JLcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;Ljava/lang/String;J)V

    invoke-static {p0, v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;)V

    goto :goto_1

    :cond_1
    return-void

    :pswitch_0
    sget-object v0, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->a:Ljava/util/regex/Pattern;

    const-string v1, "[deleteAll] failed"

    const-string v0, "SkuSet"

    invoke-static {p0, v0}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "SkuSetItem"

    invoke-static {p0, v0}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    :try_start_0
    const-string v0, "SkuSetSupportedPattern"

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {p0, v0}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    :try_start_1
    const-string v0, "SkuSetWearingStyle"

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {p0, v0}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    const-string v0, "SkuSetWearingStyleDao"

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    const-string v0, "SkuSetSupportedPatternDao"

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :pswitch_1
    const-string v0, "SkuDbHelper"

    const-string v1, "[evictAll] start"

    invoke-static {v2, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lfx0;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lfx0;-><init>(Landroid/database/sqlite/SQLiteDatabase;I)V

    invoke-static {p0, v3}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    const-string v3, "[evictAll] end"

    invoke-static {v2, v0, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->a:Ljava/util/regex/Pattern;

    const-string v0, "SkuSetUnit"

    invoke-static {v2, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lfx0;

    invoke-direct {v1, p0, v2}, Lfx0;-><init>(Landroid/database/sqlite/SQLiteDatabase;I)V

    invoke-static {p0, v1}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    invoke-static {v2, v0, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/b;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/background/b;

    invoke-virtual {v0, p0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :pswitch_2
    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    const-string v0, "Sku"

    invoke-static {p0, v0}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {p0, v1}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    const-string v0, "SkuOnly"

    invoke-static {p0, v0}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    const-string v0, "SkuItemOnly"

    invoke-static {p0, v0}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :pswitch_3
    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    const-string v0, "1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "isDeleted=?"

    invoke-static {p0, v5, v3, v4}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuDao;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->f:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->cacheCleanerDeleteById(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "isDeleted = ?"

    invoke-virtual {p0, v1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[removeIsDeleted] delete "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " rows!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SkuItemDao"

    invoke-static {v2, v0, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
