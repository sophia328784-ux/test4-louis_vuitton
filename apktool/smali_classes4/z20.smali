.class public final synthetic Lz20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Z

.field public final synthetic e:F

.field public final synthetic f:Z

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(FLandroidx/compose/foundation/pager/PagerState;ZLandroidx/compose/runtime/MutableState;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/immersivearticle/models/CarouselArticleSectionUiModel;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lz20;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lz20;->e:F

    iput-object p2, p0, Lz20;->g:Ljava/lang/Object;

    iput-boolean p3, p0, Lz20;->d:Z

    iput-object p4, p0, Lz20;->h:Ljava/lang/Object;

    iput-object p5, p0, Lz20;->j:Ljava/lang/Object;

    iput-object p6, p0, Lz20;->k:Ljava/lang/Object;

    iput-boolean p7, p0, Lz20;->f:Z

    iput-object p8, p0, Lz20;->c:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Lz20;->i:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistItemUiModel;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;FZ)V
    .locals 1

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lz20;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz20;->g:Ljava/lang/Object;

    iput-object p2, p0, Lz20;->c:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lz20;->h:Ljava/lang/Object;

    iput-boolean p4, p0, Lz20;->d:Z

    iput-object p5, p0, Lz20;->i:Ljava/lang/Object;

    iput-object p6, p0, Lz20;->j:Ljava/lang/Object;

    iput-object p7, p0, Lz20;->k:Ljava/lang/Object;

    iput p8, p0, Lz20;->e:F

    iput-boolean p9, p0, Lz20;->f:Z

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    iget v1, v0, Lz20;->b:I

    iget-object v2, v0, Lz20;->k:Ljava/lang/Object;

    iget-object v3, v0, Lz20;->j:Ljava/lang/Object;

    iget-object v4, v0, Lz20;->i:Ljava/lang/Object;

    iget-object v5, v0, Lz20;->h:Ljava/lang/Object;

    iget-object v6, v0, Lz20;->g:Ljava/lang/Object;

    const/4 v7, 0x0

    packed-switch v1, :pswitch_data_0

    check-cast v6, Landroidx/compose/ui/Modifier;

    move-object v11, v5

    check-cast v11, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistItemUiModel;

    move-object v15, v4

    check-cast v15, Lkotlin/jvm/functions/Function0;

    move-object v14, v3

    check-cast v14, Lkotlin/jvm/functions/Function0;

    move-object v10, v2

    check-cast v10, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedVisibilityScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "WishlistProductItem$lambda$4"

    if-eqz v6, :cond_0

    invoke-static {v6, v3}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    :cond_0
    move-object v9, v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/16 v21, 0x7

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v1

    move/from16 v20, v3

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const-string v3, "wishlist_item_view"

    invoke-static {v1, v3}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v3, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v3, v7}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    invoke-static {v2, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->o()V

    :goto_0
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v3, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v5, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v3, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v3}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v1, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->j(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVShape;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVShape;->b:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v9, v1}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->o1:I

    const v4, 0x7f140a70

    invoke-static {v2, v4}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v18

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->x:J

    iget-object v6, v0, Lz20;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v8, v12

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v8, :cond_2

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v12, v8, :cond_3

    :cond_2
    new-instance v12, Li71;

    invoke-direct {v12, v6, v11, v7}, Li71;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistItemUiModel;I)V

    invoke-interface {v2, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    move-object/from16 v21, v12

    check-cast v21, Lkotlin/jvm/functions/Function0;

    new-instance v16, Lcom/vuitton/android/designkit/components/components/SwipeAction;

    const/16 v22, 0x0

    move/from16 v17, v3

    move-wide/from16 v19, v4

    invoke-direct/range {v16 .. v22}, Lcom/vuitton/android/designkit/components/components/SwipeAction;-><init>(ILjava/lang/String;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static/range {v16 .. v16}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v8, Lj71;

    iget v12, v0, Lz20;->e:F

    iget-boolean v13, v0, Lz20;->d:Z

    iget-boolean v0, v0, Lz20;->f:Z

    move/from16 v16, v0

    invoke-direct/range {v8 .. v16}, Lj71;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistItemUiModel;FZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)V

    const v0, 0x4e971fab

    invoke-static {v0, v8, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v17

    const/high16 v19, 0x30000

    const/16 v20, 0x0

    move-object v12, v1

    move-object/from16 v18, v2

    move-object/from16 v16, v14

    move v14, v13

    move-object v13, v3

    invoke-static/range {v12 .. v20}, Lcom/vuitton/android/designkit/components/components/LVSwipeToRevealKt;->a(Landroidx/compose/ui/Modifier;Ljava/util/List;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/Composer;->r()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_4
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :pswitch_0
    move-object v1, v6

    check-cast v1, Landroidx/compose/foundation/pager/PagerState;

    check-cast v5, Landroidx/compose/runtime/MutableState;

    check-cast v3, Landroid/content/Context;

    check-cast v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/CarouselArticleSectionUiModel;

    move-object v8, v4

    check-cast v8, Landroidx/compose/runtime/MutableState;

    move-object/from16 v4, p1

    check-cast v4, Lcom/vuitton/android/designkit/components/components/ZoomableContentScope;

    move-object/from16 v9, p2

    check-cast v9, Landroidx/compose/runtime/Composer;

    move-object/from16 v6, p3

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v6, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v10, "ImmersiveArticleCarousel$lambda$14$0$2"

    invoke-direct {v6, v10}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    move-object v10, v4

    iget v4, v0, Lz20;->e:F

    invoke-static {v6, v4, v7}, Landroidx/compose/foundation/layout/AspectRatioKt;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v11

    invoke-interface {v10}, Lcom/vuitton/android/designkit/components/components/ZoomableContentScope;->c()F

    move-result v12

    invoke-interface {v10}, Lcom/vuitton/android/designkit/components/components/ZoomableContentScope;->c()F

    move-result v13

    invoke-interface {v10}, Lcom/vuitton/android/designkit/components/components/ZoomableContentScope;->a()F

    move-result v15

    invoke-interface {v10}, Lcom/vuitton/android/designkit/components/components/ZoomableContentScope;->b()F

    move-result v16

    const/16 v21, 0x0

    const v22, 0x7ffe4

    const/4 v14, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    invoke-static/range {v11 .. v22}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->c(Landroidx/compose/ui/Modifier;FFFFFFJLandroidx/compose/ui/graphics/Shape;II)Landroidx/compose/ui/Modifier;

    move-result-object v10

    sget-object v11, Lcom/vuitton/android/presentation/compose/components/PagerParallaxFactor;->LightParallax:Lcom/vuitton/android/presentation/compose/components/PagerParallaxFactor;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    xor-int/lit8 v12, v5, 0x1

    move-object v6, v1

    new-instance v1, Lb30;

    move-object v5, v2

    move-object v2, v3

    move-object v3, v6

    iget-boolean v6, v0, Lz20;->f:Z

    iget-object v7, v0, Lz20;->c:Lkotlin/jvm/functions/Function1;

    invoke-direct/range {v1 .. v8}, Lb30;-><init>(Landroid/content/Context;Landroidx/compose/foundation/pager/PagerState;FLcom/vuitton/android/presentation/screen/immersivearticle/models/CarouselArticleSectionUiModel;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V

    const v2, 0x3ba77b

    invoke-static {v2, v1, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v7

    move-object v8, v9

    const v9, 0xc00d80

    move-object v2, v10

    const/16 v10, 0x10

    move-object v1, v3

    const/4 v3, 0x0

    iget-boolean v6, v0, Lz20;->d:Z

    move-object v4, v11

    move v5, v12

    invoke-static/range {v1 .. v10}, Lcom/vuitton/android/presentation/compose/components/LVSlideShowKt;->a(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;ZLcom/vuitton/android/presentation/compose/components/PagerParallaxFactor;ZZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
