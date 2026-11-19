.class public final synthetic Ls8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 15
    iput p1, p0, Ls8;->b:I

    iput-object p2, p0, Ls8;->c:Ljava/lang/Object;

    iput-object p3, p0, Ls8;->e:Ljava/lang/Object;

    iput-object p4, p0, Ls8;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 14
    iput p4, p0, Ls8;->b:I

    iput-object p1, p0, Ls8;->c:Ljava/lang/Object;

    iput-object p2, p0, Ls8;->d:Ljava/lang/Object;

    iput-object p3, p0, Ls8;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/State;)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Ls8;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls8;->d:Ljava/lang/Object;

    iput-object p2, p0, Ls8;->c:Ljava/lang/Object;

    iput-object p3, p0, Ls8;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v0, p0

    iget v1, v0, Ls8;->b:I

    const/16 v2, 0x9

    const/4 v3, 0x5

    const/4 v4, -0x1

    const/16 v5, 0x20

    const-string v6, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    const/4 v7, 0x2

    const/16 v8, 0xe

    const/4 v10, 0x6

    const/4 v11, 0x1

    const/4 v12, 0x0

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v14, 0x0

    iget-object v15, v0, Ls8;->e:Ljava/lang/Object;

    iget-object v9, v0, Ls8;->d:Ljava/lang/Object;

    iget-object v0, v0, Ls8;->c:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    check-cast v9, Landroidx/navigation/NavHostController;

    check-cast v15, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v3, p3

    check-cast v3, Landroidx/compose/runtime/Composer;

    move-object/from16 v4, p4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v4, v1, v2}, La;->x(Ljava/lang/Integer;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;)V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_0

    if-ne v2, v13, :cond_1

    :cond_0
    new-instance v2, Lyj;

    const/16 v1, 0x12

    invoke-direct {v2, v9, v1}, Lyj;-><init>(Landroidx/navigation/NavHostController;I)V

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v2, v15, v3, v14}, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistShareComposableKt;->b(Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;

    move-object/from16 v16, v9

    check-cast v16, Lkotlin/jvm/functions/Function0;

    move-object v5, v15

    check-cast v5, Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope;

    move-object/from16 v2, p2

    check-cast v2, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object/from16 v11, p3

    check-cast v11, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Lcom/vuitton/android/presentation/screen/authentication/welcome/components/WelcomeScreenKt;->a:F

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-boolean v1, v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;->f:Z

    if-eqz v1, :cond_2

    const v0, -0x17baf63c

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/components/ComposableSingletons$WelcomeScreenKt;->a:Lcom/vuitton/android/presentation/screen/authentication/welcome/components/ComposableSingletons$WelcomeScreenKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v21, Lcom/vuitton/android/presentation/screen/authentication/welcome/components/ComposableSingletons$WelcomeScreenKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/high16 v23, 0x180000

    const/16 v24, 0x3e

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v22, v11

    invoke-static/range {v16 .. v24}, Landroidx/compose/material3/IconButtonKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_0

    :cond_2
    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;->g:Z

    if-eqz v0, :cond_3

    const v0, -0x17b02b5c

    const-string v1, "WelcomeScreen$lambda$1$0"

    invoke-static {v0, v11, v1}, Lpq0;->j(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    sget v1, Lcom/vuitton/android/designkit/ui/theme/IconSize;->d:F

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v4, 0x0

    const/16 v6, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->u1:I

    invoke-static {v0, v11, v14}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v6

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v9, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    const v0, 0x7f1402ce

    invoke-static {v11, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v7

    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-static/range {v6 .. v13}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_0

    :cond_3
    const v0, -0x17a857dd

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->F()V

    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    check-cast v0, Landroidx/compose/foundation/pager/PagerState;

    check-cast v9, Ljava/util/ArrayList;

    check-cast v15, Landroidx/compose/ui/Modifier;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/pager/PagerScope;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v2, p3

    check-cast v2, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v15, :cond_4

    const-string v3, "WearingCarousel$lambda$1"

    invoke-static {v15, v3}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v15

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v0, 0x258

    invoke-static {v0, v14, v12, v10}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v18

    new-instance v0, Li61;

    invoke-direct {v0, v9, v15, v14}, Li61;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const v1, -0x71096d99

    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v20

    const/16 v22, 0x6000

    const/16 v23, 0xa

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v21, v2

    invoke-static/range {v16 .. v23}, Landroidx/compose/animation/CrossfadeKt;->b(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    check-cast v0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleViewModel;

    check-cast v9, Landroid/content/Context;

    check-cast v15, Landroidx/navigation/NavHostController;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v3, p3

    check-cast v3, Landroidx/compose/runtime/Composer;

    move-object/from16 v4, p4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_5

    if-ne v2, v13, :cond_6

    :cond_5
    new-instance v2, Lw31;

    invoke-direct {v2, v9, v14}, Lw31;-><init>(Landroid/content/Context;I)V

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_7

    if-ne v4, v13, :cond_8

    :cond_7
    new-instance v4, Lyj;

    const/16 v1, 0x11

    invoke-direct {v4, v15, v1}, Lyj;-><init>(Landroidx/navigation/NavHostController;I)V

    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v2, v4, v3, v14}, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/TheLookImmersiveArticleListComposableKt;->a(Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_3
    check-cast v0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;

    check-cast v9, Ljava/util/ArrayList;

    check-cast v15, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v3, p3

    check-cast v3, Landroidx/compose/runtime/Composer;

    move-object/from16 v4, p4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v1, v4, 0x30

    if-nez v1, :cond_a

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v1

    if-eqz v1, :cond_9

    move/from16 v16, v5

    goto :goto_1

    :cond_9
    const/16 v16, 0x10

    :goto_1
    or-int v4, v4, v16

    :cond_a
    and-int/lit16 v1, v4, 0x91

    const/16 v6, 0x90

    if-eq v1, v6, :cond_b

    move v1, v11

    goto :goto_2

    :cond_b
    move v1, v14

    :goto_2
    and-int/lit8 v6, v4, 0x1

    invoke-interface {v3, v6, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;->a:Ljava/lang/String;

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    and-int/lit8 v4, v4, 0x70

    if-ne v4, v5, :cond_c

    goto :goto_3

    :cond_c
    move v11, v14

    :goto_3
    or-int/2addr v1, v11

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_d

    if-ne v4, v13, :cond_e

    :cond_d
    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v4, "TheLookImmersiveArticleListScreen$lambda$2$0$0$0"

    invoke-direct {v1, v4}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x3f100000    # 0.5625f

    invoke-static {v1, v4, v14}, Landroidx/compose/foundation/layout/AspectRatioKt;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v16

    new-instance v1, Lqw;

    invoke-direct {v1, v15, v0, v9, v2}, Lqw;-><init>(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;Ljava/util/ArrayList;I)V

    const/16 v21, 0x1f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v20, v1

    invoke-static/range {v16 .. v21}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_e
    move-object/from16 v17, v4

    check-cast v17, Landroidx/compose/ui/Modifier;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->f:Ljava/util/List;

    if-eqz v0, :cond_11

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    if-eqz v2, :cond_f

    goto :goto_4

    :cond_10
    move-object v1, v12

    :goto_4
    check-cast v1, Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    if-eqz v1, :cond_11

    iget-object v0, v1, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    if-eqz v0, :cond_11

    iget-object v12, v0, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    :cond_11
    if-nez v12, :cond_12

    const-string v12, ""

    :cond_12
    move-object/from16 v18, v12

    const/16 v28, 0x0

    const/16 v29, 0x7fc

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v27, v3

    invoke-static/range {v17 .. v29}, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoaderKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/layout/ContentScale;Ljava/lang/String;Ljava/lang/Integer;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_5

    :cond_13
    move-object/from16 v27, v3

    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->D()V

    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_4
    move-object/from16 v19, v0

    check-cast v19, Ljava/util/List;

    check-cast v9, Landroidx/compose/runtime/MutableState;

    move-object v0, v15

    check-cast v0, Landroidx/compose/runtime/State;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScope;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v2, p3

    check-cast v2, Landroidx/compose/runtime/Composer;

    move-object/from16 v5, p4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit16 v1, v5, 0x81

    const/16 v6, 0x80

    if-eq v1, v6, :cond_14

    move v1, v11

    goto :goto_6

    :cond_14
    move v1, v14

    :goto_6
    and-int/2addr v5, v11

    invoke-interface {v2, v5, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_1d

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v5, "TableSizes$lambda$3$3$0$0"

    invoke-direct {v1, v5}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    sget-object v7, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    invoke-static {v6, v7, v2, v14}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v6

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v2, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v16

    if-eqz v16, :cond_1c

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v16

    if-eqz v16, :cond_15

    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_7

    :cond_15
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->o()V

    :goto_7
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v6, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v10, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v6, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v6}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v1, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v13, :cond_16

    invoke-static {v14}, Landroidx/compose/runtime/SnapshotIntStateKt;->a(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v1

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_16
    check-cast v1, Landroidx/compose/runtime/MutableIntState;

    new-instance v6, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v6, v5}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v7, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v7, 0x42dc0000    # 110.0f

    invoke-static {v6, v7}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v6, v12, v7}, Landroidx/compose/foundation/layout/SizeKt;->v(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;I)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v13, :cond_17

    new-instance v7, Lq1;

    const/16 v10, 0xd

    invoke-direct {v7, v1, v10}, Lq1;-><init>(Landroidx/compose/runtime/MutableIntState;I)V

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_17
    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-static {v6, v7}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v15

    new-instance v6, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v6, v5}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v7, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v6, v7}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v16

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Pair;

    if-eqz v6, :cond_18

    iget-object v6, v6, Lkotlin/Pair;->b:Ljava/lang/Object;

    move-object v12, v6

    check-cast v12, Ljava/lang/Integer;

    :cond_18
    move-object/from16 v18, v12

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Pair;

    if-eqz v6, :cond_19

    iget-object v6, v6, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-ne v6, v4, :cond_19

    move/from16 v17, v11

    goto :goto_8

    :cond_19
    move/from16 v17, v14

    :goto_8
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v13, :cond_1a

    new-instance v4, Lku0;

    invoke-direct {v4, v3, v9}, Lku0;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1a
    move-object/from16 v20, v4

    check-cast v20, Lkotlin/jvm/functions/Function1;

    const v22, 0x30036

    move-object/from16 v21, v2

    invoke-static/range {v15 .. v22}, Lcom/vuitton/android/presentation/screen/pdp/components/sizeguide/TableSizeColumnKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;ZLjava/lang/Integer;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v5}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/unit/Density;

    invoke-interface {v1}, Landroidx/compose/runtime/IntState;->f()I

    move-result v1

    invoke-interface {v4, v1}, Landroidx/compose/ui/unit/Density;->k1(I)F

    move-result v1

    new-instance v4, Landroidx/compose/ui/unit/Dp;

    invoke-static {v3, v1}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Dp;

    iget v0, v0, Landroidx/compose/ui/unit/Dp;->b:F

    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/graphics/Brush;->a:Landroidx/compose/ui/graphics/Brush$Companion;

    sget-object v3, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v3, v4, :cond_1b

    const v3, 0x28af844b

    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v3, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v3, Landroidx/compose/ui/graphics/Color;->h:J

    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->o:J

    new-instance v6, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v6, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    filled-new-array {v5, v6}, [Landroidx/compose/ui/graphics/Color;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_9

    :cond_1b
    const v3, 0x28b42dcb    # 2.0003874E-14f

    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->o:J

    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    sget-object v3, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v3, Landroidx/compose/ui/graphics/Color;->h:J

    new-instance v6, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v6, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    filled-new-array {v5, v6}, [Landroidx/compose/ui/graphics/Color;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->F()V

    :goto_9
    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v4, v8}, Landroidx/compose/ui/graphics/Brush$Companion;->a(Landroidx/compose/ui/graphics/Brush$Companion;Ljava/util/List;FFI)Landroidx/compose/ui/graphics/LinearGradient;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/BackgroundKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/LinearGradient;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0, v2, v14}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->r()V

    goto :goto_a

    :cond_1c
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v12

    :cond_1d
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->D()V

    :goto_a
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_5
    check-cast v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    check-cast v15, Landroidx/navigation/NavHostController;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v3, p3

    check-cast v3, Landroidx/compose/runtime/Composer;

    move-object/from16 v4, p4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v4, v1, v2}, La;->x(Ljava/lang/Integer;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;)V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_1e

    if-ne v2, v13, :cond_1f

    :cond_1e
    new-instance v2, Lok;

    const/4 v1, 0x7

    invoke-direct {v2, v0, v15, v1}, Lok;-><init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Landroidx/navigation/NavHostController;I)V

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1f
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v9, v2, v3, v14}, Lcom/vuitton/android/presentation/screen/storemode/components/StoreModeWelcomeComposableKt;->a(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_6
    move-object v3, v9

    check-cast v3, Lkotlin/jvm/functions/Function0;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    check-cast v15, Landroidx/compose/runtime/State;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope;

    move-object/from16 v2, p2

    check-cast v2, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object/from16 v7, p3

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v4, p4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v15}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->j:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;->a:Z

    if-eqz v1, :cond_22

    const v1, -0x359641c7

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v15}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->j:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_20

    if-ne v4, v13, :cond_21

    :cond_20
    new-instance v4, Ltf0;

    const/16 v1, 0x17

    invoke-direct {v4, v0, v1}, Ltf0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_21
    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v8, 0x0

    const/16 v9, 0x31

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/presentation/contact/compose/ContactUsIconKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLjava/lang/String;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_b

    :cond_22
    const v0, -0x3590a047

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    :goto_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_7
    check-cast v0, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

    move-object v2, v15

    check-cast v2, Lkotlin/jvm/functions/Function3;

    move-object v5, v9

    check-cast v5, Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v3, p2

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v7, p3

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v4, p4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v4, v1, v3}, La;->x(Ljava/lang/Integer;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;)V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v7}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v1

    invoke-static {v1, v7}, Landroidx/compose/foundation/layout/WindowInsetsKt;->e(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    move-result v1

    invoke-static {v1}, Lcom/vuitton/android/presentation/extensions/ResourcesExtKt;->b(F)F

    move-result v1

    float-to-int v3, v1

    invoke-static {v7}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v1

    invoke-static {v1, v7}, Landroidx/compose/foundation/layout/WindowInsetsKt;->e(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    move-result v1

    invoke-static {v1}, Lcom/vuitton/android/presentation/extensions/ResourcesExtKt;->b(F)F

    move-result v1

    float-to-int v4, v1

    sget-object v1, Lcom/vuitton/android/core/type/SystemIcons;->b:Lcom/vuitton/android/core/type/SystemIcons$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/vuitton/android/core/type/SystemIcons;->c:Z

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;->g(Z)V

    new-instance v1, Ldh;

    const/4 v6, 0x6

    invoke-direct/range {v1 .. v6}, Ldh;-><init>(Ljava/lang/Object;IILjava/lang/Object;I)V

    const v0, 0x6eb9f4d5

    invoke-static {v0, v1, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-static {v0, v7, v10}, Lcom/vuitton/android/presentation/compose/components/compositionlocalprovider/LVServiceLocalProviderKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_8
    check-cast v0, Landroid/content/Context;

    check-cast v9, Ljava/util/List;

    check-cast v15, Lcom/vuitton/android/presentation/utils/UrlFactory;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/pager/PagerScope;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v3, p3

    check-cast v3, Landroidx/compose/runtime/Composer;

    move-object/from16 v5, p4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v5, "ImageSlider$lambda$0$0"

    invoke-direct {v1, v5}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v1, v5}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "plp_product_image_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v17

    new-instance v1, Lcoil3/request/ImageRequest$Builder;

    invoke-direct {v1, v0}, Lcoil3/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    if-eqz v5, :cond_23

    iget-object v5, v5, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    if-eqz v5, :cond_23

    invoke-virtual {v15, v5}, Lcom/vuitton/android/presentation/utils/UrlFactory;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_c

    :cond_23
    move-object v5, v12

    :goto_c
    invoke-static {v1, v0, v5}, Lcom/vuitton/android/presentation/imageloading/PredefinedImageRequestOptions;->b(Lcoil3/request/ImageRequest$Builder;Landroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcoil3/request/ImageRequest$Builder;->a()Lcoil3/request/ImageRequest;

    move-result-object v16

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    if-eqz v0, :cond_24

    iget-object v0, v0, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->c:Lcom/vuitton/android/presentation/model/common/ScaleUiModel;

    goto :goto_d

    :cond_24
    move-object v0, v12

    :goto_d
    if-nez v0, :cond_25

    move v0, v4

    goto :goto_e

    :cond_25
    sget-object v1, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/ProductCellFullKt$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_e
    if-eq v0, v4, :cond_28

    if-eq v0, v11, :cond_27

    if-ne v0, v7, :cond_26

    sget-object v0, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/layout/ContentScale$Companion;->b:Landroidx/compose/ui/layout/ContentScale$Companion$Crop$1;

    :goto_f
    move-object/from16 v19, v0

    goto :goto_10

    :cond_26
    invoke-static {}, Lv40;->g()V

    goto :goto_11

    :cond_27
    sget-object v0, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/layout/ContentScale$Companion;->c:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    goto :goto_f

    :cond_28
    sget-object v0, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/layout/ContentScale$Companion;->b:Landroidx/compose/ui/layout/ContentScale$Companion$Crop$1;

    goto :goto_f

    :goto_10
    const v0, 0x7f08035c

    invoke-static {v0, v3, v14}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v18

    const/16 v21, 0x1030

    move-object/from16 v20, v3

    invoke-static/range {v16 .. v21}, Lcoil3/compose/SingletonAsyncImageKt;->a(Lcoil3/request/ImageRequest;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/Composer;I)V

    sget-object v12, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_11
    return-object v12

    :pswitch_9
    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    check-cast v9, Lkotlin/jvm/functions/Function2;

    check-cast v15, Lkotlin/jvm/functions/Function2;

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object/from16 v1, p2

    check-cast v1, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;

    move-object/from16 v4, p3

    check-cast v4, Landroidx/compose/runtime/Composer;

    move-object/from16 v6, p4

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v10, v6, 0x6

    const/4 v12, 0x4

    if-nez v10, :cond_2a

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v10

    if-eqz v10, :cond_29

    move v7, v12

    :cond_29
    or-int/2addr v7, v6

    goto :goto_12

    :cond_2a
    move v7, v6

    :goto_12
    and-int/lit8 v6, v6, 0x30

    if-nez v6, :cond_2c

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    move/from16 v16, v5

    goto :goto_13

    :cond_2b
    const/16 v16, 0x10

    :goto_13
    or-int v7, v7, v16

    :cond_2c
    and-int/lit16 v6, v7, 0x93

    const/16 v10, 0x92

    if-eq v6, v10, :cond_2d

    move v6, v11

    goto :goto_14

    :cond_2d
    move v6, v14

    :goto_14
    and-int/lit8 v10, v7, 0x1

    invoke-interface {v4, v10, v6}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_35

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v6

    move v10, v6

    and-int/lit8 v6, v7, 0x70

    if-ne v6, v5, :cond_2e

    move/from16 v16, v11

    goto :goto_15

    :cond_2e
    move/from16 v16, v14

    :goto_15
    or-int v10, v10, v16

    and-int/2addr v7, v8

    if-ne v7, v12, :cond_2f

    move v7, v11

    goto :goto_16

    :cond_2f
    move v7, v14

    :goto_16
    or-int/2addr v7, v10

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_30

    if-ne v8, v13, :cond_31

    :cond_30
    new-instance v8, Lou;

    invoke-direct {v8, v9, v1, v0, v3}, Lou;-><init>(Lkotlin/Function;Ljava/lang/Object;II)V

    invoke-interface {v4, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_31
    move-object v3, v8

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v4, v15}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-ne v6, v5, :cond_32

    goto :goto_17

    :cond_32
    move v11, v14

    :goto_17
    or-int/2addr v0, v11

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_33

    if-ne v5, v13, :cond_34

    :cond_33
    new-instance v5, Ljm0;

    const/16 v0, 0xb

    invoke-direct {v5, v15, v1, v0}, Ljm0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_34
    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x0

    move-object/from16 v30, v5

    move-object v5, v4

    move-object/from16 v4, v30

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/presentation/common/editorial/components/productcarousel/ProductCarouselItemKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_18

    :cond_35
    move-object v5, v4

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->D()V

    :goto_18
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_a
    check-cast v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;

    check-cast v9, Landroid/content/Context;

    check-cast v15, Landroidx/compose/runtime/State;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope;

    move-object/from16 v3, p2

    check-cast v3, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object/from16 v4, p3

    check-cast v4, Landroidx/compose/runtime/Composer;

    move-object/from16 v5, p4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v15}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->j:Z

    if-eqz v1, :cond_38

    const v1, -0x63eef840

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_36

    if-ne v3, v13, :cond_37

    :cond_36
    new-instance v3, Lzd0;

    invoke-direct {v3, v0, v9, v2}, Lzd0;-><init>(Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;Landroid/content/Context;I)V

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_37
    move-object/from16 v19, v3

    check-cast v19, Lkotlin/jvm/functions/Function0;

    const/16 v21, 0x0

    const/16 v22, 0x3

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    move-object/from16 v20, v4

    invoke-static/range {v16 .. v22}, Lcom/vuitton/android/presentation/screen/account/lvpass/components/TopBarQRCodeKt;->a(Landroidx/compose/ui/Modifier;JLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v0, v20

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_19

    :cond_38
    move-object v0, v4

    const v1, -0x63e9403a

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->F()V

    :goto_19
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_b
    check-cast v0, Lkotlin/jvm/functions/Function2;

    check-cast v9, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;

    check-cast v15, Landroidx/navigation/NavHostController;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v3, p3

    check-cast v3, Landroidx/compose/runtime/Composer;

    move-object/from16 v4, p4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lcom/vuitton/android/core/type/SystemIcons;->b:Lcom/vuitton/android/core/type/SystemIcons$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/vuitton/android/core/type/SystemIcons;->c:Z

    new-instance v2, Lcom/vuitton/android/core/type/SystemIcons;

    invoke-direct {v2, v1}, Lcom/vuitton/android/core/type/SystemIcons;-><init>(Z)V

    new-instance v4, Lcom/vuitton/android/core/type/SystemIcons;

    invoke-direct {v4, v1}, Lcom/vuitton/android/core/type/SystemIcons;-><init>(Z)V

    invoke-interface {v0, v2, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v0

    if-eqz v0, :cond_42

    invoke-static {v0, v3}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v19

    instance-of v1, v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v1, :cond_39

    move-object v1, v0

    check-cast v1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v1}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v1

    :goto_1a
    move-object/from16 v20, v1

    goto :goto_1b

    :cond_39
    sget-object v1, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_1a

    :goto_1b
    const-class v1, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v16

    const/16 v18, 0x0

    move-object/from16 v17, v0

    move-object/from16 v21, v3

    invoke-static/range {v16 .. v21}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    move-object/from16 v1, v21

    check-cast v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModel;

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_3a

    if-ne v3, v13, :cond_3b

    :cond_3a
    new-instance v3, Lul;

    invoke-direct {v3, v9, v15, v14}, Lul;-><init>(Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;Landroidx/navigation/NavHostController;I)V

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3b
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v14, v3, v1, v14, v11}, Landroidx/activity/compose/BackHandlerKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_3c

    if-ne v3, v13, :cond_3d

    :cond_3c
    new-instance v3, Lvl;

    invoke-direct {v3, v0, v14}, Lvl;-><init>(Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModel;I)V

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3d
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_3e

    if-ne v4, v13, :cond_3f

    :cond_3e
    new-instance v4, Lvl;

    invoke-direct {v4, v0, v11}, Lvl;-><init>(Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModel;I)V

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3f
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_40

    if-ne v2, v13, :cond_41

    :cond_40
    new-instance v2, Lul;

    invoke-direct {v2, v9, v15, v11}, Lul;-><init>(Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;Landroidx/navigation/NavHostController;I)V

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_41
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v3, v4, v2, v1, v14}, Lcom/vuitton/android/presentation/screen/certificates/components/add/CertificateConfirmationScreenKt;->a(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v12, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_1c

    :cond_42
    invoke-static {v6}, Lmd;->k(Ljava/lang/String;)V

    :goto_1c
    return-object v12

    :pswitch_c
    check-cast v0, Lkotlin/jvm/functions/Function2;

    check-cast v15, Landroidx/navigation/NavHostController;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v3, p3

    check-cast v3, Landroidx/compose/runtime/Composer;

    move-object/from16 v4, p4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lcom/vuitton/android/core/type/SystemIcons;->b:Lcom/vuitton/android/core/type/SystemIcons$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/vuitton/android/core/type/SystemIcons;->c:Z

    new-instance v2, Lcom/vuitton/android/core/type/SystemIcons;

    invoke-direct {v2, v1}, Lcom/vuitton/android/core/type/SystemIcons;-><init>(Z)V

    new-instance v4, Lcom/vuitton/android/core/type/SystemIcons;

    invoke-direct {v4, v1}, Lcom/vuitton/android/core/type/SystemIcons;-><init>(Z)V

    invoke-interface {v0, v2, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v0

    if-eqz v0, :cond_4a

    invoke-static {v0, v3}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v19

    instance-of v1, v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v1, :cond_43

    move-object v1, v0

    check-cast v1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v1}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v1

    :goto_1d
    move-object/from16 v20, v1

    goto :goto_1e

    :cond_43
    sget-object v1, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_1d

    :goto_1e
    const-class v1, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v16

    const/16 v18, 0x0

    move-object/from16 v17, v0

    move-object/from16 v21, v3

    invoke-static/range {v16 .. v21}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    move-object/from16 v1, v21

    check-cast v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModel;

    invoke-virtual {v15}, Landroidx/navigation/NavController;->b()Landroidx/navigation/NavBackStackEntry;

    move-result-object v2

    if-eqz v2, :cond_44

    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntry;->a()Landroidx/lifecycle/SavedStateHandle;

    move-result-object v2

    if-eqz v2, :cond_44

    const-string v3, "owner"

    invoke-virtual {v2, v3}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v16, v2

    goto :goto_1f

    :cond_44
    move-object/from16 v16, v12

    :goto_1f
    invoke-virtual {v15}, Landroidx/navigation/NavController;->b()Landroidx/navigation/NavBackStackEntry;

    move-result-object v2

    if-eqz v2, :cond_45

    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntry;->a()Landroidx/lifecycle/SavedStateHandle;

    move-result-object v2

    if-eqz v2, :cond_45

    const-string v3, "keyword"

    invoke-virtual {v2, v3}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/lang/String;

    :cond_45
    move-object/from16 v17, v12

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_46

    if-ne v3, v13, :cond_47

    :cond_46
    new-instance v3, Lh1;

    const/16 v2, 0x16

    invoke-direct {v3, v9, v2}, Lh1;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_47
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v14, v3, v1, v14, v11}, Landroidx/activity/compose/BackHandlerKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_48

    if-ne v3, v13, :cond_49

    :cond_48
    new-instance v3, Lw1;

    const/16 v2, 0x14

    invoke-direct {v3, v0, v2}, Lw1;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_49
    move-object/from16 v19, v3

    check-cast v19, Lkotlin/jvm/functions/Function0;

    const/16 v21, 0x0

    move-object/from16 v20, v1

    move-object/from16 v18, v9

    invoke-static/range {v16 .. v21}, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/TransferCertificateConfirmationComposableKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v12, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_20

    :cond_4a
    invoke-static {v6}, Lmd;->k(Ljava/lang/String;)V

    :goto_20
    return-object v12

    :pswitch_d
    check-cast v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;

    move-object v1, v9

    check-cast v1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;

    check-cast v15, Landroidx/navigation/NavHostController;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v3, p2

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v6, p3

    check-cast v6, Landroidx/compose/runtime/Composer;

    move-object/from16 v4, p4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->a:F

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-class v2, Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Level2;

    sget-object v4, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v4, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {v3, v2}, Landroidx/navigation/NavBackStackEntryKt;->a(Landroidx/navigation/NavBackStackEntry;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Level2;

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Level2;->a:Ljava/lang/String;

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v6, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_4b

    if-ne v5, v13, :cond_4c

    :cond_4b
    new-instance v5, Ln0;

    invoke-direct {v5, v0, v15, v2, v8}, Ln0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4c
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v6, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v2, v4

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_4d

    if-ne v4, v13, :cond_4e

    :cond_4d
    new-instance v4, Lok;

    invoke-direct {v4, v0, v15, v11}, Lok;-><init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Landroidx/navigation/NavHostController;I)V

    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4e
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v6, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v2, v8

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v2, :cond_4f

    if-ne v8, v13, :cond_50

    :cond_4f
    new-instance v8, Lok;

    invoke-direct {v8, v0, v15, v7}, Lok;-><init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Landroidx/navigation/NavHostController;I)V

    invoke-interface {v6, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_50
    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x0

    move-object v2, v3

    move-object v3, v5

    move-object v5, v8

    invoke-static/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel2ScreenKt;->a(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_e
    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;

    check-cast v9, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;

    check-cast v15, Landroidx/navigation/NavHostController;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v5, p3

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->a:F

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Lcom/vuitton/android/presentation/screen/plp/components/screens/PSPStyle;->SEARCH:Lcom/vuitton/android/presentation/screen/plp/components/screens/PSPStyle;

    const v0, -0x4015a6c3

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {}, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;->b()Lkotlin/enums/EnumEntries;

    move-result-object v0

    new-instance v2, Ljava/util/LinkedHashMap;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-static {v4}, Lkotlin/collections/MapsKt;->g(I)I

    move-result v4

    const/16 v7, 0x10

    if-ge v4, v7, :cond_51

    move v4, v7

    :cond_51
    invoke-direct {v2, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v19

    invoke-static {v5}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v7

    if-eqz v7, :cond_53

    invoke-static {v7, v5}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v20

    instance-of v8, v7, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v8, :cond_52

    move-object v8, v7

    check-cast v8, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v8}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v8

    :goto_22
    move-object/from16 v21, v8

    goto :goto_23

    :cond_52
    sget-object v8, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_22

    :goto_23
    const-class v8, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;

    sget-object v10, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v10, v8}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v17

    move-object/from16 v22, v5

    move-object/from16 v18, v7

    invoke-static/range {v17 .. v22}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v5

    move-object/from16 v7, v22

    check-cast v5, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v7

    goto :goto_21

    :cond_53
    invoke-static {v6}, Lmd;->k(Ljava/lang/String;)V

    goto :goto_24

    :cond_54
    move-object v7, v5

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    invoke-interface {v7, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v7, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_55

    if-ne v4, v13, :cond_56

    :cond_55
    new-instance v4, Lok;

    invoke-direct {v4, v9, v15, v14}, Lok;-><init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Landroidx/navigation/NavHostController;I)V

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_56
    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/16 v6, 0x180

    move-object v5, v7

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PSPStoreModeComposableKt;->a(Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;Ljava/util/LinkedHashMap;Lcom/vuitton/android/presentation/screen/plp/components/screens/PSPStyle;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v12, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_24
    return-object v12

    :pswitch_f
    check-cast v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;

    check-cast v9, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;

    check-cast v15, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope;

    move-object/from16 v3, p2

    check-cast v3, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object/from16 v4, p3

    check-cast v4, Landroidx/compose/runtime/Composer;

    move-object/from16 v5, p4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->f:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->i:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->j:Ljava/util/List;

    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v4, v15}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_57

    if-ne v6, v13, :cond_58

    :cond_57
    new-instance v6, Lk;

    invoke-direct {v6, v9, v15, v10}, Lk;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_58
    move-object/from16 v20, v6

    check-cast v20, Lkotlin/jvm/functions/Function1;

    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_59

    if-ne v6, v13, :cond_5a

    :cond_59
    new-instance v6, Lw1;

    invoke-direct {v6, v9, v2}, Lw1;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5a
    move-object/from16 v21, v6

    check-cast v21, Lkotlin/jvm/functions/Function0;

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v16, 0x0

    move-object/from16 v19, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v3

    move-object/from16 v22, v4

    invoke-static/range {v16 .. v24}, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideLanguageSelectorKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_10
    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    check-cast v15, Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v3, p3

    check-cast v3, Landroidx/compose/runtime/Composer;

    move-object/from16 v4, p4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v0, v9, v15, v3, v14}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentConfirmationBffComponentKt;->b(Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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
