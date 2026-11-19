.class final Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1$1$1;
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
        "Landroid/location/Address;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Landroid/location/Address;",
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
    c = "com.vuitton.android.presentation.screen.pdp.FindInStoreViewModelImpl$openStoreMap$1$1$1"
    f = "FindInStoreViewModelImpl.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;

.field public final synthetic c:Landroid/location/Geocoder;

.field public final synthetic d:Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;Landroid/location/Geocoder;Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1$1$1;->b:Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1$1$1;->c:Landroid/location/Geocoder;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1$1$1;->d:Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1$1$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1$1$1;->c:Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1$1$1;->d:Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1$1$1;->b:Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1$1$1;-><init>(Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;Landroid/location/Geocoder;Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1$1$1;->b:Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1$1$1;->d:Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->e:Lcom/vuitton/android/presentation/model/storelocator/StoreAddressUiModel;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/model/storelocator/StoreAddressUiModel;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v5, v0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->g:D

    iget-wide v7, v0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->h:D

    iget-wide v9, v0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->e:D

    iget-wide v11, v0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->f:D

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1$1$1;->c:Landroid/location/Geocoder;

    const/4 v4, 0x1

    invoke-virtual/range {v2 .. v12}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;IDDDD)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/vuitton/foundation/model/domain/extensions/CollectionExtKt;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    if-eqz p0, :cond_1

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/Address;

    return-object p0

    :cond_1
    return-object p1
.end method
