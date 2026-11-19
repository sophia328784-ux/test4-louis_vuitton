.class public final synthetic Ljl0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;

.field public final synthetic c:F

.field public final synthetic d:Landroidx/paging/compose/LazyPagingItems;

.field public final synthetic e:Z

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Lkotlin/jvm/functions/Function1;

.field public final synthetic i:Lkotlin/jvm/functions/Function2;

.field public final synthetic j:Lkotlin/jvm/functions/Function1;

.field public final synthetic k:Landroidx/compose/ui/unit/Density;

.field public final synthetic l:Landroidx/compose/runtime/MutableState;

.field public final synthetic m:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;FLandroidx/paging/compose/LazyPagingItems;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljl0;->b:Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;

    iput p2, p0, Ljl0;->c:F

    iput-object p3, p0, Ljl0;->d:Landroidx/paging/compose/LazyPagingItems;

    iput-boolean p4, p0, Ljl0;->e:Z

    iput-object p5, p0, Ljl0;->f:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Ljl0;->g:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Ljl0;->h:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Ljl0;->i:Lkotlin/jvm/functions/Function2;

    iput-object p9, p0, Ljl0;->j:Lkotlin/jvm/functions/Function1;

    iput-object p10, p0, Ljl0;->k:Landroidx/compose/ui/unit/Density;

    iput-object p11, p0, Ljl0;->l:Landroidx/compose/runtime/MutableState;

    iput-object p12, p0, Ljl0;->m:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lrh0;

    const/16 p1, 0x17

    iget-object v1, p0, Ljl0;->j:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Ljl0;->b:Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;

    invoke-direct {v5, v1, v4, p1}, Lrh0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v3, Lj1;

    iget-object p1, p0, Ljl0;->k:Landroidx/compose/ui/unit/Density;

    iget-object v7, p0, Ljl0;->l:Landroidx/compose/runtime/MutableState;

    const/4 v8, 0x3

    invoke-direct {v3, p1, v7, v8}, Lj1;-><init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ltk;

    const/4 v6, 0x3

    iget v2, p0, Ljl0;->c:F

    invoke-direct/range {v1 .. v6}, Ltk;-><init>(FLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v2, 0x65b6263b

    const/4 v3, 0x1

    invoke-direct {p1, v2, v3, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    const/4 v9, 0x0

    invoke-static {v0, v9, p1, v8}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    iget-object v2, p0, Ljl0;->d:Landroidx/paging/compose/LazyPagingItems;

    invoke-virtual {v2}, Landroidx/paging/compose/LazyPagingItems;->d()Landroidx/paging/CombinedLoadStates;

    move-result-object p1

    iget-object p1, p1, Landroidx/paging/CombinedLoadStates;->a:Landroidx/paging/LoadState;

    instance-of p1, p1, Landroidx/paging/LoadState$Error;

    if-nez p1, :cond_4

    invoke-virtual {v2}, Landroidx/paging/compose/LazyPagingItems;->d()Landroidx/paging/CombinedLoadStates;

    move-result-object p1

    iget-object p1, p1, Landroidx/paging/CombinedLoadStates;->c:Landroidx/paging/LoadState;

    instance-of p1, p1, Landroidx/paging/LoadState$Error;

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Landroidx/paging/compose/LazyPagingItems;->b()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroidx/paging/compose/LazyPagingItems;->d()Landroidx/paging/CombinedLoadStates;

    move-result-object p1

    iget-object p1, p1, Landroidx/paging/CombinedLoadStates;->a:Landroidx/paging/LoadState;

    instance-of p1, p1, Landroidx/paging/LoadState$Loading;

    if-nez p1, :cond_1

    invoke-virtual {v2}, Landroidx/paging/compose/LazyPagingItems;->d()Landroidx/paging/CombinedLoadStates;

    move-result-object p1

    iget-object p1, p1, Landroidx/paging/CombinedLoadStates;->c:Landroidx/paging/LoadState;

    instance-of p1, p1, Landroidx/paging/LoadState$Loading;

    if-eqz p1, :cond_2

    invoke-virtual {v2}, Landroidx/paging/compose/LazyPagingItems;->b()I

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-boolean p1, p0, Ljl0;->e:Z

    if-eqz p1, :cond_2

    sget-object p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Full;->b:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Full;

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPSkeletonKt;->d(Landroidx/compose/foundation/lazy/LazyListScope;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Ljl0;->f:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_3

    invoke-virtual {v2}, Landroidx/paging/compose/LazyPagingItems;->b()I

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Full;->b:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Full;

    new-instance v4, Laj0;

    const/16 p1, 0x9

    invoke-direct {v4, p1}, Laj0;-><init>(I)V

    new-instance v7, Lfj0;

    const/16 p1, 0x16

    invoke-direct {v7, p1}, Lfj0;-><init>(I)V

    iget-object v3, p0, Ljl0;->g:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Ljl0;->h:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Ljl0;->i:Lkotlin/jvm/functions/Function2;

    invoke-static/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPItemsKt;->d(Landroidx/compose/foundation/lazy/LazyListScope;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;Landroidx/paging/compose/LazyPagingItems;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v2}, Landroidx/paging/compose/LazyPagingItems;->d()Landroidx/paging/CombinedLoadStates;

    move-result-object p0

    iget-object p0, p0, Landroidx/paging/CombinedLoadStates;->c:Landroidx/paging/LoadState;

    instance-of p0, p0, Landroidx/paging/LoadState$Loading;

    if-eqz p0, :cond_5

    sget-object p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/ComposableSingletons$PLPItemsKt;->a:Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/ComposableSingletons$PLPItemsKt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/ComposableSingletons$PLPItemsKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {v0, v9, p0, v8}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p0, p0, Ljl0;->m:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/unit/Dp;

    iget p0, p0, Landroidx/compose/ui/unit/Dp;->b:F

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/unit/Dp;

    iget p1, p1, Landroidx/compose/ui/unit/Dp;->b:F

    sub-float/2addr p0, p1

    new-instance p1, Ltd;

    const/4 v1, 0x5

    invoke-direct {p1, p0, v1}, Ltd;-><init>(FI)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v1, -0x64b6df87

    invoke-direct {p0, v1, v3, p1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {v0, v9, p0, v8}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
