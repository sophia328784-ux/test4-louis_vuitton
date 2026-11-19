.class final Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveUserAvatar$1;
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
    c = "com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$retrieveUserAvatar$1"
    f = "MyLvViewModelImpl.kt"
    l = {
        0x121
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveUserAvatar$1;->d:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveUserAvatar$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveUserAvatar$1;->d:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    invoke-direct {p1, p2, p0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveUserAvatar$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveUserAvatar$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveUserAvatar$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveUserAvatar$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveUserAvatar$1;->c:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveUserAvatar$1;->b:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveUserAvatar$1;->d:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->y:Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveUserAvatar$1;->b:Ljava/lang/Object;

    iput v2, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveUserAvatar$1;->c:I

    invoke-virtual {p1, p0}, Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object p0, v1

    :goto_0
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_3

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;->b:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-object v3, v2

    iget-object v2, v3, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;->d:Ljava/lang/String;

    iget-boolean v4, p1, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;->c:Z

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object p1, v0

    :cond_3
    sget-object v0, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;->f:Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;->g:Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    instance-of v1, p1, Lkotlin/Result$Failure;

    if-eqz v1, :cond_4

    move-object p1, v0

    :cond_4
    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
