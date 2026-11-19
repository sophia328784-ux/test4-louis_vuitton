.class public abstract Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyVtoScreenKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyVtoScreenKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u00a8\u0006\u0007\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0005\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0006\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "scaffoldScreenPadding",
        "Landroidx/compose/ui/unit/Dp;",
        "dualSeparatorOffsetX",
        "",
        "shouldShowDualColorSlider",
        "shouldShowLookBottomBar",
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:F

.field public static final b:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x42940000    # 74.0f

    sput v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyVtoScreenKt;->a:F

    const/high16 v0, 0x42f00000    # 120.0f

    sput v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyVtoScreenKt;->b:F

    return-void
.end method

.method public static final a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;Landroidx/compose/material3/SnackbarHostState;FLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 37

    move-object/from16 v1, p0

    move/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p12

    move/from16 v0, p19

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;->a:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, -0x7981a61e

    move-object/from16 v4, p18

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v0

    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0x100

    goto :goto_1

    :cond_1
    const/16 v7, 0x80

    :goto_1
    or-int/2addr v4, v7

    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    const/16 v11, 0x800

    if-eqz v7, :cond_2

    move v7, v11

    goto :goto_2

    :cond_2
    const/16 v7, 0x400

    :goto_2
    or-int/2addr v4, v7

    and-int/lit16 v7, v0, 0x6000

    const/16 v16, 0x4000

    if-nez v7, :cond_4

    move-object/from16 v7, p4

    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    move/from16 v17, v16

    goto :goto_3

    :cond_3
    const/16 v17, 0x2000

    :goto_3
    or-int v4, v4, v17

    :goto_4
    move-object/from16 v5, p5

    goto :goto_5

    :cond_4
    move-object/from16 v7, p4

    goto :goto_4

    :goto_5
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    const/high16 v18, 0x10000

    const/high16 v19, 0x20000

    if-eqz v17, :cond_5

    move/from16 v17, v19

    goto :goto_6

    :cond_5
    move/from16 v17, v18

    :goto_6
    or-int v4, v4, v17

    const/high16 v17, 0x180000

    and-int v17, v0, v17

    const/high16 v20, 0x80000

    const/high16 v21, 0x100000

    move-object/from16 v6, p6

    if-nez v17, :cond_7

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    move/from16 v22, v21

    goto :goto_7

    :cond_6
    move/from16 v22, v20

    :goto_7
    or-int v4, v4, v22

    :cond_7
    move-object/from16 v6, p7

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    const/high16 v23, 0x400000

    const/high16 v24, 0x800000

    if-eqz v22, :cond_8

    move/from16 v22, v24

    goto :goto_8

    :cond_8
    move/from16 v22, v23

    :goto_8
    or-int v4, v4, v22

    move-object/from16 v8, p8

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    const/high16 v25, 0x4000000

    goto :goto_9

    :cond_9
    const/high16 v25, 0x2000000

    :goto_9
    or-int v4, v4, v25

    move-object/from16 v13, p9

    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_a

    const/high16 v25, 0x20000000

    goto :goto_a

    :cond_a
    const/high16 v25, 0x10000000

    :goto_a
    or-int v4, v4, v25

    move-object/from16 v13, p10

    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_b

    const/16 v25, 0x4

    :goto_b
    move-object/from16 v26, v2

    move-object/from16 v2, p11

    goto :goto_c

    :cond_b
    const/16 v25, 0x2

    goto :goto_b

    :goto_c
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_c

    const/16 v27, 0x20

    goto :goto_d

    :cond_c
    const/16 v27, 0x10

    :goto_d
    or-int v25, v25, v27

    invoke-virtual {v3, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_d

    const/16 v22, 0x100

    goto :goto_e

    :cond_d
    const/16 v22, 0x80

    :goto_e
    or-int v22, v25, v22

    move-object/from16 v10, p13

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_e

    move/from16 v25, v11

    goto :goto_f

    :cond_e
    const/16 v25, 0x400

    :goto_f
    or-int v11, v22, v25

    move-object/from16 v12, p14

    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_f

    goto :goto_10

    :cond_f
    const/16 v16, 0x2000

    :goto_10
    or-int v11, v11, v16

    move-object/from16 v9, p15

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10

    move/from16 v18, v19

    :cond_10
    or-int v11, v11, v18

    move-object/from16 v13, p16

    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    move/from16 v20, v21

    :cond_11
    or-int v11, v11, v20

    move-object/from16 v0, p17

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    move/from16 v23, v24

    :cond_12
    or-int v11, v11, v23

    const v18, 0x12492493

    and-int v0, v4, v18

    const v1, 0x12492492

    const/4 v13, 0x1

    if-ne v0, v1, :cond_14

    const v0, 0x492493

    and-int/2addr v0, v11

    const v1, 0x492492

    if-eq v0, v1, :cond_13

    goto :goto_11

    :cond_13
    const/4 v0, 0x0

    goto :goto_12

    :cond_14
    :goto_11
    move v0, v13

    :goto_12
    and-int/lit8 v1, v4, 0x1

    invoke-virtual {v3, v1, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/Context;

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v4, :cond_15

    const/4 v0, 0x3

    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/PaddingKt;->c(FI)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    move-object/from16 v19, v0

    check-cast v19, Landroidx/compose/runtime/MutableState;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v13

    move/from16 v21, v0

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v13, :cond_16

    if-ne v0, v4, :cond_17

    :cond_16
    int-to-float v0, v1

    mul-float v0, v0, p2

    new-instance v13, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v13, v0}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-static {v13}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_17
    move-object v13, v0

    check-cast v13, Landroidx/compose/runtime/MutableState;

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move/from16 v22, v1

    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v0, v1, :cond_18

    const/16 v31, 0x1

    goto :goto_13

    :cond_18
    const/16 v31, 0x0

    :goto_13
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_19

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_19
    check-cast v0, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_1a

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1a
    check-cast v1, Landroidx/compose/runtime/MutableState;

    move-object/from16 v23, v0

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v15, "BeautyVtoScreen"

    invoke-direct {v0, v15}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    move-object/from16 v24, v1

    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    move-object v2, v4

    iget-wide v4, v3, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    invoke-static {v3, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v25, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v25, v2

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    move/from16 v27, v4

    iget-object v4, v3, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v4, :cond_21

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v4, v3, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v4, :cond_1b

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_14

    :cond_1b
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_14
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v5, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v0, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v1, v11

    move/from16 v0, v22

    move-object/from16 v11, v23

    sget-wide v22, Landroidx/compose/ui/graphics/Color;->h:J

    move-object/from16 v2, v26

    invoke-static {}, Lcom/vuitton/android/presentation/extensions/WindowInsetsExtKt;->a()Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v26

    new-instance v4, Lo0;

    const/16 v5, 0x10

    invoke-direct {v4, v14, v5}, Lo0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    const v5, 0x11191b2c

    invoke-static {v5, v4, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v16

    move v4, v0

    new-instance v0, Lle;

    move-object/from16 v5, p6

    move/from16 v32, v1

    move-object v14, v2

    move/from16 v34, v4

    move-object v9, v12

    move-object/from16 p18, v13

    move/from16 v33, v21

    move-object/from16 v12, v24

    move-object/from16 v35, v25

    move-object/from16 v1, p0

    move-object/from16 v4, p5

    move-object/from16 v2, p11

    move-object v13, v3

    move-object v3, v7

    move-object v7, v8

    move-object v8, v10

    move-object/from16 v10, p17

    invoke-direct/range {v0 .. v12}, Lle;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    const v1, -0x11eadb53

    invoke-static {v1, v0, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v17

    new-instance v0, Lg0;

    const/16 v1, 0x8

    move-object/from16 v2, p1

    invoke-direct {v0, v2, v1}, Lg0;-><init>(Landroidx/compose/material3/SnackbarHostState;I)V

    const v1, -0x34eed1d2    # -9514542.0f

    invoke-static {v1, v0, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v20

    new-instance v0, Lh9;

    move-object/from16 v2, p0

    move-object/from16 v5, p9

    move-object/from16 v9, p10

    move-object/from16 v7, p14

    move-object/from16 v6, p15

    move-object/from16 v10, p16

    move-object/from16 v8, p17

    move-object v4, v12

    move-object/from16 v3, v18

    move-object/from16 v1, v19

    invoke-direct/range {v0 .. v11}, Lh9;-><init>(Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V

    const v2, 0x60322877

    invoke-static {v2, v0, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v27

    const v29, 0x30180db0

    const/16 v30, 0xb1

    move-object/from16 v18, v17

    move-object/from16 v17, v16

    const/16 v16, 0x0

    move-object/from16 v19, v20

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v24, 0x0

    move-object/from16 v28, v13

    invoke-static/range {v16 .. v30}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;->DUAL:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    if-ne v14, v0, :cond_20

    const v0, -0x72424dcc

    invoke-static {v13, v0, v15}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    sget-object v3, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v3, v0, v2}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz v31, :cond_1c

    invoke-interface/range {p18 .. p18}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/Dp;

    iget v2, v2, Landroidx/compose/ui/unit/Dp;->b:F

    neg-float v2, v2

    :goto_15
    const/4 v3, 0x0

    const/4 v4, 0x2

    goto :goto_16

    :cond_1c
    invoke-interface/range {p18 .. p18}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/Dp;

    iget v2, v2, Landroidx/compose/ui/unit/Dp;->b:F

    goto :goto_15

    :goto_16
    invoke-static {v0, v2, v3, v4}, Landroidx/compose/foundation/layout/OffsetKt;->c(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v0}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    move-result v9

    const/4 v10, 0x7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move/from16 v1, v33

    mul-float v2, p2, v1

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v3

    move-object/from16 v4, p18

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    move/from16 v5, v34

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v6

    or-int/2addr v3, v6

    move/from16 v6, v32

    and-int/lit16 v6, v6, 0x380

    const/16 v7, 0x100

    if-ne v6, v7, :cond_1d

    const/4 v6, 0x1

    goto :goto_17

    :cond_1d
    const/4 v6, 0x0

    :goto_17
    or-int/2addr v3, v6

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v3, :cond_1f

    move-object/from16 v3, v35

    if-ne v6, v3, :cond_1e

    goto :goto_18

    :cond_1e
    move-object/from16 v15, p12

    goto :goto_19

    :cond_1f
    :goto_18
    new-instance v6, Lse;

    move-object/from16 v15, p12

    invoke-direct {v6, v1, v5, v15, v4}, Lse;-><init>(FILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_19
    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    invoke-static {v0, v2, v6, v13, v1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyDualSeparatorKt;->a(Landroidx/compose/ui/Modifier;FLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1a
    const/4 v0, 0x1

    goto :goto_1b

    :cond_20
    move-object/from16 v15, p12

    const/4 v1, 0x0

    const v0, -0x7238d4c6

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1a

    :goto_1b
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1c

    :cond_21
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_22
    move-object v13, v3

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1c
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_23

    move-object v1, v0

    new-instance v0, Lte;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v14, p13

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move/from16 v19, p19

    move-object/from16 v36, v1

    move-object v13, v15

    move-object/from16 v1, p0

    move-object/from16 v15, p14

    invoke-direct/range {v0 .. v19}, Lte;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;Landroidx/compose/material3/SnackbarHostState;FLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    move-object/from16 v1, v36

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_23
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 6

    const-string v0, "BottomBarDraggableIndicator"

    if-eqz p0, :cond_0

    invoke-static {p0, v0}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :cond_0
    const v1, -0x7eaaae54

    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object p1

    or-int/lit8 v1, p2, 0x6

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_0
    and-int/2addr v1, v4

    invoke-virtual {p1, v1, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {p0, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {p1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->e:F

    invoke-static {p0, v0}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {p1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->v:F

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {p1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->j(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVShape;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVShape;->d:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v0, v1}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {p1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->b:J

    sget-object v3, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0, p1, v5}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Lqe;

    invoke-direct {v0, p0, p2, v5}, Lqe;-><init>(Landroidx/compose/ui/Modifier;II)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_3
    return-void
.end method
