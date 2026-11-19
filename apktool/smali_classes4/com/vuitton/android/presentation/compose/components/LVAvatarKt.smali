.class public abstract Lcom/vuitton/android/presentation/compose/components/LVAvatarKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/compose/components/LVAvatarKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Landroidx/compose/ui/unit/Dp;",
        "currentInnerPadding",
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x41000000    # 8.0f

    sput v0, Lcom/vuitton/android/presentation/compose/components/LVAvatarKt;->a:F

    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/compose/components/AvatarSize;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v1, p6

    const-string v4, "LVAvatar"

    if-eqz v0, :cond_0

    invoke-static {v0, v4}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v5, v2, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;->e:Z

    const v6, -0x68a5b1bf

    move-object/from16 v7, p5

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v11

    iget-object v6, v11, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    and-int/lit8 v7, p7, 0x1

    if-eqz v7, :cond_1

    or-int/lit8 v8, v1, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v8, v1, 0x6

    if-nez v8, :cond_3

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x4

    goto :goto_0

    :cond_2
    const/4 v8, 0x2

    :goto_0
    or-int/2addr v8, v1

    goto :goto_1

    :cond_3
    move v8, v1

    :goto_1
    and-int/lit8 v9, v1, 0x30

    if-nez v9, :cond_5

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x20

    goto :goto_2

    :cond_4
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v8, v9

    :cond_5
    and-int/lit16 v9, v1, 0x180

    if-nez v9, :cond_7

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x100

    goto :goto_3

    :cond_6
    const/16 v9, 0x80

    :goto_3
    or-int/2addr v8, v9

    :cond_7
    and-int/lit8 v9, p7, 0x8

    if-eqz v9, :cond_8

    or-int/lit16 v8, v8, 0xc00

    goto :goto_6

    :cond_8
    and-int/lit16 v10, v1, 0xc00

    if-nez v10, :cond_b

    if-nez p3, :cond_9

    const/4 v10, -0x1

    goto :goto_4

    :cond_9
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    :goto_4
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v10

    if-eqz v10, :cond_a

    const/16 v10, 0x800

    goto :goto_5

    :cond_a
    const/16 v10, 0x400

    :goto_5
    or-int/2addr v8, v10

    :cond_b
    :goto_6
    and-int/lit8 v10, p7, 0x10

    if-eqz v10, :cond_d

    or-int/lit16 v8, v8, 0x6000

    :cond_c
    move-object/from16 v12, p4

    :goto_7
    move v15, v8

    goto :goto_9

    :cond_d
    and-int/lit16 v12, v1, 0x6000

    if-nez v12, :cond_c

    move-object/from16 v12, p4

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    const/16 v13, 0x4000

    goto :goto_8

    :cond_e
    const/16 v13, 0x2000

    :goto_8
    or-int/2addr v8, v13

    goto :goto_7

    :goto_9
    and-int/lit16 v8, v15, 0x2493

    const/16 v13, 0x2492

    const/4 v14, 0x0

    if-eq v8, v13, :cond_f

    const/4 v8, 0x1

    goto :goto_a

    :cond_f
    move v8, v14

    :goto_a
    and-int/lit8 v13, v15, 0x1

    invoke-virtual {v11, v13, v8}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v8

    if-eqz v8, :cond_1f

    if-eqz v7, :cond_10

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v4}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_10
    if-eqz v9, :cond_11

    sget-object v7, Lcom/vuitton/android/presentation/compose/components/AvatarSize;->Regular:Lcom/vuitton/android/presentation/compose/components/AvatarSize;

    move-object/from16 v26, v7

    goto :goto_b

    :cond_11
    move-object/from16 v26, p3

    :goto_b
    const/16 v16, 0x0

    if-eqz v10, :cond_12

    move-object/from16 v12, v16

    :cond_12
    sget-object v7, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    if-eqz v5, :cond_13

    sget v7, Lcom/vuitton/android/presentation/compose/components/LVAvatarKt;->a:F

    :goto_c
    move-object v8, v12

    goto :goto_d

    :cond_13
    const/4 v7, 0x0

    goto :goto_c

    :goto_d
    const/16 v12, 0x180

    const/16 v13, 0xa

    move-object v9, v8

    const/4 v8, 0x0

    move-object v10, v9

    const-string v9, "avatarInnerPadding"

    move-object/from16 v17, v10

    const/4 v10, 0x0

    move/from16 v18, v15

    move-object/from16 v15, v17

    invoke-static/range {v7 .. v13}, Landroidx/compose/animation/core/AnimateAsStateKt;->a(FLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v7

    invoke-virtual/range {v26 .. v26}, Lcom/vuitton/android/presentation/compose/components/AvatarSize;->a()F

    move-result v8

    invoke-static {v0, v8}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v8, v9, v14}, Landroidx/compose/foundation/layout/AspectRatioKt;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v8

    new-instance v9, Lrq;

    const/16 v10, 0x1c

    invoke-direct {v9, v10}, Lrq;-><init>(I)V

    invoke-static {v8, v5, v9, v11, v14}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v8, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v5, v8}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    if-eqz v15, :cond_14

    const/4 v9, 0x1

    goto :goto_e

    :cond_14
    move v9, v14

    :goto_e
    new-instance v10, Lrs;

    const/16 v12, 0x14

    invoke-direct {v10, v15, v2, v12}, Lrs;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v5, v9, v10, v11, v14}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v9, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v9, v14}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v10

    iget-wide v12, v11, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    move-result v12

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v13

    invoke-static {v11, v5}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v6, :cond_1e

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->B()V

    move-object/from16 v27, v0

    iget-boolean v0, v11, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v0, :cond_15

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_f

    :cond_15
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_f
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v10, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v13, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v12, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v11, v12}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v5, v1, v4}, Ltr;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v5

    sget-object v3, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v5, v3}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/unit/Dp;

    iget v7, v7, Landroidx/compose/ui/unit/Dp;->b:F

    invoke-static {v5, v7}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v5, v8}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v9, v7}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v9

    move-object/from16 p3, v8

    iget-wide v7, v11, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v11, v5}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    if-eqz v6, :cond_1d

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v6, v11, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v6, :cond_16

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_10

    :cond_16
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_10
    invoke-static {v11, v9, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v11, v8, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7, v11, v13, v11, v12}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v11, v5, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v4}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_17

    goto :goto_11

    :cond_17
    move-object/from16 v0, v16

    :goto_11
    if-eqz v0, :cond_18

    move-object v8, v0

    goto :goto_12

    :cond_18
    move-object/from16 v8, v16

    :goto_12
    sget-object v0, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/layout/ContentScale$Companion;->b:Landroidx/compose/ui/layout/ContentScale$Companion$Crop$1;

    const v0, 0x7f08035c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move/from16 v1, v18

    const/16 v18, 0x180

    const/16 v19, 0x7c8

    const/4 v10, 0x0

    const v12, 0x7f08035c

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v16, v15

    const/4 v15, 0x0

    move-object/from16 v3, v16

    const/16 v16, 0x0

    move-object/from16 v17, v11

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v11, v0

    move-object v0, v3

    const/4 v3, 0x2

    invoke-static/range {v7 .. v19}, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoaderKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/layout/ContentScale;Ljava/lang/String;Ljava/lang/Integer;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v11, v17

    iget-boolean v6, v2, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;->d:Z

    if-eqz v6, :cond_1c

    if-eqz p2, :cond_1c

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_19

    goto/16 :goto_16

    :cond_19
    const v6, 0x378d6b93

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v6, Lcom/vuitton/android/presentation/compose/components/LVAvatarKt$WhenMappings;->a:[I

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v4, :cond_1b

    if-ne v6, v3, :cond_1a

    const v3, -0x2fc1832b

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->d:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_13
    move-object/from16 v21, v3

    goto :goto_14

    :cond_1a
    const v0, -0x2fc19900

    invoke-static {v11, v0, v5}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_1b
    const v3, -0x2fc18deb

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->p:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_13

    :goto_14
    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v6, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    shr-int/lit8 v1, v1, 0x6

    and-int/lit8 v23, v1, 0xe

    const/16 v24, 0x0

    const v25, 0x1fffa

    move v1, v4

    const/4 v4, 0x0

    move/from16 v17, v5

    move-wide v5, v6

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v22, v11

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    move/from16 v3, v17

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move v1, v3

    move-object/from16 v3, p2

    invoke-static/range {v3 .. v25}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v11, v22

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_15
    const/4 v1, 0x1

    goto :goto_17

    :cond_1c
    :goto_16
    move v1, v5

    const v3, 0x37934ad5

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_15

    :goto_17
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object v5, v0

    move-object/from16 v4, v26

    move-object/from16 v1, v27

    goto :goto_18

    :cond_1d
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v16

    :cond_1e
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v16

    :cond_1f
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v4, p3

    move-object v1, v0

    move-object v5, v12

    :goto_18
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_20

    new-instance v0, Luj;

    const/4 v8, 0x3

    move-object/from16 v3, p2

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Luj;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;III)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_20
    return-void
.end method
