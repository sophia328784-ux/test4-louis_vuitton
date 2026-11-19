.class final Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$6$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AutocompleteAddressResultUiModel;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "addressDetails",
        "Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AutocompleteAddressResultUiModel;"
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
    c = "com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterComposableKt$NativeRegisterComposable$6$1$1"
    f = "NativeRegisterComposable.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;

.field public final synthetic e:Landroidx/navigation/NavHostController;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$6$1$1;->c:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$6$1$1;->d:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$6$1$1;->e:Landroidx/navigation/NavHostController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$6$1$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$6$1$1;->d:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$6$1$1;->e:Landroidx/navigation/NavHostController;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$6$1$1;->c:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;

    invoke-direct {v0, v2, v1, p0, p2}, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$6$1$1;-><init>(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$6$1$1;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AutocompleteAddressResultUiModel;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$6$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$6$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$6$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$6$1$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AutocompleteAddressResultUiModel;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$6$1$1;->c:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;

    invoke-interface {p1, v0}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;->j4(Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AutocompleteAddressResultUiModel;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$6$1$1;->d:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;

    invoke-interface {p1}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;->n0()V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$6$1$1;->e:Landroidx/navigation/NavHostController;

    invoke-virtual {p0}, Landroidx/navigation/NavController;->e()Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
