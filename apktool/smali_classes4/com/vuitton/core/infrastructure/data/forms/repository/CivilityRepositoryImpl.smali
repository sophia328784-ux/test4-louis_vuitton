.class public final Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl;",
        "Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepository;",
        "Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource;",
        "civilityDataSource",
        "<init>",
        "(Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource;)V",
        "forms"
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
.field public final a:Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource;


# direct methods
.method public constructor <init>(Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl;->a:Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getAddressCivilityMappingList$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getAddressCivilityMappingList$1;

    iget v1, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getAddressCivilityMappingList$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getAddressCivilityMappingList$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getAddressCivilityMappingList$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getAddressCivilityMappingList$1;-><init>(Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getAddressCivilityMappingList$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getAddressCivilityMappingList$1;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getAddressCivilityMappingList$1;->b:Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getAddressCivilityMappingList$1;->b:Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    if-eqz p2, :cond_5

    sget-object p2, Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;->ADDRESS_TWIST:Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;

    iput-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getAddressCivilityMappingList$1;->b:Ljava/lang/String;

    iput v4, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getAddressCivilityMappingList$1;->e:I

    invoke-virtual {p0, p2, p1, v0}, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl;->c(Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    move-result-object p3

    if-ne p3, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    check-cast p3, Ljava/util/List;

    goto :goto_4

    :cond_5
    sget-object p2, Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;->ADDRESS_ATG:Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;

    iput-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getAddressCivilityMappingList$1;->b:Ljava/lang/String;

    iput v3, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getAddressCivilityMappingList$1;->e:I

    invoke-virtual {p0, p2, p1, v0}, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl;->c(Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    move-result-object p3

    if-ne p3, v1, :cond_6

    :goto_2
    return-object v1

    :cond_6
    :goto_3
    check-cast p3, Ljava/util/List;

    :goto_4
    if-eqz p3, :cond_7

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    return-object p3

    :cond_7
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p0, Ljava/lang/Exception;

    invoke-static {p1}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/DispatchRegionCode;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Address civilities not found for country: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public final b(Ljava/lang/String;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getProfileCivilityMappingList$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getProfileCivilityMappingList$1;

    iget v1, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getProfileCivilityMappingList$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getProfileCivilityMappingList$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getProfileCivilityMappingList$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getProfileCivilityMappingList$1;-><init>(Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getProfileCivilityMappingList$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getProfileCivilityMappingList$1;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getProfileCivilityMappingList$1;->b:Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getProfileCivilityMappingList$1;->b:Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    if-eqz p2, :cond_5

    sget-object p2, Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;->PROFILE_TWIST:Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;

    iput-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getProfileCivilityMappingList$1;->b:Ljava/lang/String;

    iput v4, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getProfileCivilityMappingList$1;->e:I

    invoke-virtual {p0, p2, p1, v0}, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl;->c(Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    move-result-object p3

    if-ne p3, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    check-cast p3, Ljava/util/List;

    goto :goto_4

    :cond_5
    sget-object p2, Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;->PROFILE_ATG:Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;

    iput-object p1, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getProfileCivilityMappingList$1;->b:Ljava/lang/String;

    iput v3, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getProfileCivilityMappingList$1;->e:I

    invoke-virtual {p0, p2, p1, v0}, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl;->c(Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    move-result-object p3

    if-ne p3, v1, :cond_6

    :goto_2
    return-object v1

    :cond_6
    :goto_3
    check-cast p3, Ljava/util/List;

    :goto_4
    if-eqz p3, :cond_7

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    return-object p3

    :cond_7
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p0, Ljava/lang/Exception;

    invoke-static {p1}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/DispatchRegionCode;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Profile civilities not found for country: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public final c(Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .locals 5

    instance-of v0, p3, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getCivilityMappingList$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getCivilityMappingList$1;

    iget v1, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getCivilityMappingList$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getCivilityMappingList$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getCivilityMappingList$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getCivilityMappingList$1;-><init>(Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getCivilityMappingList$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getCivilityMappingList$1;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p2, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getCivilityMappingList$1;->b:Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    iget-object p0, p3, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p2, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getCivilityMappingList$1;->b:Ljava/lang/String;

    iput v3, v0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl$getCivilityMappingList$1;->e:I

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl;->a:Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource;

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource;->a(Lcom/vuitton/core/infrastructure/data/forms/models/CivilityType;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_7

    check-cast p0, Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Lcom/vuitton/core/infrastructure/data/forms/models/DispatchCivilityDto;

    iget-object p3, p3, Lcom/vuitton/core/infrastructure/data/forms/models/DispatchCivilityDto;->a:Ljava/lang/String;

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_5
    move-object p1, v4

    :goto_2
    check-cast p1, Lcom/vuitton/core/infrastructure/data/forms/models/DispatchCivilityDto;

    if-eqz p1, :cond_7

    iget-object p0, p1, Lcom/vuitton/core/infrastructure/data/forms/models/DispatchCivilityDto;->b:Ljava/util/List;

    if-eqz p0, :cond_7

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {p0, p2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/core/infrastructure/data/forms/models/CivilityDto;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lcom/vuitton/foundation/model/domain/model/forms/Civility;

    iget-object v0, p2, Lcom/vuitton/core/infrastructure/data/forms/models/CivilityDto;->a:Ljava/lang/String;

    iget-object p2, p2, Lcom/vuitton/core/infrastructure/data/forms/models/CivilityDto;->b:Ljava/lang/String;

    invoke-direct {p3, v0, p2}, Lcom/vuitton/foundation/model/domain/model/forms/Civility;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    return-object p1

    :cond_7
    return-object v4
.end method
