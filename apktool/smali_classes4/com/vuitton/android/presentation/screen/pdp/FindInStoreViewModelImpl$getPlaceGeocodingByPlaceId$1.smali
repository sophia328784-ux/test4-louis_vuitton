.class final Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getPlaceGeocodingByPlaceId$1;
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
    c = "com.vuitton.android.presentation.screen.pdp.FindInStoreViewModelImpl$getPlaceGeocodingByPlaceId$1"
    f = "FindInStoreViewModelImpl.kt"
    l = {
        0x6e,
        0x6f
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/PlaceAutocompleteUiModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/PlaceAutocompleteUiModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getPlaceGeocodingByPlaceId$1;->d:Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getPlaceGeocodingByPlaceId$1;->e:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/PlaceAutocompleteUiModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getPlaceGeocodingByPlaceId$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getPlaceGeocodingByPlaceId$1;->d:Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getPlaceGeocodingByPlaceId$1;->e:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/PlaceAutocompleteUiModel;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getPlaceGeocodingByPlaceId$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/PlaceAutocompleteUiModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getPlaceGeocodingByPlaceId$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getPlaceGeocodingByPlaceId$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getPlaceGeocodingByPlaceId$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getPlaceGeocodingByPlaceId$1;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getPlaceGeocodingByPlaceId$1;->d:Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v4, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v1, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getPlaceGeocodingByPlaceId$1;->e:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/PlaceAutocompleteUiModel;

    iget-object v6, v5, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/PlaceAutocompleteUiModel;->b:Ljava/lang/String;

    invoke-direct {v1, v6}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p1, v4, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;->c:Lcom/vuitton/android/domain/usecase/products/availability/GetPlaceGeocodingByPlaceIdUseCase;

    iget-object v1, v5, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/PlaceAutocompleteUiModel;->a:Ljava/lang/String;

    iput v3, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getPlaceGeocodingByPlaceId$1;->c:I

    invoke-virtual {p1, v1, p0}, Lcom/vuitton/android/domain/usecase/products/availability/GetPlaceGeocodingByPlaceIdUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v1, p1, Lkotlin/Result$Failure;

    if-nez v1, :cond_4

    move-object v1, p1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/product/availability/PlaceGeocoding;

    iget-object v3, v4, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;->l:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v1}, Lcom/vuitton/android/presentation/model/location/GeocodingMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/product/availability/PlaceGeocoding;)Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;

    move-result-object v1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getPlaceGeocodingByPlaceId$1;->b:Ljava/lang/Object;

    iput v2, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getPlaceGeocodingByPlaceId$1;->c:I

    invoke-interface {v3, v1, p0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
