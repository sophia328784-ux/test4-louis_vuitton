.class public abstract Lcom/perfectcorp/perfectlib/ph/template/e$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/template/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Z)Ljava/util/List;
    .locals 13

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ", actualSkuSetId="

    const-string v2, "[getSupportedPatternInfos] skuSetId="

    invoke-static {v2, p0, v1, v0}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    const-string v4, "PanelDataCenter"

    invoke-static {v3, v4, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string v5, "SkuSetListSupportedPattern"

    sget-object v6, Lcom/perfectcorp/perfectlib/hc/database/Contract$SkuSetListSupportedPattern;->a:[Ljava/lang/String;

    const-string v7, "SkuSetId"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v5, v6, v7, v8}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->f(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v3}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v1, v3

    goto :goto_0

    :cond_0
    :try_start_2
    sget-object v5, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v5, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    :cond_1
    const-string v6, "SupportedPatternGuid"

    invoke-static {v3, v6}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->g(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Metadata"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/perfectcorp/common/gson/GsonHelper;->b:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    const-class v9, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-virtual {v8, v7, v9}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    const-string v9, "skuSetGuid"

    invoke-virtual {v7, v9, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->p(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "supportedPatternGuid"

    invoke-virtual {v7, v9, v6}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->p(Ljava/lang/String;Ljava/lang/String;)V

    const-class v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i;

    invoke-virtual {v8, v7, v6}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->h(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i;

    invoke-virtual {v5, v6}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_0
    :try_start_3
    const-string p1, "SkuSetListSupportedPatternDao"

    const-string v0, "[getBySkuSetId] failed"

    invoke-static {p1, v0, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p0

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw p0

    :cond_2
    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/e$e;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    :goto_1
    invoke-static {v5}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[getSupportedPatternInfos] supportedPatterns is empty, skuSetId="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_3
    if-eqz p1, :cond_4

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/e$e;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    :cond_4
    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/e$e;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    :goto_2
    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i;

    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i;->colorReferences:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v7, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i;->colorReferences:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, v8, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;->paletteGuid:Ljava/lang/String;

    iget-object v12, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;->c:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_5

    :cond_6
    move-object v10, v1

    :goto_5
    if-nez v10, :cond_7

    const-string v9, " without skuSetItem guid="

    invoke-static {v2, p0, v9}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v8, v8, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i$a;->paletteGuid:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " which in supportedPattern"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    invoke-static {v10, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    iget-object v5, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i;->supportedPatternGuid:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;)V
    .locals 12

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->skuSetId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->type:Ljava/lang/String;

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->vendor:Ljava/lang/String;

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->customerId:Ljava/lang/String;

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;->d:Ljava/lang/String;

    iget-wide v1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->lastModified:J

    iput-wide v1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;->e:J

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->makeupVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;->f:Ljava/lang/String;

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$b;

    invoke-direct {v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$b;-><init>()V

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$b;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->thumbnail:Ljava/lang/String;

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$b;->thumbnail:Ljava/lang/String;

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->shoppingUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$b;->shoppingUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;->g:Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;->h:Z

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;

    invoke-direct {v2, v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;)V

    const-string v0, "SkuSetDao"

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->a()Landroid/content/ContentValues;

    move-result-object v2

    :try_start_0
    const-string v3, "SkuSet"

    invoke-static {p0, v3}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    const/4 v8, 0x5

    const-string v9, "db.insert failed. id: "

    if-gez v7, :cond_0

    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v0, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$a;

    new-instance v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c$a;

    iget-object v7, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->skuSetId:Ljava/lang/String;

    invoke-direct {v3, v7}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c$a;-><init>(Ljava/lang/String;)V

    iget-object v7, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$a;->skuGuid:Ljava/lang/String;

    iput-object v7, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c$a;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$a;->itemGuid:Ljava/lang/String;

    iput-object v2, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c$a;->c:Ljava/lang/String;

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/GsonBaseResponse;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    sget-object v7, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {v2, v7}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c$a;->d:Ljava/lang/String;

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;

    invoke-direct {v2, v3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c$a;)V

    const-string v3, "SkuSetItemDao"

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;->a()Landroid/content/ContentValues;

    move-result-object v2

    :try_start_2
    const-string v7, "SkuSetItem"

    invoke-static {p0, v7}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    cmp-long v2, v10, v5

    if-gez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v3, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    const-string p1, "[insert]"

    invoke-static {v3, p1, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_2
    move v0, v1

    :goto_2
    iget-object v2, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->supportedPatterns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "[insertOrReplace] failed"

    const-string v4, "Metadata"

    const-string v5, "SkuSetId"

    if-ge v0, v2, :cond_3

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->skuSetId:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    add-int/lit8 v7, v0, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v2, v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "%s_sp_%02d"

    invoke-static {v6, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->supportedPatterns:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v8, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SupportedPatternGuid"

    invoke-virtual {v8, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/perfectcorp/common/gson/GsonHelper;->b:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    invoke-virtual {v2, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    :try_start_3
    const-string v0, "SkuSetSupportedPattern"

    invoke-static {p0, v0, v8}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->j(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move v0, v7

    goto :goto_2

    :catchall_2
    move-exception p0

    const-string p1, "SkuSetSupportedPatternDao"

    invoke-static {p1, v3, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_3
    :goto_3
    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->wearingStyle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->skuSetId:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "%s_ws_%02d"

    invoke-static {v2, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->wearingStyle:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v7, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "WearingStyleGuid"

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/perfectcorp/common/gson/GsonHelper;->b:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    :try_start_4
    const-string v0, "SkuSetWearingStyle"

    invoke-static {p0, v0, v7}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->j(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move v1, v6

    goto :goto_3

    :catchall_3
    move-exception p0

    const-string p1, "SkuSetWearingStyleDao"

    invoke-static {p1, v3, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_4
    return-void

    :goto_4
    const-string p1, "[insertOrReplace]"

    invoke-static {v0, p1, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static c(Ljava/lang/String;Z)Ljava/util/List;
    .locals 12

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ", actualSkuSetId="

    const-string v2, "[getWearingStyleColorReferenceInfos] skuSetId="

    invoke-static {v2, p0, v1, v0}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    const-string v4, "PanelDataCenter"

    invoke-static {v3, v4, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/e$e;->k(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/e$e;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[getWearingStyleColorReferenceInfos] wearingStyles is empty, skuSetId="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/e$e;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/e$e;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    :goto_1
    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->colorReferences:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v6, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->colorReferences:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$a;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$a;->paletteGuid:Ljava/lang/String;

    iget-object v11, v9, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;->c:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    if-nez v9, :cond_5

    const-string v8, " without skuSetItem guid="

    invoke-static {v2, p0, v8}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v7, v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$a;->paletteGuid:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " which in supportedPattern"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-static {v9, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->wearingStyleGuid:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;)V
    .locals 12

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->skuSetId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->type:Ljava/lang/String;

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->vendor:Ljava/lang/String;

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->customerId:Ljava/lang/String;

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;->d:Ljava/lang/String;

    iget-wide v1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->lastModified:J

    iput-wide v1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;->e:J

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->makeupVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;->f:Ljava/lang/String;

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$b;

    invoke-direct {v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$b;-><init>()V

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$b;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->thumbnail:Ljava/lang/String;

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$b;->thumbnail:Ljava/lang/String;

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->shoppingUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$b;->shoppingUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;->g:Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;->h:Z

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;

    invoke-direct {v2, v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a$a;)V

    const-string v0, "SkuSetListDao"

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->a()Landroid/content/ContentValues;

    move-result-object v2

    :try_start_0
    const-string v3, "SkuSetList"

    invoke-static {p0, v3}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    const/4 v8, 0x5

    const-string v9, "db.insert failed. id: "

    if-gez v7, :cond_0

    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v0, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$a;

    new-instance v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c$a;

    iget-object v7, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->skuSetId:Ljava/lang/String;

    invoke-direct {v3, v7}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c$a;-><init>(Ljava/lang/String;)V

    iget-object v7, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$a;->skuGuid:Ljava/lang/String;

    iput-object v7, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c$a;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$a;->itemGuid:Ljava/lang/String;

    iput-object v2, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c$a;->c:Ljava/lang/String;

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/GsonBaseResponse;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    sget-object v7, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {v2, v7}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c$a;->d:Ljava/lang/String;

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;

    invoke-direct {v2, v3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c$a;)V

    const-string v3, "SkuSetListItemDao"

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;->a()Landroid/content/ContentValues;

    move-result-object v2

    :try_start_2
    const-string v7, "SkuSetListItem"

    invoke-static {p0, v7}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    cmp-long v2, v10, v5

    if-gez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v3, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    const-string p1, "[insert]"

    invoke-static {v3, p1, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_2
    move v0, v1

    :goto_2
    iget-object v2, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->supportedPatterns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "[insertOrReplace] failed"

    const-string v4, "Metadata"

    const-string v5, "SkuSetId"

    if-ge v0, v2, :cond_3

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->skuSetId:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    add-int/lit8 v7, v0, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v2, v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "%s_sp_%02d"

    invoke-static {v6, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->supportedPatterns:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v8, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SupportedPatternGuid"

    invoke-virtual {v8, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/perfectcorp/common/gson/GsonHelper;->b:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    invoke-virtual {v2, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    :try_start_3
    const-string v0, "SkuSetListSupportedPattern"

    invoke-static {p0, v0, v8}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->j(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move v0, v7

    goto :goto_2

    :catchall_2
    move-exception p0

    const-string p1, "SkuSetListSupportedPatternDao"

    invoke-static {p1, v3, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_3
    :goto_3
    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->wearingStyle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->skuSetId:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "%s_ws_%02d"

    invoke-static {v2, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->wearingStyle:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v7, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "WearingStyleGuid"

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/perfectcorp/common/gson/GsonHelper;->b:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    :try_start_4
    const-string v0, "SkuSetListWearingStyle"

    invoke-static {p0, v0, v7}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->j(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move v1, v6

    goto :goto_3

    :catchall_3
    move-exception p0

    const-string p1, "SkuSetListWearingStyleDao"

    invoke-static {p1, v3, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_4
    return-void

    :goto_4
    const-string p1, "[insertOrReplace]"

    invoke-static {v0, p1, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static e(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;
    .locals 1

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->e(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;Z)Ljava/util/List;
    .locals 12

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ", actualSkuSetId="

    const-string v2, "[getWearingStylePatternInfos] skuSetId="

    invoke-static {v2, p0, v1, v0}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    const-string v4, "PanelDataCenter"

    invoke-static {v3, v4, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/e$e;->k(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/e$e;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[getWearingStylePatternInfos] wearingStyles is empty, skuSetId="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/e$e;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/e$e;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    :goto_1
    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->patterns:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v6, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->patterns:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$b;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$b;->itemGuid:Ljava/lang/String;

    iget-object v11, v9, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;->c:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    if-nez v9, :cond_5

    const-string v8, " without skuSetItem guid="

    invoke-static {v2, p0, v8}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v7, v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k$b;->itemGuid:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " which in supportedPattern"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-static {v9, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;->wearingStyleGuid:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;)Ljava/util/List;
    .locals 13

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "SkuSetId=?"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const-string p0, "Metadata"

    const-string v9, "ItemGuid"

    const-string v10, "SkuGuid"

    const-string v11, "SkuSetId"

    const/4 v12, 0x0

    :try_start_0
    const-string v1, "SkuSetItem"

    filled-new-array {v11, v10, v9, p0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    invoke-static {v12}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v12}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    check-cast p0, Ljava/util/List;

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c$a;

    invoke-direct {v5, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c$a;-><init>(Ljava/lang/String;)V

    iput-object v2, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c$a;->b:Ljava/lang/String;

    iput-object v3, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c$a;->c:Ljava/lang/String;

    iput-object v4, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c$a;->d:Ljava/lang/String;

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;

    invoke-direct {v1, v5}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c$a;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    invoke-static {v12}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object v0

    :goto_0
    :try_start_2
    const-string v0, "SkuSetItemDao"

    const-string v1, "[getSkuSetItems]"

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v12}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw p0
.end method

.method public static h(Ljava/lang/String;)Ljava/util/List;
    .locals 6

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "SkuSetSupportedPattern"

    sget-object v3, Lcom/perfectcorp/perfectlib/hc/database/Contract$SkuSetSupportedPattern;->a:[Ljava/lang/String;

    const-string v4, "SkuSetId"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v2, v3, v4, v5}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->f(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    :cond_1
    const-string v2, "SupportedPatternGuid"

    invoke-static {v1, v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->g(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Metadata"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/perfectcorp/common/gson/GsonHelper;->b:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    const-class v5, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-virtual {v4, v3, v5}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    const-string v5, "skuSetGuid"

    invoke-virtual {v3, v5, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->p(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "supportedPatternGuid"

    invoke-virtual {v3, v5, v2}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->p(Ljava/lang/String;Ljava/lang/String;)V

    const-class v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i;

    invoke-virtual {v4, v3, v2}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->h(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/i;

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object p0

    :goto_0
    :try_start_2
    const-string v0, "SkuSetSupportedPatternDao"

    const-string v2, "[getBySkuSetId] failed"

    invoke-static {v0, v2, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw p0
.end method

.method public static i(Ljava/lang/String;)Ljava/util/List;
    .locals 6

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "SkuSetWearingStyle"

    sget-object v3, Lcom/perfectcorp/perfectlib/hc/database/Contract$SkuSetWearingStyle;->a:[Ljava/lang/String;

    const-string v4, "SkuSetId"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v2, v3, v4, v5}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->f(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    :cond_1
    const-string v2, "WearingStyleGuid"

    invoke-static {v1, v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->g(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Metadata"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/perfectcorp/common/gson/GsonHelper;->b:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    const-class v5, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-virtual {v4, v3, v5}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    const-string v5, "skuSetGuid"

    invoke-virtual {v3, v5, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->p(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "wearingStyleGuid"

    invoke-virtual {v3, v5, v2}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->p(Ljava/lang/String;Ljava/lang/String;)V

    const-class v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;

    invoke-virtual {v4, v3, v2}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->h(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object p0

    :goto_0
    :try_start_2
    const-string v0, "SkuSetWearingStyleDao"

    const-string v2, "[getBySkuSetId] failed"

    invoke-static {v0, v2, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw p0
.end method

.method public static j(Ljava/lang/String;)Ljava/util/List;
    .locals 13

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "SkuSetId=?"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const-string p0, "Metadata"

    const-string v9, "ItemGuid"

    const-string v10, "SkuGuid"

    const-string v11, "SkuSetId"

    const/4 v12, 0x0

    :try_start_0
    const-string v1, "SkuSetListItem"

    filled-new-array {v11, v10, v9, p0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    invoke-static {v12}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v12}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    check-cast p0, Ljava/util/List;

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c$a;

    invoke-direct {v5, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c$a;-><init>(Ljava/lang/String;)V

    iput-object v2, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c$a;->b:Ljava/lang/String;

    iput-object v3, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c$a;->c:Ljava/lang/String;

    iput-object v4, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c$a;->d:Ljava/lang/String;

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;

    invoke-direct {v1, v5}, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/c$a;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    invoke-static {v12}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object v0

    :goto_0
    :try_start_2
    const-string v0, "SkuSetListItemDao"

    const-string v1, "[getSkuSetItems]"

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v12}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw p0
.end method

.method public static k(Ljava/lang/String;)Ljava/util/List;
    .locals 6

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "SkuSetListWearingStyle"

    sget-object v3, Lcom/perfectcorp/perfectlib/hc/database/Contract$SkuSetListWearingStyle;->a:[Ljava/lang/String;

    const-string v4, "SkuSetId"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v2, v3, v4, v5}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->f(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    :cond_1
    const-string v2, "WearingStyleGuid"

    invoke-static {v1, v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->g(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Metadata"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/perfectcorp/common/gson/GsonHelper;->b:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    const-class v5, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-virtual {v4, v3, v5}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    const-string v5, "skuSetGuid"

    invoke-virtual {v3, v5, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->p(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "wearingStyleGuid"

    invoke-virtual {v3, v5, v2}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->p(Ljava/lang/String;Ljava/lang/String;)V

    const-class v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;

    invoke-virtual {v4, v3, v2}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->h(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/k;

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    return-object p0

    :goto_0
    :try_start_2
    const-string v0, "SkuSetListWearingStyleDao"

    const-string v2, "[getBySkuSetId] failed"

    invoke-static {v0, v2, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw p0
.end method
