.class public abstract Lcom/vuitton/android/designkit/ui/theme/atoms/LVLinkKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/designkit/ui/theme/atoms/LVLinkKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/Color;",
        "color",
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

    new-instance v0, Lk40;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lk40;-><init>(I)V

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Lcom/vuitton/android/designkit/ui/theme/atoms/LVLinkKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v7, p7

    const-string v1, "LVLinkPrimary"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x504ef1c0

    move-object/from16 v3, p6

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v14

    and-int/lit8 v2, p8, 0x1

    if-eqz v2, :cond_1

    or-int/lit8 v4, v7, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v7, 0x6

    if-nez v4, :cond_3

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v7

    goto :goto_1

    :cond_3
    move v4, v7

    :goto_1
    and-int/lit8 v5, v7, 0x30

    move-object/from16 v9, p1

    if-nez v5, :cond_5

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    goto :goto_2

    :cond_4
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v4, v5

    :cond_5
    and-int/lit8 v5, p8, 0x4

    if-eqz v5, :cond_7

    or-int/lit16 v4, v4, 0x180

    :cond_6
    move/from16 v6, p2

    goto :goto_4

    :cond_7
    and-int/lit16 v6, v7, 0x180

    if-nez v6, :cond_6

    move/from16 v6, p2

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x100

    goto :goto_3

    :cond_8
    const/16 v8, 0x80

    :goto_3
    or-int/2addr v4, v8

    :goto_4
    and-int/lit8 v8, p8, 0x8

    if-eqz v8, :cond_9

    or-int/lit16 v4, v4, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v10, v7, 0xc00

    if-nez v10, :cond_c

    if-nez p3, :cond_a

    const/4 v10, -0x1

    goto :goto_5

    :cond_a
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    :goto_5
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v10

    if-eqz v10, :cond_b

    const/16 v10, 0x800

    goto :goto_6

    :cond_b
    const/16 v10, 0x400

    :goto_6
    or-int/2addr v4, v10

    :cond_c
    :goto_7
    and-int/lit8 v10, p8, 0x10

    if-eqz v10, :cond_e

    or-int/lit16 v4, v4, 0x6000

    :cond_d
    move/from16 v11, p4

    goto :goto_9

    :cond_e
    and-int/lit16 v11, v7, 0x6000

    if-nez v11, :cond_d

    move/from16 v11, p4

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v12

    if-eqz v12, :cond_f

    const/16 v12, 0x4000

    goto :goto_8

    :cond_f
    const/16 v12, 0x2000

    :goto_8
    or-int/2addr v4, v12

    :goto_9
    and-int/lit8 v12, p8, 0x20

    const/high16 v13, 0x30000

    if-eqz v12, :cond_11

    or-int/2addr v4, v13

    :cond_10
    move-object/from16 v13, p5

    goto :goto_b

    :cond_11
    and-int/2addr v13, v7

    if-nez v13, :cond_10

    move-object/from16 v13, p5

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    const/high16 v15, 0x20000

    goto :goto_a

    :cond_12
    const/high16 v15, 0x10000

    :goto_a
    or-int/2addr v4, v15

    :goto_b
    const v15, 0x12493

    and-int/2addr v15, v4

    const v3, 0x12492

    move-object/from16 v16, v0

    const/4 v0, 0x1

    if-eq v15, v3, :cond_13

    move v3, v0

    goto :goto_c

    :cond_13
    const/4 v3, 0x0

    :goto_c
    and-int/lit8 v15, v4, 0x1

    invoke-virtual {v14, v15, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_1b

    if-eqz v2, :cond_14

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    move v1, v8

    move-object v8, v2

    goto :goto_d

    :cond_14
    move v1, v8

    move-object/from16 v8, v16

    :goto_d
    move v2, v10

    if-eqz v5, :cond_15

    move v10, v0

    goto :goto_e

    :cond_15
    move v10, v6

    :goto_e
    if-eqz v1, :cond_16

    sget-object v1, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    goto :goto_f

    :cond_16
    move-object/from16 v1, p3

    :goto_f
    if-eqz v2, :cond_17

    const/4 v11, 0x0

    :cond_17
    if-eqz v12, :cond_18

    const/4 v2, 0x0

    move-object v13, v2

    :cond_18
    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/atoms/LVLinkKt$WhenMappings;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sget-object v3, Lcom/vuitton/android/designkit/ui/theme/atoms/LVLinkKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    if-eq v2, v0, :cond_1a

    const/4 v0, 0x2

    if-ne v2, v0, :cond_19

    const v0, 0x7859b5cd

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVLinks;

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVLinks;->b:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationLink;

    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_10
    move-object v12, v0

    goto :goto_11

    :cond_19
    const/4 v2, 0x0

    const v0, 0x7859a425

    invoke-static {v14, v0, v2}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_1a
    const/4 v2, 0x0

    const v0, 0x7859ad87

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVLinks;

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVLinks;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationLink;

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_10

    :goto_11
    and-int/lit16 v0, v4, 0x3fe

    shr-int/lit8 v2, v4, 0x3

    and-int/lit16 v2, v2, 0x1c00

    or-int/2addr v0, v2

    const/high16 v2, 0x70000

    and-int/2addr v2, v4

    or-int v15, v0, v2

    const/16 v16, 0x0

    invoke-static/range {v8 .. v16}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVLinkKt;->c(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZZLcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationLink;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object v4, v1

    move-object v1, v8

    move v3, v10

    :goto_12
    move v5, v11

    move-object v6, v13

    goto :goto_13

    :cond_1b
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v4, p3

    move v3, v6

    move-object/from16 v1, v16

    goto :goto_12

    :goto_13
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_1c

    new-instance v0, Lc10;

    move-object/from16 v2, p1

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lc10;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function0;II)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1c
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v6, p6

    if-eqz v0, :cond_0

    const-string v1, "LVLinkSmall"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v1, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x33d0da37

    move-object/from16 v2, p5

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    and-int/lit8 v0, v6, 0x6

    const/4 v2, 0x2

    if-nez v0, :cond_2

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    or-int/2addr v0, v6

    goto :goto_1

    :cond_2
    move v0, v6

    :goto_1
    and-int/lit8 v3, v6, 0x30

    move-object/from16 v8, p1

    if-nez v3, :cond_4

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x20

    goto :goto_2

    :cond_3
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v0, v3

    :cond_4
    or-int/lit16 v3, v0, 0xd80

    and-int/lit8 v4, p7, 0x10

    if-eqz v4, :cond_6

    or-int/lit16 v3, v0, 0x6d80

    :cond_5
    move-object/from16 v0, p4

    goto :goto_4

    :cond_6
    and-int/lit16 v0, v6, 0x6000

    if-nez v0, :cond_5

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x4000

    goto :goto_3

    :cond_7
    const/16 v5, 0x2000

    :goto_3
    or-int/2addr v3, v5

    :goto_4
    and-int/lit16 v5, v3, 0x2493

    const/16 v7, 0x2492

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v5, v7, :cond_8

    move v5, v10

    goto :goto_5

    :cond_8
    move v5, v9

    :goto_5
    and-int/lit8 v7, v3, 0x1

    invoke-virtual {v13, v7, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_c

    sget-object v5, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    if-eqz v4, :cond_9

    const/4 v0, 0x0

    :cond_9
    move-object v12, v0

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVLinkKt$WhenMappings;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v0, v0, v4

    sget-object v4, Lcom/vuitton/android/designkit/ui/theme/atoms/LVLinkKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    if-eq v0, v10, :cond_b

    if-ne v0, v2, :cond_a

    const v0, -0x7cfca9be

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVLinks;

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVLinks;->d:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationLink;

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_6
    move-object v11, v0

    goto :goto_7

    :cond_a
    const v0, -0x7cfcbb28

    invoke-static {v13, v0, v9}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_b
    const v0, -0x7cfcb1c4

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVLinks;

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVLinks;->c:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationLink;

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_6

    :goto_7
    and-int/lit16 v0, v3, 0x3fe

    shl-int/lit8 v2, v3, 0x3

    const/high16 v3, 0x70000

    and-int/2addr v2, v3

    or-int v14, v0, v2

    const/16 v15, 0x8

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v7, v1

    invoke-static/range {v7 .. v15}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVLinkKt;->c(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZZLcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationLink;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object v4, v5

    move v3, v9

    move-object v5, v12

    goto :goto_8

    :cond_c
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v0

    :goto_8
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_d

    new-instance v0, Lxd;

    move-object/from16 v2, p1

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lxd;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function0;II)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_d
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZZLcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationLink;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 33

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v6, p4

    move-object/from16 v4, p5

    move/from16 v7, p7

    const-string v2, "LinkInternal"

    if-eqz v0, :cond_0

    invoke-static {v0, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v8, v0

    const v0, -0x4047c267

    move-object/from16 v3, p6

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    and-int/lit8 v0, v7, 0x6

    if-nez v0, :cond_2

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v7

    goto :goto_1

    :cond_2
    move v0, v7

    :goto_1
    and-int/lit8 v3, v7, 0x30

    move-object/from16 v10, p1

    if-nez v3, :cond_4

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x20

    goto :goto_2

    :cond_3
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v0, v3

    :cond_4
    and-int/lit16 v3, v7, 0x180

    if-nez v3, :cond_6

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x100

    goto :goto_3

    :cond_5
    const/16 v3, 0x80

    :goto_3
    or-int/2addr v0, v3

    :cond_6
    and-int/lit8 v3, p8, 0x8

    if-eqz v3, :cond_8

    or-int/lit16 v0, v0, 0xc00

    :cond_7
    move/from16 v11, p3

    goto :goto_5

    :cond_8
    and-int/lit16 v11, v7, 0xc00

    if-nez v11, :cond_7

    move/from16 v11, p3

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v12

    if-eqz v12, :cond_9

    const/16 v12, 0x800

    goto :goto_4

    :cond_9
    const/16 v12, 0x400

    :goto_4
    or-int/2addr v0, v12

    :goto_5
    and-int/lit16 v12, v7, 0x6000

    if-nez v12, :cond_b

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/16 v12, 0x4000

    goto :goto_6

    :cond_a
    const/16 v12, 0x2000

    :goto_6
    or-int/2addr v0, v12

    :cond_b
    const/high16 v12, 0x30000

    and-int/2addr v12, v7

    if-nez v12, :cond_d

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const/high16 v12, 0x20000

    goto :goto_7

    :cond_c
    const/high16 v12, 0x10000

    :goto_7
    or-int/2addr v0, v12

    :cond_d
    move v12, v0

    const v0, 0x12493

    and-int/2addr v0, v12

    const v15, 0x12492

    const/16 v16, 0x1

    if-eq v0, v15, :cond_e

    move/from16 v0, v16

    goto :goto_8

    :cond_e
    const/4 v0, 0x0

    :goto_8
    and-int/lit8 v15, v12, 0x1

    invoke-virtual {v9, v15, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_1c

    if-eqz v3, :cond_f

    const/16 v32, 0x0

    goto :goto_9

    :cond_f
    move/from16 v32, v11

    :goto_9
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v11, :cond_10

    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_10
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v11, :cond_11

    iget-wide v13, v6, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationLink;->a:J

    new-instance v3, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v3, v13, v14}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    move-object v13, v3

    check-cast v13, Landroidx/compose/runtime/MutableState;

    if-eqz v1, :cond_12

    iget-wide v14, v6, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationLink;->a:J

    goto :goto_a

    :cond_12
    iget-wide v14, v6, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationLink;->b:J

    :goto_a
    new-instance v3, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v3, v14, v15}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-interface {v13, v3}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object v14, v6, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationLink;->c:Landroidx/compose/ui/text/TextStyle;

    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->a:J

    sget-object v15, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v15, Landroidx/compose/ui/text/style/TextAlign;->g:I

    sget-object v17, Landroidx/compose/ui/text/style/TextOverflow;->a:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v22, Landroidx/compose/ui/text/style/TextOverflow;->c:I

    if-eqz v32, :cond_16

    const v5, -0x5eaba2e6

    invoke-static {v9, v5, v2}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v5

    const/high16 v18, 0x70000

    and-int v1, v12, v18

    move-wide/from16 v18, v3

    const/high16 v3, 0x20000

    if-ne v1, v3, :cond_13

    move/from16 v1, v16

    goto :goto_b

    :cond_13
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_15

    if-ne v3, v11, :cond_14

    goto :goto_c

    :cond_14
    move-object/from16 v4, p5

    goto :goto_d

    :cond_15
    :goto_c
    new-instance v3, Lpy;

    move-object/from16 v4, p5

    const/16 v1, 0x10

    invoke-direct {v3, v4, v1}, Lpy;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_d
    check-cast v3, Lkotlin/jvm/functions/Function0;

    const/16 v1, 0x36

    invoke-static {v5, v0, v3, v9, v1}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_e
    move v1, v15

    goto :goto_f

    :cond_16
    move-wide/from16 v18, v3

    const/4 v1, 0x0

    move-object/from16 v4, p5

    const v0, -0x5ea804a7

    invoke-static {v9, v0, v1, v2}, Ln00;->j(Landroidx/compose/runtime/GapComposer;IZLjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    goto :goto_e

    :goto_f
    invoke-interface {v8, v0}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz v4, :cond_18

    const v3, -0x5ea6163a

    invoke-static {v9, v3, v2}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v5, 0x1a

    move-object/from16 v17, v0

    move-object v0, v2

    const/4 v2, 0x0

    move v15, v1

    move-object/from16 v7, v17

    move/from16 v1, p2

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v11, :cond_17

    new-instance v1, Lx20;

    const/16 v2, 0x1b

    invoke-direct {v1, v2}, Lx20;-><init>(I)V

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_17
    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_10

    :cond_18
    move-object v7, v0

    move v15, v1

    const/4 v3, 0x0

    const v0, -0x5ea1b4c7

    invoke-static {v9, v0, v3, v2}, Ln00;->j(Landroidx/compose/runtime/GapComposer;IZLjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    :goto_10
    invoke-interface {v7, v0}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v1, 0xe000

    and-int/2addr v1, v12

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_19

    goto :goto_11

    :cond_19
    move/from16 v16, v3

    :goto_11
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v16, :cond_1a

    if-ne v1, v11, :cond_1b

    :cond_1a
    new-instance v1, Lgv;

    const/16 v2, 0x1c

    invoke-direct {v1, v6, v13, v2}, Lgv;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1b
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Landroidx/compose/ui/draw/DrawModifierKt;->b(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    new-instance v1, Landroidx/compose/ui/text/style/TextAlign;

    invoke-direct {v1, v15}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    shr-int/lit8 v2, v12, 0x3

    and-int/lit8 v29, v2, 0xe

    const/16 v30, 0x6180

    const v31, 0x1abf8

    move-object/from16 v27, v14

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v11, v18

    const/16 v18, 0x0

    const-wide/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v19, v1

    move-object/from16 v28, v9

    move-object v9, v10

    move-object v10, v0

    invoke-static/range {v9 .. v31}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move/from16 v4, v32

    goto :goto_12

    :cond_1c
    move-object/from16 v28, v9

    invoke-virtual/range {v28 .. v28}, Landroidx/compose/runtime/GapComposer;->D()V

    move v4, v11

    :goto_12
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_1d

    new-instance v0, Lc10;

    const/4 v9, 0x3

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v7, p7

    move-object v5, v6

    move-object v1, v8

    move-object/from16 v6, p5

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lc10;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZZLjava/lang/Object;Lkotlin/jvm/functions/Function0;III)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1d
    return-void
.end method
