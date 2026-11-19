.class final Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getPlaceAutoComplete$1;
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
    c = "com.vuitton.android.presentation.screen.pdp.FindInStoreViewModelImpl$getPlaceAutoComplete$1"
    f = "FindInStoreViewModelImpl.kt"
    l = {
        0x79
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getPlaceAutoComplete$1;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getPlaceAutoComplete$1;->d:Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getPlaceAutoComplete$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getPlaceAutoComplete$1;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getPlaceAutoComplete$1;->d:Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getPlaceAutoComplete$1;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getPlaceAutoComplete$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getPlaceAutoComplete$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getPlaceAutoComplete$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getPlaceAutoComplete$1;->d:Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getPlaceAutoComplete$1;->b:I

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getPlaceAutoComplete$1;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/util/List;

    sget-object p1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-interface {v1, p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_3
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/travel/GetPlaceAutocompleteUseCase;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;->FIND_IN_STORE:Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl$getPlaceAutoComplete$1;->b:I

    invoke-virtual {v0, p1, v3, p0}, Lcom/vuitton/android/domain/usecase/travel/GetPlaceAutocompleteUseCase;->a(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_4

    return-object v2

    :cond_4
    :goto_0
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_6

    check-cast p0, Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/place/PlaceAutocomplete;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/PlaceAutocompleteUiModel;

    iget-object v3, v0, Lcom/vuitton/foundation/model/domain/model/place/PlaceAutocomplete;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/place/PlaceAutocomplete;->b:Ljava/lang/String;

    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/place/PlaceAutocomplete;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/place/PlaceAutocomplete;->d:Lcom/vuitton/foundation/model/domain/model/account/address/AddressDetails;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/PlaceAutocompleteUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/address/AddressDetails;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-interface {v1, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_6
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
