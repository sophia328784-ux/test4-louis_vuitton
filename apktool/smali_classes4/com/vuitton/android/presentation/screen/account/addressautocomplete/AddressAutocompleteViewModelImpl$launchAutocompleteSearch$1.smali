.class final Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl$launchAutocompleteSearch$1;
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
    c = "com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModelImpl$launchAutocompleteSearch$1"
    f = "AddressAutocompleteViewModelImpl.kt"
    l = {
        0xa7
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl$launchAutocompleteSearch$1;->d:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl$launchAutocompleteSearch$1;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl$launchAutocompleteSearch$1;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl$launchAutocompleteSearch$1;->g:Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl$launchAutocompleteSearch$1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl$launchAutocompleteSearch$1;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl$launchAutocompleteSearch$1;->g:Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl$launchAutocompleteSearch$1;->d:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl$launchAutocompleteSearch$1;->e:Ljava/lang/String;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl$launchAutocompleteSearch$1;-><init>(Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl$launchAutocompleteSearch$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl$launchAutocompleteSearch$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl$launchAutocompleteSearch$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl$launchAutocompleteSearch$1;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl$launchAutocompleteSearch$1;->b:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl$launchAutocompleteSearch$1;->d:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v4, p1, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl;->c:Lcom/vuitton/android/domain/usecase/account/address/GetAddressAutocompleteUseCase;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl$launchAutocompleteSearch$1;->b:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl;

    iput v3, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl$launchAutocompleteSearch$1;->c:I

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl$launchAutocompleteSearch$1;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl$launchAutocompleteSearch$1;->f:Ljava/lang/String;

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl$launchAutocompleteSearch$1;->g:Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;

    move-object v9, p0

    invoke-virtual/range {v4 .. v9}, Lcom/vuitton/android/domain/usecase/account/address/GetAddressAutocompleteUseCase;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move-object v10, p1

    move-object p1, p0

    move-object p0, v10

    :goto_0
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_4

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/place/PlaceAutocomplete;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/PlaceAutocompleteUiModel;

    iget-object v6, v4, Lcom/vuitton/foundation/model/domain/model/place/PlaceAutocomplete;->a:Ljava/lang/String;

    iget-object v7, v4, Lcom/vuitton/foundation/model/domain/model/place/PlaceAutocomplete;->b:Ljava/lang/String;

    iget-object v8, v4, Lcom/vuitton/foundation/model/domain/model/place/PlaceAutocomplete;->c:Ljava/lang/String;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/place/PlaceAutocomplete;->d:Lcom/vuitton/foundation/model/domain/model/account/address/AddressDetails;

    invoke-direct {v5, v6, v7, v8, v4}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/PlaceAutocompleteUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/address/AddressDetails;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_4
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl;->o:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz v0, :cond_5

    new-instance v1, Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Error$AddressAutocompleteError;

    invoke-direct {v1, p1}, Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Error$AddressAutocompleteError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    :cond_5
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string v0, "AddressAutocompleteViewModelImpl"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1, v2}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
