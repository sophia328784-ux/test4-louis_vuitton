.class public final Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$special$$inlined$combine$1$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "-",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;",
        ">;[",
        "Ljava/lang/Object;",
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
        "\u0000\u0016\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\u0008\u0000\u0010\u0000\"\u0006\u0008\u0001\u0010\u0001\u0018\u0001*\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0003H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "R",
        "T",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "",
        "it",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl$special$$inlined$combine$1$3"
    f = "OrderViewModelImpl.kt"
    l = {
        0xea
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Lkotlinx/coroutines/flow/FlowCollector;

.field public synthetic d:[Ljava/lang/Object;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$special$$inlined$combine$1$3;->e:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, [Ljava/lang/Object;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$special$$inlined$combine$1$3;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$special$$inlined$combine$1$3;->e:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;

    invoke-direct {v0, p3, p0}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$special$$inlined$combine$1$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$special$$inlined$combine$1$3;->c:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$special$$inlined$combine$1$3;->d:[Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$special$$inlined$combine$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$special$$inlined$combine$1$3;->c:Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$special$$inlined$combine$1$3;->d:[Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$special$$inlined$combine$1$3;->b:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    if-ne v4, v6, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const/4 v4, 0x2

    aget-object v7, v2, v4

    check-cast v7, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    const/4 v8, 0x3

    aget-object v9, v2, v8

    check-cast v9, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    const/16 v10, 0xa

    aget-object v11, v2, v10

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v11, Lcom/vuitton/android/presentation/screen/orders/models/OrderFeatureFlags;

    const/4 v12, 0x0

    aget-object v12, v2, v12

    move-object v14, v12

    check-cast v14, Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;

    aget-object v12, v2, v6

    move-object v15, v12

    check-cast v15, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;

    aget-object v4, v2, v4

    move-object/from16 v16, v4

    check-cast v16, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    aget-object v4, v2, v8

    move-object/from16 v17, v4

    check-cast v17, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    const/4 v4, 0x4

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    const/4 v4, 0x5

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    const/4 v4, 0x6

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    const/4 v4, 0x7

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    const/16 v4, 0x8

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    const/16 v4, 0x9

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    aget-object v2, v2, v10

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v24, v2

    check-cast v24, Lcom/vuitton/android/presentation/screen/orders/models/OrderFeatureFlags;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$special$$inlined$combine$1$3;->e:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lkotlin/collections/builders/SetBuilder;

    invoke-direct {v2}, Lkotlin/collections/builders/SetBuilder;-><init>()V

    if-eqz v7, :cond_3

    iget-object v4, v7, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;->g:Lcom/vuitton/android/presentation/screen/orders/models/DeliveryUiModel;

    if-eqz v4, :cond_3

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryUiModel;->d:Ljava/lang/String;

    if-eqz v4, :cond_3

    invoke-static {v4}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v6

    if-ne v4, v6, :cond_3

    if-eqz v9, :cond_2

    iget-boolean v4, v9, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->n:Z

    if-ne v4, v6, :cond_2

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/vuitton/android/presentation/screen/orders/models/ShortcutDisplayUiModel;->TRACK_ORDER:Lcom/vuitton/android/presentation/screen/orders/models/ShortcutDisplayUiModel;

    invoke-virtual {v2, v4}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    iget-boolean v4, v11, Lcom/vuitton/android/presentation/screen/orders/models/OrderFeatureFlags;->d:Z

    if-eqz v4, :cond_4

    if-eqz v7, :cond_4

    iget-object v4, v7, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;->d:Ljava/lang/String;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    sget-object v4, Lcom/vuitton/android/presentation/screen/orders/models/ShortcutDisplayUiModel;->DOWNLOAD_INVOICE:Lcom/vuitton/android/presentation/screen/orders/models/ShortcutDisplayUiModel;

    invoke-virtual {v2, v4}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v7, :cond_7

    iget-boolean v4, v7, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;->i:Z

    if-ne v4, v6, :cond_7

    if-eqz v9, :cond_5

    iget-boolean v4, v9, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->n:Z

    if-ne v4, v6, :cond_5

    goto :goto_1

    :cond_5
    iget-boolean v4, v11, Lcom/vuitton/android/presentation/screen/orders/models/OrderFeatureFlags;->a:Z

    iget-boolean v7, v11, Lcom/vuitton/android/presentation/screen/orders/models/OrderFeatureFlags;->b:Z

    if-eqz v7, :cond_6

    if-eqz v9, :cond_6

    iget-boolean v7, v9, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->e:Z

    if-ne v7, v6, :cond_6

    sget-object v4, Lcom/vuitton/android/presentation/screen/orders/models/ShortcutDisplayUiModel;->REQUEST_RETURN_OR_EXCHANGE:Lcom/vuitton/android/presentation/screen/orders/models/ShortcutDisplayUiModel;

    invoke-virtual {v2, v4}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    if-eqz v4, :cond_7

    sget-object v4, Lcom/vuitton/android/presentation/screen/orders/models/ShortcutDisplayUiModel;->REQUEST_RETURN:Lcom/vuitton/android/presentation/screen/orders/models/ShortcutDisplayUiModel;

    invoke-virtual {v2, v4}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_1
    invoke-static {v2}, Lkotlin/collections/SetsKt;->a(Lkotlin/collections/builders/SetBuilder;)Lkotlin/collections/builders/SetBuilder;

    move-result-object v25

    new-instance v13, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;

    invoke-direct/range {v13 .. v25}, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;-><init>(Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;ZZZZZZLcom/vuitton/android/presentation/screen/orders/models/OrderFeatureFlags;Ljava/util/Set;)V

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$special$$inlined$combine$1$3;->c:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$special$$inlined$combine$1$3;->d:[Ljava/lang/Object;

    iput v6, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$special$$inlined$combine$1$3;->b:I

    invoke-interface {v1, v13, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_8

    return-object v3

    :cond_8
    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
