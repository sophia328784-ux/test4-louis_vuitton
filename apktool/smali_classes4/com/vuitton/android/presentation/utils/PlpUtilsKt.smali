.class public abstract Lcom/vuitton/android/presentation/utils/PlpUtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(ILjava/util/List;II)I
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Lcom/vuitton/android/presentation/utils/PlpUtilsKt;->f(ILjava/util/List;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p3, p1}, Lcom/vuitton/android/presentation/utils/PlpUtilsKt;->f(ILjava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p0, p2}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/vuitton/android/presentation/utils/GridLineRange;

    instance-of p3, p3, Lcom/vuitton/android/presentation/utils/GridLineRange$BrandContentLine;

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_8

    add-int/2addr p0, v2

    invoke-static {p2, p0}, Lkotlin/collections/CollectionsKt;->q0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    instance-of p2, p0, Ljava/util/Collection;

    if-eqz p2, :cond_0

    move-object p2, p0

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v3

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move p2, v3

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/vuitton/android/presentation/utils/GridLineRange;

    instance-of p3, p3, Lcom/vuitton/android/presentation/utils/GridLineRange$BrandContentLine;

    if-eqz p3, :cond_1

    add-int/lit8 p2, p2, 0x1

    if-ltz p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->s0()V

    throw v1

    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move p1, v3

    move p3, p1

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/utils/GridLineRange;

    instance-of v1, v1, Lcom/vuitton/android/presentation/utils/GridLineRange$BrandContentLine;

    if-eqz v1, :cond_4

    add-int/lit8 p1, p1, 0x1

    if-ne p1, p2, :cond_4

    move v1, v2

    goto :goto_3

    :cond_4
    move v1, v3

    :goto_3
    if-eqz v1, :cond_5

    move v0, p3

    goto :goto_4

    :cond_5
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    if-gez v0, :cond_7

    goto/16 :goto_b

    :cond_7
    return v0

    :cond_8
    invoke-static {p0, p2}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p3

    instance-of v4, p3, Lcom/vuitton/android/presentation/utils/GridLineRange$ProductRange;

    if-eqz v4, :cond_9

    check-cast p3, Lcom/vuitton/android/presentation/utils/GridLineRange$ProductRange;

    goto :goto_5

    :cond_9
    move-object p3, v1

    :goto_5
    if-eqz p3, :cond_a

    iget-object p3, p3, Lcom/vuitton/android/presentation/utils/GridLineRange$ProductRange;->a:Lkotlin/ranges/IntRange;

    if-eqz p3, :cond_a

    iget p0, p3, Lkotlin/ranges/IntProgression;->b:I

    goto :goto_8

    :cond_a
    add-int/2addr p0, v2

    invoke-static {p2, p0}, Lkotlin/collections/CollectionsKt;->w(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/android/presentation/utils/GridLineRange;

    instance-of p3, p2, Lcom/vuitton/android/presentation/utils/GridLineRange$ProductRange;

    if-eqz p3, :cond_c

    check-cast p2, Lcom/vuitton/android/presentation/utils/GridLineRange$ProductRange;

    goto :goto_6

    :cond_c
    move-object p2, v1

    :goto_6
    if-eqz p2, :cond_d

    iget-object p2, p2, Lcom/vuitton/android/presentation/utils/GridLineRange$ProductRange;->a:Lkotlin/ranges/IntRange;

    if-eqz p2, :cond_d

    iget p2, p2, Lkotlin/ranges/IntProgression;->b:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_7

    :cond_d
    move-object p2, v1

    :goto_7
    if-eqz p2, :cond_b

    move-object v1, p2

    :cond_e
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move p2, v3

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/vuitton/android/presentation/utils/GridLineRange;

    instance-of v1, p3, Lcom/vuitton/android/presentation/utils/GridLineRange$ProductRange;

    if-eqz v1, :cond_f

    check-cast p3, Lcom/vuitton/android/presentation/utils/GridLineRange$ProductRange;

    iget-object p3, p3, Lcom/vuitton/android/presentation/utils/GridLineRange$ProductRange;->a:Lkotlin/ranges/IntRange;

    iget v1, p3, Lkotlin/ranges/IntProgression;->b:I

    iget p3, p3, Lkotlin/ranges/IntProgression;->c:I

    if-gt p0, p3, :cond_f

    if-gt v1, p0, :cond_f

    move v0, p2

    goto :goto_a

    :cond_f
    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    :cond_10
    :goto_a
    if-gez v0, :cond_11

    goto :goto_b

    :cond_11
    return v0

    :cond_12
    :goto_b
    return v3
.end method

.method public static final b(ILcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Full;->b:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Full;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 p0, p0, -0x1

    if-gez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0

    :cond_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Reduced;->b:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Reduced;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_2
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return p0
.end method

.method public static final c(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/animation/core/Animatable;Landroidx/compose/animation/core/Animatable;Lkotlin/jvm/functions/Function1;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/utils/PlpUtilsKt$launchSwitchGridAnimation$1;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p1, p2, v1}, Lcom/vuitton/android/presentation/utils/PlpUtilsKt$launchSwitchGridAnimation$1;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/Animatable;Landroidx/compose/animation/core/Animatable;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    invoke-static {p0, v1, v1, v0, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final d(Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/Modifier;
    .locals 2

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v1, "setGivenGridMode"

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {p1, p2}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModesKt;->a(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;)F

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/ZIndexModifierKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    new-instance p2, Lwd0;

    const/16 v0, 0x1b

    invoke-direct {p2, p3, p4, v0}, Lwd0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/4 p3, 0x0

    invoke-static {p0, p1, p2, p5, p3}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridState;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->g()I

    move-result p1

    invoke-static {p1, p3}, Lcom/vuitton/android/presentation/utils/PlpUtilsKt;->b(ILcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;)I

    move-result p1

    new-instance p3, Lcom/vuitton/android/presentation/utils/PlpUtilsKt$syncThematicGridScroll$1;

    const/4 v0, 0x0

    invoke-direct {p3, p2, p1, v0}, Lcom/vuitton/android/presentation/utils/PlpUtilsKt$syncThematicGridScroll$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;ILkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    invoke-static {p0, v0, v0, p3, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final f(ILjava/util/List;)Ljava/util/ArrayList;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel;

    instance-of v4, v3, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$Products;

    if-eqz v4, :cond_1

    move v4, v1

    :goto_1
    move-object v5, v3

    check-cast v5, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$Products;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$Products;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-static {p0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-instance v6, Lcom/vuitton/android/presentation/utils/GridLineRange$ProductRange;

    add-int v7, v2, v5

    invoke-static {v2, v7}, Lkotlin/ranges/RangesKt;->j(II)Lkotlin/ranges/IntRange;

    move-result-object v2

    invoke-direct {v6, v2}, Lcom/vuitton/android/presentation/utils/GridLineRange$ProductRange;-><init>(Lkotlin/ranges/IntRange;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v5

    move v2, v7

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/vuitton/android/presentation/utils/GridLineRange$BrandContentLine;->a:Lcom/vuitton/android/presentation/utils/GridLineRange$BrandContentLine;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method
