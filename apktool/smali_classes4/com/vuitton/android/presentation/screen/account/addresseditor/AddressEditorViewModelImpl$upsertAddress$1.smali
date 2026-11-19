.class final Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$upsertAddress$1;
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
        "*>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0006\u0012\u0002\u0008\u00030\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Result;"
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
    c = "com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModelImpl$upsertAddress$1"
    f = "AddressEditorViewModelImpl.kt"
    l = {
        0x1b5,
        0x1b5
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Z

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;

.field public final synthetic e:Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;


# direct methods
.method public constructor <init>(ZLcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$upsertAddress$1;->c:Z

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$upsertAddress$1;->d:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$upsertAddress$1;->e:Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$upsertAddress$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$upsertAddress$1;->d:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$upsertAddress$1;->e:Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$upsertAddress$1;->c:Z

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$upsertAddress$1;-><init>(ZLcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$upsertAddress$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$upsertAddress$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$upsertAddress$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$upsertAddress$1;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$upsertAddress$1;->e:Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$upsertAddress$1;->c:Z

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$upsertAddress$1;->d:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;

    if-eqz v1, :cond_3

    iget-object v1, v4, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/account/address/AddAddressUseCase;

    iput v3, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$upsertAddress$1;->b:I

    invoke-virtual {v1, p1, p0}, Lcom/vuitton/android/domain/usecase/account/address/AddAddressUseCase;->a(Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    goto :goto_0

    :cond_3
    iget-object v1, v4, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/account/address/EditAddressUseCase;

    iput v2, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$upsertAddress$1;->b:I

    invoke-virtual {v1, p1, p0}, Lcom/vuitton/android/domain/usecase/account/address/EditAddressUseCase;->a(Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    :goto_0
    return-object v0

    :cond_4
    :goto_1
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
