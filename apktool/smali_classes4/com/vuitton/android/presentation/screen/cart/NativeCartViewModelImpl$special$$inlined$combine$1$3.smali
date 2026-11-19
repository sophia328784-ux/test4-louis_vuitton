.class public final Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$special$$inlined$combine$1$3;
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
        "Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;",
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
    c = "com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl$special$$inlined$combine$1$3"
    f = "NativeCartViewModelImpl.kt"
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

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$special$$inlined$combine$1$3;->e:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

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

    new-instance v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$special$$inlined$combine$1$3;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$special$$inlined$combine$1$3;->e:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    invoke-direct {v0, p3, p0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$special$$inlined$combine$1$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$special$$inlined$combine$1$3;->c:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$special$$inlined$combine$1$3;->d:[Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$special$$inlined$combine$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$special$$inlined$combine$1$3;->c:Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$special$$inlined$combine$1$3;->d:[Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$special$$inlined$combine$1$3;->b:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    if-ne v4, v5, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const/4 v4, 0x0

    aget-object v4, v2, v4

    move-object v8, v4

    check-cast v8, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    aget-object v4, v2, v5

    move-object v9, v4

    check-cast v9, Ljava/util/List;

    const/4 v4, 0x2

    aget-object v7, v2, v4

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    const/4 v7, 0x3

    aget-object v7, v2, v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    const/4 v7, 0x4

    aget-object v7, v2, v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    const/4 v7, 0x5

    aget-object v7, v2, v7

    move-object v15, v7

    check-cast v15, Lkotlin/Pair;

    const/4 v7, 0x6

    aget-object v7, v2, v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v16, v7

    check-cast v16, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartFeatureFlags;

    const/4 v7, 0x7

    aget-object v7, v2, v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v17, v7

    check-cast v17, Ljava/util/ArrayList;

    const/16 v7, 0x8

    aget-object v7, v2, v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/cart/models/CartItemIdUiModel;

    if-eqz v7, :cond_2

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/cart/models/CartItemIdUiModel;->b:Ljava/lang/String;

    move-object v10, v7

    goto :goto_0

    :cond_2
    move-object v10, v6

    :goto_0
    const/16 v7, 0x9

    aget-object v7, v2, v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v7, Ljava/util/List;

    const/16 v12, 0xa

    aget-object v12, v2, v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v12, Ljava/util/List;

    const/16 v18, 0xb

    aget-object v18, v2, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v21, v18

    check-cast v21, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    const/16 v18, 0xc

    aget-object v18, v2, v18

    move-object/from16 v22, v18

    check-cast v22, Lcom/vuitton/android/presentation/screen/cart/models/CartContributionUiModel;

    const/16 v18, 0xd

    aget-object v2, v2, v18

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    check-cast v7, Ljava/lang/Iterable;

    invoke-static {v7}, Lkotlinx/collections/immutable/ExtensionsKt;->a(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/ImmutableList;

    move-result-object v18

    check-cast v12, Ljava/lang/Iterable;

    invoke-static {v12}, Lkotlinx/collections/immutable/ExtensionsKt;->a(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/ImmutableList;

    move-result-object v19

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$special$$inlined$combine$1$3;->e:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iget-object v12, v7, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->K:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v12}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$None;->a:Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$None;

    if-eqz v12, :cond_3

    iget-object v12, v12, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;->e:Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;

    if-nez v12, :cond_4

    :cond_3
    move-object v12, v5

    :cond_4
    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->Y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/cart/models/CartContributionUiModel;

    if-eqz v7, :cond_5

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/cart/models/CartContributionUiModel;->a:Lcom/vuitton/android/presentation/screen/cart/models/ContributionGiftingUiModel;

    if-eqz v7, :cond_5

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/cart/models/ContributionGiftingUiModel;->a:Ljava/lang/String;

    goto :goto_1

    :cond_5
    move-object v7, v6

    :goto_1
    if-eqz v7, :cond_6

    goto :goto_2

    :cond_6
    move-object v7, v6

    :goto_2
    instance-of v4, v12, Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$Message;

    if-eqz v4, :cond_7

    new-instance v4, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/CardItemUiModel;

    new-instance v5, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    move/from16 v20, v2

    const v2, 0x7f140504

    move-object/from16 v23, v8

    const/4 v8, 0x2

    invoke-direct {v5, v2, v6, v8, v6}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v2, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;

    check-cast v12, Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$Message;

    iget-object v8, v12, Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$Message;->b:Ljava/lang/String;

    invoke-direct {v2, v8}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v2, v7, v6}, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/CardItemUiModel;-><init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_3

    :cond_7
    move/from16 v20, v2

    move-object/from16 v23, v8

    instance-of v2, v12, Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$Blank;

    if-eqz v2, :cond_8

    new-instance v2, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/CardItemUiModel;

    new-instance v4, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v5, 0x7f1404fd

    const/4 v8, 0x2

    invoke-direct {v4, v5, v6, v8, v6}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v5, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v12, 0x7f1404fe

    invoke-direct {v5, v12, v6, v8, v6}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v2, v4, v5, v7, v6}, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/CardItemUiModel;-><init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_3

    :cond_8
    invoke-virtual {v12, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :goto_3
    new-instance v7, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

    const/16 v24, 0x1000

    const/16 v25, 0x0

    move/from16 v12, v20

    const/16 v20, 0x0

    move-object/from16 v8, v23

    move-object/from16 v23, v2

    invoke-direct/range {v7 .. v25}, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;-><init>(Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;Ljava/util/List;Ljava/lang/String;ZZZZLkotlin/Pair;Lcom/vuitton/android/presentation/screen/cart/models/NativeCartFeatureFlags;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;ZLcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/presentation/screen/cart/models/CartContributionUiModel;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$special$$inlined$combine$1$3;->c:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$special$$inlined$combine$1$3;->d:[Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$special$$inlined$combine$1$3;->b:I

    invoke-interface {v1, v7, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_9

    return-object v3

    :cond_9
    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_a
    invoke-static {}, Lv40;->g()V

    return-object v6
.end method
