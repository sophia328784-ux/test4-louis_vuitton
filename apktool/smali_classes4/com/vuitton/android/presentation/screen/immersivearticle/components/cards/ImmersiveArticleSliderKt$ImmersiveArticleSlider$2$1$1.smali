.class final Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/foundation/interaction/Interaction;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroidx/compose/foundation/interaction/Interaction;"
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
    c = "com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1$1"
    f = "ImmersiveArticleSlider.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

.field public final synthetic e:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSliderUiModel;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSliderUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1$1;->c:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1$1;->d:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1$1;->e:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1$1;->f:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSliderUiModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1$1;->e:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1$1;->f:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSliderUiModel;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1$1;->d:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1$1;->c:Lkotlin/jvm/functions/Function1;

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSliderUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1$1;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/foundation/interaction/Interaction;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1$1;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/interaction/Interaction;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    instance-of p1, v0, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnSwipeSliderEvent;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1$1;->e:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->h()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1$1;->f:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSliderUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSliderUiModel;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1$1;->d:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    invoke-direct {p1, v2, v0, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnSwipeSliderEvent;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleSliderKt$ImmersiveArticleSlider$2$1$1;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
