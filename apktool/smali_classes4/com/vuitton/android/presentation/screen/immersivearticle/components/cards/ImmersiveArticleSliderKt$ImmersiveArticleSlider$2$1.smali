.class final Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1;
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
    c = "com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1"
    f = "ImmersiveArticleSlider.kt"
    l = {
        0x38
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSliderUiModel;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSliderUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1;->c:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1;->d:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1;->e:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1;->f:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSliderUiModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1;->e:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1;->f:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSliderUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1;->c:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1;->d:Lkotlin/jvm/functions/Function1;

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSliderUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1;->c:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object p1, p1, Landroidx/compose/foundation/lazy/LazyListState;->g:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-interface {p1}, Landroidx/compose/foundation/interaction/InteractionSource;->c()Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p1

    new-instance v3, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1$1;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1;->f:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSliderUiModel;

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1;->c:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1;->e:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1;->d:Lkotlin/jvm/functions/Function1;

    invoke-direct/range {v3 .. v8}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSliderUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    iput v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1;->b:I

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/flow/FlowKt;->g(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
