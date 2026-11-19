.class public final synthetic Lpo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lpo;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    iget v0, v0, Lpo;->b:I

    const v1, 0x7f141125

    const/16 v2, 0x30

    const/4 v3, 0x6

    const/4 v4, 0x0

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x2

    packed-switch v0, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, -0x1f9d6f6e

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v2, "ContentSlideStructure$lambda$2$0"

    invoke-direct {v1, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->j(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVShape;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVShape;->c:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v1, v2}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->u:J

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->h(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVOpacity;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->c:F

    invoke-static {v4, v2, v3}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v2

    sget-object v4, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v8}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v1, v2, v3, v9}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->F()V

    return-object v1

    :pswitch_0
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x2cf0d0e0    # 6.8444E-12f

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v2, "ContentSlideStructure$lambda$1"

    invoke-direct {v1, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/AlphaKt;->b:Landroidx/compose/ui/graphics/SolidColor;

    invoke-static {v1, v2}, Lcom/vuitton/android/designkit/ui/theme/GradientKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Brush;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->F()V

    return-object v1

    :pswitch_1
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x5a43e727

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v2, "ContentSlideStructure$lambda$0"

    invoke-direct {v1, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/AlphaKt;->a:Landroidx/compose/ui/graphics/SolidColor;

    invoke-static {v1, v2}, Lcom/vuitton/android/designkit/ui/theme/GradientKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Brush;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->F()V

    return-object v1

    :pswitch_2
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/wishlist/components/ComposableSingletons$WishlistScreenKt;->a:Lcom/vuitton/android/presentation/screen/wishlist/components/ComposableSingletons$WishlistScreenKt;

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v9, :cond_0

    move v6, v8

    :cond_0
    and-int/2addr v1, v8

    invoke-interface {v0, v1, v6}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->D()V

    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_3
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/wishlist/components/ComposableSingletons$WishlistProductItemKt;->a:Lcom/vuitton/android/presentation/screen/wishlist/components/ComposableSingletons$WishlistProductItemKt;

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v9, :cond_2

    move v2, v8

    goto :goto_1

    :cond_2
    move v2, v6

    :goto_1
    and-int/2addr v1, v8

    invoke-interface {v0, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v2, "lambda__1384805015$lambda$0"

    invoke-direct {v1, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->m:F

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const-string v2, "wishlist_itemClose_button"

    invoke-static {v1, v2}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->q:I

    invoke-static {v1, v0, v6}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v1

    const/16 v7, 0x38

    const/16 v8, 0x8

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v6, v0

    invoke-static/range {v1 .. v8}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    goto :goto_2

    :cond_3
    move-object v6, v0

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_4
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/wishlist/components/ComposableSingletons$WishlistLoadingScreenKt;->a:Lcom/vuitton/android/presentation/screen/wishlist/components/ComposableSingletons$WishlistLoadingScreenKt;

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v9, :cond_4

    move v6, v8

    :cond_4
    and-int/2addr v1, v8

    invoke-interface {v0, v1, v6}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lcom/vuitton/android/presentation/screen/wishlist/components/ComposableSingletons$WishlistLoadingScreenKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {}, Lcom/vuitton/android/presentation/extensions/WindowInsetsExtKt;->a()Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v2

    invoke-static {v1, v2, v0, v3}, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistLoadingScreenKt;->a(Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;I)V

    goto :goto_3

    :cond_5
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->D()V

    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_5
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/wishlist/components/ComposableSingletons$WishlistLoadingScreenKt;->a:Lcom/vuitton/android/presentation/screen/wishlist/components/ComposableSingletons$WishlistLoadingScreenKt;

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v9, :cond_6

    move v6, v8

    :cond_6
    and-int/2addr v1, v8

    invoke-interface {v0, v1, v6}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_4

    :cond_7
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->D()V

    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_6
    move-object/from16 v13, p1

    check-cast v13, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/welcome/components/ComposableSingletons$WelcomeScreenKt;->a:Lcom/vuitton/android/presentation/screen/authentication/welcome/components/ComposableSingletons$WelcomeScreenKt;

    and-int/lit8 v1, v0, 0x3

    if-eq v1, v9, :cond_8

    move v6, v8

    :cond_8
    and-int/2addr v0, v8

    invoke-interface {v13, v0, v6}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v14, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;

    new-instance v15, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    const/16 v23, 0x79

    const/16 v24, 0x0

    const/16 v16, 0x0

    const-string v17, "https://example.com/video.mp4"

    const-string v18, "https://example.com/placeholder.jpg"

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/time/Instant;Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v22, 0x49

    const/16 v23, 0x0

    move-object/from16 v16, v15

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x0

    invoke-direct/range {v14 .. v23}, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;-><init>(Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;ZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v15, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;

    const/16 v22, 0x3f

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v15 .. v23}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;ZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_9

    new-instance v0, Landroidx/compose/material3/SnackbarHostState;

    invoke-direct {v0}, Landroidx/compose/material3/SnackbarHostState;-><init>()V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    move-object v11, v0

    check-cast v11, Landroidx/compose/material3/SnackbarHostState;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_a

    new-instance v0, Loo;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Loo;-><init>(I)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_b

    new-instance v1, Loo;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Loo;-><init>(I)V

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_c

    new-instance v1, Loo;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Loo;-><init>(I)V

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    move-object v7, v1

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_d

    new-instance v1, Loo;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Loo;-><init>(I)V

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_d
    move-object v8, v1

    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_e

    new-instance v1, Loo;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Loo;-><init>(I)V

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_e
    move-object v9, v1

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_f

    new-instance v1, Loo;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Loo;-><init>(I)V

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_f
    move-object v10, v1

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_10

    new-instance v1, Loo;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Loo;-><init>(I)V

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_10
    move-object v12, v1

    check-cast v12, Lkotlin/jvm/functions/Function0;

    move-object v3, v15

    const/16 v15, 0x36

    const/16 v16, 0x9

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v2, v14

    const v14, 0x36db6000

    move-object v5, v0

    invoke-static/range {v1 .. v16}, Lcom/vuitton/android/presentation/screen/authentication/welcome/components/WelcomeScreenKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V

    goto :goto_5

    :cond_11
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->D()V

    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_7
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/welcome/components/ComposableSingletons$WelcomeScreenKt;->a:Lcom/vuitton/android/presentation/screen/authentication/welcome/components/ComposableSingletons$WelcomeScreenKt;

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v9, :cond_12

    move v2, v8

    goto :goto_6

    :cond_12
    move v2, v6

    :goto_6
    and-int/2addr v1, v8

    invoke-interface {v0, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string v1, "lambda__377844666$lambda$0"

    const-string v2, "mylvAuthentication_yourPrivacySettings_button"

    invoke-static {v1, v2}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->x:I

    invoke-static {v1, v0, v6}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v1

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v4, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    const v2, 0x7f140c00

    invoke-static {v0, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v6, v0

    invoke-static/range {v1 .. v8}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    goto :goto_7

    :cond_13
    move-object v6, v0

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->D()V

    :goto_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_8
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/base/ComposableSingletons$WebViewTopBarKt;->a:Lcom/vuitton/android/presentation/screen/authentication/base/ComposableSingletons$WebViewTopBarKt;

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v9, :cond_14

    move v2, v8

    goto :goto_8

    :cond_14
    move v2, v6

    :goto_8
    and-int/2addr v1, v8

    invoke-interface {v0, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_15

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->j:I

    invoke-static {v1, v0, v6}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v1

    const v2, 0x7f14068b

    invoke-static {v0, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v4, Landroidx/compose/ui/graphics/Color;->i:J

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v6, "lambda_1420729432$lambda$0"

    invoke-direct {v3, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget v6, Lcom/vuitton/android/designkit/ui/theme/IconSize;->d:F

    invoke-static {v3, v6}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/16 v7, 0xc08

    const/4 v8, 0x0

    move-object v6, v0

    invoke-static/range {v1 .. v8}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    goto :goto_9

    :cond_15
    move-object v6, v0

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->D()V

    :goto_9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_9
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/search/components/ComposableSingletons$TrendingComposableKt;->a:Lcom/vuitton/android/presentation/screen/search/components/ComposableSingletons$TrendingComposableKt;

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v9, :cond_16

    move v2, v8

    goto :goto_a

    :cond_16
    move v2, v6

    :goto_a
    and-int/2addr v1, v8

    invoke-interface {v0, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v0, v6}, Lcom/vuitton/android/presentation/screen/search/components/TrendingComposableKt;->d(Landroidx/compose/runtime/Composer;I)V

    goto :goto_b

    :cond_17
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->D()V

    :goto_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_a
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/search/components/ComposableSingletons$TrendingComposableKt;->a:Lcom/vuitton/android/presentation/screen/search/components/ComposableSingletons$TrendingComposableKt;

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v9, :cond_18

    move v2, v8

    goto :goto_c

    :cond_18
    move v2, v6

    :goto_c
    and-int/2addr v1, v8

    invoke-interface {v0, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_19

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lcom/vuitton/android/presentation/screen/search/mocks/TrendingMockKt;->a:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/search/models/TrendingItemUiModel;

    invoke-static {v4, v1, v0, v6, v8}, Lcom/vuitton/android/presentation/screen/search/components/TrendingComposableKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/search/models/TrendingItemUiModel;Landroidx/compose/runtime/Composer;II)V

    goto :goto_d

    :cond_19
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->D()V

    :goto_d
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_b
    move-object/from16 v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/search/components/ComposableSingletons$TrendingComposableKt;->a:Lcom/vuitton/android/presentation/screen/search/components/ComposableSingletons$TrendingComposableKt;

    and-int/lit8 v1, v0, 0x3

    if-eq v1, v9, :cond_1a

    move v6, v8

    :cond_1a
    and-int/2addr v0, v8

    invoke-interface {v4, v0, v6}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string v0, "lambda__2013894651$lambda$0"

    const v1, 0x3f2aaaab

    invoke-static {v0, v1}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v6, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v9, 0x0

    const/16 v10, 0xe

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSkeletonKt;->e(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/animation/core/InfiniteTransition;Landroidx/compose/runtime/Composer;II)V

    goto :goto_e

    :cond_1b
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->D()V

    :goto_e
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_c
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v3, Lcom/vuitton/android/presentation/screen/certificates/components/ComposableSingletons$TransferCertificateCardKt;->a:Lcom/vuitton/android/presentation/screen/certificates/components/ComposableSingletons$TransferCertificateCardKt;

    and-int/lit8 v3, v1, 0x3

    if-eq v3, v9, :cond_1c

    move v6, v8

    :cond_1c
    and-int/2addr v1, v8

    invoke-interface {v0, v1, v6}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_1e

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_1d

    new-instance v1, Loo;

    const/16 v3, 0x9

    invoke-direct {v1, v3}, Loo;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1d
    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v8, v0, v4, v1}, Lcom/vuitton/android/presentation/screen/certificates/components/TransferCertificateCardKt;->a(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;)V

    goto :goto_f

    :cond_1e
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->D()V

    :goto_f
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_d
    move v0, v8

    move-object/from16 v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/ComposableSingletons$TrackDetailTranscriptKt;->a:Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/ComposableSingletons$TrackDetailTranscriptKt;

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v9, :cond_1f

    move v6, v0

    :cond_1f
    and-int/2addr v0, v1

    invoke-interface {v8, v0, v6}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideMockKt;->a:Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;->e:Ljava/util/List;

    sget-object v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideMockKt;->b:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->f:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    invoke-static {v2, v8}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideExtKt;->a(Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;

    move-result-object v2

    iget-wide v4, v2, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;->a:J

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->f:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    invoke-static {v0, v8}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideExtKt;->a(Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;

    move-result-object v0

    iget-wide v6, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;->b:J

    const/16 v9, 0x30

    const-wide/16 v2, 0x1388

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailTranscriptKt;->a(Ljava/util/List;JJJLandroidx/compose/runtime/Composer;I)V

    goto :goto_10

    :cond_20
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->D()V

    :goto_10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_e
    move v0, v8

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/thankyou/components/ComposableSingletons$ThankYouScreenKt;->a:Lcom/vuitton/android/presentation/screen/thankyou/components/ComposableSingletons$ThankYouScreenKt;

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v9, :cond_21

    move v2, v0

    goto :goto_11

    :cond_21
    move v2, v6

    :goto_11
    and-int/2addr v1, v0

    invoke-interface {v5, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_22

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-array v1, v7, [Lkotlin/jvm/functions/Function2;

    sget-object v2, Lcom/vuitton/android/presentation/screen/thankyou/components/ComposableSingletons$ThankYouScreenKt;->e:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    aput-object v2, v1, v6

    sget-object v2, Lcom/vuitton/android/presentation/screen/thankyou/components/ComposableSingletons$ThankYouScreenKt;->f:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    aput-object v2, v1, v0

    sget-object v0, Lcom/vuitton/android/presentation/screen/thankyou/components/ComposableSingletons$ThankYouScreenKt;->g:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    aput-object v0, v1, v9

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/16 v6, 0xdb0

    const/4 v1, 0x0

    const-string v2, "\u00c9chantillons"

    const-string v3, "Gratuit"

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/thankyou/components/ThankYouScreenKt;->d(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/Composer;I)V

    goto :goto_12

    :cond_22
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->D()V

    :goto_12
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_f
    move v0, v8

    move v8, v6

    move-object/from16 v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/thankyou/components/ComposableSingletons$ThankYouScreenKt;->a:Lcom/vuitton/android/presentation/screen/thankyou/components/ComposableSingletons$ThankYouScreenKt;

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v9, :cond_23

    move v8, v0

    :cond_23
    and-int/2addr v0, v1

    invoke-interface {v6, v0, v8}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_24

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/16 v7, 0x6030

    const/4 v8, 0x5

    const/4 v1, 0x0

    const-string v2, "Sac shopping"

    const/4 v3, 0x0

    const v4, 0x7f080258

    const-string v5, "S\u00e9lectionn\u00e9"

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/thankyou/components/ThankYouScreenKt;->c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroidx/compose/runtime/Composer;II)V

    goto :goto_13

    :cond_24
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->D()V

    :goto_13
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_10
    move v0, v8

    move v8, v6

    move-object/from16 v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/thankyou/components/ComposableSingletons$ThankYouScreenKt;->a:Lcom/vuitton/android/presentation/screen/thankyou/components/ComposableSingletons$ThankYouScreenKt;

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v9, :cond_25

    move v8, v0

    :cond_25
    and-int/2addr v0, v1

    invoke-interface {v6, v0, v8}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/16 v7, 0x6030

    const/4 v8, 0x5

    const/4 v1, 0x0

    const-string v2, "Carte cadeau"

    const/4 v3, 0x0

    const v4, 0x7f08035a

    const-string v5, "Joyeux anniversaire !"

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/thankyou/components/ThankYouScreenKt;->c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroidx/compose/runtime/Composer;II)V

    goto :goto_14

    :cond_26
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->D()V

    :goto_14
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_11
    move v0, v8

    move v8, v6

    move-object/from16 v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/thankyou/components/ComposableSingletons$ThankYouScreenKt;->a:Lcom/vuitton/android/presentation/screen/thankyou/components/ComposableSingletons$ThankYouScreenKt;

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v9, :cond_27

    move v8, v0

    :cond_27
    and-int/2addr v0, v1

    invoke-interface {v6, v0, v8}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/16 v7, 0x1b0

    const/16 v8, 0x19

    const/4 v1, 0x0

    const-string v2, "Parfum Louis Vuitton"

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/thankyou/components/ThankYouScreenKt;->c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroidx/compose/runtime/Composer;II)V

    goto :goto_15

    :cond_28
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->D()V

    :goto_15
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_12
    move v0, v8

    move v8, v6

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v6, Lcom/vuitton/android/presentation/screen/thankyou/components/ComposableSingletons$ThankYouScreenKt;->a:Lcom/vuitton/android/presentation/screen/thankyou/components/ComposableSingletons$ThankYouScreenKt;

    and-int/lit8 v6, v3, 0x3

    if-eq v6, v9, :cond_29

    move v6, v0

    goto :goto_16

    :cond_29
    move v6, v8

    :goto_16
    and-int/2addr v3, v0

    invoke-interface {v1, v3, v6}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_2b

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_2a

    new-instance v3, Loo;

    const/16 v5, 0x8

    invoke-direct {v3, v5}, Loo;-><init>(I)V

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2a
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v0, v1, v4, v3}, Lcom/vuitton/android/presentation/screen/thankyou/components/ThankYouScreenKt;->a(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;)V

    goto :goto_17

    :cond_2b
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_17
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_13
    move v0, v8

    move v8, v6

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/vuitton/android/presentation/screen/thankyou/components/ComposableSingletons$ThankYouScreenKt;->a:Lcom/vuitton/android/presentation/screen/thankyou/components/ComposableSingletons$ThankYouScreenKt;

    and-int/lit8 v3, v2, 0x3

    if-eq v3, v9, :cond_2c

    move v6, v0

    goto :goto_18

    :cond_2c
    move v6, v8

    :goto_18
    and-int/2addr v0, v2

    invoke-interface {v1, v0, v6}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_2d

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string v0, "lambda_1898300961$lambda$0"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v2, Lcom/vuitton/android/presentation/screen/thankyou/components/ThankYouScreenKt;->b:Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;->a:Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;->d:Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeatureFlags;

    iget-boolean v2, v2, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeatureFlags;->a:Z

    const/16 v4, 0x1b6

    invoke-static {v0, v3, v2, v1, v4}, Lcom/vuitton/android/presentation/screen/thankyou/components/ThankYouScreenKt;->l(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;ZLandroidx/compose/runtime/Composer;I)V

    goto :goto_19

    :cond_2d
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_19
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_14
    move v0, v8

    move v8, v6

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v5, Lcom/vuitton/android/presentation/screen/thankyou/components/ComposableSingletons$ThankYouScreenKt;->a:Lcom/vuitton/android/presentation/screen/thankyou/components/ComposableSingletons$ThankYouScreenKt;

    and-int/lit8 v5, v3, 0x3

    if-eq v5, v9, :cond_2e

    move v6, v0

    goto :goto_1a

    :cond_2e
    move v6, v8

    :goto_1a
    and-int/2addr v0, v3

    invoke-interface {v1, v0, v6}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_2f

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/vuitton/android/presentation/screen/thankyou/components/ComposableSingletons$ThankYouScreenKt;->d:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {v4, v0, v1, v2}, Landroidx/compose/animation/SharedTransitionScopeKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1b

    :cond_2f
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_15
    move v0, v8

    move v8, v6

    move-object/from16 v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/thankyou/components/ComposableSingletons$ThankYouScreenKt;->a:Lcom/vuitton/android/presentation/screen/thankyou/components/ComposableSingletons$ThankYouScreenKt;

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v9, :cond_30

    move v2, v0

    goto :goto_1c

    :cond_30
    move v2, v8

    :goto_1c
    and-int/2addr v0, v1

    invoke-interface {v6, v0, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_31

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string v0, "lambda__1577241260$lambda$0"

    const-string v1, "thankYou_closeIcon_icon"

    invoke-static {v0, v1}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->q:I

    invoke-static {v0, v6, v8}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v1

    const v0, 0x7f140319

    invoke-static {v6, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v4, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    goto :goto_1d

    :cond_31
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1d
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_16
    move v0, v8

    move v8, v6

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v4, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/ComposableSingletons$TermsAndConditionsComposableKt;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/ComposableSingletons$TermsAndConditionsComposableKt;

    and-int/lit8 v4, v2, 0x3

    if-eq v4, v9, :cond_32

    move v6, v0

    goto :goto_1e

    :cond_32
    move v6, v8

    :goto_1e
    and-int/2addr v0, v2

    invoke-interface {v1, v0, v6}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_34

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_33

    new-instance v0, Loo;

    const/4 v2, 0x7

    invoke-direct {v0, v2}, Loo;-><init>(I)V

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_33
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, v3}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/TermsAndConditionsComposableKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1f

    :cond_34
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1f
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_17
    move v0, v8

    move v8, v6

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/vuitton/android/presentation/contact/compose/ComposableSingletons$TermsAndConditionsBottomSheetKt;->a:Lcom/vuitton/android/presentation/contact/compose/ComposableSingletons$TermsAndConditionsBottomSheetKt;

    and-int/lit8 v3, v2, 0x3

    if-eq v3, v9, :cond_35

    move v3, v0

    goto :goto_20

    :cond_35
    move v3, v8

    :goto_20
    and-int/2addr v0, v2

    invoke-interface {v1, v0, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_36

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v4, v1, v8}, Lcom/vuitton/android/presentation/contact/compose/TermsAndConditionsBottomSheetKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    goto :goto_21

    :cond_36
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_21
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_18
    move v0, v8

    move v8, v6

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/components/sizeguide/ComposableSingletons$TableSizeKt;->a:Lcom/vuitton/android/presentation/screen/pdp/components/sizeguide/ComposableSingletons$TableSizeKt;

    and-int/lit8 v4, v2, 0x3

    if-eq v4, v9, :cond_37

    move v4, v0

    goto :goto_22

    :cond_37
    move v4, v8

    :goto_22
    and-int/2addr v2, v0

    invoke-interface {v1, v2, v4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_38

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string v2, "b1"

    const-string v4, "c1"

    const-string v5, "a1"

    filled-new-array {v5, v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v4, "a2"

    const-string v5, "b2"

    const-string v6, "c3"

    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v10, "a3"

    filled-new-array {v10, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-array v6, v7, [Ljava/util/List;

    aput-object v2, v6, v8

    aput-object v4, v6, v0

    aput-object v5, v6, v9

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v3, v1, v0}, Lcom/vuitton/android/presentation/screen/pdp/components/sizeguide/TableSizeKt;->a(ILandroidx/compose/runtime/Composer;Ljava/util/List;)V

    goto :goto_23

    :cond_38
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_23
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_19
    move-object/from16 v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    sget-object v1, Lcom/vuitton/android/presentation/screen/search/components/ComposableSingletons$SuggestionCarouselComposableKt;->a:Lcom/vuitton/android/presentation/screen/search/components/ComposableSingletons$SuggestionCarouselComposableKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1a
    move-object/from16 v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    sget-object v1, Lcom/vuitton/android/presentation/screen/search/components/ComposableSingletons$SuggestionCarouselComposableKt;->a:Lcom/vuitton/android/presentation/screen/search/components/ComposableSingletons$SuggestionCarouselComposableKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1b
    move v0, v8

    move v8, v6

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/vuitton/android/presentation/screen/search/components/ComposableSingletons$SuggestionCarouselComposableKt;->a:Lcom/vuitton/android/presentation/screen/search/components/ComposableSingletons$SuggestionCarouselComposableKt;

    and-int/lit8 v4, v3, 0x3

    if-eq v4, v9, :cond_39

    move v6, v0

    goto :goto_24

    :cond_39
    move v6, v8

    :goto_24
    and-int/2addr v0, v3

    invoke-interface {v2, v0, v6}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_3c

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v2, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Loading;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Loading;-><init>()V

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_3a

    new-instance v3, Lpo;

    invoke-direct {v3, v9}, Lpo;-><init>(I)V

    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3a
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v5, :cond_3b

    new-instance v4, Loo;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Loo;-><init>(I)V

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3b
    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/16 v6, 0xd80

    move-object v5, v2

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/search/components/SuggestionCarouselComposableKt;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/search/models/SearchListState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_25

    :cond_3c
    move-object v5, v2

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->D()V

    :goto_25
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1c
    move v0, v8

    move v8, v6

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v6, Lcom/vuitton/android/presentation/screen/search/components/ComposableSingletons$SuggestionCarouselComposableKt;->a:Lcom/vuitton/android/presentation/screen/search/components/ComposableSingletons$SuggestionCarouselComposableKt;

    and-int/lit8 v6, v4, 0x3

    if-eq v6, v9, :cond_3d

    move v6, v0

    goto :goto_26

    :cond_3d
    move v6, v8

    :goto_26
    and-int/2addr v0, v4

    invoke-interface {v2, v0, v6}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_40

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v2, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Result;

    sget-object v4, Lcom/vuitton/android/presentation/screen/search/mocks/SuggestionListMockKt;->a:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v0, v4}, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Result;-><init>(Ljava/util/List;)V

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v5, :cond_3e

    new-instance v4, Lpo;

    invoke-direct {v4, v7}, Lpo;-><init>(I)V

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3e
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v5, :cond_3f

    new-instance v6, Loo;

    invoke-direct {v6, v3}, Loo;-><init>(I)V

    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3f
    check-cast v6, Lkotlin/jvm/functions/Function0;

    move-object v3, v4

    move-object v4, v6

    const/16 v6, 0xd80

    move-object v5, v2

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/search/components/SuggestionCarouselComposableKt;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/search/models/SearchListState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_27

    :cond_40
    move-object v5, v2

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->D()V

    :goto_27
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
