.class public final Lcom/perfectcorp/perfectlib/hc/YMKDatabase;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper;->g:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p0, "BuiltIn"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Live"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "\'Live\'."

    invoke-static {p0, p1}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public static declared-synchronized b()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    const-class v0, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;->j:Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    sget-object v2, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;->j:Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;->p()V

    const-string v2, "YMKDatabase"

    const-string v3, "getReadableDatabase()"

    invoke-static {v2, v3, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public static declared-synchronized c()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    const-class v0, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;->j:Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    sget-object v2, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;->j:Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;->p()V

    const-string v2, "YMKDatabase"

    const-string v3, "getWritableDatabase()"

    invoke-static {v2, v3, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public static initDbAndCleanUp()V
    .locals 4

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    sget-object v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;->j:Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;->i:Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$f;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-boolean v1, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->t:Z

    if-eqz v1, :cond_0

    const-class v1, Landroid/database/sqlite/SQLiteDatabase;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuDbHelper;

    const-string v3, "removeMarkDeletedContent"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
