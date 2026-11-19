.class public final synthetic Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Landroidx/compose/animation/SharedTransitionScope;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Landroidx/compose/animation/core/Animatable;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic i:F

.field public final synthetic j:Lkotlin/jvm/functions/Function0;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Lkotlin/jvm/functions/Function0;

.field public final synthetic m:Ljava/lang/String;

.field public final synthetic n:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

.field public final synthetic o:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/animation/SharedTransitionScope;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/Animatable;Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;FLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/b;->b:Landroidx/compose/animation/SharedTransitionScope;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/b;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/b;->d:Landroidx/compose/animation/core/Animatable;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/b;->e:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/b;->f:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/b;->g:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/b;->h:Lkotlinx/coroutines/CoroutineScope;

    iput p8, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/b;->i:F

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/b;->j:Lkotlin/jvm/functions/Function0;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/b;->k:Lkotlin/jvm/functions/Function1;

    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/b;->l:Lkotlin/jvm/functions/Function0;

    iput-object p12, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/b;->m:Ljava/lang/String;

    iput-object p13, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/b;->n:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    iput-object p14, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/b;->o:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    check-cast v3, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move-object/from16 v11, p3

    check-cast v11, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/b;->c:Landroidx/compose/ui/Modifier;

    if-eqz v4, :cond_0

    const-string v5, "PodcastComposable$lambda$4$0$0"

    invoke-static {v4, v5}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v6, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/b;->b:Landroidx/compose/animation/SharedTransitionScope;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/b;->d:Landroidx/compose/animation/core/Animatable;

    move v8, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/b;->e:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;

    move v9, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/b;->f:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/b;->g:Lkotlin/jvm/functions/Function1;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/b;->h:Lkotlinx/coroutines/CoroutineScope;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/b;->k:Lkotlin/jvm/functions/Function1;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/b;->o:Landroidx/compose/runtime/MutableState;

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v8, :cond_b

    const v8, 0x85379f3

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v8, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v4, v8}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    move-object/from16 p4, v1

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v8, :cond_1

    if-ne v1, v5, :cond_2

    :cond_1
    new-instance v1, Lsa;

    const/4 v8, 0x2

    invoke-direct {v1, v13, v8}, Lsa;-><init>(Landroidx/compose/animation/core/Animatable;I)V

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v4, v1}, Landroidx/compose/foundation/layout/OffsetKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    move-object v8, v2

    move-object/from16 p1, v3

    iget-wide v2, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->g:J

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->h(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVOpacity;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->b:F

    invoke-static {v4, v2, v3}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v2

    invoke-static {v1, v2, v3, v6}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v7, v1}, Landroidx/compose/animation/SharedTransitionScope;->e(Landroidx/compose/animation/SharedTransitionScope;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_3

    if-ne v3, v5, :cond_4

    :cond_3
    new-instance v3, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/c;

    invoke-direct {v3, v13, v14}, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/c;-><init>(Landroidx/compose/animation/core/Animatable;Lkotlinx/coroutines/CoroutineScope;)V

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    move-object v6, v3

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    iget v3, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/b;->i:F

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->c(F)Z

    move-result v4

    or-int/2addr v2, v4

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/b;->j:Lkotlin/jvm/functions/Function0;

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v2, v4

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v2, v4

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v2, v4

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_5

    if-ne v4, v5, :cond_6

    :cond_5
    move-object/from16 v16, v12

    goto :goto_0

    :cond_6
    move-object v2, v8

    move-object v8, v0

    goto :goto_1

    :goto_0
    new-instance v12, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/d;

    move-object/from16 v17, v15

    move-object/from16 v18, v16

    move-object v15, v0

    move-object/from16 v16, v14

    move v14, v3

    invoke-direct/range {v12 .. v18}, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/d;-><init>(Landroidx/compose/animation/core/Animatable;FLkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V

    move-object v2, v8

    move-object v8, v15

    move-object/from16 v15, v17

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v4, v12

    :goto_1
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_7

    if-ne v3, v5, :cond_8

    :cond_7
    new-instance v3, Ltf0;

    const/16 v0, 0x9

    invoke-direct {v3, v10, v0}, Ltf0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v0, :cond_9

    if-ne v12, v5, :cond_a

    :cond_9
    new-instance v12, Ljo0;

    const/4 v13, 0x1

    invoke-direct {v12, v10, v13}, Ljo0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    move-object v10, v12

    check-cast v10, Lkotlin/jvm/functions/Function1;

    const/16 v0, 0x9

    shl-int/lit8 v0, v9, 0x9

    and-int/lit16 v12, v0, 0x1c00

    move-object v0, v7

    move-object v7, v4

    move-object v4, v0

    move-object v0, v1

    move-object v9, v3

    move-object v5, v15

    move-object/from16 v3, p1

    move-object/from16 v1, p4

    invoke-static/range {v0 .. v12}, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/ExpandedPodcastKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;Landroidx/compose/animation/AnimatedVisibilityScope;Landroidx/compose/animation/SharedTransitionScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_5

    :cond_b
    move-object v8, v7

    move-object v7, v1

    move-object v1, v8

    move-object v8, v2

    move-object/from16 v16, v12

    move-object v2, v13

    const/4 v13, 0x1

    const v12, 0x874e349

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v12

    iget v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/4 v13, 0x0

    move-object/from16 p4, v3

    const/4 v3, 0x2

    invoke-static {v4, v12, v13, v3}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v17

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->j:F

    const/16 v22, 0x7

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v21, v3

    invoke-static/range {v17 .. v22}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v23

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/b;->l:Lkotlin/jvm/functions/Function0;

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_c

    if-ne v4, v5, :cond_d

    :cond_c
    new-instance v4, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/e;

    invoke-direct {v4, v13, v14, v15, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/e;-><init>(Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/Animatable;)V

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_d
    move-object/from16 v27, v4

    check-cast v27, Lkotlin/jvm/functions/Function0;

    const/16 v28, 0x1f

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v23 .. v28}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v12

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v17

    or-int v12, v12, v17

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v17

    or-int v12, v12, v17

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v17

    or-int v12, v12, v17

    move-object/from16 v17, v2

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v12, :cond_f

    if-ne v2, v5, :cond_e

    goto :goto_2

    :cond_e
    move-object v12, v2

    const/4 v2, 0x1

    goto :goto_3

    :cond_f
    :goto_2
    new-instance v12, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/PodcastComposableKt$PodcastComposable$1$1$1$7$1;

    const/4 v2, 0x1

    invoke-direct/range {v12 .. v17}, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/PodcastComposableKt$PodcastComposable$1$1$1$7$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/animation/core/Animatable;)V

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_3
    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    invoke-static {v3, v4, v12}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->j(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVShape;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVShape;->d:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v3, v4}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v12, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->g:J

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->h(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVOpacity;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->c:F

    invoke-static {v4, v12, v13}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v12

    invoke-static {v3, v12, v13, v6}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/compose/animation/SharedTransitionScope;->e(Landroidx/compose/animation/SharedTransitionScope;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    iget-object v4, v7, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;->b:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    sget-object v6, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;->PLAYING:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    if-ne v4, v6, :cond_10

    goto :goto_4

    :cond_10
    const/4 v2, 0x0

    :goto_4
    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/b;->m:Ljava/lang/String;

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v4, v7

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/b;->n:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v7

    or-int/2addr v4, v7

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v4, :cond_11

    if-ne v7, v5, :cond_12

    :cond_11
    new-instance v7, Lsm0;

    const/4 v4, 0x4

    invoke-direct {v7, v10, v6, v0, v4}, Lsm0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_12
    move-object v6, v7

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/16 v0, 0x9

    shl-int/lit8 v0, v9, 0x9

    and-int/lit16 v0, v0, 0x1c00

    move-object v4, v1

    move v1, v2

    move-object v2, v8

    move-object v7, v11

    move-object v5, v15

    move v8, v0

    move-object v0, v3

    move-object/from16 v3, p4

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/CollapsedPodcastKt;->a(Landroidx/compose/ui/Modifier;ZLcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;Landroidx/compose/animation/AnimatedVisibilityScope;Landroidx/compose/animation/SharedTransitionScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->F()V

    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
