.class final Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1$5$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Result<",
        "+",
        "Lcom/vuitton/foundation/model/domain/model/forms/Form;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Result;",
        "Lcom/vuitton/foundation/model/domain/model/forms/Form;"
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
    c = "com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModelImpl$loadDynamicAddressFormFor$1$5$3"
    f = "AddressEditorViewModelImpl.kt"
    l = {
        0xf4,
        0xf6
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1$5$3;->c:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1$5$3;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1$5$3;->c:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1$5$3;-><init>(Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1$5$3;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1$5$3;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1$5$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1$5$3;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_0

    if-ne v1, v3, :cond_1

    :cond_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1$5$3;->c:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->t:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-boolean v5, p1, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->r:Z

    if-eqz v5, :cond_4

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/forms/GetMainAddressFormUseCase;

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->Ac()Lcom/vuitton/foundation/model/domain/model/profile/Address;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v2, p1, Lcom/vuitton/foundation/model/domain/model/profile/Address;->s:Ljava/lang/String;

    :cond_3
    iput v4, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1$5$3;->b:I

    invoke-virtual {v3, v1, v2, p0}, Lcom/vuitton/android/domain/usecase/forms/GetMainAddressFormUseCase;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    goto :goto_0

    :cond_4
    iget-object v4, p1, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->m:Lcom/vuitton/android/domain/usecase/forms/GetSecondaryAddressFormUseCase;

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->Ac()Lcom/vuitton/foundation/model/domain/model/profile/Address;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v2, p1, Lcom/vuitton/foundation/model/domain/model/profile/Address;->s:Ljava/lang/String;

    :cond_5
    iput v3, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1$5$3;->b:I

    invoke-virtual {v4, v1, v2, p0}, Lcom/vuitton/android/domain/usecase/forms/GetSecondaryAddressFormUseCase;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    :goto_0
    return-object v0

    :cond_6
    :goto_1
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
