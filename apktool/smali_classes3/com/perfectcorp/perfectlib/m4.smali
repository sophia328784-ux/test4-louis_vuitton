.class public final synthetic Lcom/perfectcorp/perfectlib/m4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Landroid/database/sqlite/SQLiteDatabase;

.field public final synthetic d:Lcom/perfectcorp/perfectlib/TagHandler$Type;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Ljava/lang/Iterable;

.field public final synthetic g:Ljava/util/List;

.field public final synthetic h:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/TagHandler$Type;Ljava/util/List;Ljava/lang/Iterable;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/m4;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/m4;->c:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/m4;->d:Lcom/perfectcorp/perfectlib/TagHandler$Type;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/m4;->e:Ljava/util/List;

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/m4;->f:Ljava/lang/Iterable;

    iput-object p6, p0, Lcom/perfectcorp/perfectlib/m4;->g:Ljava/util/List;

    iput-object p7, p0, Lcom/perfectcorp/perfectlib/m4;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x3

    const-string v2, "TagHandler"

    const-string v3, "[insertToDb] enter transaction"

    invoke-static {v1, v2, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lxx0;

    const/16 v4, 0xc

    invoke-direct {v3, v4}, Lxx0;-><init>(I)V

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/m4;->e:Ljava/util/List;

    invoke-static {v4, v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimaps;->a(Ljava/lang/Iterable;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ak;

    move-result-object v3

    iget-object v3, v3, Lcom/perfectcorp/thirdparty/com/google/common/collect/al;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;->e()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object v3

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iget-object v6, v0, Lcom/perfectcorp/perfectlib/m4;->d:Lcom/perfectcorp/perfectlib/TagHandler$Type;

    iget-object v7, v6, Lcom/perfectcorp/perfectlib/TagHandler$Type;->d:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, "Type"

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/a;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/a;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Ljava/util/LinkedHashSet;

    const-string v13, "Id"

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    const/4 v14, 0x0

    :try_start_0
    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v11, v9, v8, v15}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    invoke-static {v14}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-static {v14}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    :try_start_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {v14, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v14, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v9, :cond_1

    goto :goto_1

    :goto_2
    invoke-direct {v12, v8}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v5, v12}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :goto_3
    :try_start_2
    iget-object v1, v10, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->a:Ljava/lang/String;

    const-string v2, "[getTextColumnByTextColumn] failed"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v14}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw v0

    :cond_2
    new-instance v7, Lf7;

    const/4 v8, 0x2

    invoke-direct {v7, v3, v8}, Lf7;-><init>(Ljava/lang/Object;I)V

    invoke-static {v5, v7}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Sets;->d(Ljava/util/HashSet;Lf7;)Ljava/util/Set;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    iget-object v8, v0, Lcom/perfectcorp/perfectlib/m4;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    sget-object v10, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;->d:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;

    const-string v11, "referenceId"

    invoke-virtual {v10, v8, v11, v7}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v10, v8, v11, v7}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    :cond_3
    iget-object v3, v0, Lcom/perfectcorp/perfectlib/m4;->f:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;

    sget-object v10, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;->d:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;

    invoke-direct {v11, v7}, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;-><init>(Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;)V

    invoke-virtual {v10, v8, v11}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)V

    goto :goto_5

    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;

    sget-object v10, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;->d:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;

    iget-object v11, v7, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;->a:Ljava/lang/String;

    const-string v12, "url"

    invoke-virtual {v10, v8, v12, v11}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v7, v7, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo;->b:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_6
    iget-object v5, v0, Lcom/perfectcorp/perfectlib/m4;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/b;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/b;

    iget-object v5, v6, Lcom/perfectcorp/perfectlib/TagHandler$Type;->d:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v8, v9, v7}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catchall_2
    move-exception v0

    goto/16 :goto_c

    :cond_7
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    sget-object v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/b;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/b;

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/m4;->g:Ljava/util/List;

    invoke-virtual {v3, v8, v5}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->k(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    sget-object v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/a;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/a;

    iget-object v5, v6, Lcom/perfectcorp/perfectlib/TagHandler$Type;->d:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_4
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v8, v9, v7}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catchall_3
    move-exception v0

    goto :goto_b

    :cond_8
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    sget-object v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/a;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/a;

    invoke-virtual {v3, v8, v4}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->k(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    sget-object v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/d;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/d;

    iget-object v4, v6, Lcom/perfectcorp/perfectlib/TagHandler$Type;->d:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_5
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v8, v9, v5}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catchall_4
    move-exception v0

    goto :goto_a

    :cond_9
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    sget-object v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/d;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/d;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/m4;->h:Ljava/util/List;

    invoke-virtual {v3, v8, v0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->k(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    const-string v0, "[insertToDb] exit transaction"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_a
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :goto_b
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :goto_c
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method
