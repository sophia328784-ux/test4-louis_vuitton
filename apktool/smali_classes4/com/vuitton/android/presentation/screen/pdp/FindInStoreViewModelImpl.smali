.class public final Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B9\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModel;",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/android/domain/usecase/products/availability/GetPlaceGeocodingByLocationUseCase;",
        "getPlaceGeocodingByLocationUseCase",
        "Lcom/vuitton/android/domain/usecase/products/availability/GetPlaceGeocodingByPlaceIdUseCase;",
        "getPlaceGeocodingByPlaceIdUseCase",
        "Lcom/vuitton/android/domain/usecase/travel/GetPlaceAutocompleteUseCase;",
        "getPlaceAutocompleteUseCase",
        "Lcom/vuitton/android/domain/usecase/products/availability/GetProductAvailabilityInStoresUseCase;",
        "getProductAvailabilityInStoresUseCase",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/products/availability/GetPlaceGeocodingByLocationUseCase;Lcom/vuitton/android/domain/usecase/products/availability/GetPlaceGeocodingByPlaceIdUseCase;Lcom/vuitton/android/domain/usecase/travel/GetPlaceAutocompleteUseCase;Lcom/vuitton/android/domain/usecase/products/availability/GetProductAvailabilityInStoresUseCase;)V",
        "presentation"
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
.field public final a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final b:Lcom/vuitton/android/domain/usecase/products/availability/GetPlaceGeocodingByLocationUseCase;

.field public final c:Lcom/vuitton/android/domain/usecase/products/availability/GetPlaceGeocodingByPlaceIdUseCase;

.field public final d:Lcom/vuitton/android/domain/usecase/travel/GetPlaceAutocompleteUseCase;

.field public final e:Lcom/vuitton/android/domain/usecase/products/availability/GetProductAvailabilityInStoresUseCase;

.field public final f:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final g:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final h:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final i:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final j:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final k:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final l:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final m:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final n:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/products/availability/GetPlaceGeocodingByLocationUseCase;Lcom/vuitton/android/domain/usecase/products/availability/GetPlaceGeocodingByPlaceIdUseCase;Lcom/vuitton/android/domain/usecase/travel/GetPlaceAutocompleteUseCase;Lcom/vuitton/android/domain/usecase/products/availability/GetProductAvailabilityInStoresUseCase;)V
    .locals 9
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;->b:Lcom/vuitton/android/domain/usecase/products/availability/GetPlaceGeocodingByLocationUseCase;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;->c:Lcom/vuitton/android/domain/usecase/products/availability/GetPlaceGeocodingByPlaceIdUseCase;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/travel/GetPlaceAutocompleteUseCase;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/products/availability/GetProductAvailabilityInStoresUseCase;

    iget-object p1, p2, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {p1}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v1

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;->f:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object p3, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {p3}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p4

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;->i:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p3}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p3

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object p5, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Empty;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Empty;

    invoke-static {p5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p5

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 p6, 0x0

    const/4 v0, 0x7

    const/4 v2, 0x0

    invoke-static {p6, v0, v2}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v3

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;->l:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p6, v0, v2}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;->m:Lkotlinx/coroutines/channels/BufferedChannel;

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlinx/coroutines/flow/Flow;

    aput-object p2, v0, p6

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const/4 p1, 0x2

    aput-object p4, v0, p1

    const/4 p1, 0x3

    aput-object p3, v0, p1

    const/4 p2, 0x4

    aput-object p5, v0, p2

    new-instance p2, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$special$$inlined$combine$1;

    invoke-direct {p2, v0, p0}, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p3

    sget-object p4, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-static {p4, p1}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->a(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/SharingStarted;

    move-result-object p1

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/models/FindInStoreViewState;

    const/16 v7, 0x3e

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/pdp/models/FindInStoreViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p2, p3, p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;->n:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method


# virtual methods
.method public final Qa(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getPlaceAutoComplete$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getPlaceAutoComplete$1;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;->n:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final a6(Ljava/lang/String;Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getStores$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getStores$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;Ljava/lang/String;Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final b1()V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final b9(Landroid/location/Geocoder;Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;)V
    .locals 7

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1;

    const/4 v6, 0x0

    move-object v5, p0

    move-object v3, p1

    move-object v4, p2

    move-object v2, p3

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$openStoreMap$1;-><init>(Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;Landroid/location/Geocoder;Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    const/4 p1, 0x0

    invoke-static {v0, p1, p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final c6(DD)V
    .locals 8

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getPlaceGeocodingByLocation$1;

    const/4 v7, 0x0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getPlaceGeocodingByLocation$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;DDLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    const/4 p1, 0x0

    invoke-static {v0, p1, p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final i5()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;->m:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final m1(Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/PlaceAutocompleteUiModel;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getPlaceGeocodingByPlaceId$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getPlaceGeocodingByPlaceId$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/PlaceAutocompleteUiModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final s6(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel;)V
    .locals 12

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnCheckAvailabilityEvent;

    const-string v1, "productsheet/"

    if-eqz v0, :cond_0

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnCheckAvailabilityEvent;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnCheckAvailabilityEvent;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-static {v1, p1}, Lcj;->q(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/16 v10, 0x21

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v5, "locate_in_store"

    const-string v6, "product_area"

    const-string v7, "e-commerce_interaction"

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnMoreDetailsEvent;

    if-eqz v0, :cond_1

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnMoreDetailsEvent;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnMoreDetailsEvent;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-static {v3, v0}, Lcj;->q(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$InternalSearchKeywords;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnMoreDetailsEvent;->b:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$InternalSearchKeywords;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreId;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnMoreDetailsEvent;->c:Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;

    iget-object v5, p1, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->e:Lcom/vuitton/android/presentation/model/storelocator/StoreAddressUiModel;

    iget-object v6, v5, Lcom/vuitton/android/presentation/model/storelocator/StoreAddressUiModel;->d:Ljava/lang/String;

    iget-object v5, v5, Lcom/vuitton/android/presentation/model/storelocator/StoreAddressUiModel;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "::"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreId;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x3

    new-array p1, p1, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    const/4 v5, 0x0

    aput-object v1, p1, v5

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const/4 v0, 0x2

    aput-object v3, p1, v0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/16 v10, 0x21

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v5, "store_more_details"

    const-string v6, "popin/locate_in_store"

    const-string v7, "e-commerce_interaction"

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_2

    :cond_1
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnUseCurrentLocationEvent;

    if-eqz v0, :cond_2

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnUseCurrentLocationEvent;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnUseCurrentLocationEvent;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-static {v1, p1}, Lcj;->q(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/16 v10, 0x21

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v5, "current_location"

    const-string v6, "popin/locate_in_store"

    const-string v7, "e-commerce_interaction"

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    :cond_2
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnUseDrivingDirectionEvent;

    if-eqz v0, :cond_3

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnUseDrivingDirectionEvent;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnUseDrivingDirectionEvent;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-static {v1, p1}, Lcj;->q(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/16 v10, 0x21

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v5, "driving_directions"

    const-string v6, "popin/locate_in_store"

    const-string v7, "e-commerce_interaction"

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    :cond_3
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ChangeAvailabilityFilterEvent;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ChangeAvailabilityFilterEvent;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ChangeAvailabilityFilterEvent;->a:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ChangeAvailabilityFilterEvent;->b:Z

    if-eqz p1, :cond_4

    const-string p1, "product_available"

    :goto_0
    move-object v5, p1

    goto :goto_1

    :cond_4
    const-string p1, "product_available_untick"

    goto :goto_0

    :goto_1
    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance p1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-static {v1, v0}, Lcj;->q(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/16 v10, 0x21

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v6, "popin/locate_in_store"

    const-string v7, "e-commerce_interaction"

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_2
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {p0, v2}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_5
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method public final y8()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;->l:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method
