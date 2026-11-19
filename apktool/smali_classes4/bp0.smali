.class public final synthetic Lbp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel$SlideUiModel;

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic h:I

.field public final synthetic i:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic j:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic k:F

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Landroidx/compose/runtime/snapshots/SnapshotStateMap;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel$SlideUiModel;ZZLandroidx/compose/foundation/pager/PagerState;ILkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;FLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/snapshots/SnapshotStateMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbp0;->b:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p2, p0, Lbp0;->c:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p3, p0, Lbp0;->d:Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel$SlideUiModel;

    iput-boolean p4, p0, Lbp0;->e:Z

    iput-boolean p5, p0, Lbp0;->f:Z

    iput-object p6, p0, Lbp0;->g:Landroidx/compose/foundation/pager/PagerState;

    iput p7, p0, Lbp0;->h:I

    iput-object p8, p0, Lbp0;->i:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p9, p0, Lbp0;->j:Lkotlin/jvm/internal/Ref$IntRef;

    iput p10, p0, Lbp0;->k:F

    iput-object p11, p0, Lbp0;->l:Lkotlin/jvm/functions/Function1;

    iput-object p12, p0, Lbp0;->m:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget-object v6, v0, Lbp0;->d:Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel$SlideUiModel;

    iget-object v1, v6, Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel$SlideUiModel;->c:Lcom/vuitton/android/presentation/screen/portal/models/PortalDataUiModel;

    move-object/from16 v2, p1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move-object/from16 v14, p2

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/lit8 v4, v3, 0x6

    if-nez v4, :cond_1

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->b(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v3, v4

    :cond_1
    and-int/lit8 v4, v3, 0x13

    const/16 v5, 0x12

    const/4 v7, 0x1

    if-eq v4, v5, :cond_2

    move v4, v7

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    and-int/2addr v3, v7

    invoke-interface {v14, v3, v4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v3, v0, Lbp0;->b:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v4, v0, Lbp0;->c:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-boolean v9, v0, Lbp0;->e:Z

    iget-boolean v10, v0, Lbp0;->f:Z

    iget-object v5, v0, Lbp0;->g:Landroidx/compose/foundation/pager/PagerState;

    move v7, v2

    iget v2, v0, Lbp0;->h:I

    iget-object v8, v0, Lbp0;->i:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v11, v0, Lbp0;->j:Lkotlin/jvm/internal/Ref$IntRef;

    move-object v12, v5

    iget v5, v0, Lbp0;->k:F

    move v13, v7

    iget-object v7, v0, Lbp0;->l:Lkotlin/jvm/functions/Function1;

    if-eqz v13, :cond_3

    const v0, 0xf827a14

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    iget v13, v3, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    move-object v3, v8

    iget v8, v4, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    move-object v0, v12

    sget-object v12, Lcom/vuitton/android/presentation/screen/portal/components/ContentSlideType;->WITHOUT_COUNTDOWN:Lcom/vuitton/android/presentation/screen/portal/components/ContentSlideType;

    move-object v4, v11

    iget-object v11, v1, Lcom/vuitton/android/presentation/screen/portal/models/PortalDataUiModel;->d:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-object v1, v0

    new-instance v0, Lcp0;

    invoke-direct/range {v0 .. v7}, Lcp0;-><init>(Landroidx/compose/foundation/pager/PagerState;ILkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;FLcom/vuitton/android/presentation/screen/portal/models/PortalUiModel$SlideUiModel;Lkotlin/jvm/functions/Function1;)V

    const v1, -0x564fa8ae

    invoke-static {v1, v0, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/high16 v15, 0x1b0000

    move v7, v13

    move-object v13, v0

    invoke-static/range {v7 .. v15}, Lcom/vuitton/android/presentation/screen/portal/components/ContentSlideStructureKt;->a(FFZZLcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/screen/portal/components/ContentSlideType;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_2

    :cond_3
    move-object/from16 v16, v8

    move v8, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v11

    move-object v11, v7

    move-object/from16 v7, v16

    const v13, 0xf943c0f

    invoke-interface {v14, v13}, Landroidx/compose/runtime/Composer;->L(I)V

    iget v13, v3, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    iget v15, v4, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    move-object v3, v12

    sget-object v12, Lcom/vuitton/android/presentation/screen/portal/components/ContentSlideType;->WITH_COUNTDOWN:Lcom/vuitton/android/presentation/screen/portal/components/ContentSlideType;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/portal/models/PortalDataUiModel;->d:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    new-instance v4, Ldp0;

    iget-object v0, v0, Lbp0;->m:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    move/from16 v16, v8

    move-object v8, v0

    move-object v0, v4

    move-object v4, v7

    move-object v7, v11

    move-object v11, v1

    move-object v1, v3

    move-object v3, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v8}, Ldp0;-><init>(Landroidx/compose/foundation/pager/PagerState;ILkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;FLcom/vuitton/android/presentation/screen/portal/models/PortalUiModel$SlideUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/snapshots/SnapshotStateMap;)V

    const v1, 0x4577ee5b

    invoke-static {v1, v0, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    move v8, v15

    const/high16 v15, 0x1b0000

    move v7, v13

    move-object v13, v0

    invoke-static/range {v7 .. v15}, Lcom/vuitton/android/presentation/screen/portal/components/ContentSlideStructureKt;->a(FFZZLcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/screen/portal/components/ContentSlideType;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_2

    :cond_4
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
