.class final Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;
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
    c = "com.vuitton.android.presentation.screen.mylv.TopBarAvatarViewModelImpl$retrieveUserAvatar$1"
    f = "TopBarAvatarViewModelImpl.kt"
    l = {
        0x4c,
        0x51,
        0x51
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public c:Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;

.field public d:Ljava/lang/Object;

.field public e:I

.field public f:I

.field public g:I

.field public final synthetic h:Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;->h:Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;->h:Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;-><init>(Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;->g:I

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;->h:Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    iget v2, v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;->e:I

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;->d:Ljava/lang/Object;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;->c:Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v10, p1

    check-cast v10, Lkotlin/Result;

    iget-object v10, v10, Lkotlin/Result;->b:Ljava/lang/Object;

    move-object/from16 v19, v9

    move v9, v2

    move-object/from16 v2, v19

    goto/16 :goto_5

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_1
    iget v2, v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;->f:I

    iget v3, v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;->e:I

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;->d:Ljava/lang/Object;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;->c:Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v11, v3

    move v3, v2

    move v2, v11

    move-object v11, v9

    move-object v9, v10

    move-object/from16 v10, p1

    goto/16 :goto_3

    :cond_2
    iget v2, v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;->e:I

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;->d:Ljava/lang/Object;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;->c:Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v12, p1

    check-cast v12, Lkotlin/Result;

    iget-object v12, v12, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v3, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object v11, v2

    move-object v10, v3

    move v2, v7

    :goto_0
    invoke-interface {v11}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    iget-object v12, v10, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;->c:Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;->c:Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;->d:Ljava/lang/Object;

    iput v2, v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;->e:I

    iput v7, v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;->f:I

    iput v6, v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;->g:I

    invoke-virtual {v12, v0}, Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v1, :cond_4

    goto/16 :goto_4

    :cond_4
    :goto_1
    sget-object v13, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v13, v12, Lkotlin/Result$Failure;

    if-nez v13, :cond_5

    check-cast v12, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    iget-object v14, v12, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;->a:Ljava/lang/String;

    iget-object v15, v12, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;->b:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    iget-object v6, v15, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;->a:Ljava/lang/String;

    iget-object v15, v15, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;->d:Ljava/lang/String;

    iget-boolean v12, v12, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;->c:Z

    const/16 v18, 0x0

    move/from16 v17, v12

    move-object/from16 v16, v15

    move-object v15, v6

    invoke-direct/range {v13 .. v18}, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object v12, v13

    :cond_5
    sget-object v6, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;->f:Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;->g:Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    instance-of v13, v12, Lkotlin/Result$Failure;

    if-eqz v13, :cond_6

    move-object v12, v6

    :cond_6
    check-cast v12, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    invoke-interface {v11, v9, v12}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v2, v3, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    move v6, v7

    :goto_2
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    iget-object v10, v3, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;->c:Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;->d:Ljava/lang/Object;

    iput v6, v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;->e:I

    iput v7, v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;->f:I

    iput v5, v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;->g:I

    invoke-virtual {v10, v0}, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_7

    goto :goto_4

    :cond_7
    move-object v11, v9

    move-object v9, v2

    move v2, v6

    move-object v6, v11

    move-object v11, v3

    move v3, v7

    :goto_3
    check-cast v10, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;->c:Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;->d:Ljava/lang/Object;

    iput v2, v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;->e:I

    iput v3, v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;->f:I

    iput v4, v0, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl$retrieveUserAvatar$1;->g:I

    invoke-interface {v10, v0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_8

    :goto_4
    return-object v1

    :cond_8
    move-object v3, v9

    move v9, v2

    move-object v2, v3

    move-object v3, v6

    move-object v6, v11

    :goto_5
    sget-object v11, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v11, v10, Lkotlin/Result$Failure;

    if-eqz v11, :cond_9

    move-object v10, v8

    :cond_9
    check-cast v10, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    if-eqz v10, :cond_a

    iget-object v10, v10, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->r:Ljava/lang/String;

    goto :goto_6

    :cond_a
    move-object v10, v8

    :goto_6
    invoke-interface {v2, v3, v10}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_b
    move-object v3, v6

    move v6, v9

    goto :goto_2

    :cond_c
    const/4 v6, 0x1

    goto/16 :goto_0
.end method
