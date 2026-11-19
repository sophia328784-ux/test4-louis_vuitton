.class public abstract Lcom/vuitton/android/designkit/ui/theme/atoms/LVCheckboxKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/designkit/ui/theme/atoms/LVCheckboxKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u00a8\u0006\u0005\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0003\u001a\u0004\u0018\u00010\u00028\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0004\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "firstComposition",
        "Lcom/airbnb/lottie/LottieComposition;",
        "composition",
        "checked",
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

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lk40;-><init>(I)V

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Lcom/vuitton/android/designkit/ui/theme/atoms/LVCheckboxKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier;ZZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v7, p7

    const-string v1, "LVCheckbox"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, -0x3a4507dc

    move-object/from16 v3, p6

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v15

    and-int/lit8 v2, p8, 0x1

    if-eqz v2, :cond_1

    or-int/lit8 v4, v7, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v7, 0x6

    if-nez v4, :cond_3

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

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
    and-int/lit8 v5, p8, 0x2

    if-eqz v5, :cond_5

    or-int/lit8 v4, v4, 0x30

    :cond_4
    move/from16 v6, p1

    goto :goto_3

    :cond_5
    and-int/lit8 v6, v7, 0x30

    if-nez v6, :cond_4

    move/from16 v6, p1

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v8, 0x20

    goto :goto_2

    :cond_6
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v4, v8

    :goto_3
    and-int/lit16 v8, v7, 0x180

    if-nez v8, :cond_8

    move/from16 v8, p2

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v10, 0x100

    goto :goto_4

    :cond_7
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v4, v10

    goto :goto_5

    :cond_8
    move/from16 v8, p2

    :goto_5
    and-int/lit8 v10, p8, 0x8

    if-eqz v10, :cond_9

    or-int/lit16 v4, v4, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v11, v7, 0xc00

    if-nez v11, :cond_c

    if-nez p3, :cond_a

    const/4 v11, -0x1

    goto :goto_6

    :cond_a
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    :goto_6
    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v11

    if-eqz v11, :cond_b

    const/16 v11, 0x800

    goto :goto_7

    :cond_b
    const/16 v11, 0x400

    :goto_7
    or-int/2addr v4, v11

    :cond_c
    :goto_8
    and-int/lit8 v11, p8, 0x10

    if-eqz v11, :cond_e

    or-int/lit16 v4, v4, 0x6000

    :cond_d
    move/from16 v12, p4

    goto :goto_a

    :cond_e
    and-int/lit16 v12, v7, 0x6000

    if-nez v12, :cond_d

    move/from16 v12, p4

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v13

    if-eqz v13, :cond_f

    const/16 v13, 0x4000

    goto :goto_9

    :cond_f
    const/16 v13, 0x2000

    :goto_9
    or-int/2addr v4, v13

    :goto_a
    const/high16 v13, 0x30000

    and-int/2addr v13, v7

    if-nez v13, :cond_11

    move-object/from16 v13, p5

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    const/high16 v14, 0x20000

    goto :goto_b

    :cond_10
    const/high16 v14, 0x10000

    :goto_b
    or-int/2addr v4, v14

    goto :goto_c

    :cond_11
    move-object/from16 v13, p5

    :goto_c
    const v14, 0x12493

    and-int/2addr v14, v4

    const v9, 0x12492

    const/4 v12, 0x0

    const/4 v3, 0x1

    if-eq v14, v9, :cond_12

    move v9, v3

    goto :goto_d

    :cond_12
    move v9, v12

    :goto_d
    and-int/lit8 v14, v4, 0x1

    invoke-virtual {v15, v14, v9}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v9

    if-eqz v9, :cond_2a

    if-eqz v2, :cond_13

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_13
    move v1, v11

    if-eqz v5, :cond_14

    move v11, v3

    goto :goto_e

    :cond_14
    move v11, v6

    :goto_e
    if-eqz v10, :cond_15

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    goto :goto_f

    :cond_15
    move-object/from16 v2, p3

    :goto_f
    if-eqz v1, :cond_16

    move v1, v3

    goto :goto_10

    :cond_16
    move/from16 v1, p4

    :goto_10
    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v5, v6, :cond_17

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_17
    move-object/from16 v19, v5

    check-cast v19, Landroidx/compose/runtime/MutableState;

    const v5, 0x7f13000b

    invoke-static {v5, v15, v12}, Ln00;->h(ILandroidx/compose/runtime/GapComposer;I)Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;

    move-result-object v5

    sget-object v9, Lcom/vuitton/android/designkit/ui/theme/atoms/LVCheckboxKt$WhenMappings;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    sget-object v10, Lcom/vuitton/android/designkit/ui/theme/atoms/LVCheckboxKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    if-eq v9, v3, :cond_19

    const/4 v14, 0x2

    if-ne v9, v14, :cond_18

    const v9, 0x42ddce31

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/designkit/ui/theme/atoms/LVCheckboxes;

    iget-object v9, v9, Lcom/vuitton/android/designkit/ui/theme/atoms/LVCheckboxes;->b:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationCheckbox;

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_11

    :cond_18
    const v0, 0x42ddbb53

    invoke-static {v15, v0, v12}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_19
    const v9, 0x42ddc54b

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/designkit/ui/theme/atoms/LVCheckboxes;

    iget-object v9, v9, Lcom/vuitton/android/designkit/ui/theme/atoms/LVCheckboxes;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationCheckbox;

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_11
    if-eqz v11, :cond_1a

    iget-wide v12, v9, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationCheckbox;->a:J

    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/ColorKt;->i(J)I

    move-result v10

    goto :goto_12

    :cond_1a
    iget-wide v12, v9, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationCheckbox;->d:J

    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/ColorKt;->i(J)I

    move-result v10

    :goto_12
    if-eqz v11, :cond_1b

    iget-wide v12, v9, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationCheckbox;->b:J

    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/ColorKt;->i(J)I

    move-result v12

    goto :goto_13

    :cond_1b
    iget-wide v12, v9, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationCheckbox;->e:J

    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/ColorKt;->i(J)I

    move-result v12

    :goto_13
    if-eqz v11, :cond_1c

    iget-wide v13, v9, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationCheckbox;->c:J

    invoke-static {v13, v14}, Landroidx/compose/ui/graphics/ColorKt;->i(J)I

    move-result v9

    goto :goto_14

    :cond_1c
    iget-wide v13, v9, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationCheckbox;->f:J

    invoke-static {v13, v14}, Landroidx/compose/ui/graphics/ColorKt;->i(J)I

    move-result v9

    :goto_14
    const-string v13, "background"

    const-string v14, "**"

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v13

    sget-object v3, Lcom/airbnb/lottie/LottieProperty;->I:Landroid/graphics/ColorFilter;

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v16

    move/from16 p1, v1

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v16, :cond_1e

    if-ne v1, v6, :cond_1d

    goto :goto_15

    :cond_1d
    move-object/from16 p3, v2

    goto :goto_16

    :cond_1e
    :goto_15
    new-instance v1, Lhb;

    move-object/from16 p3, v2

    const/16 v2, 0xa

    invoke-direct {v1, v10, v2}, Lhb;-><init>(II)V

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_16
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v13, v1, v15}, Lcom/airbnb/lottie/compose/LottieDynamicPropertiesKt;->c(Landroid/graphics/ColorFilter;[Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    move-result-object v1

    const-string v2, "stroke"

    filled-new-array {v2, v14}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v10

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v10, :cond_1f

    if-ne v13, v6, :cond_20

    :cond_1f
    new-instance v13, Lhb;

    const/16 v10, 0xb

    invoke-direct {v13, v12, v10}, Lhb;-><init>(II)V

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_20
    check-cast v13, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v2, v13, v15}, Lcom/airbnb/lottie/compose/LottieDynamicPropertiesKt;->c(Landroid/graphics/ColorFilter;[Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    move-result-object v2

    const-string v10, "check icon"

    filled-new-array {v10, v14}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v12

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v12, :cond_21

    if-ne v13, v6, :cond_22

    :cond_21
    new-instance v13, Lhb;

    const/16 v12, 0xc

    invoke-direct {v13, v9, v12}, Lhb;-><init>(II)V

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_22
    check-cast v13, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v10, v13, v15}, Lcom/airbnb/lottie/compose/LottieDynamicPropertiesKt;->c(Landroid/graphics/ColorFilter;[Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    move-result-object v1

    invoke-static {v1, v15}, Lcom/airbnb/lottie/compose/LottieDynamicPropertiesKt;->a([Lcom/airbnb/lottie/compose/LottieDynamicProperty;Landroidx/compose/runtime/Composer;)Lcom/airbnb/lottie/compose/LottieDynamicProperties;

    move-result-object v1

    invoke-static {v15}, Lcom/airbnb/lottie/compose/LottieAnimatableKt;->a(Landroidx/compose/runtime/Composer;)Lcom/airbnb/lottie/compose/LottieAnimatable;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v9, v10

    and-int/lit16 v10, v4, 0x380

    const/16 v12, 0x100

    if-ne v10, v12, :cond_23

    const/4 v10, 0x1

    goto :goto_17

    :cond_23
    const/4 v10, 0x0

    :goto_17
    or-int/2addr v9, v10

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_24

    if-ne v10, v6, :cond_25

    :cond_24
    new-instance v16, Lcom/vuitton/android/designkit/ui/theme/atoms/LVCheckboxKt$LVCheckbox$1$1;

    const/16 v21, 0x0

    move-object/from16 v17, v2

    move-object/from16 v20, v5

    move/from16 v18, v8

    invoke-direct/range {v16 .. v21}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVCheckboxKt$LVCheckbox$1$1;-><init>(Lcom/airbnb/lottie/compose/LottieAnimatable;ZLandroidx/compose/runtime/MutableState;Lcom/airbnb/lottie/compose/LottieCompositionResult;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v10, v16

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_25
    check-cast v10, Lkotlin/jvm/functions/Function2;

    shr-int/lit8 v5, v4, 0x6

    and-int/lit8 v5, v5, 0xe

    invoke-static {v15, v3, v10}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v3, Lp50;

    const/4 v8, 0x0

    invoke-direct {v3, v2, v1, v8}, Lp50;-><init>(Lcom/airbnb/lottie/compose/LottieAnimatable;Lcom/airbnb/lottie/compose/LottieDynamicProperties;I)V

    const v1, -0x5c7469a

    invoke-static {v1, v3, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v6, :cond_26

    new-instance v2, Lx20;

    const/16 v3, 0x16

    invoke-direct {v2, v3}, Lx20;-><init>(I)V

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_26
    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 v8, 0x0

    invoke-static {v0, v8, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    const/4 v2, 0x6

    if-eqz p1, :cond_27

    const v3, 0x19017d19

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v3, Lql;

    const/16 v6, 0x9

    invoke-direct {v3, v1, v6}, Lql;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    const v1, -0x6d8fa00a

    invoke-static {v1, v3, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v14

    const/high16 v1, 0xc00000

    or-int/2addr v1, v5

    shr-int/lit8 v3, v4, 0xc

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v1, v3

    shl-int/lit8 v2, v4, 0x6

    and-int/lit16 v2, v2, 0x1c00

    or-int v16, v1, v2

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p5

    move v3, v8

    move/from16 v8, p2

    invoke-static/range {v8 .. v16}, Landroidx/compose/material3/IconButtonKt;->c(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconToggleButtonColors;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_19

    :cond_27
    move v3, v8

    const v4, 0x19050510

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v4, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-static {v10, v4}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v5, v3}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v5

    iget-wide v8, v15, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v15, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v10, v15, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v10, :cond_29

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v10, v15, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v10, :cond_28

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_18

    :cond_28
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_18
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v5, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v8, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v5, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v15, v5}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v4, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_19
    move/from16 v5, p1

    move v2, v11

    :goto_1a
    move-object/from16 v4, p3

    move-object v1, v0

    goto :goto_1b

    :cond_29
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_2a
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v5, p4

    move v2, v6

    goto :goto_1a

    :goto_1b
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_2b

    new-instance v0, Lq50;

    move/from16 v3, p2

    move-object/from16 v6, p5

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lq50;-><init>(Landroidx/compose/ui/Modifier;ZZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function1;II)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2b
    return-void
.end method
