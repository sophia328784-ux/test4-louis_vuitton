.class final Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ModelSizeSliderKt$ModelSizeSlider$2$1;
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
    c = "com.vuitton.android.presentation.screen.pdp.contextualsizing.components.ModelSizeSliderKt$ModelSizeSlider$2$1"
    f = "ModelSizeSlider.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Landroidx/compose/runtime/MutableState;

.field public final synthetic g:Landroidx/compose/runtime/MutableState;

.field public final synthetic h:Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTracker;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroidx/compose/foundation/pager/PagerState;Ljava/lang/String;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTracker;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ModelSizeSliderKt$ModelSizeSlider$2$1;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ModelSizeSliderKt$ModelSizeSlider$2$1;->c:Landroidx/compose/foundation/pager/PagerState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ModelSizeSliderKt$ModelSizeSlider$2$1;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ModelSizeSliderKt$ModelSizeSlider$2$1;->e:Landroid/content/Context;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ModelSizeSliderKt$ModelSizeSlider$2$1;->f:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ModelSizeSliderKt$ModelSizeSlider$2$1;->g:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ModelSizeSliderKt$ModelSizeSlider$2$1;->h:Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTracker;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ModelSizeSliderKt$ModelSizeSlider$2$1;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ModelSizeSliderKt$ModelSizeSlider$2$1;->g:Landroidx/compose/runtime/MutableState;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ModelSizeSliderKt$ModelSizeSlider$2$1;->h:Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTracker;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ModelSizeSliderKt$ModelSizeSlider$2$1;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ModelSizeSliderKt$ModelSizeSlider$2$1;->c:Landroidx/compose/foundation/pager/PagerState;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ModelSizeSliderKt$ModelSizeSlider$2$1;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ModelSizeSliderKt$ModelSizeSlider$2$1;->e:Landroid/content/Context;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ModelSizeSliderKt$ModelSizeSlider$2$1;->f:Landroidx/compose/runtime/MutableState;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ModelSizeSliderKt$ModelSizeSlider$2$1;-><init>(Ljava/util/List;Landroidx/compose/foundation/pager/PagerState;Ljava/lang/String;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTracker;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ModelSizeSliderKt$ModelSizeSlider$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ModelSizeSliderKt$ModelSizeSlider$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ModelSizeSliderKt$ModelSizeSlider$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget p1, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ModelSizeSliderKt;->a:F

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ModelSizeSliderKt$ModelSizeSlider$2$1;->f:Landroidx/compose/runtime/MutableState;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ModelSizeSliderKt$ModelSizeSlider$2$1;->g:Landroidx/compose/runtime/MutableState;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ModelSizeSliderKt$ModelSizeSlider$2$1;->h:Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTracker;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ModelSizeSliderKt$ModelSizeSlider$2$1;->c:Landroidx/compose/foundation/pager/PagerState;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ModelSizeSliderKt$ModelSizeSlider$2$1;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->r()I

    move-result v0

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ModelSizeVariationUiModel;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ModelSizeVariationUiModel;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v3, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel$OnClickOnModelSize;

    invoke-direct {v3, v0, v1}, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel$OnClickOnModelSize;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->r()I

    move-result p1

    invoke-static {p1, v4}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ModelSizeVariationUiModel;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ModelSizeVariationUiModel;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel$OnSwipeOnModelSize;

    invoke-direct {v2, p1, v1}, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel$OnSwipeOnModelSize;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ModelSizeSliderKt$ModelSizeSlider$2$1;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ModelSizeSliderKt$ModelSizeSlider$2$1;->e:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/utils/AccessibilityUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
