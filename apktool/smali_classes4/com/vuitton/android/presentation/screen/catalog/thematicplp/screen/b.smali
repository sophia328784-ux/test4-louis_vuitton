.class public final synthetic Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewstate/ThematicPlpViewState;

.field public final synthetic d:Landroidx/compose/animation/core/Animatable;

.field public final synthetic e:Landroidx/compose/animation/core/Animatable;

.field public final synthetic f:Landroidx/compose/foundation/lazy/grid/LazyGridState;

.field public final synthetic g:Landroidx/compose/foundation/lazy/grid/LazyGridState;

.field public final synthetic h:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:Lkotlin/jvm/functions/Function1;

.field public final synthetic k:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewstate/ThematicPlpViewState;Landroidx/compose/animation/core/Animatable;Landroidx/compose/animation/core/Animatable;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/b;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/b;->c:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewstate/ThematicPlpViewState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/b;->d:Landroidx/compose/animation/core/Animatable;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/b;->e:Landroidx/compose/animation/core/Animatable;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/b;->f:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/b;->g:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/b;->h:Lkotlinx/coroutines/CoroutineScope;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/b;->i:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/b;->j:Lkotlin/jvm/functions/Function1;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/b;->k:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/b;->k:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    sget-object v1, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->a:I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/b;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    invoke-interface {v2, v1}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->a(I)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/b;->c:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewstate/ThematicPlpViewState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewstate/ThematicPlpViewState;->a:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;

    sget-object v2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Full;->b:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Full;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/b;->d:Landroidx/compose/animation/core/Animatable;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/b;->e:Landroidx/compose/animation/core/Animatable;

    if-eqz v3, :cond_1

    new-instance v3, Lkotlin/Triple;

    sget-object v7, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Reduced;->b:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Reduced;

    invoke-direct {v3, v7, v5, v6}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Reduced;->b:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Reduced;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lkotlin/Triple;

    invoke-direct {v3, v2, v6, v5}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    iget-object v5, v3, Lkotlin/Triple;->b:Ljava/lang/Object;

    check-cast v5, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;

    iget-object v6, v3, Lkotlin/Triple;->c:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/animation/core/Animatable;

    iget-object v3, v3, Lkotlin/Triple;->d:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/animation/core/Animatable;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/b;->f:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/b;->g:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    if-eqz v2, :cond_2

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v7, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Reduced;->b:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Reduced;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v8, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    iget-object v7, v2, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v7, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iget-object v2, v2, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->g()I

    move-result v7

    invoke-static {v7, v1}, Lcom/vuitton/android/presentation/utils/PlpUtilsKt;->b(ILcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;)I

    move-result v7

    new-instance v8, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$3$6$17$1$1;

    invoke-direct {v8, v2, v7, v4}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$3$6$17$1$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;ILkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/b;->h:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v7, v4, v4, v8, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/b;->i:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/b;->j:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lku0;

    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Lku0;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-static {v7, v6, v3, p0}, Lcom/vuitton/android/presentation/utils/PlpUtilsKt;->c(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/animation/core/Animatable;Landroidx/compose/animation/core/Animatable;Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_3
    invoke-static {}, Lv40;->g()V

    return-object v4

    :cond_4
    invoke-static {}, Lv40;->g()V

    return-object v4
.end method
