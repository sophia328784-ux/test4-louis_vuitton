.class public final synthetic Lmj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Z

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells$Fixed;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    const/4 p10, 0x1

    iput p10, p0, Lmj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmj;->f:Ljava/lang/Object;

    iput-object p2, p0, Lmj;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lmj;->g:Ljava/lang/Object;

    iput-object p4, p0, Lmj;->h:Ljava/lang/Object;

    iput-object p5, p0, Lmj;->i:Ljava/lang/Object;

    iput-object p6, p0, Lmj;->j:Ljava/lang/Object;

    iput-boolean p7, p0, Lmj;->d:Z

    iput-object p8, p0, Lmj;->k:Ljava/lang/Object;

    iput-object p9, p0, Lmj;->e:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Landroidx/compose/foundation/shape/RoundedCornerShape;ZLkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 25
    const/4 p10, 0x0

    iput p10, p0, Lmj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmj;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lmj;->f:Ljava/lang/Object;

    iput-object p3, p0, Lmj;->g:Ljava/lang/Object;

    iput-object p4, p0, Lmj;->h:Ljava/lang/Object;

    iput-object p5, p0, Lmj;->i:Ljava/lang/Object;

    iput-object p6, p0, Lmj;->j:Ljava/lang/Object;

    iput-object p7, p0, Lmj;->k:Ljava/lang/Object;

    iput-boolean p8, p0, Lmj;->d:Z

    iput-object p9, p0, Lmj;->e:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Lmj;->b:I

    const/4 v2, 0x1

    iget-object v3, v0, Lmj;->k:Ljava/lang/Object;

    iget-object v4, v0, Lmj;->j:Ljava/lang/Object;

    iget-object v5, v0, Lmj;->i:Ljava/lang/Object;

    iget-object v6, v0, Lmj;->h:Ljava/lang/Object;

    iget-object v7, v0, Lmj;->g:Ljava/lang/Object;

    iget-object v8, v0, Lmj;->f:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    move-object v9, v8

    check-cast v9, Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells$Fixed;

    move-object v11, v7

    check-cast v11, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    move-object v12, v6

    check-cast v12, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-object v13, v5

    check-cast v13, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-object v14, v4

    check-cast v14, Landroidx/compose/foundation/gestures/FlingBehavior;

    move-object/from16 v16, v3

    check-cast v16, Landroidx/compose/foundation/OverscrollEffect;

    move-object/from16 v18, p1

    check-cast v18, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v19

    iget-object v10, v0, Lmj;->c:Landroidx/compose/ui/Modifier;

    iget-boolean v15, v0, Lmj;->d:Z

    iget-object v0, v0, Lmj;->e:Lkotlin/jvm/functions/Function1;

    move-object/from16 v17, v0

    invoke-static/range {v9 .. v19}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridDslKt;->a(Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells$Fixed;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v8, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    check-cast v7, Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    check-cast v6, Ljava/lang/String;

    check-cast v5, Ljava/lang/String;

    check-cast v4, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    check-cast v3, Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-object/from16 v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v11

    iget-object v1, v0, Lmj;->c:Landroidx/compose/ui/Modifier;

    move-object v2, v8

    iget-boolean v8, v0, Lmj;->d:Z

    iget-object v9, v0, Lmj;->e:Lkotlin/jvm/functions/Function1;

    move-object/from16 v20, v7

    move-object v7, v3

    move-object/from16 v3, v20

    move-object/from16 v20, v6

    move-object v6, v4

    move-object/from16 v4, v20

    invoke-static/range {v1 .. v11}, Lcom/vuitton/android/presentation/common/editorial/components/carousell/CarouselLMultipleKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Landroidx/compose/foundation/shape/RoundedCornerShape;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
