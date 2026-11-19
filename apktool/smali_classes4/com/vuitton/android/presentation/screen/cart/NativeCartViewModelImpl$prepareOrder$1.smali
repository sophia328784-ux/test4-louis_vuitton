.class final Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;
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
    c = "com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl$prepareOrder$1"
    f = "NativeCartViewModelImpl.kt"
    l = {
        0x2dd,
        0x2e5,
        0x2ea,
        0x2ee,
        0x2f2,
        0x2f9,
        0x2fb
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public i:I

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic k:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->k:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->k:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    invoke-direct {v0, p2, p0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->k:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->K:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->j:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->i:I

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_0

    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :pswitch_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->b:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_9

    :pswitch_1
    iget v5, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->f:I

    iget v0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->e:I

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->c:Ljava/lang/Object;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->b:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p1, v1

    move v1, v0

    move-object v0, p1

    move-object p1, v4

    goto/16 :goto_7

    :pswitch_2
    iget v0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->e:I

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->d:Ljava/lang/Object;

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/cart/PrepareOrder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->c:Ljava/lang/Object;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->b:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_6

    :pswitch_3
    iget v0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->e:I

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->b:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    :try_start_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v1

    :goto_0
    move-object v1, p1

    goto/16 :goto_5

    :pswitch_4
    iget v0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->e:I

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->b:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    :try_start_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    :pswitch_5
    iget v0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->g:I

    iget v1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->f:I

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->h:Z

    iget v7, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->e:I

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->c:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->b:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    :try_start_5
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v10, v1

    move v1, v0

    move-object v0, v8

    move v8, v3

    move v3, v10

    goto/16 :goto_2

    :pswitch_6
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_7
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModelKt;->a(Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;)Z

    move-result p1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->D:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v6, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->j:Ljava/lang/Object;

    iput v3, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->i:I

    invoke-interface {p1, v0, p0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_f

    goto/16 :goto_8

    :cond_0
    :try_start_6
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->M:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;->g:Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;

    if-eqz p1, :cond_7

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;->b:Z

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;->c:Ljava/util/List;

    if-eqz p1, :cond_7

    check-cast p1, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {p1, v8}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iget-object v8, v8, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->j:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->o:Lcom/vuitton/android/domain/usecase/cart/UpdateShoppingBagUseCase;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;->e:Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;

    if-nez v1, :cond_3

    :cond_2
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$None;->a:Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$None;

    :cond_3
    iput-object v6, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->j:Ljava/lang/Object;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->b:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iput-object v6, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->c:Ljava/lang/Object;

    iput v5, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->e:I

    iput-boolean v3, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->h:Z

    iput v5, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->f:I

    iput v5, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->g:I

    const/4 v8, 0x2

    iput v8, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->i:I

    invoke-virtual {p1, v1, v7, p0, v3}, Lcom/vuitton/android/domain/usecase/cart/UpdateShoppingBagUseCase;->a(Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;Ljava/util/ArrayList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;Z)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_4

    goto/16 :goto_8

    :cond_4
    move v8, v3

    move v1, v5

    move v3, v1

    move v7, v3

    :goto_2
    sget-object v9, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v9, p1, Lkotlin/Result$Failure;

    if-nez v9, :cond_6

    move-object v9, p1

    check-cast v9, Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    iput-object v6, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->j:Ljava/lang/Object;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->b:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iput-object v6, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->d:Ljava/lang/Object;

    iput v7, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->e:I

    iput-boolean v8, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->h:Z

    iput v3, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->f:I

    iput v1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->g:I

    iput v4, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->i:I

    invoke-virtual {v0, v9, p0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->Dc(Lcom/vuitton/foundation/model/domain/model/cart/Cart;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_5

    goto/16 :goto_8

    :cond_5
    move-object v1, v0

    move v0, v7

    :goto_3
    move v7, v0

    move-object v0, v1

    :cond_6
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    goto :goto_4

    :cond_7
    move v7, v5

    :goto_4
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->n:Lcom/vuitton/android/domain/usecase/cart/PutPrepareOrderUseCase;

    iput-object v6, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->j:Ljava/lang/Object;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->b:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iput-object v6, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->c:Ljava/lang/Object;

    iput-object v6, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->d:Ljava/lang/Object;

    iput v7, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->e:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->i:I

    invoke-virtual {p1, p0}, Lcom/vuitton/android/domain/usecase/cart/PutPrepareOrderUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_8

    goto/16 :goto_8

    :cond_8
    move-object v3, v0

    move v0, v7

    goto/16 :goto_0

    :goto_5
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, v1, Lkotlin/Result$Failure;

    if-nez p1, :cond_a

    move-object p1, v1

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/cart/PrepareOrder;

    iget-object v7, v3, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->M:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v7, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-boolean p1, p1, Lcom/vuitton/foundation/model/domain/model/cart/PrepareOrder;->a:Z

    if-eqz p1, :cond_9

    iget-object p1, v3, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->D:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v6, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->j:Ljava/lang/Object;

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->b:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->c:Ljava/lang/Object;

    iput-object v6, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->d:Ljava/lang/Object;

    iput v0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->e:I

    iput v5, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->f:I

    const/4 v7, 0x5

    iput v7, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->i:I

    invoke-interface {p1, v4, p0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_a

    goto :goto_8

    :cond_9
    invoke-static {v3}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance v7, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$getClassicCheckoutUrl$1;

    invoke-direct {v7, v6, v3}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$getClassicCheckoutUrl$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;)V

    invoke-static {p1, v6, v6, v7, v4}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_a
    :goto_6
    move-object p1, v3

    move-object v3, v1

    invoke-static {v3}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v4, p1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->M:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->j:Ljava/lang/Object;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->b:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->c:Ljava/lang/Object;

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->d:Ljava/lang/Object;

    iput v0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->e:I

    iput v5, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->f:I

    const/4 v4, 0x6

    iput v4, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->i:I

    invoke-static {p1, v1, p0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->zc(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_b

    goto :goto_8

    :cond_b
    move-object v10, v1

    move v1, v0

    move-object v0, v10

    :goto_7
    instance-of v4, v0, Lcom/vuitton/foundation/model/domain/error/cart/OutOfStockError;

    if-eqz v4, :cond_d

    iget-object v4, p1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->D:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v6, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->j:Ljava/lang/Object;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->b:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->c:Ljava/lang/Object;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->d:Ljava/lang/Object;

    iput v1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->e:I

    iput v5, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->f:I

    const/4 v1, 0x7

    iput v1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;->i:I

    invoke-interface {v4, v7, p0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_c

    :goto_8
    return-object v2

    :cond_c
    move-object p0, p1

    :goto_9
    move-object p1, p0

    :cond_d
    iget-object p0, p1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string p1, "NativeCartViewModelImpl"

    const-string v1, "Unable to prepare order"

    invoke-interface {p0, p1, v1, v0}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    new-instance p0, Lkotlin/Result;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_a

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :cond_f
    :goto_a
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
