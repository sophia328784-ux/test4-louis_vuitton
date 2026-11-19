.class final Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getStores$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.pdp.FindInStoreViewModelImpl$getStores$1"
    f = "FindInStoreViewModelImpl.kt"
    l = {
        0x8a
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Z

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;Ljava/lang/String;Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getStores$1;->d:Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getStores$1;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getStores$1;->f:Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getStores$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getStores$1;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getStores$1;->f:Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getStores$1;->d:Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getStores$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;Ljava/lang/String;Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getStores$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getStores$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getStores$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getStores$1;->d:Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getStores$1;->c:I

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getStores$1;->f:Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;

    const/4 v7, 0x1

    if-eqz v4, :cond_1

    if-ne v4, v7, :cond_0

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getStores$1;->b:Z

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    check-cast v3, Lkotlin/Result;

    iget-object v3, v3, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;->f:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v8, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->a:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;

    invoke-virtual {v4}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;->c()Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;->c:Ljava/lang/String;

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    iget-object v8, v1, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/products/availability/GetProductAvailabilityInStoresUseCase;

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/product/availability/GetProductAvailabilityInStoreParam;

    sget-object v10, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getStores$1;->e:Ljava/lang/String;

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/product/availability/PlaceGeocoding;

    iget-object v12, v6, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->b:Ljava/lang/String;

    iget-wide v13, v6, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->c:D

    move-object/from16 p1, v8

    iget-wide v7, v6, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->d:D

    move-wide v15, v7

    iget-wide v7, v6, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->e:D

    move-wide/from16 v17, v7

    iget-wide v7, v6, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->f:D

    move-wide/from16 v19, v7

    iget-wide v7, v6, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->g:D

    move-wide/from16 v21, v7

    iget-wide v7, v6, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->h:D

    move-wide/from16 v23, v7

    invoke-direct/range {v11 .. v24}, Lcom/vuitton/foundation/model/domain/model/product/availability/PlaceGeocoding;-><init>(Ljava/lang/String;DDDDDD)V

    invoke-direct {v9, v10, v11, v5}, Lcom/vuitton/foundation/model/domain/model/product/availability/GetProductAvailabilityInStoreParam;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/availability/PlaceGeocoding;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-boolean v4, v0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getStores$1;->b:Z

    const/4 v5, 0x1

    iput v5, v0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getStores$1;->c:I

    move-object/from16 v5, p1

    invoke-virtual {v5, v9, v0}, Lcom/vuitton/android/domain/usecase/products/availability/GetProductAvailabilityInStoresUseCase;->a(Lcom/vuitton/foundation/model/domain/model/product/availability/GetProductAvailabilityInStoreParam;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_2

    return-object v3

    :cond_2
    move-object v3, v0

    move v0, v4

    :goto_0
    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v4, v3, Lkotlin/Result$Failure;

    if-nez v4, :cond_4

    :try_start_0
    check-cast v3, Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/storelocator/Store;

    invoke-static {v5, v0}, Lcom/vuitton/android/presentation/model/storelocator/StoreMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/storelocator/Store;Z)Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    move-object v3, v4

    goto :goto_3

    :goto_2
    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v3, Lkotlin/Result$Failure;

    invoke-direct {v3, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    instance-of v0, v3, Lkotlin/Result$Failure;

    if-nez v0, :cond_5

    move-object v0, v3

    check-cast v0, Ljava/util/List;

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v5, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;

    iget-object v6, v6, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->b:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;->i:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v4, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_5
    invoke-static {v3}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
