.class final Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl$fetchPlacesAutocomplete$1;
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
    c = "com.vuitton.android.presentation.screen.placesearch.PlaceSearchViewModelImpl$fetchPlacesAutocomplete$1"
    f = "PlaceSearchViewModelImpl.kt"
    l = {
        0x3c
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl;

.field public c:I

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl$fetchPlacesAutocomplete$1;->e:Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl$fetchPlacesAutocomplete$1;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl$fetchPlacesAutocomplete$1;->g:Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl$fetchPlacesAutocomplete$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl$fetchPlacesAutocomplete$1;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl$fetchPlacesAutocomplete$1;->g:Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl$fetchPlacesAutocomplete$1;->e:Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl;

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl$fetchPlacesAutocomplete$1;-><init>(Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl$fetchPlacesAutocomplete$1;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl$fetchPlacesAutocomplete$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl$fetchPlacesAutocomplete$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl$fetchPlacesAutocomplete$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl$fetchPlacesAutocomplete$1;->d:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl$fetchPlacesAutocomplete$1;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl$fetchPlacesAutocomplete$1;->b:Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl$fetchPlacesAutocomplete$1;->e:Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl$fetchPlacesAutocomplete$1;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl$fetchPlacesAutocomplete$1;->g:Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;

    :try_start_1
    sget-object v5, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v5, p1, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_2
    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, v6, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v5, p1, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl;->a:Lcom/vuitton/android/domain/usecase/travel/GetPlaceAutocompleteUseCase;

    iput-object v2, p0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl$fetchPlacesAutocomplete$1;->d:Ljava/lang/Object;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl$fetchPlacesAutocomplete$1;->b:Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl;

    iput v3, p0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl$fetchPlacesAutocomplete$1;->c:I

    invoke-virtual {v5, v1, v4, p0}, Lcom/vuitton/android/domain/usecase/travel/GetPlaceAutocompleteUseCase;->a(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    :goto_0
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_6

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_4
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl;->i:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_5
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_6
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_7
    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl;->i:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_8
    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_9
    new-instance p0, Lkotlin/Result;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
