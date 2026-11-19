.class public abstract Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitchKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitchKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0008\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0005\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0005\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0005\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0005\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0007\u001a\u00020\u00068\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0007\u001a\u00020\u00068\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0007\u001a\u00020\u00068\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Landroidx/compose/ui/BiasAlignment;",
        "alignment",
        "",
        "bias",
        "",
        "isChecked",
        "Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitchLegalState;",
        "state",
        "system"
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
.field public static final a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc70;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lc70;-><init>(I)V

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitchKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier;ZZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v6, p6

    const-string v1, "LVSwitch"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v2, -0x17e235a0

    move-object/from16 v3, p5

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    and-int/lit8 v2, p7, 0x1

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    or-int/lit8 v4, v6, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v6, 0x6

    if-nez v4, :cond_3

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    or-int/2addr v4, v6

    goto :goto_1

    :cond_3
    move v4, v6

    :goto_1
    and-int/lit8 v5, p7, 0x2

    if-eqz v5, :cond_5

    or-int/lit8 v4, v4, 0x30

    :cond_4
    move/from16 v7, p1

    goto :goto_3

    :cond_5
    and-int/lit8 v7, v6, 0x30

    if-nez v7, :cond_4

    move/from16 v7, p1

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v8, 0x20

    goto :goto_2

    :cond_6
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v4, v8

    :goto_3
    and-int/lit16 v8, v6, 0x180

    move/from16 v10, p2

    if-nez v8, :cond_8

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x100

    goto :goto_4

    :cond_7
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v4, v8

    :cond_8
    and-int/lit8 v8, p7, 0x8

    if-eqz v8, :cond_9

    or-int/lit16 v4, v4, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v9, v6, 0xc00

    if-nez v9, :cond_c

    if-nez p3, :cond_a

    const/4 v9, -0x1

    goto :goto_5

    :cond_a
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    :goto_5
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v9

    if-eqz v9, :cond_b

    const/16 v9, 0x800

    goto :goto_6

    :cond_b
    const/16 v9, 0x400

    :goto_6
    or-int/2addr v4, v9

    :cond_c
    :goto_7
    and-int/lit16 v9, v6, 0x6000

    move-object/from16 v11, p4

    if-nez v9, :cond_e

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    const/16 v9, 0x4000

    goto :goto_8

    :cond_d
    const/16 v9, 0x2000

    :goto_8
    or-int/2addr v4, v9

    :cond_e
    and-int/lit16 v9, v4, 0x2493

    const/16 v13, 0x2492

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eq v9, v13, :cond_f

    move v9, v15

    goto :goto_9

    :cond_f
    move v9, v14

    :goto_9
    and-int/lit8 v13, v4, 0x1

    invoke-virtual {v12, v13, v9}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v9

    if-eqz v9, :cond_15

    if-eqz v2, :cond_10

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_10
    if-eqz v5, :cond_11

    move v9, v15

    goto :goto_a

    :cond_11
    move v9, v7

    :goto_a
    if-eqz v8, :cond_12

    sget-object v1, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    goto :goto_b

    :cond_12
    move-object/from16 v1, p3

    :goto_b
    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitchKt$WhenMappings;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v2, v2, v5

    sget-object v5, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitchKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    if-eq v2, v15, :cond_14

    if-ne v2, v3, :cond_13

    const v2, 0x57d4e52d

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitches;

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitches;->b:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSwitch;

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_c
    move-object v8, v2

    goto :goto_d

    :cond_13
    const v0, 0x57d4d2cb

    invoke-static {v12, v0, v14}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_14
    const v2, 0x57d4dc87

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitches;

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitches;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSwitch;

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_c

    :goto_d
    and-int/lit8 v2, v4, 0xe

    shl-int/lit8 v3, v4, 0x3

    and-int/lit16 v5, v3, 0x380

    or-int/2addr v2, v5

    and-int/lit16 v3, v3, 0x1c00

    or-int/2addr v2, v3

    const v3, 0xe000

    and-int/2addr v3, v4

    or-int v13, v2, v3

    move-object v7, v0

    invoke-static/range {v7 .. v13}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitchKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSwitch;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move-object v4, v1

    move-object v1, v7

    move v2, v9

    goto :goto_e

    :cond_15
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v4, p3

    move-object v1, v0

    move v2, v7

    :goto_e
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_16

    new-instance v0, Ld70;

    const/4 v8, 0x1

    move/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Ld70;-><init>(Landroidx/compose/ui/Modifier;ZZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function1;III)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_16
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSwitch;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 55

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    move/from16 v6, p6

    if-eqz v0, :cond_0

    const-string v1, "LVSwitchInternal"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v1, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x59efcc91

    move-object/from16 v3, p5

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    and-int/lit8 v0, v6, 0x6

    if-nez v0, :cond_2

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v6

    goto :goto_1

    :cond_2
    move v0, v6

    :goto_1
    and-int/lit8 v4, v6, 0x30

    if-nez v4, :cond_4

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x20

    goto :goto_2

    :cond_3
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v0, v4

    :cond_4
    and-int/lit16 v4, v6, 0x180

    move/from16 v10, p2

    if-nez v4, :cond_6

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x100

    goto :goto_3

    :cond_5
    const/16 v4, 0x80

    :goto_3
    or-int/2addr v0, v4

    :cond_6
    and-int/lit16 v4, v6, 0xc00

    if-nez v4, :cond_8

    move/from16 v4, p3

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x800

    goto :goto_4

    :cond_7
    const/16 v7, 0x400

    :goto_4
    or-int/2addr v0, v7

    goto :goto_5

    :cond_8
    move/from16 v4, p3

    :goto_5
    and-int/lit16 v7, v6, 0x6000

    if-nez v7, :cond_a

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/16 v7, 0x4000

    goto :goto_6

    :cond_9
    const/16 v7, 0x2000

    :goto_6
    or-int/2addr v0, v7

    :cond_a
    and-int/lit16 v7, v0, 0x2493

    const/16 v9, 0x2492

    const/4 v11, 0x0

    if-eq v7, v9, :cond_b

    const/4 v7, 0x1

    goto :goto_7

    :cond_b
    move v7, v11

    :goto_7
    and-int/lit8 v9, v0, 0x1

    invoke-virtual {v12, v9, v7}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v7

    if-eqz v7, :cond_10

    sget-object v7, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v7, Landroidx/compose/ui/platform/CompositionLocalsKt;->l:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    sget-object v9, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v9, 0x42000000    # 32.0f

    const/high16 v14, 0x42500000    # 52.0f

    invoke-static {v1, v14, v9}, Landroidx/compose/foundation/layout/SizeKt;->p(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v9

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v14, v15, :cond_c

    new-instance v14, Ln60;

    const/16 v13, 0x9

    invoke-direct {v14, v13}, Ln60;-><init>(I)V

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v14, Lkotlin/jvm/functions/Function1;

    invoke-static {v9, v11, v14}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget v13, Landroidx/compose/material3/SwitchDefaults;->a:I

    iget-wide v13, v2, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSwitch;->a:J

    iget-wide v3, v2, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSwitch;->b:J

    sget-object v16, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v21, Landroidx/compose/ui/graphics/Color;->h:J

    move-object/from16 v50, v9

    iget-wide v8, v2, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSwitch;->c:J

    move-object/from16 v51, v12

    iget-wide v11, v2, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSwitch;->d:J

    move/from16 v54, v0

    move-object/from16 v53, v1

    iget-wide v0, v2, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSwitch;->e:J

    move-wide/from16 v33, v0

    iget-wide v0, v2, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSwitch;->f:J

    move-wide/from16 v35, v0

    iget-wide v0, v2, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSwitch;->g:J

    move-wide/from16 v37, v0

    sget-object v0, Landroidx/compose/material3/tokens/SwitchTokens;->q:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->d(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v23

    sget-object v0, Landroidx/compose/material3/tokens/SwitchTokens;->A:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->d(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v31

    sget-object v0, Landroidx/compose/material3/tokens/SwitchTokens;->c:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-wide/from16 v19, v3

    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->d(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v2

    sget v0, Landroidx/compose/material3/tokens/SwitchTokens;->d:F

    invoke-static {v0, v2, v3}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v2

    invoke-static {v1}, Landroidx/compose/material3/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    move-wide/from16 v25, v8

    iget-wide v8, v0, Landroidx/compose/material3/ColorScheme;->p:J

    invoke-static {v2, v3, v8, v9}, Landroidx/compose/ui/graphics/ColorKt;->f(JJ)J

    move-result-wide v39

    sget-object v0, Landroidx/compose/material3/tokens/SwitchTokens;->i:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->d(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v2

    sget v0, Landroidx/compose/material3/tokens/SwitchTokens;->j:F

    invoke-static {v0, v2, v3}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v2

    invoke-static {v1}, Landroidx/compose/material3/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    iget-wide v8, v0, Landroidx/compose/material3/ColorScheme;->p:J

    invoke-static {v2, v3, v8, v9}, Landroidx/compose/ui/graphics/ColorKt;->f(JJ)J

    move-result-wide v47

    new-instance v16, Landroidx/compose/material3/SwitchColors;

    const/16 v49, 0x0

    move-wide/from16 v27, v21

    move-wide/from16 v41, v33

    move-wide/from16 v43, v35

    move-wide/from16 v45, v37

    move-wide/from16 v29, v11

    move-wide/from16 v17, v13

    invoke-direct/range {v16 .. v49}, Landroidx/compose/material3/SwitchColors;-><init>(JJJJJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v11, v16

    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    const v2, 0xe000

    and-int v3, v54, v2

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_d

    const/16 v52, 0x1

    goto :goto_8

    :cond_d
    const/16 v52, 0x0

    :goto_8
    or-int v0, v0, v52

    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_e

    if-ne v3, v15, :cond_f

    :cond_e
    new-instance v3, Lk60;

    const/4 v0, 0x4

    invoke-direct {v3, v7, v5, v0}, Lk60;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_f
    move-object v8, v3

    check-cast v8, Lkotlin/jvm/functions/Function1;

    shr-int/lit8 v0, v54, 0x9

    and-int/lit8 v0, v0, 0xe

    shl-int/lit8 v3, v54, 0x6

    and-int/2addr v2, v3

    or-int v13, v0, v2

    const/16 v14, 0x48

    move/from16 v7, p3

    move-object v12, v1

    move-object/from16 v9, v50

    invoke-static/range {v7 .. v14}, Landroidx/compose/material3/SwitchKt;->a(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SwitchColors;Landroidx/compose/runtime/Composer;II)V

    goto :goto_9

    :cond_10
    move-object/from16 v53, v1

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_9
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_11

    new-instance v0, Lf10;

    const/4 v7, 0x2

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v1, v53

    invoke-direct/range {v0 .. v7}, Lf10;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZZLkotlin/jvm/functions/Function1;II)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_11
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitchLegalState;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p5

    const-string v1, "LVSwitchLegal"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v3, -0x2dc51b4f

    move-object/from16 v6, p4

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    and-int/lit8 v3, v5, 0x6

    const/4 v12, 0x2

    if-nez v3, :cond_2

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    move v3, v12

    :goto_0
    or-int/2addr v3, v5

    goto :goto_1

    :cond_2
    move v3, v5

    :goto_1
    and-int/lit8 v6, v5, 0x30

    if-nez v6, :cond_5

    if-nez v2, :cond_3

    const/4 v6, -0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    :goto_2
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_3

    :cond_4
    const/16 v6, 0x10

    :goto_3
    or-int/2addr v3, v6

    :cond_5
    and-int/lit8 v6, p6, 0x4

    if-eqz v6, :cond_7

    or-int/lit16 v3, v3, 0x180

    :cond_6
    move/from16 v7, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v7, v5, 0x180

    if-nez v7, :cond_6

    move/from16 v7, p2

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x100

    goto :goto_4

    :cond_8
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v3, v8

    :goto_5
    and-int/lit16 v8, v5, 0xc00

    if-nez v8, :cond_a

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/16 v8, 0x800

    goto :goto_6

    :cond_9
    const/16 v8, 0x400

    :goto_6
    or-int/2addr v3, v8

    :cond_a
    and-int/lit16 v8, v3, 0x493

    const/16 v10, 0x492

    const/4 v15, 0x0

    const/4 v11, 0x1

    if-eq v8, v10, :cond_b

    move v8, v11

    goto :goto_7

    :cond_b
    move v8, v15

    :goto_7
    and-int/lit8 v10, v3, 0x1

    invoke-virtual {v9, v10, v8}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v8

    if-eqz v8, :cond_26

    if-eqz v6, :cond_c

    move/from16 v19, v11

    goto :goto_8

    :cond_c
    move/from16 v19, v7

    :goto_8
    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v6, Landroidx/compose/ui/platform/CompositionLocalsKt;->l:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    sget-object v7, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->j(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVShape;

    move-result-object v7

    iget-object v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVShape;->e:Landroidx/compose/foundation/shape/RoundedCornerShape;

    sget-object v16, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitchKt$WhenMappings;->b:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v16, v8

    const/high16 v17, -0x40800000    # -1.0f

    const/4 v14, 0x0

    const/4 v13, 0x3

    if-eq v8, v11, :cond_10

    if-eq v8, v12, :cond_e

    if-ne v8, v13, :cond_d

    const v8, -0x4c792b33

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move v10, v14

    goto :goto_b

    :cond_d
    const v0, 0x2f14b414

    invoke-static {v9, v0, v15}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_e
    const v8, -0x4c7b4593

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v8, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    sget-object v10, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v8, v10, :cond_f

    move/from16 v10, v17

    goto :goto_9

    :cond_f
    const/high16 v10, 0x3f800000    # 1.0f

    :goto_9
    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_b

    :cond_10
    const v8, -0x4c7d6fb3

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v8, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    sget-object v10, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v8, v10, :cond_11

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_11
    move/from16 v10, v17

    :goto_a
    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_b
    const/16 v8, 0xc00

    move/from16 v17, v11

    const/16 v11, 0x16

    move-object/from16 v18, v7

    const/4 v7, 0x0

    move-object/from16 v20, v6

    move v6, v10

    move v10, v8

    const-string v8, ""

    move/from16 v13, v17

    move-object/from16 v25, v18

    move-object/from16 v24, v20

    invoke-static/range {v6 .. v11}, Landroidx/compose/animation/core/AnimateAsStateKt;->b(FLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v6

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v7

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v7, :cond_12

    if-ne v8, v10, :cond_13

    :cond_12
    new-instance v7, Landroidx/compose/ui/BiasAlignment;

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-direct {v7, v6, v14}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    invoke-static {v7}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_13
    check-cast v8, Landroidx/compose/runtime/MutableState;

    if-nez v19, :cond_14

    const v6, -0x4c78246b

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->c:J

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_d

    :cond_14
    const v6, -0x4c76e49c

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v16, v6

    if-eq v6, v13, :cond_17

    if-eq v6, v12, :cond_16

    const/4 v7, 0x3

    if-ne v6, v7, :cond_15

    const v6, 0x2f150e1e

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->o:J

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_c

    :cond_15
    const v0, 0x2f14f05e

    invoke-static {v9, v0, v15}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_16
    const v6, 0x2f150476

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->x:J

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_c

    :cond_17
    const v6, 0x2f14fa78

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->w:J

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_c
    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_d
    if-nez v19, :cond_18

    const v11, -0x4c72318b

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v11

    iget-object v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v12, v11, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->c:J

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_10

    :cond_18
    const v11, -0x4c70f1bc

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v11, v16, v11

    const/4 v13, 0x1

    if-eq v11, v13, :cond_1b

    const/4 v12, 0x2

    if-eq v11, v12, :cond_1a

    const/4 v12, 0x3

    if-ne v11, v12, :cond_19

    const v11, 0x2f153f3e

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v11

    iget-object v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_e
    move-wide v12, v11

    goto :goto_f

    :cond_19
    const v0, 0x2f15217e

    invoke-static {v9, v0, v15}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_1a
    const v11, 0x2f153596

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v11

    iget-object v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->x:J

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_e

    :cond_1b
    const v11, 0x2f152b98

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v11

    iget-object v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->w:J

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_e

    :goto_f
    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_10
    and-int/lit8 v11, v3, 0x70

    const/16 v14, 0x20

    if-ne v11, v14, :cond_1c

    const/4 v14, 0x1

    goto :goto_11

    :cond_1c
    move v14, v15

    :goto_11
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v14, :cond_1d

    if-ne v15, v10, :cond_1e

    :cond_1d
    new-instance v15, Ll00;

    const/16 v14, 0x11

    invoke-direct {v15, v2, v14}, Ll00;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1e
    check-cast v15, Lkotlin/jvm/functions/Function1;

    const/4 v14, 0x1

    invoke-static {v0, v14, v15}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v15

    const/high16 v14, 0x42500000    # 52.0f

    move-object/from16 v26, v0

    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v15, v14, v0}, Landroidx/compose/foundation/layout/SizeKt;->p(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v14, v25

    invoke-static {v0, v14}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v0, v15, v6, v7, v14}, Landroidx/compose/foundation/BorderKt;->a(Landroidx/compose/ui/Modifier;FJLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v16

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_1f

    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1f
    move-object/from16 v17, v0

    check-cast v17, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v6, v24

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    and-int/lit16 v3, v3, 0x1c00

    const/16 v7, 0x800

    if-ne v3, v7, :cond_20

    const/4 v3, 0x1

    goto :goto_12

    :cond_20
    const/4 v3, 0x0

    :goto_12
    or-int/2addr v0, v3

    const/16 v14, 0x20

    if-ne v11, v14, :cond_21

    const/4 v11, 0x1

    goto :goto_13

    :cond_21
    const/4 v11, 0x0

    :goto_13
    or-int/2addr v0, v11

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_22

    if-ne v3, v10, :cond_23

    :cond_22
    new-instance v3, Lpp;

    const/16 v0, 0x12

    invoke-direct {v3, v6, v4, v2, v0}, Lpp;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;I)V

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_23
    move-object/from16 v22, v3

    check-cast v22, Lkotlin/jvm/functions/Function0;

    const/16 v23, 0x18

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v16 .. v23}, Landroidx/compose/foundation/ClickableKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/BiasAlignment;

    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    iget-wide v6, v9, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v7

    invoke-static {v9, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v10, v9, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v10, :cond_25

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v10, v9, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v10, :cond_24

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_14

    :cond_24
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_14
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v3, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v7, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v3, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v9, v3}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v0, v3, v1}, Ltr;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    const/4 v3, 0x0

    const/4 v6, 0x2

    invoke-static {v0, v1, v3, v6}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v0, v12, v13, v1}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v6, 0x0

    invoke-static {v0, v9, v6}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move/from16 v3, v19

    goto :goto_15

    :cond_25
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_26
    move-object/from16 v26, v0

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    move v3, v7

    :goto_15
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_27

    new-instance v0, Loh;

    const/4 v7, 0x3

    move/from16 v6, p6

    move-object/from16 v1, v26

    invoke-direct/range {v0 .. v7}, Loh;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/Object;ZLkotlin/Function;III)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_27
    return-void
.end method
