.class public final synthetic Laq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:Lkotlin/jvm/functions/Function0;

.field public final synthetic i:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    const/4 p8, 0x1

    iput p8, p0, Laq0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laq0;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Laq0;->d:Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;

    iput-object p3, p0, Laq0;->e:Ljava/lang/String;

    iput-object p4, p0, Laq0;->f:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Laq0;->g:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Laq0;->h:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Laq0;->i:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/lang/String;)V
    .locals 1

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Laq0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laq0;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Laq0;->f:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Laq0;->d:Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;

    iput-object p4, p0, Laq0;->g:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Laq0;->h:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Laq0;->i:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Laq0;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    iget v1, v0, Laq0;->b:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    move-object/from16 v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v11

    iget-object v3, v0, Laq0;->c:Landroidx/compose/ui/Modifier;

    iget-object v4, v0, Laq0;->d:Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;

    iget-object v5, v0, Laq0;->e:Ljava/lang/String;

    iget-object v6, v0, Laq0;->f:Lkotlin/jvm/functions/Function0;

    iget-object v7, v0, Laq0;->g:Lkotlin/jvm/functions/Function0;

    iget-object v8, v0, Laq0;->h:Lkotlin/jvm/functions/Function0;

    iget-object v9, v0, Laq0;->i:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v3 .. v11}, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/ProductFocusDialogKt;->d(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object/from16 v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, v0, Laq0;->c:Landroidx/compose/ui/Modifier;

    const-string v14, "ProductFocusDialog$lambda$2"

    if-eqz v3, :cond_0

    invoke-static {v3, v14}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    :cond_0
    and-int/lit8 v4, v1, 0x3

    const/4 v5, 0x2

    const/4 v7, 0x0

    if-eq v4, v5, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v7

    :goto_0
    and-int/2addr v1, v2

    invoke-interface {v6, v1, v4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v3, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    iget-object v1, v0, Laq0;->f:Lkotlin/jvm/functions/Function0;

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v2, :cond_2

    if-ne v3, v4, :cond_3

    :cond_2
    new-instance v3, Lee0;

    const/16 v2, 0x1b

    invoke-direct {v3, v1, v2}, Lee0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    move-object v12, v3

    check-cast v12, Lkotlin/jvm/functions/Function0;

    const/16 v13, 0x1f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->c:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v2, v7}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v2

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v6, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v10

    if-eqz v10, :cond_b

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_4
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->o()V

    :goto_1
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v2, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v8, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v3, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v6, v3}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v6, v1, v12, v14, v13}, Ln00;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v15, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    invoke-static {v1, v15, v5}, Landroidx/compose/foundation/layout/SizeKt;->v(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v15

    iget v15, v15, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/16 p1, 0x0

    const/4 v11, 0x0

    invoke-static {v1, v15, v11, v5}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v16

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/16 v20, 0x0

    const/16 v21, 0xd

    const/16 v17, 0x0

    const/16 v19, 0x0

    move/from16 v18, v1

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v5}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v5

    sget-object v11, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v5, v11, v6, v7}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v5

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->hashCode(J)I

    move-result v11

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v15

    invoke-static {v6, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v16

    if-eqz v16, :cond_a

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_5
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->o()V

    :goto_2
    invoke-static {v6, v5, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v6, v15, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v11, v6, v8, v6, v3}, Lcj;->s(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v6, v1, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v14, v13}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->j(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVShape;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVShape;->c:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v1, v5}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    move-object/from16 p2, v14

    iget-wide v13, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    sget-object v5, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v1, v13, v14, v5}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v15

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_6

    new-instance v1, Lyp0;

    const/4 v4, 0x5

    invoke-direct {v1, v4}, Lyp0;-><init>(I)V

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    move-object/from16 v19, v1

    check-cast v19, Lkotlin/jvm/functions/Function0;

    const/16 v20, 0x1f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v15 .. v20}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const-string v4, "plp_productPreviewImage_view"

    invoke-static {v1, v4}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v4, v7}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v13

    invoke-static {v6, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v14

    if-eqz v14, :cond_9

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_7
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->o()V

    :goto_3
    invoke-static {v6, v4, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v6, v13, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5, v6, v8, v6, v3}, Lcj;->s(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v14, p2

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v6, v1, v12, v14, v11}, Ln00;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const v2, 0x3f2aaaab

    invoke-static {v1, v2, v7}, Landroidx/compose/foundation/layout/AspectRatioKt;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v2, v0, Laq0;->e:Ljava/lang/String;

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    move-object/from16 v2, p1

    :goto_4
    sget-object v3, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/layout/ContentScale$Companion;->b:Landroidx/compose/ui/layout/ContentScale$Companion$Crop$1;

    const/16 v12, 0x186

    const/16 v13, 0x7f8

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v11, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v1 .. v13}, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoaderKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/layout/ContentScale;Ljava/lang/String;Ljava/lang/Integer;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->r()V

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v14}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->p:Landroidx/compose/ui/BiasAlignment$Horizontal;

    sget-object v3, Landroidx/compose/foundation/layout/ColumnScopeInstance;->a:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    invoke-virtual {v3, v1, v2}, Landroidx/compose/foundation/layout/ColumnScopeInstance;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v2, v0, Laq0;->d:Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;->a:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    iget-object v3, v0, Laq0;->g:Lkotlin/jvm/functions/Function0;

    iget-object v4, v0, Laq0;->h:Lkotlin/jvm/functions/Function0;

    iget-object v5, v0, Laq0;->i:Lkotlin/jvm/functions/Function0;

    move-object v6, v11

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/ProductFocusDialogKt;->c(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->r()V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->r()V

    goto :goto_5

    :cond_9
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p1

    :cond_a
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p1

    :cond_b
    const/16 p1, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p1

    :cond_c
    move-object v11, v6

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->D()V

    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
