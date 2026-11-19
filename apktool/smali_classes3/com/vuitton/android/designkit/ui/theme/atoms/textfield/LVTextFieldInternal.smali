.class public final Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;",
        "",
        "system"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;

.field public static final b:F

.field public static final c:F

.field public static final d:F

.field public static final e:F

.field public static final f:F

.field public static final g:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x42600000    # 56.0f

    sput v0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;->b:F

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;->c:F

    const/high16 v0, 0x41800000    # 16.0f

    sput v0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;->d:F

    const/high16 v0, 0x41000000    # 8.0f

    sput v0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;->e:F

    const/high16 v1, 0x40c00000    # 6.0f

    sput v1, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;->f:F

    sput v0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;->g:F

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;JLandroidx/compose/runtime/Composer;I)V
    .locals 15

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x6521c486

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p7, v0

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x20

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v0, v3

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x100

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    const/16 v3, 0x80

    :goto_2
    or-int/2addr v0, v3

    move-wide/from16 v10, p4

    invoke-virtual {v12, v10, v11}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x800

    goto :goto_3

    :cond_3
    const/16 v3, 0x400

    :goto_3
    or-int v7, v0, v3

    and-int/lit16 v0, v7, 0x2493

    const/16 v3, 0x2492

    const/4 v5, 0x1

    const/4 v9, 0x0

    if-eq v0, v3, :cond_4

    move v0, v5

    goto :goto_4

    :cond_4
    move v0, v9

    :goto_4
    and-int/lit8 v3, v7, 0x1

    invoke-virtual {v12, v3, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v13, "ClearButtonIcon-ww6aTOc$system"

    invoke-direct {v0, v13}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v0, v3}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    and-int/lit16 v3, v7, 0x380

    if-ne v3, v4, :cond_5

    move v3, v5

    goto :goto_5

    :cond_5
    move v3, v9

    :goto_5
    and-int/lit8 v4, v7, 0xe

    if-ne v4, v1, :cond_6

    move v1, v5

    goto :goto_6

    :cond_6
    move v1, v9

    :goto_6
    or-int/2addr v1, v3

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_7

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v1, :cond_8

    :cond_7
    new-instance v3, Lt50;

    invoke-direct {v3, v5, v8, v2}, Lt50;-><init>(ILjava/lang/String;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v9, v3}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v3, 0x0

    const/16 v5, 0xf

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/ClickableKt;->d(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget v1, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;->g:F

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz v6, :cond_9

    invoke-static {v13, v6}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    goto :goto_7

    :cond_9
    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v13}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :goto_7
    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->s:I

    invoke-static {v1, v12, v9}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v1

    shr-int/lit8 v2, v7, 0x3

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x8

    or-int/2addr v2, v3

    and-int/lit16 v3, v7, 0x1c00

    or-int v13, v2, v3

    const/4 v14, 0x0

    move-object v9, v0

    move-object v7, v1

    invoke-static/range {v7 .. v14}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    goto :goto_8

    :cond_a
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_8
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_b

    new-instance v0, Lj80;

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v7, p7

    move-object v3, v6

    move-wide/from16 v5, p4

    invoke-direct/range {v0 .. v7}, Lj80;-><init>(Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;JI)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void
.end method

.method public final b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;ZLjava/lang/String;Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/Modifier;ZZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/runtime/Composer;II)V
    .locals 42

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move/from16 v4, p4

    move-object/from16 v3, p5

    move-object/from16 v9, p8

    move/from16 v5, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v8, p15

    move/from16 v10, p16

    move/from16 v7, p19

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v16, v6

    const-string v6, "DecorationBox$system"

    if-eqz v0, :cond_0

    invoke-static {v0, v6}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x2b9afdd2

    move-object/from16 p1, v0

    move-object/from16 v0, p17

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    iget-object v1, v0, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    or-int/lit8 v18, p18, 0x6

    move-object/from16 v26, v1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v19

    const/16 v20, 0x10

    if-eqz v19, :cond_1

    const/16 v19, 0x20

    goto :goto_0

    :cond_1
    move/from16 v19, v20

    :goto_0
    or-int v18, v18, v19

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v19

    const/16 v21, 0x100

    const/16 v22, 0x80

    if-eqz v19, :cond_2

    move/from16 v19, v21

    goto :goto_1

    :cond_2
    move/from16 v19, v22

    :goto_1
    or-int v18, v18, v19

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v19

    const/16 v23, 0x400

    const/16 v24, 0x800

    if-eqz v19, :cond_3

    move/from16 v19, v24

    goto :goto_2

    :cond_3
    move/from16 v19, v23

    :goto_2
    or-int v18, v18, v19

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v19

    const/16 v25, 0x2000

    const/16 v27, 0x4000

    if-eqz v19, :cond_4

    move/from16 v19, v27

    goto :goto_3

    :cond_4
    move/from16 v19, v25

    :goto_3
    or-int v18, v18, v19

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v19

    const/high16 v28, 0x10000

    const/high16 v29, 0x20000

    if-eqz v19, :cond_5

    move/from16 v19, v29

    goto :goto_4

    :cond_5
    move/from16 v19, v28

    :goto_4
    or-int v18, v18, v19

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    const/high16 v19, 0x100000

    goto :goto_5

    :cond_6
    const/high16 v19, 0x80000

    :goto_5
    or-int v18, v18, v19

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    const/high16 v19, 0x800000

    goto :goto_6

    :cond_7
    const/high16 v19, 0x400000

    :goto_6
    or-int v18, v18, v19

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v19

    if-eqz v19, :cond_8

    const/high16 v19, 0x4000000

    goto :goto_7

    :cond_8
    const/high16 v19, 0x2000000

    :goto_7
    or-int v18, v18, v19

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v19

    if-eqz v19, :cond_9

    const/high16 v19, 0x20000000

    goto :goto_8

    :cond_9
    const/high16 v19, 0x10000000

    :goto_8
    or-int v30, v18, v19

    and-int/lit8 v18, v7, 0x6

    if-nez v18, :cond_b

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v18

    if-eqz v18, :cond_a

    const/16 v18, 0x4

    goto :goto_9

    :cond_a
    const/16 v18, 0x2

    :goto_9
    or-int v18, v7, v18

    goto :goto_a

    :cond_b
    move/from16 v18, v7

    :goto_a
    and-int/lit8 v31, v7, 0x30

    if-nez v31, :cond_d

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_c

    const/16 v20, 0x20

    :cond_c
    or-int v18, v18, v20

    :cond_d
    and-int/lit16 v9, v7, 0x180

    if-nez v9, :cond_f

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    goto :goto_b

    :cond_e
    move/from16 v21, v22

    :goto_b
    or-int v18, v18, v21

    :cond_f
    and-int/lit16 v9, v7, 0xc00

    if-nez v9, :cond_11

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    move/from16 v23, v24

    :cond_10
    or-int v18, v18, v23

    :cond_11
    and-int/lit16 v9, v7, 0x6000

    if-nez v9, :cond_13

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v9

    if-eqz v9, :cond_12

    move/from16 v25, v27

    :cond_12
    or-int v18, v18, v25

    :cond_13
    const/high16 v9, 0x30000

    and-int v20, v7, v9

    if-nez v20, :cond_15

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v20

    if-eqz v20, :cond_14

    move/from16 v28, v29

    :cond_14
    or-int v18, v18, v28

    :cond_15
    move/from16 v28, v18

    const v18, 0x12492493

    move/from16 v29, v9

    and-int v9, v30, v18

    const v1, 0x12492492

    if-ne v9, v1, :cond_17

    const v1, 0x12493

    and-int v1, v28, v1

    const v9, 0x12492

    if-eq v1, v9, :cond_16

    goto :goto_c

    :cond_16
    const/4 v1, 0x0

    goto :goto_d

    :cond_17
    :goto_c
    const/4 v1, 0x1

    :goto_d
    and-int/lit8 v9, v30, 0x1

    invoke-virtual {v0, v9, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_46

    new-instance v9, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v9, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    if-nez v4, :cond_18

    move-object/from16 p1, v9

    iget-wide v8, v2, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;->k:J

    goto :goto_e

    :cond_18
    move-object/from16 p1, v9

    if-eqz v5, :cond_19

    iget-wide v8, v2, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;->m:J

    goto :goto_e

    :cond_19
    if-eqz v11, :cond_1a

    iget-wide v8, v2, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;->l:J

    goto :goto_e

    :cond_1a
    iget-wide v8, v2, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;->j:J

    :goto_e
    const/high16 v1, 0x70000000

    and-int v1, v30, v1

    const/high16 v2, 0x20000000

    if-ne v1, v2, :cond_1b

    const/4 v1, 0x1

    goto :goto_f

    :cond_1b
    const/4 v1, 0x0

    :goto_f
    and-int/lit8 v2, v30, 0x70

    move/from16 v18, v1

    const/16 v1, 0x20

    if-ne v2, v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_10

    :cond_1c
    const/4 v1, 0x0

    :goto_10
    or-int v1, v18, v1

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v1, :cond_1d

    if-ne v2, v7, :cond_20

    :cond_1d
    if-nez v11, :cond_1f

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1e

    goto :goto_11

    :cond_1e
    const/4 v1, 0x0

    goto :goto_12

    :cond_1f
    :goto_11
    const/4 v1, 0x1

    :goto_12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_20
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    const-string v1, "showInnerTextField"

    const/16 v3, 0x30

    invoke-static {v2, v1, v0, v3}, Landroidx/compose/animation/core/TransitionKt;->f(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition;

    move-result-object v1

    iget-object v2, v1, Landroidx/compose/animation/core/Transition;->a:Landroidx/compose/animation/core/TransitionState;

    if-nez v13, :cond_22

    if-eqz v14, :cond_21

    goto :goto_13

    :cond_21
    const/4 v3, 0x0

    goto :goto_14

    :cond_22
    :goto_13
    const/4 v3, 0x1

    :goto_14
    sget-object v22, Landroidx/compose/animation/core/VectorConvertersKt;->a:Landroidx/compose/animation/core/TwoWayConverter;

    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->i()Z

    move-result v18

    if-nez v18, :cond_26

    const v10, 0x6355e4b0

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    move-object/from16 v18, v2

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v10, :cond_24

    if-ne v2, v7, :cond_23

    goto :goto_16

    :cond_23
    move/from16 v27, v3

    :goto_15
    const/4 v4, 0x0

    goto :goto_19

    :cond_24
    :goto_16
    sget-object v2, Landroidx/compose/runtime/snapshots/Snapshot;->e:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->a()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->e()Lkotlin/jvm/functions/Function1;

    move-result-object v10

    :goto_17
    move/from16 v27, v3

    goto :goto_18

    :cond_25
    const/4 v10, 0x0

    goto :goto_17

    :goto_18
    invoke-static {v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v3

    :try_start_0
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3, v10}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v2, v4

    goto :goto_15

    :goto_19
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1a

    :catchall_0
    move-exception v0

    invoke-static {v2, v3, v10}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw v0

    :cond_26
    move-object/from16 v18, v2

    move/from16 v27, v3

    const/4 v4, 0x0

    const v2, 0x6359c50d

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    move-result-object v2

    :goto_1a
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const v3, 0x2f94717a

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/high16 v10, 0x40c00000    # 6.0f

    if-eqz v2, :cond_28

    if-nez v12, :cond_27

    goto :goto_1c

    :cond_27
    move v2, v10

    :goto_1b
    const/4 v4, 0x0

    goto :goto_1d

    :cond_28
    :goto_1c
    const/high16 v2, 0x41800000    # 16.0f

    goto :goto_1b

    :goto_1d
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_29

    if-ne v4, v7, :cond_2a

    :cond_29
    new-instance v2, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal$DecorationBox$$inlined$animateFloat$1;

    invoke-direct {v2, v1}, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal$DecorationBox$$inlined$animateFloat$1;-><init>(Landroidx/compose/animation/core/Transition;)V

    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->e(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2a
    check-cast v4, Landroidx/compose/runtime/State;

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    if-eqz v2, :cond_2c

    if-nez v12, :cond_2b

    goto :goto_1f

    :cond_2b
    move v4, v10

    :goto_1e
    const/4 v2, 0x0

    goto :goto_20

    :cond_2c
    :goto_1f
    const/high16 v4, 0x41800000    # 16.0f

    goto :goto_1e

    :goto_20
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_2d

    if-ne v3, v7, :cond_2e

    :cond_2d
    new-instance v2, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal$DecorationBox$$inlined$animateFloat$2;

    invoke-direct {v2, v1}, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal$DecorationBox$$inlined$animateFloat$2;-><init>(Landroidx/compose/animation/core/Transition;)V

    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->e(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2e
    check-cast v3, Landroidx/compose/runtime/State;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/animation/core/Transition$Segment;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, -0x38d3c101

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v21, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternalKt;->a:Landroidx/compose/animation/core/SpringSpec;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/high16 v25, 0x30000

    const-string v23, "Text field vertical padding"

    move-object/from16 v24, v0

    move-object/from16 v18, v1

    invoke-static/range {v18 .. v25}, Landroidx/compose/animation/core/TransitionKt;->d(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    move-result-object v0

    move-object/from16 v10, v24

    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v2, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v1, v2, v10, v4}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v3

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->l()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    move-object/from16 v18, v0

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v0

    move-object/from16 v11, p1

    move-object/from16 p1, v1

    invoke-static {v10, v11}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v33, v11

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v26, :cond_45

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->B()V

    move-object/from16 v19, v2

    iget-boolean v2, v10, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v2, :cond_2f

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_21

    :cond_2f
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_21
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v3, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v0, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v0, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v10, v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v1, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;->b:F

    move-object/from16 v34, v7

    const/4 v7, 0x0

    const/4 v13, 0x1

    invoke-static {v1, v7, v5, v13}, Landroidx/compose/foundation/layout/SizeKt;->b(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->j(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVShape;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVShape;->b:Landroidx/compose/foundation/shape/RoundedCornerShape;

    sget v13, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;->c:F

    invoke-static {v1, v13, v8, v9, v5}, Landroidx/compose/foundation/BorderKt;->a(Landroidx/compose/ui/Modifier;FJLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v20

    sget v21, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;->d:F

    if-eqz v27, :cond_30

    sget v1, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;->g:F

    move/from16 v23, v1

    goto :goto_22

    :cond_30
    move/from16 v23, v21

    :goto_22
    const/16 v24, 0x0

    const/16 v25, 0xa

    const/16 v22, 0x0

    invoke-static/range {v20 .. v25}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/4 v9, 0x0

    invoke-static {v5, v8, v10, v9}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v5

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->l()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v13

    invoke-static {v10, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    if-eqz v26, :cond_44

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v7, v10, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v7, :cond_31

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_23

    :cond_31
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_23
    invoke-static {v10, v5, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10, v13, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v9, v10, v4, v10, v0}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v10, v1, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    sget-object v9, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    invoke-virtual {v9, v1, v7}, Landroidx/compose/foundation/layout/RowScopeInstance;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;)Landroidx/compose/ui/Modifier;

    move-result-object v20

    if-eqz v27, :cond_32

    sget v1, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;->e:F

    move/from16 v23, v1

    goto :goto_24

    :cond_32
    const/16 v23, 0x0

    :goto_24
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v22

    sget-object v1, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    if-eqz p15, :cond_33

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    move/from16 v24, v1

    goto :goto_25

    :cond_33
    const/16 v24, 0x0

    :goto_25
    const/16 v21, 0x0

    const/16 v25, 0x1

    invoke-static/range {v20 .. v25}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v13, 0x1

    invoke-virtual {v9, v1, v5, v13}, Landroidx/compose/foundation/layout/RowScopeInstance;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v13, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    move-object/from16 v18, v9

    const/4 v5, 0x0

    invoke-static {v13, v5}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v9

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->l()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    invoke-static {v10, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    if-eqz v26, :cond_43

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->B()V

    move-object/from16 v36, v13

    iget-boolean v13, v10, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v13, :cond_34

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_26

    :cond_34
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_26
    invoke-static {v10, v9, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10, v14, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5, v10, v4, v10, v0}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v10, v1, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-eqz p5, :cond_35

    invoke-static/range {p5 .. p5}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_36

    :cond_35
    move/from16 v5, p9

    move-object v13, v2

    move-object v14, v3

    move-object/from16 v39, v4

    move-object v9, v6

    move-object/from16 v35, v12

    move-object/from16 v8, v18

    move-object/from16 p1, v26

    move-object v12, v0

    goto/16 :goto_2b

    :cond_36
    const v1, 0x40d04f84

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    if-eqz p16, :cond_37

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x7

    const/4 v9, 0x0

    invoke-static {v1, v9, v9, v5}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    goto :goto_27

    :cond_37
    const/4 v9, 0x0

    move-object/from16 v1, p6

    :goto_27
    move-object/from16 v5, v19

    xor-int/lit8 v19, v32, 0x1

    const/16 v13, 0xd

    invoke-static {v9, v8, v9, v13}, Landroidx/compose/animation/EnterExitTransitionKt;->d(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Vertical;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/animation/EnterTransition;

    move-result-object v14

    move-object/from16 v20, v6

    const/4 v6, 0x3

    move-object/from16 v21, v0

    const/4 v13, 0x0

    invoke-static {v9, v13, v6}, Landroidx/compose/animation/EnterExitTransitionKt;->f(Landroidx/compose/animation/core/FiniteAnimationSpec;FI)Landroidx/compose/animation/EnterTransition;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroidx/compose/animation/EnterTransition;->b(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransition;

    move-result-object v13

    const/16 v0, 0xd

    invoke-static {v9, v8, v9, v0}, Landroidx/compose/animation/EnterExitTransitionKt;->n(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Vertical;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/animation/ExitTransition;

    move-result-object v0

    invoke-static {v9, v6}, Landroidx/compose/animation/EnterExitTransitionKt;->h(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroidx/compose/animation/ExitTransition;->b(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransition;

    move-result-object v22

    new-instance v0, Lg80;

    move v8, v6

    const/4 v6, 0x0

    move-object/from16 v37, v2

    move-object/from16 v38, v3

    move-object/from16 v39, v4

    move-object v14, v5

    move-object/from16 v8, v16

    move-object/from16 v9, v20

    move-object/from16 v40, v21

    move-object/from16 v2, p3

    move/from16 v4, p4

    move-object/from16 v3, p5

    move/from16 v5, p9

    move-object/from16 v21, v13

    move-object/from16 v13, p1

    move-object/from16 p1, v26

    invoke-direct/range {v0 .. v6}, Lg80;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;Ljava/lang/String;ZZI)V

    const v2, -0x6729e98a

    invoke-static {v2, v0, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v24

    const/16 v27, 0x12

    const/16 v20, 0x0

    const/16 v23, 0x0

    const v26, 0x186c06

    move-object/from16 v25, v10

    invoke-static/range {v18 .. v27}, Landroidx/compose/animation/AnimatedVisibilityKt;->d(Landroidx/compose/foundation/layout/RowScope;ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v9}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v13, v14, v10, v4}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v2

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->l()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {v10, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz p1, :cond_39

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v5, v10, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v5, :cond_38

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    :goto_28
    move-object/from16 v13, v37

    goto :goto_29

    :cond_38
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->o()V

    goto :goto_28

    :goto_29
    invoke-static {v10, v2, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v14, v38

    invoke-static {v10, v4, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v2, v39

    move-object/from16 v4, v40

    invoke-static {v3, v10, v2, v10, v4}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v10, v0, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/16 v0, 0xf

    const/4 v3, 0x0

    invoke-static {v3, v3, v3, v0}, Landroidx/compose/animation/EnterExitTransitionKt;->d(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Vertical;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/animation/EnterTransition;

    move-result-object v5

    const/4 v0, 0x0

    const/4 v6, 0x3

    invoke-static {v3, v0, v6}, Landroidx/compose/animation/EnterExitTransitionKt;->f(Landroidx/compose/animation/core/FiniteAnimationSpec;FI)Landroidx/compose/animation/EnterTransition;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroidx/compose/animation/EnterTransition;->b(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransition;

    move-result-object v21

    const/16 v0, 0xf

    invoke-static {v3, v3, v3, v0}, Landroidx/compose/animation/EnterExitTransitionKt;->n(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Vertical;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/animation/ExitTransition;

    move-result-object v0

    invoke-static {v3, v6}, Landroidx/compose/animation/EnterExitTransitionKt;->h(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/compose/animation/ExitTransition;->b(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransition;

    move-result-object v22

    new-instance v0, Lg80;

    const/4 v6, 0x1

    move-object/from16 v3, p5

    move/from16 v5, p9

    move-object/from16 v16, v8

    move-object/from16 v35, v12

    move-object/from16 v8, v18

    move-object/from16 v2, p3

    move-object v12, v4

    move/from16 v4, p4

    invoke-direct/range {v0 .. v6}, Lg80;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;Ljava/lang/String;ZZI)V

    const v1, 0x46b981c0    # 23744.875f

    invoke-static {v1, v0, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v24

    const/16 v27, 0x12

    sget-object v18, Landroidx/compose/foundation/layout/ColumnScopeInstance;->a:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    const/16 v20, 0x0

    const/16 v23, 0x0

    move-object/from16 v25, v10

    move/from16 v19, v32

    invoke-static/range {v18 .. v27}, Landroidx/compose/animation/AnimatedVisibilityKt;->c(Landroidx/compose/foundation/layout/ColumnScope;ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    shr-int/lit8 v0, v28, 0x9

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v10, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_2a
    const/4 v0, 0x1

    goto :goto_2c

    :cond_39
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v3, 0x0

    throw v3

    :goto_2b
    const v0, 0x40ce61f0

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    shr-int/lit8 v0, v28, 0x9

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v10, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_2a

    :goto_2c
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    if-eqz p13, :cond_3c

    const v0, -0x54cd3a

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v9}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v7}, Landroidx/compose/foundation/layout/RowScopeInstance;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v1, v36

    invoke-static {v1, v4}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v2

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->l()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {v10, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz p1, :cond_3b

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v6, v10, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v6, :cond_3a

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2d

    :cond_3a
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_2d
    invoke-static {v10, v2, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10, v4, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v2, v39

    invoke-static {v3, v10, v2, v10, v12}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v3, v35

    invoke-static {v10, v0, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v0, v28, 0x6

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v4, p13

    invoke-interface {v4, v10, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_2e

    :cond_3b
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v3, 0x0

    throw v3

    :cond_3c
    move v0, v4

    move-object/from16 v3, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v39

    move-object/from16 v4, p13

    const v6, -0x526596

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_2e
    if-nez p12, :cond_3d

    const v1, -0x51ce58

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v13, p12

    const/4 v0, 0x1

    goto :goto_30

    :cond_3d
    const v6, -0x51ce57

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v6, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v6, v9}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6, v7}, Landroidx/compose/foundation/layout/RowScopeInstance;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->l()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v7

    invoke-static {v10, v6}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    if-eqz p1, :cond_42

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v8, v10, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v8, :cond_3e

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2f

    :cond_3e
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_2f
    invoke-static {v10, v1, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10, v7, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0, v10, v2, v10, v12}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v10, v6, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v13, p12

    move-object/from16 v8, v16

    invoke-interface {v13, v10, v8}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_30
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/high16 v0, 0xe000000

    and-int v0, v30, v0

    const/high16 v1, 0x4000000

    if-ne v0, v1, :cond_3f

    const/4 v1, 0x1

    goto :goto_31

    :cond_3f
    const/4 v1, 0x0

    :goto_31
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v1, :cond_40

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_41

    :cond_40
    new-instance v0, Lx4;

    const/4 v1, 0x4

    invoke-direct {v0, v5, v1}, Lx4;-><init>(ZI)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_41
    check-cast v0, Lkotlin/jvm/functions/Function1;

    move-object/from16 v9, p8

    const/4 v2, 0x0

    invoke-static {v9, v2, v0}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    shr-int/lit8 v0, v30, 0x3

    and-int/lit8 v1, v0, 0x70

    or-int v1, v1, v29

    and-int/lit16 v0, v0, 0x380

    or-int/2addr v0, v1

    shr-int/lit8 v1, v30, 0xf

    and-int/lit16 v1, v1, 0x1c00

    or-int/2addr v0, v1

    const v1, 0xe000

    shr-int/lit8 v2, v30, 0x6

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    sget-object v0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;

    move-object/from16 v4, p3

    move/from16 v6, p4

    move v7, v5

    move-object v2, v10

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v7}, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;->e(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;Ljava/lang/String;ZZ)V

    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v2, v33

    goto :goto_32

    :cond_42
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v3, 0x0

    throw v3

    :cond_43
    const/4 v3, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v3

    :cond_44
    const/4 v3, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v3

    :cond_45
    const/4 v3, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v3

    :cond_46
    move-object/from16 v9, p8

    move-object v10, v0

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v2, p1

    :goto_32
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_47

    move-object v1, v0

    new-instance v0, Lh80;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v14, p13

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p18

    move/from16 v19, p19

    move-object/from16 v41, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v19}, Lh80;-><init>(Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;ZLjava/lang/String;Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/Modifier;ZZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZZII)V

    move-object/from16 v1, v41

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_47
    return-void
.end method

.method public final c(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;Ljava/lang/String;ZZ)V
    .locals 30

    move-object/from16 v0, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    if-eqz v0, :cond_0

    const-string v1, "LabelMagnified$system"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v8, v0

    const v0, 0x667f2bf0

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int v1, p1, v1

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_1

    :cond_2
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x100

    goto :goto_2

    :cond_3
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v1, v2

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x800

    goto :goto_3

    :cond_4
    const/16 v2, 0x400

    :goto_3
    or-int/2addr v1, v2

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x4000

    goto :goto_4

    :cond_5
    const/16 v2, 0x2000

    :goto_4
    or-int/2addr v1, v2

    and-int/lit16 v2, v1, 0x2493

    const/16 v7, 0x2492

    if-eq v2, v7, :cond_6

    const/4 v2, 0x1

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    and-int/lit8 v7, v1, 0x1

    invoke-virtual {v0, v7, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    if-nez v4, :cond_7

    const-string v2, ""

    move-object v7, v2

    goto :goto_6

    :cond_7
    move-object v7, v4

    :goto_6
    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->j:Landroidx/compose/ui/text/TextStyle;

    if-nez v5, :cond_8

    iget-wide v9, v3, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;->e:J

    goto :goto_7

    :cond_8
    if-eqz v6, :cond_9

    iget-wide v9, v3, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;->f:J

    goto :goto_7

    :cond_9
    iget-wide v9, v3, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;->d:J

    :goto_7
    sget-object v11, Landroidx/compose/ui/text/style/TextOverflow;->a:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v20, Landroidx/compose/ui/text/style/TextOverflow;->c:I

    shl-int/lit8 v1, v1, 0x3

    and-int/lit8 v27, v1, 0x70

    const/16 v28, 0x6180

    const v29, 0x1aff8

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v26, v0

    move-object/from16 v25, v2

    invoke-static/range {v7 .. v29}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    goto :goto_8

    :cond_a
    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_8
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_b

    new-instance v0, Li80;

    move-object v2, v8

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move/from16 v7, p1

    invoke-direct/range {v0 .. v8}, Li80;-><init>(Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;Ljava/lang/String;ZZII)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void
.end method

.method public final d(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;Ljava/lang/String;ZZ)V
    .locals 30

    move-object/from16 v0, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    if-eqz v0, :cond_0

    const-string v1, "LabelMinified$system"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v8, v0

    const v0, -0x24721505

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int v1, p1, v1

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_1

    :cond_2
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x100

    goto :goto_2

    :cond_3
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v1, v2

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x800

    goto :goto_3

    :cond_4
    const/16 v2, 0x400

    :goto_3
    or-int/2addr v1, v2

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x4000

    goto :goto_4

    :cond_5
    const/16 v2, 0x2000

    :goto_4
    or-int/2addr v1, v2

    and-int/lit16 v2, v1, 0x2493

    const/16 v7, 0x2492

    if-eq v2, v7, :cond_6

    const/4 v2, 0x1

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    and-int/lit8 v7, v1, 0x1

    invoke-virtual {v0, v7, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    if-nez v4, :cond_7

    const-string v2, ""

    move-object v7, v2

    goto :goto_6

    :cond_7
    move-object v7, v4

    :goto_6
    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->m:Landroidx/compose/ui/text/TextStyle;

    if-nez v5, :cond_8

    iget-wide v9, v3, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;->e:J

    goto :goto_7

    :cond_8
    if-eqz v6, :cond_9

    iget-wide v9, v3, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;->f:J

    goto :goto_7

    :cond_9
    iget-wide v9, v3, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;->d:J

    :goto_7
    sget-object v11, Landroidx/compose/ui/text/style/TextOverflow;->a:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v20, Landroidx/compose/ui/text/style/TextOverflow;->c:I

    shl-int/lit8 v1, v1, 0x3

    and-int/lit8 v27, v1, 0x70

    const/16 v28, 0x6180

    const v29, 0x1aff8

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v26, v0

    move-object/from16 v25, v2

    invoke-static/range {v7 .. v29}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    goto :goto_8

    :cond_a
    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_8
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_b

    new-instance v0, Li80;

    move-object v2, v8

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move/from16 v7, p1

    invoke-direct/range {v0 .. v8}, Li80;-><init>(Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;Ljava/lang/String;ZZII)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void
.end method

.method public final e(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;Ljava/lang/String;ZZ)V
    .locals 32

    move/from16 v7, p1

    move-object/from16 v0, p3

    move-object/from16 v3, p4

    move-object/from16 v8, p5

    move/from16 v4, p6

    move/from16 v5, p7

    if-eqz v0, :cond_0

    const-string v1, "SupportingText$system"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v9, v0

    const v0, 0x152935dc

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    and-int/lit8 v1, v7, 0x6

    if-nez v1, :cond_2

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v7

    goto :goto_1

    :cond_2
    move v1, v7

    :goto_1
    and-int/lit8 v2, v7, 0x30

    if-nez v2, :cond_4

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x20

    goto :goto_2

    :cond_3
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_4
    and-int/lit16 v2, v7, 0x180

    if-nez v2, :cond_6

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x100

    goto :goto_3

    :cond_5
    const/16 v2, 0x80

    :goto_3
    or-int/2addr v1, v2

    :cond_6
    and-int/lit16 v2, v7, 0xc00

    if-nez v2, :cond_8

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x800

    goto :goto_4

    :cond_7
    const/16 v2, 0x400

    :goto_4
    or-int/2addr v1, v2

    :cond_8
    and-int/lit16 v2, v7, 0x6000

    if-nez v2, :cond_a

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v2, 0x4000

    goto :goto_5

    :cond_9
    const/16 v2, 0x2000

    :goto_5
    or-int/2addr v1, v2

    :cond_a
    const/high16 v2, 0x30000

    and-int/2addr v2, v7

    if-nez v2, :cond_c

    move-object/from16 v2, p0

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const/high16 v6, 0x20000

    goto :goto_6

    :cond_b
    const/high16 v6, 0x10000

    :goto_6
    or-int/2addr v1, v6

    goto :goto_7

    :cond_c
    move-object/from16 v2, p0

    :goto_7
    const v6, 0x12493

    and-int/2addr v6, v1

    const v10, 0x12492

    const/4 v15, 0x0

    if-eq v6, v10, :cond_d

    const/4 v6, 0x1

    goto :goto_8

    :cond_d
    move v6, v15

    :goto_8
    and-int/lit8 v10, v1, 0x1

    invoke-virtual {v0, v10, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_12

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    if-eqz v8, :cond_e

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_f

    :cond_e
    move-object/from16 v31, v9

    move v1, v15

    goto :goto_a

    :cond_f
    const v6, -0x79492a93

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v13, 0x0

    const/16 v14, 0xd

    const/4 v10, 0x0

    sget v11, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;->f:F

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v6

    move-object/from16 v31, v9

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v9

    iget-object v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->m:Landroidx/compose/ui/text/TextStyle;

    if-nez v4, :cond_10

    iget-wide v10, v3, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;->h:J

    goto :goto_9

    :cond_10
    if-eqz v5, :cond_11

    iget-wide v10, v3, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;->i:J

    goto :goto_9

    :cond_11
    iget-wide v10, v3, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;->g:J

    :goto_9
    shr-int/lit8 v1, v1, 0xc

    and-int/lit8 v28, v1, 0xe

    const/16 v29, 0x0

    const v30, 0x1fff8

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move v1, v15

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v27, v0

    move-object/from16 v26, v9

    move-object v9, v6

    invoke-static/range {v8 .. v30}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_b

    :goto_a
    const v6, -0x794123fa

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_b

    :cond_12
    move-object/from16 v31, v9

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_13

    new-instance v0, Leb;

    move-object/from16 v6, p5

    move-object v1, v2

    move-object/from16 v2, v31

    invoke-direct/range {v0 .. v7}, Leb;-><init>(Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;ZZLjava/lang/String;I)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_13
    return-void
.end method

.method public final f(Landroidx/compose/ui/Modifier;ILjava/lang/String;ZLkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;Landroidx/compose/runtime/Composer;I)V
    .locals 20

    move-object/from16 v0, p1

    move/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    if-eqz v0, :cond_0

    const-string v1, "TrailingIcon$system"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v2, v0

    const v0, 0x4e5fe0c6    # 9.3901248E8f

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int v0, p8, v0

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_1

    :cond_2
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    move-object/from16 v9, p3

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x100

    goto :goto_2

    :cond_3
    const/16 v1, 0x80

    :goto_2
    or-int/2addr v0, v1

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x800

    goto :goto_3

    :cond_4
    const/16 v1, 0x400

    :goto_3
    or-int/2addr v0, v1

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    const/16 v4, 0x4000

    if-eqz v1, :cond_5

    move v1, v4

    goto :goto_4

    :cond_5
    const/16 v1, 0x2000

    :goto_4
    or-int/2addr v0, v1

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/high16 v1, 0x20000

    goto :goto_5

    :cond_6
    const/high16 v1, 0x10000

    :goto_5
    or-int/2addr v0, v1

    const v1, 0x92493

    and-int/2addr v1, v0

    const v8, 0x92492

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v1, v8, :cond_7

    move v1, v11

    goto :goto_6

    :cond_7
    move v1, v10

    :goto_6
    and-int/lit8 v8, v0, 0x1

    invoke-virtual {v13, v8, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string v1, "dropdown_arrow_button"

    invoke-static {v2, v1}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v8, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v1, v8}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v14

    if-eqz v5, :cond_8

    if-eqz v6, :cond_8

    move v15, v11

    goto :goto_7

    :cond_8
    move v15, v10

    :goto_7
    const v1, 0xe000

    and-int/2addr v1, v0

    if-ne v1, v4, :cond_9

    move v10, v11

    :cond_9
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v10, :cond_a

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v4, :cond_b

    :cond_a
    new-instance v1, Lpy;

    const/16 v4, 0x14

    invoke-direct {v1, v6, v4}, Lpy;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_b
    move-object/from16 v18, v1

    check-cast v18, Lkotlin/jvm/functions/Function0;

    const/16 v19, 0xe

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Landroidx/compose/foundation/ClickableKt;->d(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget v4, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;->g:F

    invoke-static {v1, v4}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v10

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v1, v0, 0xe

    invoke-static {v3, v13, v1}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v8

    if-eqz v5, :cond_c

    iget-wide v11, v7, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;->n:J

    goto :goto_8

    :cond_c
    iget-wide v11, v7, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;->o:J

    :goto_8
    and-int/lit8 v0, v0, 0x70

    const/16 v1, 0x8

    or-int v14, v1, v0

    const/4 v15, 0x0

    invoke-static/range {v8 .. v15}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    goto :goto_9

    :cond_d
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_9
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_e

    new-instance v0, Lp1;

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lp1;-><init>(Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;Landroidx/compose/ui/Modifier;ILjava/lang/String;ZLkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;I)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_e
    return-void
.end method
