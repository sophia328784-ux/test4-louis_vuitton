.class final Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$onSaveAvatar$1;
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
    c = "com.vuitton.android.presentation.screen.account.editavatar.EditAvatarViewModelImpl$onSaveAvatar$1"
    f = "EditAvatarViewModelImpl.kt"
    l = {
        0x6e,
        0x70
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

.field public c:Ljava/lang/Object;

.field public d:I

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$onSaveAvatar$1;->e:Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$onSaveAvatar$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$onSaveAvatar$1;->e:Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$onSaveAvatar$1;-><init>(Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$onSaveAvatar$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$onSaveAvatar$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$onSaveAvatar$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$onSaveAvatar$1;->d:I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$onSaveAvatar$1;->e:Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_1
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$onSaveAvatar$1;->b:Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v3, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState;

    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState$Success;

    if-eqz v1, :cond_7

    check-cast p1, Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState$Success;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState$Success;->a:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarSectionUiModel;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarSectionUiModel;->b:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    iget-boolean v6, v6, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;->e:Z

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_5
    move-object v1, v5

    :goto_1
    check-cast v1, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    if-eqz v1, :cond_7

    iget-object p1, v3, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase;

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$onSaveAvatar$1;->b:Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    iput v2, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$onSaveAvatar$1;->d:I

    invoke-virtual {p1, v6, p0}, Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_7

    move-object v2, p1

    check-cast v2, Lkotlin/Unit;

    iget-object v2, v3, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;->i:Lkotlinx/coroutines/channels/BufferedChannel;

    new-instance v3, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarEvent$AvatarSaveEvent;

    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v7, 0x7f140d50

    invoke-direct {v6, v7, v5, v4, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v3, v1, v6}, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarEvent$AvatarSaveEvent;-><init>(Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$onSaveAvatar$1;->b:Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$onSaveAvatar$1;->c:Ljava/lang/Object;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$onSaveAvatar$1;->d:I

    invoke-interface {v2, v3, p0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    :goto_3
    return-object v0

    :cond_7
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
