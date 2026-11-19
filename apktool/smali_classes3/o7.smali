.class public final synthetic Lo7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lo7;->b:I

    iput-object p1, p0, Lo7;->c:Ljava/lang/Object;

    iput-object p2, p0, Lo7;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lo7;->b:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    iget-object v3, p0, Lo7;->d:Ljava/lang/Object;

    iget-object p0, p0, Lo7;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/batch/android/e/s;

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/batch/android/e/s;->a(Lcom/batch/android/e/s;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/perfectcorp/perfectlib/TagType;

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/perfectcorp/perfectlib/TagHandler;->c(Lcom/perfectcorp/perfectlib/TagType;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lcom/perfectcorp/perfectlib/PerfectEffect;

    check-cast v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[checkNeedToUpdateByEffect] query status. effect="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SkuHandler"

    invoke-static {v1, v0, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/SkuHandler;->d(Ljava/util/Collection;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    check-cast v3, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    const-string v0, "[downloadThumbnailsForOlderRecords] Start download the images that haven\'t downloaded"

    const-string v2, "SkinCare3RecommendationHandler"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;->d:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    sget-object v5, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;->SKIN_CARE_3:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;

    invoke-virtual {v0, v4, v5}, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao;->q(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[downloadThumbnailsForOlderRecords] "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " images need to be downloaded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v5}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v2, Lpc;

    invoke-direct {v2, p0, v1, v4, v3}, Lpc;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/util/concurrent/atomic/AtomicInteger;ILcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;)V

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    new-instance v0, Lpv0;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lpv0;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;)V

    return-object v0

    :pswitch_3
    check-cast p0, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase;->h()Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "skuGuid can\'t be null"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "skuItemGuid can\'t be null"

    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "skuGuid=? AND skuItemGuid=?"

    filled-new-array {p0, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase;->j(Ljava/lang/String;[Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;

    goto :goto_1

    :cond_0
    const-string v0, "Can not get mapped id, continue to try SkuAndShadeIdMapping"

    const/4 v1, 0x5

    const-string v2, "ProductMappingUtility"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/a;->h()Lcom/perfectcorp/perfectlib/ph/database/mcsdk/a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "skuGuid=?"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/a;->j(Ljava/lang/String;[Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :goto_1
    return-object p0

    :cond_1
    new-instance v0, Lcom/perfectcorp/perfectlib/exceptions/ProductMappingFailedException;

    const-string v1, "can not get mapped id, skuGuid = "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/exceptions/ProductMappingFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p0, Lcom/perfectcorp/perfectlib/exceptions/ProductMappingFailedException;

    const-string v0, "Product GUID and SKU GUID can not be empty"

    invoke-direct {p0, v0}, Lcom/perfectcorp/perfectlib/exceptions/ProductMappingFailedException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4
    check-cast p0, Lcom/perfectcorp/perfectlib/CameraView;

    check-cast v3, Lcom/perfectcorp/perfectlib/AccessoryCamWrapper;

    new-instance v0, Lcom/perfectcorp/perfectlib/MakeupCam;

    invoke-direct {v0, p0, v2, v3}, Lcom/perfectcorp/perfectlib/MakeupCam;-><init>(Lcom/perfectcorp/perfectlib/CameraView;ZLcom/perfectcorp/perfectlib/AccessoryCamWrapper;)V

    return-object v0

    :pswitch_5
    check-cast p0, Ljava/io/File;

    check-cast v3, Ljava/io/File;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/utility/FileDownloader;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0, v3}, Lcom/perfectcorp/common/downloader/UnzipHelper;->c(Ljava/io/File;Ljava/io/File;)V

    return-object v3

    :pswitch_6
    check-cast p0, Landroidx/media3/datasource/DataSourceBitmapLoader;

    check-cast v3, Landroid/net/Uri;

    iget-object v0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->b:Landroidx/media3/datasource/DataSource$Factory;

    invoke-interface {v0}, Landroidx/media3/datasource/DataSource$Factory;->a()Landroidx/media3/datasource/DataSource;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->c:Landroid/graphics/BitmapFactory$Options;

    iget v4, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->d:I

    iget-boolean p0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->e:Z

    :try_start_0
    new-instance v5, Landroidx/media3/datasource/DataSpec;

    invoke-direct {v5, v3}, Landroidx/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;)V

    invoke-interface {v0, v5}, Landroidx/media3/datasource/DataSource;->a(Landroidx/media3/datasource/DataSpec;)J

    const/16 v3, 0x400

    new-array v3, v3, [B

    move-object v5, v3

    move v3, v2

    :cond_3
    :goto_2
    const/4 v6, -0x1

    if-eq v2, v6, :cond_5

    array-length v2, v5

    if-ne v3, v2, :cond_4

    array-length v2, v5

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    move-object v5, v2

    :cond_4
    array-length v2, v5

    sub-int/2addr v2, v3

    invoke-interface {v0, v5, v3, v2}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result v2

    if-eq v2, v6, :cond_3

    add-int/2addr v3, v2

    goto :goto_2

    :cond_5
    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v3, v4, v1}, Landroidx/media3/datasource/BitmapUtil;->a([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz p0, :cond_6

    invoke-static {v1}, Landroidx/media3/datasource/BitmapUtil;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_6
    :goto_3
    invoke-interface {v0}, Landroidx/media3/datasource/DataSource;->close()V

    return-object v1

    :goto_4
    invoke-interface {v0}, Landroidx/media3/datasource/DataSource;->close()V

    throw p0

    :pswitch_7
    check-cast p0, Landroidx/media3/datasource/DataSourceBitmapLoader;

    check-cast v3, [B

    iget-boolean v0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->e:Z

    array-length v1, v3

    iget-object v2, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->c:Landroid/graphics/BitmapFactory$Options;

    iget p0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->d:I

    invoke-static {v3, v1, p0, v2}, Landroidx/media3/datasource/BitmapUtil;->a([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz v0, :cond_7

    invoke-static {p0}, Landroidx/media3/datasource/BitmapUtil;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_7
    return-object p0

    :pswitch_8
    check-cast p0, Ljava/util/concurrent/Callable;

    check-cast v3, Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/Reader;

    :try_start_1
    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/GsonBaseResponse;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    const-class v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sdk/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;

    invoke-direct {v5, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;-><init>(Ljava/io/Reader;)V

    iput-boolean v2, v5, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->c:Z

    invoke-virtual {v0, v5, v4}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->c(Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->f(Ljava/lang/Object;Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;)V

    sget-object v2, Lcom/perfectcorp/thirdparty/com/google/gson/internal/y;->a:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    if-nez v2, :cond_8

    goto :goto_5

    :cond_8
    move-object v4, v2

    :goto_5
    invoke-virtual {v4, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sdk/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Feature type \""

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" mapping file preloaded."

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "ContentPreloader"

    invoke-static {v1, v2, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sdk/a;->a()Ljava/util/List;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception v0

    if-eqz p0, :cond_a

    :try_start_2
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_6
    throw v0

    :pswitch_9
    check-cast p0, Lkotlin/jvm/functions/Function0;

    check-cast v3, Lcom/sightcall/libraries/archi/nucleus/Action;

    invoke-static {p0, v3}, Lcom/sightcall/libraries/archi/nucleus/CommandsKt$simpleCommand$1;->a(Lkotlin/jvm/functions/Function0;Lcom/sightcall/libraries/archi/nucleus/Action;)Lcom/sightcall/libraries/archi/nucleus/Action;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p0, Ljava/lang/Iterable;

    check-cast v3, Landroid/database/sqlite/SQLiteDatabase;

    sget-object v0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuDao;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v4

    invoke-virtual {v4}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v5

    if-nez v5, :cond_c

    :goto_8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    invoke-virtual {v4}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    iget-wide v5, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->j:J

    iget-wide v7, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->lastModified:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_b

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->f:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->cacheCleanerDeleteById(Ljava/lang/String;Z)V

    goto :goto_8

    :cond_d
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
