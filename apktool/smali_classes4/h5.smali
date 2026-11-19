.class public final synthetic Lh5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:F

.field public final synthetic d:I

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Landroidx/compose/ui/layout/MeasureScope;FILjava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lh5;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh5;->e:Ljava/util/List;

    iput-object p2, p0, Lh5;->g:Ljava/lang/Object;

    iput p3, p0, Lh5;->c:F

    iput p4, p0, Lh5;->d:I

    iput-object p5, p0, Lh5;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;FILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V
    .locals 1

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lh5;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh5;->e:Ljava/util/List;

    iput p2, p0, Lh5;->c:F

    iput p3, p0, Lh5;->d:I

    iput-object p4, p0, Lh5;->f:Ljava/lang/Object;

    iput-object p5, p0, Lh5;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lh5;->b:I

    const/4 v2, 0x0

    iget-object v3, v0, Lh5;->g:Ljava/lang/Object;

    iget-object v4, v0, Lh5;->f:Ljava/lang/Object;

    iget v5, v0, Lh5;->c:F

    iget-object v6, v0, Lh5;->e:Ljava/util/List;

    const/4 v7, 0x1

    packed-switch v1, :pswitch_data_0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    check-cast v3, Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Ltd;

    invoke-direct {v8, v5, v2}, Ltd;-><init>(FI)V

    new-instance v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v9, 0x67a4d83c

    invoke-direct {v2, v9, v7, v8}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-static {v1, v8, v2, v9}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    new-instance v10, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$lambda$8$1$0$$inlined$itemsIndexed$default$2;

    invoke-direct {v10, v6}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$lambda$8$1$0$$inlined$itemsIndexed$default$2;-><init>(Ljava/util/List;)V

    new-instance v11, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$lambda$8$1$0$$inlined$itemsIndexed$default$3;

    iget v0, v0, Lh5;->d:I

    invoke-direct {v11, v6, v0, v4, v3}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$lambda$8$1$0$$inlined$itemsIndexed$default$3;-><init>(Ljava/util/List;ILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v3, 0x799532c4

    invoke-direct {v0, v3, v7, v11}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-interface {v1, v2, v8, v10, v0}, Landroidx/compose/foundation/lazy/LazyListScope;->h(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    new-instance v0, Ltd;

    invoke-direct {v0, v5, v7}, Ltd;-><init>(FI)V

    new-instance v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v3, -0x352f7c1b    # -6832626.5f

    invoke-direct {v2, v3, v7, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {v1, v8, v2, v9}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v6, Ljava/util/ArrayList;

    move-object v9, v3

    check-cast v9, Landroidx/compose/ui/layout/MeasureScope;

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v3

    move v14, v2

    :goto_0
    if-ge v14, v3, :cond_3

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v15, v8

    check-cast v15, Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v8

    new-array v11, v8, [I

    move v10, v2

    :goto_1
    if-ge v10, v8, :cond_1

    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/layout/Placeable;

    iget v12, v12, Landroidx/compose/ui/layout/Placeable;->b:I

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v7

    if-ge v10, v13, :cond_0

    invoke-interface {v9, v5}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v13

    goto :goto_2

    :cond_0
    move v13, v2

    :goto_2
    add-int/2addr v12, v13

    aput v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    sget-object v10, Landroidx/compose/foundation/layout/Arrangement;->b:Landroidx/compose/foundation/layout/Arrangement$End$1;

    new-array v13, v8, [I

    invoke-interface {v9}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v12

    move-object v8, v10

    iget v10, v0, Lh5;->d:I

    invoke-virtual/range {v8 .. v13}, Landroidx/compose/foundation/layout/Arrangement$End$1;->c(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    move-object v8, v15

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    move v10, v2

    :goto_3
    if-ge v10, v8, :cond_2

    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/layout/Placeable;

    aget v12, v13, v10

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v1, v11, v12, v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->l(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x0

    goto :goto_3

    :cond_2
    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
