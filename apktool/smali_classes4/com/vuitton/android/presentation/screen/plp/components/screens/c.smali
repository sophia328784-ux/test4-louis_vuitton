.class public final synthetic Lcom/vuitton/android/presentation/screen/plp/components/screens/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;

.field public final synthetic d:Landroidx/compose/animation/core/Animatable;

.field public final synthetic e:Landroidx/compose/animation/core/Animatable;

.field public final synthetic f:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic g:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic h:Landroidx/paging/compose/LazyPagingItems;

.field public final synthetic i:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic j:Lkotlin/jvm/functions/Function1;

.field public final synthetic k:Lkotlin/jvm/functions/Function2;

.field public final synthetic l:Ljava/lang/String;

.field public final synthetic m:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;Landroidx/compose/animation/core/Animatable;Landroidx/compose/animation/core/Animatable;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/paging/compose/LazyPagingItems;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/components/screens/c;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/plp/components/screens/c;->c:Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/plp/components/screens/c;->d:Landroidx/compose/animation/core/Animatable;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/plp/components/screens/c;->e:Landroidx/compose/animation/core/Animatable;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/plp/components/screens/c;->f:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/plp/components/screens/c;->g:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/plp/components/screens/c;->h:Landroidx/paging/compose/LazyPagingItems;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/plp/components/screens/c;->i:Lkotlinx/coroutines/CoroutineScope;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/plp/components/screens/c;->j:Lkotlin/jvm/functions/Function1;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/plp/components/screens/c;->k:Lkotlin/jvm/functions/Function2;

    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/plp/components/screens/c;->l:Ljava/lang/String;

    iput-object p12, p0, Lcom/vuitton/android/presentation/screen/plp/components/screens/c;->m:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/plp/components/screens/c;->m:Landroidx/compose/runtime/MutableState;

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

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/plp/components/screens/c;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    invoke-interface {v2, v1}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->a(I)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/components/screens/c;->c:Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->g:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;

    sget-object v2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Full;->b:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Full;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/plp/components/screens/c;->d:Landroidx/compose/animation/core/Animatable;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/plp/components/screens/c;->e:Landroidx/compose/animation/core/Animatable;

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

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/plp/components/screens/c;->f:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/plp/components/screens/c;->g:Landroidx/compose/foundation/lazy/LazyListState;

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

    check-cast v7, Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v2, v2, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/plp/components/screens/c;->h:Landroidx/paging/compose/LazyPagingItems;

    invoke-virtual {v8}, Landroidx/paging/compose/LazyPagingItems;->c()Landroidx/paging/ItemSnapshotList;

    move-result-object v8

    iget-object v8, v8, Landroidx/paging/ItemSnapshotList;->e:Ljava/util/List;

    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListState;->h()I

    move-result v7

    iget v9, v1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;->a:I

    iget v10, v5, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;->a:I

    invoke-static {v7, v8, v9, v10}, Lcom/vuitton/android/presentation/utils/PlpUtilsKt;->a(ILjava/util/List;II)I

    move-result v7

    new-instance v8, Lcom/vuitton/android/presentation/screen/plp/components/screens/PLPScreenKt$PLPScreen$6$12$2$8$1$4$1$1;

    invoke-direct {v8, v7, v2, v4}, Lcom/vuitton/android/presentation/screen/plp/components/screens/PLPScreenKt$PLPScreen$6$12$2$8$1$4$1$1;-><init>(ILandroidx/compose/foundation/lazy/LazyListState;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/plp/components/screens/c;->i:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v7, v4, v4, v8, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/plp/components/screens/c;->j:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/plp/components/screens/c;->k:Lkotlin/jvm/functions/Function2;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/components/screens/c;->l:Ljava/lang/String;

    invoke-interface {v2, v1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lc30;

    const/16 v1, 0x11

    invoke-direct {p0, v1, v0}, Lc30;-><init>(ILandroidx/compose/runtime/MutableState;)V

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
