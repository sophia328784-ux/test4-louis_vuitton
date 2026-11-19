.class final Lcom/perfectcorp/perfectlib/CacheCleaner;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/CacheCleaner$HandlerStatusResetter;,
        Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;
    }
.end annotation


# direct methods
.method public static a(Ljava/util/Collection;Z)J
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;

    iget-object v5, v1, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;->c:Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;

    sget-object v6, Lcom/perfectcorp/perfectlib/CacheCleaner$1;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    if-eq v6, v4, :cond_2

    const/4 v4, 0x4

    if-eq v6, v4, :cond_1

    const/4 v4, 0x5

    if-ne v6, v4, :cond_0

    new-instance v2, Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter$TutorialDeleter;

    invoke-direct {v2, v1}, Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;-><init>(Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;)V

    goto :goto_1

    :cond_0
    const-string p0, "Unsupported type="

    invoke-static {v5, p0}, Lb21;->p(Ljava/lang/Object;Ljava/lang/String;)V

    return-wide v2

    :cond_1
    new-instance v2, Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter$SkuDeleter;

    invoke-direct {v2, v1}, Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;-><init>(Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;)V

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter$LookDeleter;

    invoke-direct {v2, v1}, Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;-><init>(Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;)V

    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/perfectcorp/perfectlib/CacheCleaner;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    new-instance v1, Lcom/perfectcorp/perfectlib/q;

    invoke-direct {v1, v0, p1}, Lcom/perfectcorp/perfectlib/q;-><init>(Ljava/util/ArrayList;Z)V

    invoke-static {p0, v1}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "delete row folder="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;->a:Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CacheCleaner"

    invoke-static {v4, v1, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;->b()V

    iget-wide v0, p1, Lcom/perfectcorp/perfectlib/CacheCleaner$Deleter;->h:J

    add-long/2addr v2, v0

    goto :goto_2

    :cond_4
    return-wide v2
.end method

.method public static b()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;->j:Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$Union;->i:Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper$f;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/DatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/util/concurrent/Future;)V
    .locals 2

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "cleanUp::canceled"

    const/4 v0, 0x3

    const-string v1, "CacheCleaner"

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    const-string v0, "Cancelable had been canceled."

    invoke-direct {p0, v0}, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static cleanUp(ILjava/util/concurrent/Future;)Lcom/perfectcorp/thirdparty/io/reactivex/Completable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Completable;"
        }
    .end annotation

    new-instance v0, Lcom/perfectcorp/common/debug/NotAnError;

    invoke-direct {v0}, Lcom/perfectcorp/common/debug/NotAnError;-><init>()V

    const-string v1, "CacheCleaner"

    const-string v2, "cleanUp"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lcom/perfectcorp/perfectlib/r;

    invoke-direct {v1, p1, v0, p0}, Lcom/perfectcorp/perfectlib/r;-><init>(Ljava/util/concurrent/Future;Lcom/perfectcorp/common/debug/NotAnError;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/j;

    invoke-direct {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/j;-><init>(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/perfectcorp/perfectlib/s;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/perfectcorp/perfectlib/s;-><init>(Ljava/lang/Object;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/j;

    invoke-direct {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/j;-><init>(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Z)V
    .locals 12

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "[deleteById] id="

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/common/debug/NotAnError;

    invoke-direct {v1}, Lcom/perfectcorp/common/debug/NotAnError;-><init>()V

    const-string v2, "CacheCleaner"

    invoke-static {v2, v0, v1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/perfectcorp/perfectlib/CacheCleaner;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    :try_start_0
    const-string v4, "IdUsage"

    const-string v6, "KeyId=?"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_0
    :try_start_3
    invoke-static {v1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao;->a(Landroid/database/Cursor;)Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->e(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v1

    const/4 v3, 0x3

    if-eqz v1, :cond_1

    const-string v1, "[deleteById] start::id="

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p1}, Lcom/perfectcorp/perfectlib/CacheCleaner;->a(Ljava/util/Collection;Z)J

    const-string p1, "[deleteById] end::id="

    :goto_2
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p1, "[deleteById] no record::id="

    goto :goto_2

    :goto_3
    if-eqz v1, :cond_2

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_5
    const-string v0, "get id="

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "IdUsageDao"

    invoke-static {v0, p0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static e(Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p;
    .locals 2

    new-instance v0, Lcom/perfectcorp/perfectlib/s;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/perfectcorp/perfectlib/s;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/j;

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/j;-><init>(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p;

    move-result-object p0

    return-object p0
.end method
