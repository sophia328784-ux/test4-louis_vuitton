.class public final synthetic Ley;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;

.field public final synthetic d:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:Z

.field public final synthetic h:J

.field public final synthetic i:Lkotlin/jvm/functions/Function0;

.field public final synthetic j:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

.field public final synthetic k:Lkotlin/jvm/functions/Function0;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(JLcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZJLkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ley;->b:J

    iput-object p3, p0, Ley;->c:Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;

    iput-object p4, p0, Ley;->d:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    iput-object p5, p0, Ley;->e:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Ley;->f:Lkotlin/jvm/functions/Function0;

    iput-boolean p7, p0, Ley;->g:Z

    iput-wide p8, p0, Ley;->h:J

    iput-object p10, p0, Ley;->i:Lkotlin/jvm/functions/Function0;

    iput-object p11, p0, Ley;->j:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    iput-object p12, p0, Ley;->k:Lkotlin/jvm/functions/Function0;

    iput-object p13, p0, Ley;->l:Lkotlin/jvm/functions/Function1;

    iput-object p14, p0, Ley;->m:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v2, v10

    goto :goto_0

    :cond_0
    move v2, v11

    :goto_0
    and-int/2addr v1, v10

    invoke-interface {v7, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string v12, "FeedHeader$lambda$5"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v12, v1}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v4, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    iget-wide v5, v0, Ley;->b:J

    invoke-static {v2, v5, v6, v4}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v7}, Landroidx/compose/material3/TopAppBarDefaults;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v4

    invoke-static {v4, v7}, Landroidx/compose/foundation/layout/WindowInsetsKt;->e(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v4

    invoke-static {v2, v4}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v4, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v4, v11}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v7, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v8

    if-eqz v8, :cond_d

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_1
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->o()V

    :goto_1
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v4, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v6, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v5, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v7, v5}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v2, v8, v12, v1}, Ln00;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v16

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/16 v21, 0x5

    const/16 v17, 0x0

    const/16 v19, 0x0

    move/from16 v18, v2

    move/from16 v20, v9

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b:F

    const/4 v10, 0x0

    invoke-static {v2, v9, v10, v3}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v9, Landroidx/compose/foundation/layout/Arrangement;->g:Landroidx/compose/foundation/layout/Arrangement$SpaceBetween$1;

    const/16 p2, 0x0

    sget-object v14, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/16 v3, 0x36

    invoke-static {v9, v14, v7, v3}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v3

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    invoke-static {v7, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v17

    if-eqz v17, :cond_c

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_2
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->o()V

    :goto_2
    invoke-static {v7, v3, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7, v14, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v9, v7, v6, v7, v5}, Lcj;->s(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v7, v2, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    invoke-static {v12, v2, v1, v11}, Lcj;->b(Ljava/lang/String;Landroidx/compose/foundation/layout/RowScopeInstance;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v3, 0x2

    invoke-static {v1, v2, v10, v3}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const-string v2, "feed_tabs_view"

    invoke-static {v1, v2}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v10, v0, Ley;->d:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    move-object v2, v4

    invoke-static {v10}, Lcom/vuitton/android/presentation/model/common/mapper/FeatureThemeMapperKt;->a(Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;)Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-result-object v4

    move-object v3, v2

    iget-object v2, v0, Ley;->c:Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v9

    iget-object v14, v0, Ley;->e:Lkotlin/jvm/functions/Function0;

    invoke-interface {v7, v14}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v16

    or-int v9, v9, v16

    iget-object v11, v0, Ley;->f:Lkotlin/jvm/functions/Function0;

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v17

    or-int v9, v9, v17

    move-object/from16 v17, v1

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v3

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v9, :cond_3

    if-ne v1, v3, :cond_4

    :cond_3
    new-instance v1, Lpp;

    const/16 v9, 0x9

    invoke-direct {v1, v2, v14, v11, v9}, Lpp;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast v1, Lkotlin/jvm/functions/Function0;

    move-object v9, v8

    const/16 v8, 0x6180

    move-object v11, v9

    const/4 v9, 0x0

    move-object v14, v3

    const/4 v3, 0x1

    move-object/from16 v19, v5

    const/4 v5, 0x1

    move-object v0, v11

    move-object/from16 v22, v14

    move-object/from16 v11, v18

    move-object v14, v6

    move-object v6, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v10

    move-object/from16 v10, v19

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSegmentedControlKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v12}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/4 v8, 0x0

    invoke-static {v2, v3, v7, v8}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v2

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {v7, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_5
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->o()V

    :goto_3
    invoke-static {v7, v2, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7, v4, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v3, v7, v14, v7, v10}, Lcj;->s(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v7, v1, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Ley;->g:Z

    if-eqz v1, :cond_6

    const v1, -0x758544d5

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    const/4 v6, 0x0

    move-object v3, v7

    const/4 v7, 0x1

    const/4 v1, 0x0

    move-object v5, v3

    iget-wide v2, v0, Ley;->h:J

    iget-object v4, v0, Ley;->i:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/presentation/screen/account/lvpass/components/TopBarQRCodeKt;->a(Landroidx/compose/ui/Modifier;JLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object v7, v5

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_4

    :cond_6
    const v1, -0x75827415

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    :goto_4
    iget-object v2, v0, Ley;->j:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    iget-boolean v1, v2, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;->a:Z

    if-eqz v1, :cond_a

    const v1, -0x75814442

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v12}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v3, "feed_contactUs_button"

    invoke-static {v1, v3}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v3, v0, Ley;->l:Lkotlin/jvm/functions/Function1;

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_7

    move-object/from16 v14, v22

    if-ne v5, v14, :cond_8

    :cond_7
    new-instance v5, Lu8;

    const/16 v4, 0x16

    invoke-direct {v5, v3, v4}, Lu8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    move-object v4, v5

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static/range {v17 .. v17}, Lcom/vuitton/android/presentation/model/common/mapper/FeatureThemeMapperKt;->a(Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;)Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-result-object v3

    sget-object v5, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->INVERT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    if-ne v3, v5, :cond_9

    const/4 v5, 0x1

    goto :goto_5

    :cond_9
    move v5, v8

    :goto_5
    const/4 v8, 0x0

    const/16 v9, 0x20

    iget-object v3, v0, Ley;->k:Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/presentation/contact/compose/ContactUsIconKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLjava/lang/String;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_6

    :cond_a
    const v1, -0x75791955

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    :goto_6
    const-string v1, "feed_avatar_button"

    invoke-static {v12, v1}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v2, v1

    const/4 v1, 0x0

    iget-object v0, v0, Ley;->m:Lkotlin/jvm/functions/Function0;

    move-object v3, v2

    move-object v2, v0

    move-object v0, v3

    move-object v3, v7

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/account/editavatar/components/TopBarAvatarKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->r()V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->r()V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->r()V

    goto :goto_7

    :cond_b
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p2

    :cond_c
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p2

    :cond_d
    const/16 p2, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p2

    :cond_e
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->D()V

    :goto_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
