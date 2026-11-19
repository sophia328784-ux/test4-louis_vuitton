.class final Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$1$1;
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
    c = "com.vuitton.android.presentation.screen.cart.components.NativeCartComposableKt$NativeCartComposable$1$1"
    f = "NativeCartComposable.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;

.field public final synthetic c:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$1$1;->b:Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$1$1;->c:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$1$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$1$1;->b:Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$1$1;->c:Landroidx/compose/runtime/MutableState;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$1$1;->c:Landroidx/compose/runtime/MutableState;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;->c:Ljava/util/List;

    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/Iterable;

    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->s:Z

    if-nez v1, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :cond_3
    :goto_1
    sget-object p1, Lcom/vuitton/foundation/model/domain/model/product/ReinsurancePageType;->CART:Lcom/vuitton/foundation/model/domain/model/product/ReinsurancePageType;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$1$1;->b:Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;

    invoke-interface {p0, v0, p1}, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;->w5(ZLcom/vuitton/foundation/model/domain/model/product/ReinsurancePageType;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
