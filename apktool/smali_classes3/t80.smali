.class public final synthetic Lt80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Landroidx/compose/runtime/MutableIntState;

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:J

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:J

.field public final synthetic i:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableIntState;FFJIIJLandroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt80;->b:Landroidx/compose/runtime/MutableIntState;

    iput p2, p0, Lt80;->c:F

    iput p3, p0, Lt80;->d:F

    iput-wide p4, p0, Lt80;->e:J

    iput p6, p0, Lt80;->f:I

    iput p7, p0, Lt80;->g:I

    iput-wide p8, p0, Lt80;->h:J

    iput-object p10, p0, Lt80;->i:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/material3/SliderState;

    move-object/from16 v11, p2

    check-cast v11, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v3, v2, 0x6

    if-nez v3, :cond_2

    and-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_0

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    :cond_0
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    :goto_1
    or-int/2addr v2, v3

    :cond_2
    move v15, v2

    and-int/lit8 v2, v15, 0x13

    const/16 v3, 0x12

    const/4 v4, 0x0

    const/16 v16, 0x1

    if-eq v2, v3, :cond_3

    move/from16 v2, v16

    goto :goto_2

    :cond_3
    move v2, v4

    :goto_2
    and-int/lit8 v3, v15, 0x1

    invoke-interface {v11, v3, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_f

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v3, :cond_4

    invoke-static {v4}, Landroidx/compose/runtime/SnapshotIntStateKt;->a(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v2

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast v2, Landroidx/compose/runtime/MutableIntState;

    const-string v5, "LVTimeline_KlO9mzU$lambda$16$5"

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v6}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_5

    new-instance v8, Lq1;

    iget-object v9, v0, Lt80;->b:Landroidx/compose/runtime/MutableIntState;

    const/4 v10, 0x6

    invoke-direct {v8, v9, v10}, Lq1;-><init>(Landroidx/compose/runtime/MutableIntState;I)V

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-static {v7, v8}, Landroidx/compose/ui/layout/OnRemeasuredModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v8, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v8, v4}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v8

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v11, v7}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v13

    if-eqz v13, :cond_e

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_6
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->o()V

    :goto_3
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v8, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v10, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v8, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v11, v8}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v7, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget v8, v0, Lt80;->c:F

    iget v7, v0, Lt80;->d:F

    sub-float v9, v8, v7

    sget-object v10, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v10, 0x40000000    # 2.0f

    div-float v19, v9, v10

    div-float v18, v8, v10

    const/16 v21, 0x0

    const/16 v22, 0x8

    sget-object v17, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    move/from16 v20, v18

    invoke-static/range {v17 .. v22}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v9

    invoke-static {v9, v7}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v7

    new-instance v9, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v9, v5}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    iget-wide v12, v0, Lt80;->e:J

    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/Color;->d(J)F

    move-result v5

    invoke-static {v9, v5}, Landroidx/compose/ui/draw/AlphaKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    iget v9, v0, Lt80;->f:I

    int-to-float v10, v9

    iget v4, v0, Lt80;->g:I

    int-to-float v14, v4

    div-float/2addr v10, v14

    invoke-static {v7, v10}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v10

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    move/from16 v17, v4

    const/4 v4, 0x7

    if-ne v14, v3, :cond_7

    new-instance v14, Lq1;

    invoke-direct {v14, v2, v4}, Lq1;-><init>(Landroidx/compose/runtime/MutableIntState;I)V

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v14, Lkotlin/jvm/functions/Function1;

    invoke-static {v10, v14}, Landroidx/compose/ui/layout/OnRemeasuredModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v3, :cond_8

    invoke-static {v6, v12, v13}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v12

    new-instance v14, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v14, v12, v13}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v14, Landroidx/compose/ui/graphics/Color;

    iget-wide v12, v14, Landroidx/compose/ui/graphics/Color;->a:J

    move-wide/from16 v23, v12

    move-object v13, v2

    move-object v2, v5

    move-wide/from16 v5, v23

    const/16 v12, 0xc00

    move-object v14, v13

    const/16 v13, 0xc4

    move/from16 v18, v4

    const/4 v4, 0x0

    move/from16 v19, v9

    const/4 v9, 0x0

    move-object/from16 v20, v3

    move-object v3, v10

    const/4 v10, 0x0

    move-object/from16 p3, v14

    move-object v14, v7

    move/from16 v7, v17

    move-object/from16 v17, p3

    move/from16 p3, v15

    move-object/from16 v15, v20

    invoke-static/range {v2 .. v13}, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;JIFLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/Density;

    if-nez v19, :cond_9

    const/4 v2, 0x0

    goto :goto_4

    :cond_9
    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/IntState;->f()I

    move-result v3

    div-int v3, v3, v19

    int-to-float v3, v3

    invoke-virtual {v1}, Landroidx/compose/material3/SliderState;->d()F

    move-result v4

    mul-float/2addr v4, v3

    invoke-interface {v2, v4}, Landroidx/compose/ui/unit/Density;->l1(F)F

    move-result v2

    :goto_4
    invoke-static {v14, v2}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    and-int/lit8 v2, p3, 0xe

    const/4 v4, 0x4

    if-eq v2, v4, :cond_b

    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_a

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    goto :goto_6

    :cond_b
    :goto_5
    move/from16 v4, v16

    :goto_6
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v4, :cond_c

    if-ne v2, v15, :cond_d

    :cond_c
    new-instance v2, Lq80;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Lq80;-><init>(Landroidx/compose/material3/SliderState;I)V

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_d
    move-object v9, v2

    check-cast v9, Lkotlin/jvm/functions/Function1;

    new-instance v2, Lcf;

    iget-object v4, v0, Lt80;->i:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v5, 0x7

    invoke-direct {v2, v4, v1, v5}, Lcf;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const v1, -0x66537a78

    invoke-static {v1, v2, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v10

    const/high16 v12, 0xc00000

    const/4 v13, 0x5

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-wide v5, v0, Lt80;->h:J

    invoke-static/range {v2 .. v13}, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;JIFLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->r()V

    goto :goto_7

    :cond_e
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_f
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->D()V

    :goto_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
