.class public final synthetic Lze;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lze;->b:I

    iput p1, p0, Lze;->c:I

    iput-object p2, p0, Lze;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 10
    iput p3, p0, Lze;->b:I

    iput-object p1, p0, Lze;->d:Ljava/lang/Object;

    iput p2, p0, Lze;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lze;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lze;->d:Ljava/lang/Object;

    iget p0, p0, Lze;->c:I

    packed-switch v0, :pswitch_data_0

    check-cast v3, Ljava/util/Collection;

    check-cast p1, Ljava/util/List;

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p0, v3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    sget v0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt;->a:F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/semantics/Role;->b:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/semantics/Role;->e:I

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->o(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    iget-boolean v0, v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;->e:Z

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->p(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Z)V

    new-instance v0, Landroidx/compose/ui/semantics/CollectionItemInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1, p0, v1}, Landroidx/compose/ui/semantics/CollectionItemInfo;-><init>(IIII)V

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->g(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/CollectionItemInfo;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast v3, Landroidx/compose/foundation/lazy/LazyListState;

    check-cast p1, Landroidx/compose/foundation/lazy/layout/NestedPrefetchScope;

    iget-object v0, v3, Landroidx/compose/foundation/lazy/LazyListState;->a:Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;

    sget-object v2, Landroidx/compose/runtime/snapshots/Snapshot;->e:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->a()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->e()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    :cond_0
    invoke-static {v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, p1, p0}, Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;->a(Landroidx/compose/foundation/lazy/layout/NestedPrefetchScope;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast v3, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    check-cast p1, Landroidx/compose/foundation/lazy/layout/NestedPrefetchScope;

    iget-object v0, v3, Landroidx/compose/foundation/lazy/grid/LazyGridState;->a:Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;

    sget-object v2, Landroidx/compose/runtime/snapshots/Snapshot;->e:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->a()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->e()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    :cond_1
    invoke-static {v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, p1, p0}, Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;->a(Landroidx/compose/foundation/lazy/layout/NestedPrefetchScope;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    check-cast v3, Lkotlin/jvm/functions/Function2;

    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchResultScope;

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchResultScope;->b()I

    move-result v0

    const/high16 v1, -0x80000000

    move v5, v1

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_2

    invoke-interface {p1, v4}, Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchResultScope;->a(I)I

    move-result v5

    new-array v6, v2, [I

    invoke-static {v5, v6}, Lkotlin/comparisons/ComparisonsKt;->b(I[I)I

    move-result v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eq v5, v1, :cond_3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v3, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    check-cast v3, Ljava/util/List;

    check-cast p1, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_4

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/onboarding/models/PathPositionUIModel;

    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->f(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v1

    const/16 v4, 0x20

    shr-long/2addr v1, v4

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    iput v1, v0, Lcom/vuitton/android/presentation/screen/onboarding/models/PathPositionUIModel;->a:F

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/onboarding/models/PathPositionUIModel;

    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->f(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    move-result-wide v4

    and-long v1, v4, v2

    long-to-int p1, v1

    int-to-double v1, p1

    const-wide v3, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v1, v3

    double-to-float p1, v1

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/vuitton/android/presentation/screen/onboarding/models/PathPositionUIModel;->b:F

    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    check-cast v3, Lkotlin/jvm/functions/Function0;

    check-cast p1, Lcoil3/compose/AsyncImagePainter$State$Success;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p0, :cond_5

    if-eqz v3, :cond_5

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    check-cast v3, Lkotlin/jvm/functions/Function1;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_7
    check-cast v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormFragment;

    check-cast p1, Landroid/net/Uri;

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormFragment;->M:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormFragment;->O()Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModel;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModel;->W0(Landroid/net/Uri;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_8
    check-cast v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment;

    check-cast p1, Landroid/net/Uri;

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment;->M:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment;->O()Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;->W0(Landroid/net/Uri;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    check-cast v3, Landroidx/compose/foundation/pager/PagerState;

    check-cast p1, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v0

    sub-int/2addr v0, p0

    int-to-float p0, v0

    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->l()F

    move-result v0

    add-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p0, v1, v2}, Lkotlin/ranges/RangesKt;->c(FFF)F

    move-result p0

    sub-float p0, v2, p0

    const v3, 0x3f51eb85    # 0.82f

    invoke-static {v3, v2, p0}, Landroidx/compose/ui/util/MathHelpersKt;->b(FFF)F

    move-result p0

    invoke-interface {p1, p0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->m(F)V

    invoke-interface {p1, p0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->x(F)V

    cmpl-float p0, v0, v1

    if-lez p0, :cond_6

    move v1, v2

    :cond_6
    const/high16 p0, 0x3f000000    # 0.5f

    invoke-static {v1, p0}, Landroidx/compose/ui/graphics/TransformOriginKt;->a(FF)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->C0(J)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
