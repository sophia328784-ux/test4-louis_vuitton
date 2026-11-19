.class final Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$addOrRemoveFromWishlist$1;
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
    c = "com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModelImpl$addOrRemoveFromWishlist$1"
    f = "AICompanionViewModelImpl.kt"
    l = {
        0x165,
        0x167,
        0x170,
        0x178,
        0x17b,
        0x184
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

.field public d:Ljava/lang/Throwable;

.field public e:I

.field public final synthetic f:Z

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$addOrRemoveFromWishlist$1;->f:Z

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$addOrRemoveFromWishlist$1;->g:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$addOrRemoveFromWishlist$1;->h:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$addOrRemoveFromWishlist$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$addOrRemoveFromWishlist$1;->g:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$addOrRemoveFromWishlist$1;->h:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$addOrRemoveFromWishlist$1;->f:Z

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$addOrRemoveFromWishlist$1;-><init>(ZLcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$addOrRemoveFromWishlist$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$addOrRemoveFromWishlist$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$addOrRemoveFromWishlist$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$addOrRemoveFromWishlist$1;->g:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->s:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$addOrRemoveFromWishlist$1;->e:I

    const v5, 0x7f140967

    const/4 v6, 0x1

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$addOrRemoveFromWishlist$1;->h:Ljava/lang/String;

    const/4 v8, 0x2

    const/4 v9, 0x0

    packed-switch v4, :pswitch_data_0

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v9

    :pswitch_0
    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$addOrRemoveFromWishlist$1;->d:Ljava/lang/Throwable;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$addOrRemoveFromWishlist$1;->c:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v6, v1

    move-object v1, v0

    goto/16 :goto_5

    :pswitch_1
    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$addOrRemoveFromWishlist$1;->c:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    check-cast v4, Lkotlin/Unit;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$addOrRemoveFromWishlist$1;->b:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    check-cast v4, Lkotlin/Result;

    iget-object v4, v4, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_3
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$addOrRemoveFromWishlist$1;->c:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_4
    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$addOrRemoveFromWishlist$1;->c:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    check-cast v4, Lkotlin/Unit;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$addOrRemoveFromWishlist$1;->b:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    check-cast v4, Lkotlin/Result;

    iget-object v4, v4, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :pswitch_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-boolean v4, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$addOrRemoveFromWishlist$1;->f:Z

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;

    sget-object v10, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    iput v6, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$addOrRemoveFromWishlist$1;->e:I

    invoke-virtual {v4, v7, v0}, Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_0

    goto/16 :goto_4

    :cond_0
    :goto_0
    sget-object v6, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v6, v4, Lkotlin/Result$Failure;

    if-nez v6, :cond_1

    move-object v6, v4

    check-cast v6, Lkotlin/Unit;

    const/4 v6, 0x0

    invoke-static {v1, v7, v6}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;Ljava/lang/String;Z)V

    iget-object v10, v1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->d:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v11, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v6, 0x7f140dfb

    invoke-direct {v11, v6, v9, v8, v9}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v14, 0x0

    const/16 v15, 0x34

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v6

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$addOrRemoveFromWishlist$1;->b:Ljava/lang/Object;

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$addOrRemoveFromWishlist$1;->c:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    iput v8, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$addOrRemoveFromWishlist$1;->e:I

    invoke-interface {v2, v6, v0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_1

    goto/16 :goto_4

    :cond_1
    :goto_1
    invoke-static {v4}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v7, v1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    sget-object v10, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->v:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Error removing product from wishlist: "

    invoke-static {v12, v11, v7, v10, v6}, La;->y(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v13, v1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->d:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v14, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    invoke-direct {v14, v5, v9, v8, v9}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v17, 0x0

    const/16 v18, 0x3c

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v1

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$addOrRemoveFromWishlist$1;->b:Ljava/lang/Object;

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$addOrRemoveFromWishlist$1;->c:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    const/4 v4, 0x3

    iput v4, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$addOrRemoveFromWishlist$1;->e:I

    invoke-interface {v2, v1, v0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_6

    goto :goto_4

    :cond_2
    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;

    sget-object v10, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    const/4 v10, 0x4

    iput v10, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$addOrRemoveFromWishlist$1;->e:I

    invoke-virtual {v4, v7, v0}, Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_3

    goto :goto_4

    :cond_3
    :goto_2
    sget-object v10, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v10, v4, Lkotlin/Result$Failure;

    if-nez v10, :cond_4

    move-object v10, v4

    check-cast v10, Lkotlin/Unit;

    invoke-static {v1, v7, v6}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;Ljava/lang/String;Z)V

    iget-object v11, v1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->d:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v12, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v6, 0x7f140de9

    invoke-direct {v12, v6, v9, v8, v9}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v15, 0x0

    const/16 v16, 0x34

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v6

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$addOrRemoveFromWishlist$1;->b:Ljava/lang/Object;

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$addOrRemoveFromWishlist$1;->c:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    const/4 v7, 0x5

    iput v7, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$addOrRemoveFromWishlist$1;->e:I

    invoke-interface {v2, v6, v0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_4

    goto :goto_4

    :cond_4
    :goto_3
    invoke-static {v4}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v10, v1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->d:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v11, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    invoke-direct {v11, v5, v9, v8, v9}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v14, 0x0

    const/16 v15, 0x3c

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v5

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$addOrRemoveFromWishlist$1;->b:Ljava/lang/Object;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$addOrRemoveFromWishlist$1;->c:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$addOrRemoveFromWishlist$1;->d:Ljava/lang/Throwable;

    const/4 v4, 0x6

    iput v4, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$addOrRemoveFromWishlist$1;->e:I

    invoke-interface {v2, v5, v0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_5

    :goto_4
    return-object v3

    :cond_5
    :goto_5
    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    sget-object v1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->v:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error adding product to wishlist: "

    invoke-static {v3, v2, v0, v1, v6}, La;->y(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
