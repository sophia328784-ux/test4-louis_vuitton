.class public final synthetic Lsa0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;I)V
    .locals 0

    iput p2, p0, Lsa0;->b:I

    iput-object p1, p0, Lsa0;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 13

    iget v0, p0, Lsa0;->b:I

    iget-object p0, p0, Lsa0;->c:Ljava/util/List;

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SkuSetID IN ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->g(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 p0, 0x0

    :try_start_0
    const-string v2, "SkuSetList"

    const-string v5, "SkuSetID"

    const-string v6, "Type"

    const-string v7, "Vendor"

    const-string v8, "CustomerId"

    const-string v9, "LastModified"

    const-string v10, "MakeupVersion"

    const-string v11, "Metadata"

    const-string v12, "IsDeleted"

    filled-new-array/range {v5 .. v12}, [Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {p0}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    const-string v1, "SkuSetID"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "Type"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "Vendor"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "CustomerId"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "LastModified"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "MakeupVersion"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "Metadata"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "IsDeleted"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-lez v7, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    new-instance v8, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;

    invoke-direct {v8, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;-><init>(Ljava/lang/String;)V

    iput-object v2, v8, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;->b:Ljava/lang/String;

    iput-object v3, v8, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;->c:Ljava/lang/String;

    iput-object v4, v8, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;->d:Ljava/lang/String;

    iput-wide v9, v8, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;->e:J

    iput-object v5, v8, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;->f:Ljava/lang/String;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/GsonBaseResponse;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    const-class v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$b;

    invoke-virtual {v1, v6, v2}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$b;

    iput-object v1, v8, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;->g:Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$b;

    iput-boolean v7, v8, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;->h:Z

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;

    invoke-direct {v1, v8}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    goto/16 :goto_0

    :goto_2
    return-object v0

    :goto_3
    :try_start_2
    const-string v1, "SkuSetListDao"

    const-string v2, "[getSkuSets]"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p0}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw v0

    :pswitch_0
    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase;->h()Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase;

    move-result-object v0

    const-string v1, "productId"

    invoke-virtual {v0, v1, p0}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase;->k(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->c:Ljava/lang/String;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_3
    return-object v0

    :pswitch_2
    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Leq0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v0, v2}, Leq0;-><init>(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;I)V

    invoke-static {v0, v1}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    return-object p0

    :pswitch_3
    const/16 v0, 0x1e

    invoke-static {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->b(ILjava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
