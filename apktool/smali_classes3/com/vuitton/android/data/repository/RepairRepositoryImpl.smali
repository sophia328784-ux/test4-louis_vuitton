.class public final Lcom/vuitton/android/data/repository/RepairRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/RepairRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/RepairRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/RepairRepository;",
        "Lcom/vuitton/android/data/api/bff/user/RepairApi;",
        "repairApi",
        "Lcom/vuitton/android/data/datasource/repair/RepairLocalDataSource;",
        "repairLocalDataSource",
        "<init>",
        "(Lcom/vuitton/android/data/api/bff/user/RepairApi;Lcom/vuitton/android/data/datasource/repair/RepairLocalDataSource;)V",
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


# instance fields
.field public final a:Lcom/vuitton/android/data/api/bff/user/RepairApi;

.field public final b:Lcom/vuitton/android/data/datasource/repair/RepairLocalDataSource;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/api/bff/user/RepairApi;Lcom/vuitton/android/data/datasource/repair/RepairLocalDataSource;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/RepairRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/user/RepairApi;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/RepairRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/repair/RepairLocalDataSource;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/repository/RepairRepositoryImpl$getRepairCancellationReason$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/RepairRepositoryImpl$getRepairCancellationReason$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/RepairRepositoryImpl$getRepairCancellationReason$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/RepairRepositoryImpl$getRepairCancellationReason$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/RepairRepositoryImpl$getRepairCancellationReason$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/RepairRepositoryImpl$getRepairCancellationReason$1;-><init>(Lcom/vuitton/android/data/repository/RepairRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/RepairRepositoryImpl$getRepairCancellationReason$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/RepairRepositoryImpl$getRepairCancellationReason$1;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/vuitton/android/data/repository/RepairRepositoryImpl$getRepairCancellationReason$1;->b:Ljava/lang/String;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/RepairRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/user/RepairApi;

    iput-object p1, v0, Lcom/vuitton/android/data/repository/RepairRepositoryImpl$getRepairCancellationReason$1;->b:Ljava/lang/String;

    iput v3, v0, Lcom/vuitton/android/data/repository/RepairRepositoryImpl$getRepairCancellationReason$1;->e:I

    invoke-interface {p0, v0}, Lcom/vuitton/android/data/api/bff/user/RepairApi;->getRepairCancellationReason(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/dto/careservices/RepairCancellationReasonDto;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/careservices/RepairCancellationReasonDto;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_5
    move-object p2, v4

    :goto_2
    check-cast p2, Lcom/vuitton/android/data/dto/careservices/RepairCancellationReasonDto;

    if-eqz p2, :cond_6

    iget-object p0, p2, Lcom/vuitton/android/data/dto/careservices/RepairCancellationReasonDto;->b:Ljava/util/List;

    if-eqz p0, :cond_6

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {p0, p2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/android/data/dto/careservices/CancellationReasonDto;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/careservices/CancellationReason;

    iget-object v1, p2, Lcom/vuitton/android/data/dto/careservices/CancellationReasonDto;->a:Ljava/lang/String;

    iget-object p2, p2, Lcom/vuitton/android/data/dto/careservices/CancellationReasonDto;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Lcom/vuitton/foundation/model/domain/model/careservices/CancellationReason;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    move-object p1, v4

    :cond_7
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :goto_4
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_5
    instance-of p0, p1, Lkotlin/Result$Failure;

    if-eqz p0, :cond_8

    goto :goto_6

    :cond_8
    move-object v4, p1

    :goto_6
    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_9

    sget-object v4, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_9
    return-object v4
.end method

.method public final b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/vuitton/android/data/repository/RepairRepositoryImpl$getRepairStatusMap$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/RepairRepositoryImpl$getRepairStatusMap$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/RepairRepositoryImpl$getRepairStatusMap$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/RepairRepositoryImpl$getRepairStatusMap$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/RepairRepositoryImpl$getRepairStatusMap$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/RepairRepositoryImpl$getRepairStatusMap$1;-><init>(Lcom/vuitton/android/data/repository/RepairRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/RepairRepositoryImpl$getRepairStatusMap$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/RepairRepositoryImpl$getRepairStatusMap$1;->e:I

    iget-object v3, p0, Lcom/vuitton/android/data/repository/RepairRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/repair/RepairLocalDataSource;

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/data/repository/RepairRepositoryImpl$getRepairStatusMap$1;->b:Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;

    invoke-virtual {p1}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, v3, Lcom/vuitton/android/data/datasource/repair/RepairLocalDataSource;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    move-object v2, p2

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    return-object p2

    :cond_4
    :goto_1
    iput-object p1, v0, Lcom/vuitton/android/data/repository/RepairRepositoryImpl$getRepairStatusMap$1;->b:Ljava/lang/String;

    iput v4, v0, Lcom/vuitton/android/data/repository/RepairRepositoryImpl$getRepairStatusMap$1;->e:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/RepairRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/user/RepairApi;

    invoke-interface {p0, v0}, Lcom/vuitton/android/data/api/bff/user/RepairApi;->getTranslations(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object p0, p1

    :goto_2
    check-cast p2, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/data/dto/repair/RepairStatusTranslationDto;

    iget-object v1, v1, Lcom/vuitton/android/data/dto/repair/RepairStatusTranslationDto;->a:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    if-eqz v1, :cond_6

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/dto/repair/RepairStatusTranslationDto;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatusTranslation;

    iget-object v2, v0, Lcom/vuitton/android/data/dto/repair/RepairStatusTranslationDto;->a:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/vuitton/android/data/dto/careservices/mapper/RepairStatusMapperKt;->a(Lcom/vuitton/android/data/dto/repair/RepairStatusDto;)Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    move-result-object v2

    iget-object v4, v0, Lcom/vuitton/android/data/dto/repair/RepairStatusTranslationDto;->b:Ljava/lang/String;

    const-string v5, ""

    if-nez v4, :cond_8

    move-object v4, v5

    :cond_8
    iget-object v0, v0, Lcom/vuitton/android/data/dto/repair/RepairStatusTranslationDto;->c:Ljava/lang/String;

    if-nez v0, :cond_9

    goto :goto_5

    :cond_9
    move-object v5, v0

    :goto_5
    invoke-direct {v1, v2, v4, v5}, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatusTranslation;-><init>(Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v3, Lcom/vuitton/android/data/datasource/repair/RepairLocalDataSource;->a:Ljava/util/LinkedHashMap;

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method
