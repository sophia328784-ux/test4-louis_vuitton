.class public final synthetic Lrk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;FFFLjava/lang/Object;I)V
    .locals 0

    iput p6, p0, Lrk;->b:I

    iput-object p1, p0, Lrk;->f:Ljava/lang/Object;

    iput p2, p0, Lrk;->c:F

    iput p3, p0, Lrk;->d:F

    iput p4, p0, Lrk;->e:F

    iput-object p5, p0, Lrk;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lrk;->b:I

    iget-object v1, p0, Lrk;->g:Ljava/lang/Object;

    iget-object v2, p0, Lrk;->f:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    move-object v4, v2

    check-cast v4, Ljava/util/List;

    move-object v8, v1

    check-cast v8, Lkotlin/jvm/functions/Function4;

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Lcom/vuitton/android/designkit/components/components/LVFreeCarouselWithHintKt$LVFreeCarouselWithHint_1tP8Re8$lambda$3$0$$inlined$itemsIndexed$default$2;

    invoke-direct {v1, v4}, Lcom/vuitton/android/designkit/components/components/LVFreeCarouselWithHintKt$LVFreeCarouselWithHint_1tP8Re8$lambda$3$0$$inlined$itemsIndexed$default$2;-><init>(Ljava/util/List;)V

    new-instance v3, Lcom/vuitton/android/designkit/components/components/LVFreeCarouselWithHintKt$LVFreeCarouselWithHint_1tP8Re8$lambda$3$0$$inlined$itemsIndexed$default$3;

    iget v5, p0, Lrk;->c:F

    iget v6, p0, Lrk;->d:F

    iget v7, p0, Lrk;->e:F

    invoke-direct/range {v3 .. v8}, Lcom/vuitton/android/designkit/components/components/LVFreeCarouselWithHintKt$LVFreeCarouselWithHint_1tP8Re8$lambda$3$0$$inlined$itemsIndexed$default$3;-><init>(Ljava/util/List;FFFLkotlin/jvm/functions/Function4;)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v2, 0x799532c4

    const/4 v4, 0x1

    invoke-direct {p0, v2, v4, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1, p0}, Landroidx/compose/foundation/lazy/LazyListScope;->h(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast v2, Landroidx/compose/material3/BottomSheetScaffoldState;

    check-cast v1, Landroidx/compose/runtime/MutableFloatState;

    check-cast p1, Landroidx/compose/ui/unit/Density;

    sget v0, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->a:F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v2, Landroidx/compose/material3/BottomSheetScaffoldState;->a:Landroidx/compose/material3/SheetState;

    iget-object v0, v0, Landroidx/compose/material3/SheetState;->e:Landroidx/compose/material3/internal/AnchoredDraggableState;

    invoke-virtual {v0}, Landroidx/compose/material3/internal/AnchoredDraggableState;->g()F

    move-result v0

    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->l1(F)F

    move-result p1

    invoke-static {p1}, Lkotlin/math/MathKt;->c(F)I

    move-result p1

    int-to-float p1, p1

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    sget v0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/SearchBottomBarKt;->a:F

    add-float/2addr p1, v0

    iget v2, p0, Lrk;->c:F

    sub-float/2addr v2, p1

    sget p1, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->b:F

    sub-float/2addr v2, p1

    iget p1, p0, Lrk;->d:F

    sub-float/2addr p1, v0

    const v0, 0x3e4ccccd    # 0.2f

    iget p0, p0, Lrk;->e:F

    const v3, 0x3ecccccd    # 0.4f

    invoke-static {v2, p1, v0, p0, v3}, Lcom/vuitton/android/presentation/utils/MathUtilsKt;->a(FFFFF)F

    move-result p0

    invoke-static {p0, v0, v3}, Lkotlin/ranges/RangesKt;->c(FFF)F

    move-result p0

    invoke-interface {v1, p0}, Landroidx/compose/runtime/MutableFloatState;->w(F)V

    sget-object p0, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/compose/ui/unit/IntOffset;

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
