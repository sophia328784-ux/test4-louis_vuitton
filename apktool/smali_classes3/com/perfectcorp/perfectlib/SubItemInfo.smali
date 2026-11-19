.class final Lcom/perfectcorp/perfectlib/SubItemInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SubItemInfo;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SubItemInfo;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SubItemInfo;->c:Ljava/util/List;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/SubItemInfo;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SubItemInfo;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;->e:Ljava/util/List;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/SubItemInfo;->e:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;)Lcom/perfectcorp/perfectlib/SubItemInfo;
    .locals 3

    new-instance v0, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;-><init>()V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->e:Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;->b()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/perfectcorp/perfectlib/ymk/utility/Nulls;->a:I

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;->d:Ljava/lang/String;

    new-instance p0, Lcom/perfectcorp/perfectlib/SubItemInfo;

    invoke-direct {p0, v0}, Lcom/perfectcorp/perfectlib/SubItemInfo;-><init>(Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;)V

    return-object p0
.end method

.method public static b(Lcom/perfectcorp/perfectlib/ph/template/p;)Lcom/perfectcorp/perfectlib/SubItemInfo;
    .locals 4

    new-instance v0, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;-><init>()V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/template/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;->a(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/perfectcorp/perfectlib/ph/template/p;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v3, v1

    :cond_1
    :goto_0
    sget v1, Lcom/perfectcorp/perfectlib/ymk/utility/Nulls;->a:I

    invoke-static {v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/p;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;->d:Ljava/lang/String;

    new-instance p0, Lcom/perfectcorp/perfectlib/SubItemInfo;

    invoke-direct {p0, v0}, Lcom/perfectcorp/perfectlib/SubItemInfo;-><init>(Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;)V

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "append file scheme failed with path="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SubItemInfo"

    invoke-static {v2, v1, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object p0
.end method

.method public static d(Lcom/perfectcorp/perfectlib/SkuInfo;)Ljava/util/List;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/SkuInfo;->b:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/SkuInfo;->c:Ljava/lang/String;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :cond_0
    sget-object v0, Lcom/perfectcorp/perfectlib/SubItemInfo$1;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_f

    const/4 v3, 0x2

    if-eq v0, v3, :cond_f

    const/4 v3, 0x3

    if-eq v0, v3, :cond_f

    const/4 v3, 0x4

    if-eq v0, v3, :cond_f

    const/4 v3, 0x5

    if-eq v0, v3, :cond_f

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/SubItemInfo;->f(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v3

    const-string v5, ""

    const-string v6, "SubItemInfo"

    const/4 v7, 0x0

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->x(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;

    move-result-object v3

    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    :try_start_0
    const-string v0, "PaletteColorIndex"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "PaletteGUID=? AND PatternPaletteInfo.isDeleted=0"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object v13, v9

    :try_start_1
    const-string v9, "PatternPaletteInfo"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v14, v13

    :try_start_2
    const-string v13, "PaletteColorIndex"

    const-string v15, "_id ASC"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v16, 0x0

    move-object/from16 v17, v14

    const/4 v14, 0x0

    move-object/from16 v4, v17

    const/16 p0, 0x0

    :try_start_3
    invoke-virtual/range {v8 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v9}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->f(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    invoke-static {v9}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    :try_start_5
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :cond_2
    aget-object v11, v10, v7

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v11, :cond_2

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_1
    move-object/from16 v9, p0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v4, v14

    :goto_2
    const/16 p0, 0x0

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v4, v13

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object v4, v9

    goto :goto_2

    :goto_3
    :try_start_6
    const-string v10, "PatternPaletteInfoDao"

    const-string v11, "getPaletteColorIndexByPaletteID failed"

    invoke-static {v10, v11, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_0

    :goto_4
    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_6

    :cond_3
    invoke-static {v3}, Lcom/perfectcorp/perfectlib/ph/template/e;->f(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;)Ljava/util/List;

    move-result-object v3

    new-instance v5, Lxx0;

    const/16 v7, 0xb

    invoke-direct {v5, v7}, Lxx0;-><init>(I)V

    invoke-static {v3, v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->c(Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Ljava/util/AbstractList;

    move-result-object v3

    invoke-static {v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v7, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;

    invoke-direct {v7}, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;-><init>()V

    invoke-static {v2, v5}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;->a(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5}, Lcom/perfectcorp/perfectlib/SubItemInfo;->e(Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/perfectcorp/perfectlib/ymk/utility/Nulls;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v7, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;->c:Ljava/util/List;

    new-instance v5, Lcom/perfectcorp/perfectlib/SubItemInfo;

    invoke-direct {v5, v7}, Lcom/perfectcorp/perfectlib/SubItemInfo;-><init>(Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_4
    :goto_6
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/g;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->a()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;

    move-result-object v0

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->paletteColor:Ljava/util/List;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/e;->g(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v3, Lxx0;

    const/16 v7, 0xa

    invoke-direct {v3, v7}, Lxx0;-><init>(I)V

    invoke-static {v0, v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->c(Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Ljava/util/AbstractList;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v0

    new-instance v3, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;

    invoke-direct {v3}, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;-><init>()V

    sget-object v7, Lcom/perfectcorp/perfectlib/SubItemInfo$1;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v7, v8

    const-string v9, "0"

    const/4 v10, 0x7

    const/4 v11, 0x6

    if-eq v8, v11, :cond_5

    if-eq v8, v10, :cond_5

    move-object v8, v5

    goto :goto_7

    :cond_5
    move-object v8, v9

    :goto_7
    invoke-static {v2, v8}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v11, :cond_6

    if-eq v7, v10, :cond_6

    goto :goto_8

    :cond_6
    move-object v5, v9

    :goto_8
    invoke-static {v5}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v0, v5}, Lcom/perfectcorp/perfectlib/SubItemInfo;->e(Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/utility/Nulls;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v3, Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;->c:Ljava/util/List;

    new-instance v0, Lcom/perfectcorp/perfectlib/SubItemInfo;

    invoke-direct {v0, v3}, Lcom/perfectcorp/perfectlib/SubItemInfo;-><init>(Lcom/perfectcorp/perfectlib/SubItemInfo$Builder;)V

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object v0, v4

    goto :goto_b

    :catchall_5
    move-exception v0

    invoke-static {v9}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw v0

    :cond_8
    const/16 p0, 0x0

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->b(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-static {v3, v2, v5, v7}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/c;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v3

    goto :goto_9

    :cond_9
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_9
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->w(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;

    move-result-object v5

    if-eqz v5, :cond_b

    iget-object v4, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

    invoke-static {v1, v4}, Lcom/perfectcorp/perfectlib/SubItemInfo;->g(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {v5}, Lcom/perfectcorp/perfectlib/SubItemInfo;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;)Lcom/perfectcorp/perfectlib/SubItemInfo;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "[getSubItems] can not get pattern, ID="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_c
    :goto_b
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[getSubItems] beautyMode="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " skuItem guid="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " subItem size="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", is it correct?"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    :cond_e
    const-string v0, "Pattern major isn\'t supported."

    invoke-static {v0}, Lmt;->i(Ljava/lang/String;)V

    return-object p0

    :cond_f
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public static e(Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;Ljava/util/List;)Ljava/util/List;
    .locals 2

    invoke-static {p1}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static f(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/SubItemInfo$1;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static g(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;)Z
    .locals 2

    sget-object v0, Lcom/perfectcorp/perfectlib/SubItemInfo$1;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    return v1

    :cond_0
    :pswitch_0
    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;->b()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
