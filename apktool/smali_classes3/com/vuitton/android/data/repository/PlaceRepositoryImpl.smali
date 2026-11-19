.class public final Lcom/vuitton/android/data/repository/PlaceRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/PlaceRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/PlaceRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/PlaceRepository;",
        "Lcom/vuitton/android/data/api/bff/publication/PlaceApi;",
        "placeApi",
        "<init>",
        "(Lcom/vuitton/android/data/api/bff/publication/PlaceApi;)V",
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
.field public final a:Lcom/vuitton/android/data/api/bff/publication/PlaceApi;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/api/bff/publication/PlaceApi;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/publication/PlaceApi;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p5, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getAddressAutocomplete$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getAddressAutocomplete$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getAddressAutocomplete$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getAddressAutocomplete$1;->d:I

    :goto_0
    move-object p5, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getAddressAutocomplete$1;

    invoke-direct {v0, p0, p5}, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getAddressAutocomplete$1;-><init>(Lcom/vuitton/android/data/repository/PlaceRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object v0, p5, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getAddressAutocomplete$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p5, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getAddressAutocomplete$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/publication/PlaceApi;

    if-eqz p4, :cond_3

    invoke-static {p4}, Lcom/vuitton/android/data/dto/address/autocomplete/mapper/AutocompleteContextMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;)Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;

    move-result-object v4

    :cond_3
    move-object p4, v4

    iput v3, p5, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getAddressAutocomplete$1;->d:I

    invoke-interface/range {p0 .. p5}, Lcom/vuitton/android/data/api/bff/publication/PlaceApi;->getAddressAutoComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    check-cast v0, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 p1, 0xa

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/android/data/dto/address/autocomplete/PlaceAutocompleteDto;

    invoke-static {p2}, Lcom/vuitton/android/data/dto/address/autocomplete/mapper/PlaceAutocompleteMapperKt;->a(Lcom/vuitton/android/data/dto/address/autocomplete/PlaceAutocompleteDto;)Lcom/vuitton/foundation/model/domain/model/place/PlaceAutocomplete;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p0, v0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_4
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_6

    goto :goto_5

    :cond_6
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_7

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_5
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_7
    throw p0
.end method

.method public final b(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getPlaceAutocomplete$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getPlaceAutocomplete$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getPlaceAutocomplete$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getPlaceAutocomplete$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getPlaceAutocomplete$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getPlaceAutocomplete$1;-><init>(Lcom/vuitton/android/data/repository/PlaceRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getPlaceAutocomplete$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getPlaceAutocomplete$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/publication/PlaceApi;

    if-eqz p2, :cond_3

    invoke-static {p2}, Lcom/vuitton/android/data/dto/address/autocomplete/mapper/AutocompleteContextMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;)Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;

    move-result-object v4

    :cond_3
    iput v3, v0, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getPlaceAutocomplete$1;->d:I

    invoke-interface {p0, p1, v4, v0}, Lcom/vuitton/android/data/api/bff/publication/PlaceApi;->getPlaceAutocomplete(Ljava/lang/String;Lcom/vuitton/android/data/dto/address/autocomplete/AutocompleteContextDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p3, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 p1, 0xa

    invoke-static {p3, p1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/android/data/dto/address/autocomplete/PlaceAutocompleteDto;

    invoke-static {p2}, Lcom/vuitton/android/data/dto/address/autocomplete/mapper/PlaceAutocompleteMapperKt;->a(Lcom/vuitton/android/data/dto/address/autocomplete/PlaceAutocompleteDto;)Lcom/vuitton/foundation/model/domain/model/place/PlaceAutocomplete;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_6

    goto :goto_4

    :cond_6
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_7

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_4
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_7
    throw p0
.end method

.method public final c(DDLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    instance-of v2, v1, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getGeocodingPlaceByLocationWithCoroutine$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getGeocodingPlaceByLocationWithCoroutine$1;

    iget v3, v2, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getGeocodingPlaceByLocationWithCoroutine$1;->d:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getGeocodingPlaceByLocationWithCoroutine$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getGeocodingPlaceByLocationWithCoroutine$1;

    invoke-direct {v2, v0, v1}, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getGeocodingPlaceByLocationWithCoroutine$1;-><init>(Lcom/vuitton/android/data/repository/PlaceRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v1, v2, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getGeocodingPlaceByLocationWithCoroutine$1;->b:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getGeocodingPlaceByLocationWithCoroutine$1;->d:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v0, v0, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/publication/PlaceApi;

    new-instance v1, Ljava/lang/Double;

    move-wide/from16 v6, p1

    invoke-direct {v1, v6, v7}, Ljava/lang/Double;-><init>(D)V

    new-instance v4, Ljava/lang/Double;

    move-wide/from16 v6, p3

    invoke-direct {v4, v6, v7}, Ljava/lang/Double;-><init>(D)V

    iput v5, v2, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getGeocodingPlaceByLocationWithCoroutine$1;->d:I

    invoke-interface {v0, v1, v4, v2}, Lcom/vuitton/android/data/api/bff/publication/PlaceApi;->getGeocodingPlaceWithCoroutine(Ljava/lang/Double;Ljava/lang/Double;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_3

    return-object v3

    :cond_3
    :goto_1
    check-cast v1, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/product/availability/PlaceGeocoding;

    iget-object v3, v1, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->a:Ljava/lang/String;

    iget-wide v4, v1, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->b:D

    iget-wide v6, v1, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->c:D

    iget-wide v8, v1, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->d:D

    iget-wide v10, v1, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->e:D

    iget-wide v12, v1, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->f:D

    iget-wide v14, v1, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->g:D

    invoke-direct/range {v2 .. v15}, Lcom/vuitton/foundation/model/domain/model/product/availability/PlaceGeocoding;-><init>(Ljava/lang/String;DDDDDD)V

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, v2}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_2
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    instance-of v0, v1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_5

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, v1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v1, Lkotlin/Result;

    invoke-direct {v1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_3
    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object v0

    :cond_5
    throw v1
.end method

.method public final d(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getGeocodingPlaceById$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getGeocodingPlaceById$1;

    iget v3, v2, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getGeocodingPlaceById$1;->d:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getGeocodingPlaceById$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getGeocodingPlaceById$1;

    invoke-direct {v2, v0, v1}, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getGeocodingPlaceById$1;-><init>(Lcom/vuitton/android/data/repository/PlaceRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v1, v2, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getGeocodingPlaceById$1;->b:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getGeocodingPlaceById$1;->d:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v0, v0, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/publication/PlaceApi;

    iput v5, v2, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getGeocodingPlaceById$1;->d:I

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v2}, Lcom/vuitton/android/data/api/bff/publication/PlaceApi;->getGeocodingPlace(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_3

    return-object v3

    :cond_3
    :goto_1
    check-cast v1, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/product/availability/PlaceGeocoding;

    iget-object v3, v1, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->a:Ljava/lang/String;

    iget-wide v4, v1, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->b:D

    iget-wide v6, v1, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->c:D

    iget-wide v8, v1, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->d:D

    iget-wide v10, v1, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->e:D

    iget-wide v12, v1, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->f:D

    iget-wide v14, v1, Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;->g:D

    invoke-direct/range {v2 .. v15}, Lcom/vuitton/foundation/model/domain/model/product/availability/PlaceGeocoding;-><init>(Ljava/lang/String;DDDDDD)V

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, v2}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_2
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    instance-of v0, v1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_5

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, v1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v1, Lkotlin/Result;

    invoke-direct {v1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_3
    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object v0

    :cond_5
    throw v1
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getPostalCodeAutoComplete$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getPostalCodeAutoComplete$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getPostalCodeAutoComplete$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getPostalCodeAutoComplete$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getPostalCodeAutoComplete$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getPostalCodeAutoComplete$1;-><init>(Lcom/vuitton/android/data/repository/PlaceRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getPostalCodeAutoComplete$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getPostalCodeAutoComplete$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/publication/PlaceApi;

    iput v3, v0, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getPostalCodeAutoComplete$1;->d:I

    invoke-interface {p0, p1, p2, v0}, Lcom/vuitton/android/data/api/bff/publication/PlaceApi;->getPostalCodeAutoComplete(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Lcom/vuitton/android/data/dto/address/AddressDetailDto;

    invoke-static {p3}, Lcom/vuitton/android/data/dto/address/mapper/AddressDetailMapperKt;->a(Lcom/vuitton/android/data/dto/address/AddressDetailDto;)Lcom/vuitton/foundation/model/domain/model/account/address/AddressDetails;

    move-result-object p0

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_5
    throw p0
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getAddressDetails$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getAddressDetails$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getAddressDetails$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getAddressDetails$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getAddressDetails$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getAddressDetails$1;-><init>(Lcom/vuitton/android/data/repository/PlaceRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getAddressDetails$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getAddressDetails$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/publication/PlaceApi;

    iput v3, v0, Lcom/vuitton/android/data/repository/PlaceRepositoryImpl$getAddressDetails$1;->d:I

    invoke-interface {p0, p1, p2, v0}, Lcom/vuitton/android/data/api/bff/publication/PlaceApi;->getAddressDetails(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Lcom/vuitton/android/data/dto/address/AddressDetailDto;

    invoke-static {p3}, Lcom/vuitton/android/data/dto/address/mapper/AddressDetailMapperKt;->a(Lcom/vuitton/android/data/dto/address/AddressDetailDto;)Lcom/vuitton/foundation/model/domain/model/account/address/AddressDetails;

    move-result-object p0

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_5
    throw p0
.end method
