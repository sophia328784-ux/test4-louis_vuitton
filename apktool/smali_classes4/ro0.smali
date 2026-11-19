.class public final synthetic Lro0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:J

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:J

.field public final synthetic f:Landroid/content/Context;

.field public final synthetic g:Landroidx/compose/runtime/State;

.field public final synthetic h:Landroidx/compose/runtime/MutableLongState;

.field public final synthetic i:Landroidx/compose/runtime/State;

.field public final synthetic j:Landroidx/compose/runtime/MutableState;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;

.field public final synthetic m:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;JLkotlin/jvm/functions/Function1;JLandroid/content/Context;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableLongState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lro0;->b:Landroidx/compose/ui/Modifier;

    iput-wide p2, p0, Lro0;->c:J

    iput-object p4, p0, Lro0;->d:Lkotlin/jvm/functions/Function1;

    iput-wide p5, p0, Lro0;->e:J

    iput-object p7, p0, Lro0;->f:Landroid/content/Context;

    iput-object p8, p0, Lro0;->g:Landroidx/compose/runtime/State;

    iput-object p9, p0, Lro0;->h:Landroidx/compose/runtime/MutableLongState;

    iput-object p10, p0, Lro0;->i:Landroidx/compose/runtime/State;

    iput-object p11, p0, Lro0;->j:Landroidx/compose/runtime/MutableState;

    iput-object p12, p0, Lro0;->k:Lkotlin/jvm/functions/Function1;

    iput-object p13, p0, Lro0;->l:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;

    iput-object p14, p0, Lro0;->m:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 55

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v0, Lro0;->b:Landroidx/compose/ui/Modifier;

    const-string v3, "PodcastPlayer$lambda$10"

    if-eqz v2, :cond_0

    invoke-static {v2, v3}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    :cond_0
    and-int/lit8 v4, v1, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v4, v6, :cond_1

    move v4, v7

    goto :goto_0

    :cond_1
    move v4, v8

    :goto_0
    and-int/2addr v1, v7

    invoke-interface {v5, v1, v4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_18

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v9, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v4, v9, v5, v8}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v4

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v5, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v12

    const/4 v13, 0x0

    if-eqz v12, :cond_17

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v5, v11}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_2
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->o()V

    :goto_1
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v4, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v10, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v9, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v5, v9}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v2, v14, v3, v1}, Ln00;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v15

    iget v15, v15, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/4 v7, 0x0

    invoke-static {v2, v15, v7, v6}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v15, Landroidx/compose/foundation/layout/Arrangement;->g:Landroidx/compose/foundation/layout/Arrangement$SpaceBetween$1;

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/4 v6, 0x6

    invoke-static {v15, v1, v5, v6}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v1

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v15

    invoke-static {v5, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v17

    if-eqz v17, :cond_16

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v5, v11}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_3
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->o()V

    :goto_2
    invoke-static {v5, v1, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5, v15, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v6, v5, v10, v5, v9}, Lcj;->s(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v5, v2, v14, v3}, La;->f(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v1

    iget-object v2, v0, Lro0;->g:Landroidx/compose/runtime/State;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-static {v1, v6, v6}, Landroidx/compose/ui/draw/ScaleKt;->a(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v6, v0, Lro0;->f:Landroid/content/Context;

    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v15

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, v0, Lro0;->h:Landroidx/compose/runtime/MutableLongState;

    move-object/from16 v19, v9

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v15, :cond_4

    if-ne v7, v9, :cond_5

    :cond_4
    new-instance v7, Lxg0;

    const/16 v15, 0x17

    invoke-direct {v7, v6, v8, v15}, Lxg0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/4 v15, 0x3

    invoke-static {v1, v13, v7, v15}, Lcom/vuitton/android/presentation/extensions/ModifierExtKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v8}, Landroidx/compose/runtime/LongState;->b()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lcom/vuitton/android/presentation/extensions/LongExtKt;->c(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v13

    iget-object v13, v13, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    move-object/from16 v22, v1

    move-object/from16 v21, v2

    iget-wide v1, v13, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v13

    iget-object v13, v13, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->m:Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v23, v3

    move-wide/from16 v53, v1

    move-object v1, v4

    move-wide/from16 v3, v53

    move-object/from16 v2, v22

    const/16 v22, 0x0

    move-object/from16 v24, v23

    const v23, 0x1fff8

    move-object/from16 v20, v5

    move-object/from16 v26, v6

    const/16 v25, 0x0

    const-wide/16 v5, 0x0

    move-object/from16 v27, v1

    move-object v1, v7

    const/4 v7, 0x0

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    const-wide/16 v8, 0x0

    move-object/from16 v30, v10

    const/4 v10, 0x0

    move-object/from16 v31, v11

    const/4 v11, 0x0

    move-object/from16 v32, v12

    move-object/from16 v33, v19

    move-object/from16 v19, v13

    const-wide/16 v12, 0x0

    move-object/from16 v34, v14

    const/4 v14, 0x0

    move/from16 v35, v15

    const/4 v15, 0x0

    const/16 v36, 0x2

    const/16 v16, 0x0

    const/16 v37, 0x0

    const/16 v17, 0x0

    const/16 v38, 0x0

    const/16 v18, 0x0

    move-object/from16 v39, v21

    const/16 v21, 0x0

    move-object/from16 v0, v24

    move-object/from16 v42, v27

    move-object/from16 v47, v28

    move-object/from16 v48, v29

    move-object/from16 v43, v30

    move-object/from16 v40, v31

    move-object/from16 v41, v32

    move-object/from16 v44, v33

    move-object/from16 v45, v34

    invoke-static/range {v1 .. v23}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v5, v20

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v39 .. v39}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-static {v1, v2, v2}, Landroidx/compose/ui/draw/ScaleKt;->a(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v1

    move-object/from16 v2, v26

    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    move-object/from16 v4, p0

    iget-wide v6, v4, Lro0;->c:J

    invoke-interface {v5, v6, v7}, Landroidx/compose/runtime/Composer;->e(J)Z

    move-result v8

    or-int/2addr v3, v8

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v3, :cond_7

    move-object/from16 v3, v48

    if-ne v8, v3, :cond_6

    goto :goto_3

    :cond_6
    move-object/from16 v9, v47

    goto :goto_4

    :cond_7
    move-object/from16 v3, v48

    :goto_3
    new-instance v8, Lto0;

    move-object/from16 v9, v47

    invoke-direct {v8, v2, v6, v7, v9}, Lto0;-><init>(Landroid/content/Context;JLandroidx/compose/runtime/MutableLongState;)V

    invoke-interface {v5, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_4
    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-static {v1, v11, v8, v10}, Lcom/vuitton/android/presentation/extensions/ModifierExtKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v9}, Landroidx/compose/runtime/LongState;->b()J

    move-result-wide v12

    sub-long/2addr v12, v6

    invoke-static {v12, v13}, Lcom/vuitton/android/presentation/extensions/LongExtKt;->c(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v10

    iget-object v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v12, v10, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v10

    iget-object v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->m:Landroidx/compose/ui/text/TextStyle;

    const/16 v22, 0x0

    const v23, 0x1fff8

    move-object/from16 v20, v5

    move-wide v14, v6

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v26, v2

    move-object/from16 v47, v9

    move-object v2, v1

    move-object v1, v8

    const-wide/16 v8, 0x0

    move-object/from16 v19, v10

    const/4 v10, 0x0

    move-object/from16 v46, v11

    const/4 v11, 0x0

    move-object/from16 v29, v3

    move-wide v3, v12

    const-wide/16 v12, 0x0

    move-wide v15, v14

    const/4 v14, 0x0

    move-wide/from16 v16, v15

    const/4 v15, 0x0

    move-wide/from16 v17, v16

    const/16 v16, 0x0

    move-wide/from16 v24, v17

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    move-wide/from16 v49, v24

    move-object/from16 v51, v26

    move-object/from16 v52, v29

    move-object/from16 v28, v47

    invoke-static/range {v1 .. v23}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v5, v20

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->r()V

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v1, v11}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    move-object/from16 v12, p0

    iget-object v2, v12, Lro0;->i:Landroidx/compose/runtime/State;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/Dp;

    iget v2, v2, Landroidx/compose/ui/unit/Dp;->b:F

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface/range {v28 .. v28}, Landroidx/compose/runtime/LongState;->b()J

    move-result-wide v2

    long-to-float v2, v2

    move-wide/from16 v14, v49

    long-to-float v3, v14

    iget-object v4, v12, Lro0;->j:Landroidx/compose/runtime/MutableState;

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v13, v52

    if-ne v7, v13, :cond_8

    new-instance v7, Ltb;

    move-object/from16 v9, v28

    const/4 v14, 0x1

    invoke-direct {v7, v9, v14}, Ltb;-><init>(Landroidx/compose/runtime/MutableLongState;I)V

    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    goto :goto_5

    :cond_8
    move-object/from16 v9, v28

    const/4 v14, 0x1

    :goto_5
    check-cast v7, Lkotlin/jvm/functions/Function1;

    iget-object v15, v12, Lro0;->d:Lkotlin/jvm/functions/Function1;

    invoke-interface {v5, v15}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v8

    move-object/from16 v16, v15

    iget-wide v14, v12, Lro0;->e:J

    invoke-interface {v5, v14, v15}, Landroidx/compose/runtime/Composer;->e(J)Z

    move-result v10

    or-int/2addr v8, v10

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v8, :cond_a

    if-ne v10, v13, :cond_9

    goto :goto_6

    :cond_9
    move-object/from16 v8, v16

    goto :goto_7

    :cond_a
    :goto_6
    new-instance v10, Luo0;

    move-object/from16 v8, v16

    invoke-direct {v10, v8, v14, v15, v9}, Luo0;-><init>(Lkotlin/jvm/functions/Function1;JLandroidx/compose/runtime/MutableLongState;)V

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_7
    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v13, :cond_b

    new-instance v9, Lc30;

    const/16 v14, 0x1b

    invoke-direct {v9, v14, v4}, Lc30;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v9, Lkotlin/jvm/functions/Function1;

    move-object/from16 v20, v5

    move-object v5, v7

    move-object v7, v9

    const v9, 0x186000

    move v4, v6

    move-object v6, v10

    const/4 v10, 0x0

    move-object v14, v8

    move-object/from16 v8, v20

    invoke-static/range {v1 .. v10}, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastTrackSliderKt;->a(Landroidx/compose/ui/Modifier;FFZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move-object v5, v8

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->r()V

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v11}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v15

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/16 v19, 0x0

    const/16 v20, 0xd

    const/16 v16, 0x0

    const/16 v18, 0x0

    move/from16 v17, v1

    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->e:Landroidx/compose/foundation/layout/Arrangement$Center$1;

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/16 v4, 0x36

    invoke-static {v2, v3, v5, v4}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v2

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {v5, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v6

    if-eqz v6, :cond_15

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v6

    if-eqz v6, :cond_c

    move-object/from16 v6, v40

    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    :goto_8
    move-object/from16 v6, v41

    goto :goto_9

    :cond_c
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->o()V

    goto :goto_8

    :goto_9
    invoke-static {v5, v2, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v2, v42

    invoke-static {v5, v4, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v2, v43

    move-object/from16 v4, v44

    invoke-static {v3, v5, v2, v5, v4}, Lcj;->s(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v2, v45

    invoke-static {v5, v1, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v1

    iget v2, v1, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->j0:I

    const v1, 0x7f140305

    const-string v9, "15"

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v10, v51

    invoke-virtual {v10, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v1

    iget v4, v1, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->t:F

    invoke-interface {v5, v14}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    iget-object v11, v12, Lro0;->k:Lkotlin/jvm/functions/Function1;

    invoke-interface {v5, v11}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v1, v6

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v1, :cond_d

    if-ne v6, v13, :cond_e

    :cond_d
    new-instance v6, Lvo0;

    const/4 v1, 0x0

    invoke-direct {v6, v14, v11, v1}, Lvo0;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    move-object/from16 v53, v6

    move-object v6, v5

    move-object/from16 v5, v53

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastControlButtonKt;->a(Landroidx/compose/ui/Modifier;ILjava/lang/String;FLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object v5, v6

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v5, v1}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    iget-object v1, v12, Lro0;->l:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;->b:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;->PLAYING:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    if-ne v2, v3, :cond_f

    const v2, 0x1442aceb

    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->W:I

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_a

    :cond_f
    const v2, 0x1443f24c

    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->X:I

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    :goto_a
    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;->b:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    if-ne v4, v3, :cond_10

    const v3, 0x7f140351

    invoke-virtual {v10, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    :cond_10
    const v3, 0x7f140356

    invoke-virtual {v10, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_b
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->A:F

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v5, v14}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    iget-object v7, v12, Lro0;->m:Lkotlin/jvm/functions/Function0;

    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v6, v8

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v6, :cond_11

    if-ne v8, v13, :cond_12

    :cond_11
    new-instance v8, Lsm0;

    const/4 v6, 0x5

    invoke-direct {v8, v1, v14, v7, v6}, Lsm0;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v5, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_12
    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v23, v0

    const/4 v0, 0x0

    move v1, v2

    move-object v2, v3

    move v3, v4

    move-object v4, v8

    move-object/from16 v8, v23

    invoke-static/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastControlButtonKt;->a(Landroidx/compose/ui/Modifier;ILjava/lang/String;FLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v5, v0}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v0

    iget v1, v0, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->k0:I

    const v0, 0x7f140329

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->b(I[Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v0

    iget v3, v0, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->t:F

    invoke-interface {v5, v14}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v5, v11}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_13

    if-ne v4, v13, :cond_14

    :cond_13
    new-instance v4, Lvo0;

    const/4 v0, 0x1

    invoke-direct {v4, v14, v11, v0}, Lvo0;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_14
    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v0, 0x0

    invoke-static/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/components/PodcastControlButtonKt;->a(Landroidx/compose/ui/Modifier;ILjava/lang/String;FLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->r()V

    goto :goto_c

    :cond_15
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v46

    :cond_16
    move-object/from16 v46, v13

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v46

    :cond_17
    move-object/from16 v46, v13

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v46

    :cond_18
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->D()V

    :goto_c
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
