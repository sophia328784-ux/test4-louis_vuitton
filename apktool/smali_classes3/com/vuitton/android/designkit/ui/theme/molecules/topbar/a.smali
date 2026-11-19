.class public final synthetic Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Landroidx/compose/runtime/MutableFloatState;

.field public final synthetic e:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;

.field public final synthetic f:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic g:Landroidx/compose/material3/TopAppBarScrollBehavior;

.field public final synthetic h:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic i:Landroidx/compose/runtime/MutableFloatState;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:F

.field public final synthetic m:Lkotlin/jvm/functions/Function0;

.field public final synthetic n:Lkotlin/jvm/functions/Function4;

.field public final synthetic o:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

.field public final synthetic p:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/MutableFloatState;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarScrollBehavior;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/runtime/MutableFloatState;Ljava/lang/String;Ljava/lang/String;FLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/runtime/State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/a;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/a;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/a;->d:Landroidx/compose/runtime/MutableFloatState;

    iput-object p4, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/a;->e:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;

    iput-object p5, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/a;->f:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p6, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/a;->g:Landroidx/compose/material3/TopAppBarScrollBehavior;

    iput-object p7, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/a;->h:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p8, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/a;->i:Landroidx/compose/runtime/MutableFloatState;

    iput-object p9, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/a;->j:Ljava/lang/String;

    iput-object p10, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/a;->k:Ljava/lang/String;

    iput p11, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/a;->l:F

    iput-object p12, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/a;->m:Lkotlin/jvm/functions/Function0;

    iput-object p13, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/a;->n:Lkotlin/jvm/functions/Function4;

    iput-object p14, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/a;->o:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iput-object p15, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/a;->p:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    iget-object v2, v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/a;->b:Landroidx/compose/ui/Modifier;

    const-string v11, "LVMediumTopBar$lambda$15"

    if-eqz v2, :cond_0

    invoke-static {v2, v11}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    :cond_0
    move-object v7, v2

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v12, 0x0

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v12

    :goto_0
    and-int/2addr v1, v4

    invoke-interface {v5, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/a;->c:Landroidx/compose/ui/Modifier;

    invoke-interface {v7, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v3, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v2, v3, v5, v12}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v2

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v5, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5, v8}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_2
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->o()V

    :goto_1
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v2, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v6, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v2, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v5, v2}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v1, v2, v11}, La;->f(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v1

    iget-object v2, v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/a;->d:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v3, :cond_3

    if-ne v6, v13, :cond_4

    :cond_3
    new-instance v6, Lz30;

    invoke-direct {v6, v2, v4}, Lz30;-><init>(Landroidx/compose/runtime/MutableFloatState;I)V

    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v6}, Landroidx/compose/ui/layout/OnRemeasuredModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    sget v1, Landroidx/compose/material3/TopAppBarDefaults;->a:F

    iget-object v14, v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/a;->e:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;

    iget-wide v1, v14, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;->a:J

    const/16 v6, 0x3c

    move-wide v3, v1

    invoke-static/range {v1 .. v6}, Landroidx/compose/material3/TopAppBarDefaults;->d(JJLandroidx/compose/runtime/Composer;I)Landroidx/compose/material3/TopAppBarColors;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/b;

    iget-object v15, v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/a;->j:Ljava/lang/String;

    iget-object v3, v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/a;->k:Ljava/lang/String;

    iget v4, v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/a;->l:F

    invoke-direct {v2, v15, v3, v14, v4}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;F)V

    const v4, 0x62e9de0b

    invoke-static {v4, v2, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    new-instance v4, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/c;

    iget-object v6, v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/a;->m:Lkotlin/jvm/functions/Function0;

    invoke-direct {v4, v6, v7, v14}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/c;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;)V

    const v6, 0x47584a0d

    invoke-static {v6, v4, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v4

    new-instance v6, Lj60;

    iget-object v7, v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/a;->n:Lkotlin/jvm/functions/Function4;

    iget-object v9, v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/a;->o:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    invoke-direct {v6, v7, v9, v12}, Lj60;-><init>(Lkotlin/jvm/functions/Function4;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;I)V

    const v7, 0x335d2bb6

    invoke-static {v7, v6, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v6

    const/16 v9, 0xd86

    const/16 v10, 0x90

    move-object v7, v5

    const/4 v5, 0x0

    move-object/from16 v16, v3

    move-object v3, v4

    move-object v4, v6

    iget-object v6, v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/a;->f:Landroidx/compose/foundation/layout/WindowInsets;

    move-object/from16 v17, v7

    move-object v7, v1

    move-object v1, v2

    move-object v2, v8

    move-object/from16 v8, v17

    invoke-static/range {v1 .. v10}, Landroidx/compose/material3/AppBarKt;->c(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/runtime/Composer;II)V

    move-object v5, v8

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v11, v1}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v2, v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/a;->g:Landroidx/compose/material3/TopAppBarScrollBehavior;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroidx/compose/material3/TopAppBarScrollBehavior;->getState()Landroidx/compose/material3/TopAppBarState;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/material3/TopAppBarState;->a()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v11}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/a;->h:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v4, v4, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    goto :goto_2

    :cond_5
    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v11}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-interface {v1, v3}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/a;->i:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v3, v6

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v3, :cond_6

    if-ne v6, v13, :cond_7

    :cond_6
    new-instance v6, Lk60;

    invoke-direct {v6, v2, v4, v12}, Lk60;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v6}, Landroidx/compose/ui/layout/OnRemeasuredModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/a;->p:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/Color;

    iget-wide v2, v0, Landroidx/compose/ui/graphics/Color;->a:J

    sget-object v0, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-wide v3, v14, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;->b:J

    iget-wide v1, v14, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;->c:J

    const/4 v8, 0x0

    move-object v7, v5

    move-wide v5, v1

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;JJLandroidx/compose/runtime/Composer;I)V

    move-object v5, v7

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->r()V

    goto :goto_3

    :cond_8
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_9
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->D()V

    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
