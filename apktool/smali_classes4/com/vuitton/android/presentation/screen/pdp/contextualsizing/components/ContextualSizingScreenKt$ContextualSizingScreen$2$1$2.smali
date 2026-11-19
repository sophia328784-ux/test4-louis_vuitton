.class final Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ContextualSizingScreenKt$ContextualSizingScreen$2$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/pager/PagerState;Ljava/util/ArrayList;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ContextualSizingScreenKt$ContextualSizingScreen$2$1$2;->b:Landroidx/compose/foundation/pager/PagerState;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ContextualSizingScreenKt$ContextualSizingScreen$2$1$2;->c:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ContextualSizingScreenKt$ContextualSizingScreen$2$1$2;->d:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final b(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ContextualSizingScreenKt$ContextualSizingScreen$2$1$2$emit$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ContextualSizingScreenKt$ContextualSizingScreen$2$1$2$emit$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ContextualSizingScreenKt$ContextualSizingScreen$2$1$2$emit$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ContextualSizingScreenKt$ContextualSizingScreen$2$1$2$emit$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ContextualSizingScreenKt$ContextualSizingScreen$2$1$2$emit$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ContextualSizingScreenKt$ContextualSizingScreen$2$1$2$emit$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ContextualSizingScreenKt$ContextualSizingScreen$2$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ContextualSizingScreenKt$ContextualSizingScreen$2$1$2$emit$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ContextualSizingScreenKt$ContextualSizingScreen$2$1$2$emit$1;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget p1, v0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ContextualSizingScreenKt$ContextualSizingScreen$2$1$2$emit$1;->b:I

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ContextualSizingScreenKt$ContextualSizingScreen$2$1$2;->b:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {p2}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v2

    if-eq v2, p1, :cond_3

    iput p1, v0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ContextualSizingScreenKt$ContextualSizingScreen$2$1$2$emit$1;->b:I

    iput v4, v0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ContextualSizingScreenKt$ContextualSizingScreen$2$1$2$emit$1;->e:I

    const/4 v2, 0x6

    invoke-static {p2, p1, v3, v0, v2}, Landroidx/compose/foundation/pager/PagerState;->g(Landroidx/compose/foundation/pager/PagerState;ILandroidx/compose/animation/core/TweenSpec;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ContextualSizingScreenKt$ContextualSizingScreen$2$1$2;->c:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ModelSizeVariationUiModel;

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ContextualSizingScreenKt$ContextualSizingScreen$2$1$2;->d:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ContextualSizingScreenKt$ContextualSizingScreen$2$1$2;->b(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
