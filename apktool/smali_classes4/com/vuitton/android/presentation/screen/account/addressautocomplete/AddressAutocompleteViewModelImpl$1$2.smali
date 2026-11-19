.class final Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/String;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "query",
        ""
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
    c = "com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModelImpl$1$2"
    f = "AddressAutocompleteViewModelImpl.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl$1$2;->c:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl$1$2;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl$1$2;->c:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl$1$2;-><init>(Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl$1$2;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl$1$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl$1$2;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl$1$2;->c:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl;

    iget-object p0, v2, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl;->m:Ljava/lang/String;

    iget-object v5, v2, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl;->n:Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;

    invoke-static {v2}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p0

    new-instance v1, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl$launchAutocompleteSearch$1;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl$launchAutocompleteSearch$1;-><init>(Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
