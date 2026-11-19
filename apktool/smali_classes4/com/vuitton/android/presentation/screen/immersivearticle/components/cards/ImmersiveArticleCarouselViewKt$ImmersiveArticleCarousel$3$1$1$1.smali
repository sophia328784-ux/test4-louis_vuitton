.class final Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$3$1$1$1;
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
    c = "com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$3$1$1$1"
    f = "ImmersiveArticleCarouselView.kt"
    l = {
        0x64
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/immersivearticle/models/CarouselArticleSectionUiModel;

.field public final synthetic f:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(ZLandroidx/compose/foundation/pager/PagerState;Lcom/vuitton/android/presentation/screen/immersivearticle/models/CarouselArticleSectionUiModel;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$3$1$1$1;->c:Z

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$3$1$1$1;->d:Landroidx/compose/foundation/pager/PagerState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$3$1$1$1;->e:Lcom/vuitton/android/presentation/screen/immersivearticle/models/CarouselArticleSectionUiModel;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$3$1$1$1;->f:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$3$1$1$1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$3$1$1$1;->e:Lcom/vuitton/android/presentation/screen/immersivearticle/models/CarouselArticleSectionUiModel;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$3$1$1$1;->f:Landroidx/compose/runtime/MutableState;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$3$1$1$1;->c:Z

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$3$1$1$1;->d:Landroidx/compose/foundation/pager/PagerState;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$3$1$1$1;-><init>(ZLandroidx/compose/foundation/pager/PagerState;Lcom/vuitton/android/presentation/screen/immersivearticle/models/CarouselArticleSectionUiModel;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$3$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$3$1$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$3$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$3$1$1$1;->b:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$3$1$1$1;->f:Landroidx/compose/runtime/MutableState;

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$3$1$1$1;->c:Z

    if-eqz p1, :cond_3

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$3$1$1$1;->d:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {p1}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v1

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$3$1$1$1;->e:Lcom/vuitton/android/presentation/screen/immersivearticle/models/CarouselArticleSectionUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/immersivearticle/models/CarouselArticleSectionUiModel;->d:Ljava/util/List;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->F(Ljava/util/List;)I

    move-result v5

    if-ge v1, v5, :cond_3

    invoke-virtual {p1}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v1

    add-int/2addr v1, v4

    iput v4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleCarouselViewKt$ImmersiveArticleCarousel$3$1$1$1;->b:I

    const/4 v4, 0x6

    invoke-static {p1, v1, v2, p0, v4}, Landroidx/compose/foundation/pager/PagerState;->g(Landroidx/compose/foundation/pager/PagerState;ILandroidx/compose/animation/core/TweenSpec;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
