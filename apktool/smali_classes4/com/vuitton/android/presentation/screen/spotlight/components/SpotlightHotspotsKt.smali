.class public abstract Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u00a8\u0006\u0010\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0004\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0005\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0006\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002\u00b2\u0006\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00078\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\t\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\n\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u000c\u001a\u0004\u0018\u00010\u000b8\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\r\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000c\u0010\u000f\u001a\u00020\u000e8\nX\u008a\u0084\u0002"
    }
    d2 = {
        "",
        "isImageLoaded",
        "Landroidx/compose/ui/unit/Dp;",
        "heightContainer",
        "widthContainer",
        "heightImage",
        "widthImage",
        "",
        "isHotspotVisibilityTab",
        "displayOneByOne",
        "isSpotlightVisibleToUserInternal",
        "Lcom/airbnb/lottie/LottieComposition;",
        "composition",
        "isPlaying",
        "",
        "state",
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

    const/high16 v0, 0x42600000    # 56.0f

    sput v0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt;->a:F

    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    if-eqz v0, :cond_0

    const-string v1, "HotSpot"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v1, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x4b6e9f3f    # 1.5638335E7f

    move-object/from16 v2, p4

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    goto :goto_0

    :cond_1
    const/16 v0, 0x10

    :goto_0
    or-int v0, p5, v0

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    const/16 v10, 0x100

    if-eqz v2, :cond_2

    move v2, v10

    goto :goto_1

    :cond_2
    const/16 v2, 0x80

    :goto_1
    or-int/2addr v0, v2

    move-object/from16 v2, p3

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x800

    goto :goto_2

    :cond_3
    const/16 v4, 0x400

    :goto_2
    or-int/2addr v0, v4

    and-int/lit16 v4, v0, 0x493

    const/16 v5, 0x492

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v4, v5, :cond_4

    move v4, v12

    goto :goto_3

    :cond_4
    move v4, v11

    :goto_3
    and-int/lit8 v5, v0, 0x1

    invoke-virtual {v8, v5, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_11

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt$WhenMappings;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v12, :cond_6

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    const v4, 0x2a4401ab

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->a(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVAnimation;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVAnimation;->z:I

    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_4

    :cond_5
    const v0, 0x2a43ec2b

    invoke-static {v8, v0, v11}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_6
    const v4, 0x2a43f6aa

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->a(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVAnimation;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVAnimation;->A:I

    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_4
    invoke-static {v4, v8, v11}, Ln00;->h(ILandroidx/compose/runtime/GapComposer;I)Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;

    move-result-object v13

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v14, :cond_7

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_7
    move-object v15, v4

    check-cast v15, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v13}, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->h()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v4

    invoke-interface {v15}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    new-instance v16, Lcom/airbnb/lottie/compose/LottieClipSpec$Frame;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v20, 0x6

    const/16 v21, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v16 .. v21}, Lcom/airbnb/lottie/compose/LottieClipSpec$Frame;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v7, 0x0

    const/16 v9, 0x3ec

    move-object/from16 v6, v16

    invoke-static/range {v4 .. v9}, Lcom/airbnb/lottie/compose/AnimateLottieCompositionAsStateKt;->a(Lcom/airbnb/lottie/LottieComposition;ZLcom/airbnb/lottie/compose/LottieClipSpec$Frame;ILandroidx/compose/runtime/Composer;I)Lcom/airbnb/lottie/compose/LottieAnimatable;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v6

    if-nez v5, :cond_8

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_8
    const v5, 0x7f14032d

    invoke-static {v8, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13}, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->h()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v6

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v7, :cond_9

    if-ne v9, v14, :cond_a

    :cond_9
    new-instance v9, Lam;

    const/4 v7, 0x5

    invoke-direct {v9, v4, v7}, Lam;-><init>(Lcom/airbnb/lottie/compose/LottieAnimatable;I)V

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v4, :cond_b

    if-ne v7, v14, :cond_c

    :cond_b
    new-instance v7, Lnj0;

    const/16 v4, 0x12

    invoke-direct {v7, v5, v4}, Lnj0;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v11, v7}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget v5, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt;->a:F

    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v16

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v14, :cond_d

    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    move-object/from16 v17, v4

    check-cast v17, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    and-int/lit16 v0, v0, 0x380

    if-ne v0, v10, :cond_e

    move v11, v12

    :cond_e
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v11, :cond_f

    if-ne v0, v14, :cond_10

    :cond_f
    new-instance v0, Lna;

    const/16 v4, 0xc

    invoke-direct {v0, v3, v15, v4}, Lna;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_10
    move-object/from16 v22, v0

    check-cast v22, Lkotlin/jvm/functions/Function0;

    const/16 v23, 0x1c

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v16 .. v23}, Landroidx/compose/foundation/ClickableKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/16 v23, 0x0

    const v24, 0x1fff8

    const/4 v7, 0x0

    move-object/from16 v21, v8

    const/4 v8, 0x0

    move-object v5, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object v4, v6

    move-object v6, v0

    invoke-static/range {v4 .. v24}, Lcom/airbnb/lottie/compose/LottieAnimationKt;->b(Lcom/airbnb/lottie/LottieComposition;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZZZZLcom/airbnb/lottie/RenderMode;ZLcom/airbnb/lottie/compose/LottieDynamicProperties;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;ZZLjava/util/Map;Lcom/airbnb/lottie/AsyncUpdates;ZLandroidx/compose/runtime/Composer;III)V

    goto :goto_5

    :cond_11
    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_5
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_12

    new-instance v0, Lys0;

    const/4 v6, 0x4

    move/from16 v5, p5

    move-object v4, v2

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v6}, Lys0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/Function;Lkotlin/Function;II)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_12
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Ljava/util/List;Lkotlin/jvm/functions/Function1;FZZZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v4, p3

    move/from16 v10, p12

    move/from16 v11, p13

    if-eqz v0, :cond_0

    const-string v1, "SpotlightHotSpots"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v12, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x2bc03f0

    move-object/from16 v1, p11

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    and-int/lit8 v0, v10, 0x30

    if-nez v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    goto :goto_0

    :cond_1
    const/16 v0, 0x10

    :goto_0
    or-int/2addr v0, v10

    :goto_1
    move-object/from16 v14, p2

    goto :goto_2

    :cond_2
    move v0, v10

    goto :goto_1

    :goto_2
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x100

    goto :goto_3

    :cond_3
    const/16 v1, 0x80

    :goto_3
    or-int/2addr v0, v1

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x800

    goto :goto_4

    :cond_4
    const/16 v1, 0x400

    :goto_4
    or-int/2addr v0, v1

    and-int/lit16 v1, v10, 0x6000

    move-object/from16 v15, p4

    if-nez v1, :cond_6

    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x4000

    goto :goto_5

    :cond_5
    const/16 v1, 0x2000

    :goto_5
    or-int/2addr v0, v1

    :cond_6
    const/high16 v1, 0x30000

    and-int/2addr v1, v10

    if-nez v1, :cond_8

    move/from16 v1, p5

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v2

    if-eqz v2, :cond_7

    const/high16 v2, 0x20000

    goto :goto_6

    :cond_7
    const/high16 v2, 0x10000

    :goto_6
    or-int/2addr v0, v2

    goto :goto_7

    :cond_8
    move/from16 v1, p5

    :goto_7
    and-int/lit8 v2, v11, 0x40

    if-eqz v2, :cond_9

    const/high16 v3, 0x180000

    or-int/2addr v0, v3

    move/from16 v3, p6

    goto :goto_9

    :cond_9
    move/from16 v3, p6

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v5

    if-eqz v5, :cond_a

    const/high16 v5, 0x100000

    goto :goto_8

    :cond_a
    const/high16 v5, 0x80000

    :goto_8
    or-int/2addr v0, v5

    :goto_9
    and-int/lit16 v5, v11, 0x80

    if-eqz v5, :cond_b

    const/high16 v7, 0xc00000

    or-int/2addr v0, v7

    move/from16 v7, p7

    goto :goto_b

    :cond_b
    move/from16 v7, p7

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v8

    if-eqz v8, :cond_c

    const/high16 v8, 0x800000

    goto :goto_a

    :cond_c
    const/high16 v8, 0x400000

    :goto_a
    or-int/2addr v0, v8

    :goto_b
    const/high16 v8, 0x6000000

    and-int/2addr v8, v10

    if-nez v8, :cond_e

    move/from16 v8, p8

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v16

    if-eqz v16, :cond_d

    const/high16 v16, 0x4000000

    goto :goto_c

    :cond_d
    const/high16 v16, 0x2000000

    :goto_c
    or-int v0, v0, v16

    goto :goto_d

    :cond_e
    move/from16 v8, p8

    :goto_d
    and-int/lit16 v6, v11, 0x200

    if-eqz v6, :cond_f

    const/high16 v16, 0x30000000

    or-int v0, v0, v16

    move/from16 v9, p9

    goto :goto_f

    :cond_f
    move/from16 v9, p9

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v17

    if-eqz v17, :cond_10

    const/high16 v17, 0x20000000

    goto :goto_e

    :cond_10
    const/high16 v17, 0x10000000

    :goto_e
    or-int v0, v0, v17

    :goto_f
    move/from16 v17, v0

    and-int/lit16 v0, v11, 0x400

    if-eqz v0, :cond_11

    const/16 v19, 0x6

    move-object/from16 v9, p10

    goto :goto_10

    :cond_11
    move-object/from16 v9, p10

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    const/16 v19, 0x4

    goto :goto_10

    :cond_12
    const/16 v19, 0x2

    :goto_10
    const v21, 0x12492493

    move/from16 v22, v0

    and-int v0, v17, v21

    const v1, 0x12492492

    const/16 v21, 0x0

    const/16 v23, 0x1

    if-ne v0, v1, :cond_14

    and-int/lit8 v0, v19, 0x3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    goto :goto_11

    :cond_13
    move/from16 v0, v21

    goto :goto_12

    :cond_14
    :goto_11
    move/from16 v0, v23

    :goto_12
    and-int/lit8 v1, v17, 0x1

    invoke-virtual {v13, v1, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_2e

    if-eqz v2, :cond_15

    move/from16 v20, v23

    goto :goto_13

    :cond_15
    move/from16 v20, v3

    :goto_13
    if-eqz v5, :cond_16

    move/from16 v2, v23

    goto :goto_14

    :cond_16
    move v2, v7

    :goto_14
    if-eqz v6, :cond_17

    move/from16 v3, v23

    goto :goto_15

    :cond_17
    move/from16 v3, p9

    :goto_15
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v22, :cond_19

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_18

    new-instance v1, Lnw0;

    const/16 v5, 0x13

    invoke-direct {v1, v5}, Lnw0;-><init>(I)V

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_18
    check-cast v1, Lkotlin/jvm/functions/Function0;

    move-object/from16 v22, v1

    goto :goto_16

    :cond_19
    move-object/from16 v22, v9

    :goto_16
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, Landroidx/compose/ui/unit/Density;

    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v25, v1

    check-cast v25, Landroid/content/Context;

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_1a

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1a
    move-object v5, v1

    check-cast v5, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    const/4 v6, 0x0

    if-ne v1, v0, :cond_1b

    new-instance v1, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v1, v6}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1b
    move-object/from16 v26, v1

    check-cast v26, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_1c

    new-instance v1, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v1, v6}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1c
    move-object/from16 v27, v1

    check-cast v27, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_1d

    new-instance v1, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v1, v6}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1d
    move-object/from16 v28, v1

    check-cast v28, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_1e

    new-instance v1, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v1, v6}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1e
    move-object/from16 v29, v1

    check-cast v29, Landroidx/compose/runtime/MutableState;

    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    sget-object v6, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v1, v6, :cond_1f

    move/from16 v30, v23

    goto :goto_17

    :cond_1f
    move/from16 v30, v21

    :goto_17
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_21

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v7, v21

    :goto_18
    if-ge v7, v1, :cond_20

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    :cond_20
    invoke-static {v6}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_21
    check-cast v1, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_22

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_22
    move-object v7, v6

    check-cast v7, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_23

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_23
    check-cast v6, Landroidx/compose/runtime/MutableState;

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_24

    if-eqz v20, :cond_24

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v6, v9}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_19

    :cond_24
    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_25

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v6, v9}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_25
    :goto_19
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v31

    move-object/from16 p6, v1

    move-object/from16 v1, v31

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 p7, v2

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v31

    move/from16 p9, v3

    move-object/from16 v3, v31

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 p10, v5

    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v9, v1, v2, v3, v5}, [Ljava/lang/Boolean;

    move-result-object v1

    const/high16 v2, 0xe000000

    and-int v2, v17, v2

    const/high16 v3, 0x4000000

    if-ne v2, v3, :cond_26

    move/from16 v2, v23

    goto :goto_1a

    :cond_26
    move/from16 v2, v21

    :goto_1a
    const/high16 v3, 0x1c00000

    and-int v3, v17, v3

    const/high16 v5, 0x800000

    if-ne v3, v5, :cond_27

    move/from16 v3, v23

    goto :goto_1b

    :cond_27
    move/from16 v3, v21

    :goto_1b
    or-int/2addr v2, v3

    const/high16 v3, 0x70000000

    and-int v3, v17, v3

    const/high16 v5, 0x20000000

    if-ne v3, v5, :cond_28

    move/from16 v3, v23

    goto :goto_1c

    :cond_28
    move/from16 v3, v21

    :goto_1c
    or-int/2addr v2, v3

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_29

    if-ne v3, v0, :cond_2a

    :cond_29
    move-object v2, v0

    goto :goto_1d

    :cond_2a
    move-object/from16 v8, p6

    move/from16 v17, p7

    move/from16 v18, p9

    move-object/from16 v6, p10

    move-object v11, v0

    move-object v10, v1

    move-object v0, v3

    move-object v3, v7

    const/4 v14, 0x4

    goto :goto_1e

    :goto_1d
    new-instance v0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt$SpotlightHotSpots$2$1;

    const/4 v9, 0x0

    move/from16 v3, p9

    move-object/from16 v5, p10

    move-object v10, v1

    move-object v11, v2

    move v1, v8

    const/4 v14, 0x4

    move-object/from16 v8, p6

    move/from16 v2, p7

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt$SpotlightHotSpots$2$1;-><init>(ZZZLjava/util/List;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move/from16 v17, v2

    move/from16 v18, v3

    move-object v6, v5

    move-object v3, v7

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1e
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v10, v0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    and-int/lit8 v1, v19, 0xe

    if-ne v1, v14, :cond_2b

    move/from16 v21, v23

    :cond_2b
    or-int v0, v0, v21

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_2d

    if-ne v1, v11, :cond_2c

    goto :goto_1f

    :cond_2c
    move-object/from16 v19, v22

    goto :goto_20

    :cond_2d
    :goto_1f
    new-instance v0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt$SpotlightHotSpots$3$1;

    const/4 v5, 0x0

    move-object v1, v4

    move-object v4, v8

    move-object/from16 v2, v22

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt$SpotlightHotSpots$3$1;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v19, v2

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_20
    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v7, v1}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v12, v0}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v21

    new-instance v0, Lx01;

    move-object/from16 v1, p2

    move-object/from16 v4, p3

    move/from16 v11, p5

    move/from16 v2, p8

    move-object v14, v3

    move-object v10, v6

    move-object/from16 v22, v12

    move-object/from16 v32, v13

    move-object/from16 v16, v15

    move-object/from16 v3, v24

    move-object/from16 v9, v25

    move-object/from16 v5, v26

    move-object/from16 v6, v27

    move-object/from16 v7, v28

    move/from16 v12, v30

    move-object/from16 v15, p1

    move-object v13, v8

    move-object/from16 v8, v29

    invoke-direct/range {v0 .. v16}, Lx01;-><init>(Lcom/vuitton/android/presentation/model/common/AssetUiModel;ZLandroidx/compose/ui/unit/Density;Ljava/util/List;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroid/content/Context;Landroidx/compose/runtime/MutableState;FZLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x3373327a

    move-object/from16 v5, v32

    invoke-static {v1, v0, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v4

    const/16 v6, 0xc00

    const/4 v7, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, v21

    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move/from16 v8, v17

    move/from16 v10, v18

    move-object/from16 v11, v19

    move/from16 v7, v20

    goto :goto_21

    :cond_2e
    move-object/from16 v22, v12

    move-object v5, v13

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v10, p9

    move v8, v7

    move-object v11, v9

    move v7, v3

    :goto_21
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v14

    if-eqz v14, :cond_2f

    new-instance v0, Ly01;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v9, p8

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v1, v22

    invoke-direct/range {v0 .. v13}, Ly01;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Ljava/util/List;Lkotlin/jvm/functions/Function1;FZZZZLkotlin/jvm/functions/Function0;II)V

    iput-object v0, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2f
    return-void
.end method
