.class public final Lcom/vuitton/android/data/repository/WatchRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/WatchRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/repository/WatchRepositoryImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u0014BK\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0008\u0008\u0001\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/WatchRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/WatchRepository;",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/data/api/connectivity/WatchApiV2;",
        "watchApiV2",
        "Lcom/vuitton/android/data/api/connectivity/BffWatchApi;",
        "bffWatchApi",
        "Lcom/vuitton/android/data/api/bff/user/SendEmailApi;",
        "sendEmailApi",
        "Lcom/vuitton/android/data/api/bff/catalog/ProductApi;",
        "productApi",
        "Landroid/content/SharedPreferences;",
        "sharedPreferences",
        "Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;",
        "connectedObjectLocalDataSource",
        "Lcom/vuitton/android/domain/repository/AuthTokenRepository;",
        "authTokenRepository",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/api/connectivity/WatchApiV2;Lcom/vuitton/android/data/api/connectivity/BffWatchApi;Lcom/vuitton/android/data/api/bff/user/SendEmailApi;Lcom/vuitton/android/data/api/bff/catalog/ProductApi;Landroid/content/SharedPreferences;Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;Lcom/vuitton/android/domain/repository/AuthTokenRepository;)V",
        "Companion",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final i:Lcom/vuitton/android/data/repository/WatchRepositoryImpl$Companion;

.field public static final j:Ljava/lang/String;


# instance fields
.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Lcom/vuitton/android/data/api/connectivity/WatchApiV2;

.field public final c:Lcom/vuitton/android/data/api/connectivity/BffWatchApi;

.field public final d:Lcom/vuitton/android/data/api/bff/user/SendEmailApi;

.field public final e:Lcom/vuitton/android/data/api/bff/catalog/ProductApi;

.field public final f:Landroid/content/SharedPreferences;

.field public final g:Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;

.field public final h:Lcom/vuitton/android/domain/repository/AuthTokenRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl;->i:Lcom/vuitton/android/data/repository/WatchRepositoryImpl$Companion;

    const-string v0, "WatchRepositoryImpl"

    sput-object v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/api/connectivity/WatchApiV2;Lcom/vuitton/android/data/api/connectivity/BffWatchApi;Lcom/vuitton/android/data/api/bff/user/SendEmailApi;Lcom/vuitton/android/data/api/bff/catalog/ProductApi;Landroid/content/SharedPreferences;Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;Lcom/vuitton/android/domain/repository/AuthTokenRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl;->b:Lcom/vuitton/android/data/api/connectivity/WatchApiV2;

    iput-object p3, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl;->c:Lcom/vuitton/android/data/api/connectivity/BffWatchApi;

    iput-object p4, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl;->d:Lcom/vuitton/android/data/api/bff/user/SendEmailApi;

    iput-object p5, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl;->e:Lcom/vuitton/android/data/api/bff/catalog/ProductApi;

    iput-object p6, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl;->f:Landroid/content/SharedPreferences;

    iput-object p7, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl;->g:Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;

    iput-object p8, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl;->h:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    return-void
.end method

.method public static final j(Lcom/vuitton/android/data/repository/WatchRepositoryImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    if-nez p1, :cond_0

    move-object p1, p0

    :cond_0
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "QA081Z"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    const-string p0, "QBBB93"

    return-object p0

    :sswitch_1
    const-string v0, "QA080Z"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    const-string p0, "QBBB94"

    return-object p0

    :sswitch_2
    const-string v0, "QA052Z"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    const-string p0, "QBBB87"

    return-object p0

    :sswitch_3
    const-string v0, "QA051Z"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    const-string p0, "QBBB86"

    return-object p0

    :sswitch_4
    const-string v0, "QA050Z"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    const-string p0, "QBBB85"

    :cond_6
    :goto_0
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x721cdf01 -> :sswitch_4
        -0x721cdee2 -> :sswitch_3
        -0x721cdec3 -> :sswitch_2
        -0x721cd3be -> :sswitch_1
        -0x721cd39f -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;)Lcom/vuitton/foundation/model/domain/model/connectivity/common/Video;
    .locals 1

    iget-object p0, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionHome;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionHome;->a:Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;->a:Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionPromise;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionPromise;->h:Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchVideo;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    new-instance p1, Lcom/vuitton/foundation/model/domain/model/connectivity/common/Video;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchVideo;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchVideo;->b:Ljava/lang/String;

    invoke-direct {p1, v0, p0}, Lcom/vuitton/foundation/model/domain/model/connectivity/common/Video;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_1
    new-instance p0, Lcom/vuitton/android/data/exception/ConnectivityException$NoWatchVideoException;

    invoke-direct {p0}, Lcom/vuitton/android/data/exception/ConnectivityException$NoWatchVideoException;-><init>()V

    throw p0
.end method

.method public final b(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl;->g:Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iput-object v1, v0, Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;->a:Ljava/util/ArrayList;

    :cond_0
    iget-object p1, v0, Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;->a:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    sget-object p1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_4

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;

    invoke-direct {v0, p0, v1}, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;-><init>(Lcom/vuitton/android/data/repository/WatchRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v0, p2}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_3

    return-object p0

    :cond_3
    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_4
    return-object p1
.end method

.method public final c(Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    sget-object p0, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatchTutorialCategoryList$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatchTutorialCategoryList$2;-><init>(Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v0, p2}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final d(Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 2

    sget-object p0, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatchfacePresentationList$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatchfacePresentationList$2;-><init>(Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v0, p3}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl;->g:Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;

    instance-of v5, v3, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$renameWatch$1;

    if-eqz v5, :cond_0

    move-object v5, v3

    check-cast v5, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$renameWatch$1;

    iget v6, v5, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$renameWatch$1;->f:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_0

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$renameWatch$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v5, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$renameWatch$1;

    invoke-direct {v5, v0, v3}, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$renameWatch$1;-><init>(Lcom/vuitton/android/data/repository/WatchRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v3, v5, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$renameWatch$1;->d:Ljava/lang/Object;

    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v7, v5, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$renameWatch$1;->f:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_2

    if-ne v7, v9, :cond_1

    iget-object v0, v5, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$renameWatch$1;->c:Ljava/lang/String;

    iget-object v1, v5, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$renameWatch$1;->b:Ljava/lang/String;

    :try_start_0
    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v14, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_2
    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v0, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl;->c:Lcom/vuitton/android/data/api/connectivity/BffWatchApi;

    new-instance v3, Lcom/vuitton/android/data/dto/connectivity/watch/RenameWatchDto;

    invoke-direct {v3, v2}, Lcom/vuitton/android/data/dto/connectivity/watch/RenameWatchDto;-><init>(Ljava/lang/String;)V

    iput-object v1, v5, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$renameWatch$1;->b:Ljava/lang/String;

    iput-object v2, v5, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$renameWatch$1;->c:Ljava/lang/String;

    iput v9, v5, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$renameWatch$1;->f:I

    invoke-interface {v0, v1, v3, v5}, Lcom/vuitton/android/data/api/connectivity/BffWatchApi;->renameWatch(Ljava/lang/String;Lcom/vuitton/android/data/dto/connectivity/watch/RenameWatchDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_3

    return-object v6

    :cond_3
    move-object v14, v2

    :goto_1
    iget-object v0, v4, Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_4
    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;

    iget-object v5, v3, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;->a:Ljava/lang/String;

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v10, v3, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;->a:Ljava/lang/String;

    iget-object v11, v3, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;->b:Ljava/lang/String;

    iget-object v12, v3, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;->c:Ljava/lang/String;

    iget-object v13, v3, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;->d:Ljava/lang/String;

    iget-object v15, v3, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;->f:Ljava/lang/String;

    iget-object v5, v3, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;->g:Ljava/lang/String;

    iget v6, v3, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;->h:I

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;->i:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;

    const/16 v19, 0x0

    move-object/from16 v18, v3

    move-object/from16 v16, v5

    move/from16 v17, v6

    invoke-direct/range {v9 .. v19}, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v3, v9

    :cond_5
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    iput-object v2, v4, Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;->a:Ljava/util/ArrayList;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance v1, Lkotlin/Result;

    invoke-direct {v1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_4
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_8

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, v1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_5
    check-cast v1, Lkotlin/Result;

    iget-object v0, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {v0, v8}, Lcom/vuitton/android/data/exception/NetworkExceptionMapperKt;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_8
    throw v0
.end method

.method public final f(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p4, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$sendWatchEmail$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$sendWatchEmail$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$sendWatchEmail$1;->j:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$sendWatchEmail$1;->j:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$sendWatchEmail$1;

    invoke-direct {v0, p0, p4}, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$sendWatchEmail$1;-><init>(Lcom/vuitton/android/data/repository/WatchRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p4, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$sendWatchEmail$1;->h:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$sendWatchEmail$1;->j:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    iget p1, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$sendWatchEmail$1;->g:I

    iget p2, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$sendWatchEmail$1;->f:I

    iget p3, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$sendWatchEmail$1;->e:I

    iget v2, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$sendWatchEmail$1;->d:I

    iget-object v4, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$sendWatchEmail$1;->c:Ljava/lang/String;

    iget-object v6, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$sendWatchEmail$1;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    :try_start_1
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p4, Lkotlin/Result;

    iget-object p4, p4, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v8, v2

    move v2, p1

    move-object p1, v6

    move-object v6, p4

    move p4, v8

    move v8, p3

    move p3, p2

    move-object p2, v4

    move v4, v8

    goto :goto_1

    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object p4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p4, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl;->h:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    iput-object p1, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$sendWatchEmail$1;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput-object p2, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$sendWatchEmail$1;->c:Ljava/lang/String;

    iput p3, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$sendWatchEmail$1;->d:I

    const/4 v2, 0x0

    iput v2, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$sendWatchEmail$1;->e:I

    iput v2, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$sendWatchEmail$1;->f:I

    iput v2, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$sendWatchEmail$1;->g:I

    iput v4, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$sendWatchEmail$1;->j:I

    invoke-interface {p4, v0}, Lcom/vuitton/android/domain/repository/AuthTokenRepository;->e(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v6, p4

    move v4, v2

    move p4, p3

    move p3, v4

    :goto_1
    invoke-static {v6}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v6, Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl;->d:Lcom/vuitton/android/data/api/bff/user/SendEmailApi;

    new-instance v7, Lcom/vuitton/android/data/dto/connectivity/watch/SendWatchEmailParamDto;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;

    invoke-virtual {p1}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;->h()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v7, p1, p2, v6, p4}, Lcom/vuitton/android/data/dto/connectivity/watch/SendWatchEmailParamDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v5, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$sendWatchEmail$1;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput-object v5, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$sendWatchEmail$1;->c:Ljava/lang/String;

    iput p4, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$sendWatchEmail$1;->d:I

    iput v4, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$sendWatchEmail$1;->e:I

    iput p3, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$sendWatchEmail$1;->f:I

    iput v2, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$sendWatchEmail$1;->g:I

    iput v3, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$sendWatchEmail$1;->j:I

    invoke-interface {p0, v7, v0}, Lcom/vuitton/android/data/api/bff/user/SendEmailApi;->sendWatchEmail(Lcom/vuitton/android/data/dto/connectivity/watch/SendWatchEmailParamDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_4
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_5
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_6

    goto :goto_6

    :cond_6
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_7

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_6
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p0, v5}, Lcom/vuitton/android/data/exception/NetworkExceptionMapperKt;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    throw p0
.end method

.method public final g(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/connectivity/watch/PairWatchV2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p3, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$pairWatchV2$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$pairWatchV2$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$pairWatchV2$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$pairWatchV2$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$pairWatchV2$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$pairWatchV2$1;-><init>(Lcom/vuitton/android/data/repository/WatchRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$pairWatchV2$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$pairWatchV2$1;->f:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$pairWatchV2$1;->c:Lcom/vuitton/foundation/model/domain/model/connectivity/watch/PairWatchV2;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_2
    iget-object p1, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$pairWatchV2$1;->c:Lcom/vuitton/foundation/model/domain/model/connectivity/watch/PairWatchV2;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_3
    iget-object p2, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$pairWatchV2$1;->c:Lcom/vuitton/foundation/model/domain/model/connectivity/watch/PairWatchV2;

    iget-object p1, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$pairWatchV2$1;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    iget-object p3, p3, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$pairWatchV2$1;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput-object p2, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$pairWatchV2$1;->c:Lcom/vuitton/foundation/model/domain/model/connectivity/watch/PairWatchV2;

    iput v5, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$pairWatchV2$1;->f:I

    iget-object p3, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl;->h:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    invoke-interface {p3, v0}, Lcom/vuitton/android/domain/repository/AuthTokenRepository;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    goto :goto_5

    :cond_5
    :goto_1
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p3, Ljava/lang/String;

    :try_start_1
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v2, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl;->b:Lcom/vuitton/android/data/api/connectivity/WatchApiV2;

    invoke-static {p3}, Lcom/vuitton/android/data/repository/TokenExtKt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/vuitton/android/data/dto/connectivity/watch/PairWatchV2Dto;

    iget-object v8, p2, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/PairWatchV2;->a:Ljava/lang/String;

    iget-object v9, p2, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/PairWatchV2;->b:Ljava/lang/String;

    iget-object v10, p2, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/PairWatchV2;->c:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v10}, Lcom/vuitton/android/data/dto/connectivity/watch/PairWatchV2Dto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;

    invoke-virtual {p1}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;->h()Ljava/lang/String;

    move-result-object p1

    iput-object v6, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$pairWatchV2$1;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput-object p2, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$pairWatchV2$1;->c:Lcom/vuitton/foundation/model/domain/model/connectivity/watch/PairWatchV2;

    iput v4, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$pairWatchV2$1;->f:I

    invoke-interface {v2, p3, v7, p1, v0}, Lcom/vuitton/android/data/api/connectivity/WatchApiV2;->pairWatch(Ljava/lang/String;Lcom/vuitton/android/data/dto/connectivity/watch/PairWatchV2Dto;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p3, v1, :cond_6

    goto :goto_5

    :cond_6
    move-object p1, p2

    :goto_2
    :try_start_2
    check-cast p3, Lcom/vuitton/android/data/dto/connectivity/watch/WatchV2ResultDto;

    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v11, p2

    move-object p2, p1

    move-object p1, v11

    :goto_3
    sget-object p3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p3, Lkotlin/Result$Failure;

    invoke-direct {p3, p2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_4
    invoke-static {p3}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_b

    check-cast p3, Lcom/vuitton/android/data/dto/connectivity/watch/WatchV2ResultDto;

    iput-object v6, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$pairWatchV2$1;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput-object p1, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$pairWatchV2$1;->c:Lcom/vuitton/foundation/model/domain/model/connectivity/watch/PairWatchV2;

    iput v3, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$pairWatchV2$1;->f:I

    invoke-virtual {p0, v5, v0}, Lcom/vuitton/android/data/repository/WatchRepositoryImpl;->b(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_7

    :goto_5
    return-object v1

    :cond_7
    move-object p0, p1

    :goto_6
    check-cast p3, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;

    iget-object p3, p2, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/PairWatchV2;->a:Ljava/lang/String;

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p2, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;->d:Ljava/lang/String;

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_9

    goto :goto_7

    :cond_9
    return-object p2

    :cond_a
    const-string p0, "Collection contains no element matching the predicate."

    invoke-static {p0}, Lzy0;->c(Ljava/lang/String;)V

    return-object v6

    :cond_b
    new-instance p0, Lcom/vuitton/android/data/exception/ConnectivityException$WatchV2PairedException;

    invoke-direct {p0}, Lcom/vuitton/android/data/exception/ConnectivityException$WatchV2PairedException;-><init>()V

    throw p0
.end method

.method public final h(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/connectivity/watch/UnpairWatchV2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p3, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$unpairWatchV2$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$unpairWatchV2$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$unpairWatchV2$1;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$unpairWatchV2$1;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$unpairWatchV2$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$unpairWatchV2$1;-><init>(Lcom/vuitton/android/data/repository/WatchRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$unpairWatchV2$1;->f:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$unpairWatchV2$1;->h:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    iget p0, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$unpairWatchV2$1;->e:I

    iget-object p1, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$unpairWatchV2$1;->d:Lcom/vuitton/android/data/repository/WatchRepositoryImpl;

    iget-object p2, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$unpairWatchV2$1;->c:Lcom/vuitton/foundation/model/domain/model/connectivity/watch/UnpairWatchV2;

    iget-object v2, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$unpairWatchV2$1;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    :try_start_1
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    iget-object p3, p3, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v2

    move v2, p0

    move-object p0, p1

    move-object p1, v6

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object p3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p3, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl;->h:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    iput-object p1, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$unpairWatchV2$1;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput-object p2, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$unpairWatchV2$1;->c:Lcom/vuitton/foundation/model/domain/model/connectivity/watch/UnpairWatchV2;

    iput-object p0, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$unpairWatchV2$1;->d:Lcom/vuitton/android/data/repository/WatchRepositoryImpl;

    const/4 v2, 0x0

    iput v2, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$unpairWatchV2$1;->e:I

    iput v4, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$unpairWatchV2$1;->h:I

    invoke-interface {p3, v0}, Lcom/vuitton/android/domain/repository/AuthTokenRepository;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p3, Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl;->b:Lcom/vuitton/android/data/api/connectivity/WatchApiV2;

    invoke-static {p3}, Lcom/vuitton/android/data/repository/TokenExtKt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/vuitton/android/data/dto/connectivity/watch/UnpairWatchV2Dto;

    iget-object p2, p2, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/UnpairWatchV2;->a:Ljava/lang/String;

    invoke-direct {v4, p2}, Lcom/vuitton/android/data/dto/connectivity/watch/UnpairWatchV2Dto;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;

    invoke-virtual {p1}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;->h()Ljava/lang/String;

    move-result-object p1

    iput-object v5, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$unpairWatchV2$1;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput-object v5, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$unpairWatchV2$1;->c:Lcom/vuitton/foundation/model/domain/model/connectivity/watch/UnpairWatchV2;

    iput-object v5, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$unpairWatchV2$1;->d:Lcom/vuitton/android/data/repository/WatchRepositoryImpl;

    iput v2, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$unpairWatchV2$1;->e:I

    iput v3, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$unpairWatchV2$1;->h:I

    invoke-interface {p0, p3, v4, p1, v0}, Lcom/vuitton/android/data/api/connectivity/WatchApiV2;->unpairWatch(Ljava/lang/String;Lcom/vuitton/android/data/dto/connectivity/watch/UnpairWatchV2Dto;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    check-cast p3, Lcom/vuitton/android/data/dto/connectivity/watch/WatchV2ResultDto;

    iget-boolean p0, p3, Lcom/vuitton/android/data/dto/connectivity/watch/WatchV2ResultDto;->a:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_4
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_5
    instance-of p1, p0, Lkotlin/Result$Failure;

    if-eqz p1, :cond_6

    goto :goto_6

    :cond_6
    move-object v5, p0

    :goto_6
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-object p0

    :cond_7
    new-instance p0, Lcom/vuitton/android/data/exception/ConnectivityException$WatchV2UnpairedException;

    invoke-direct {p0}, Lcom/vuitton/android/data/exception/ConnectivityException$WatchV2UnpairedException;-><init>()V

    throw p0
.end method

.method public final i(Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;)Ljava/util/ArrayList;
    .locals 3

    iget-object p0, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionHome;

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionHome;->a:Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;->a:Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionPromise;

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionPromise;->f:Ljava/util/List;

    if-eqz p0, :cond_4

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_4

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionFaq;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionFaq;->a:Ljava/util/List;

    if-nez v0, :cond_1

    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_1
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/Faq;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqItem;

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/Faq;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/Faq;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object p0

    :cond_4
    new-instance p0, Lcom/vuitton/android/data/exception/ConnectivityException$WatchFaqException;

    invoke-direct {p0}, Lcom/vuitton/android/data/exception/ConnectivityException$WatchFaqException;-><init>()V

    throw p0
.end method
