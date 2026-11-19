.class public final synthetic Lqo0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Z

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
.method public synthetic constructor <init>(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/core/Animatable;Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;FLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lqo0;->b:Z

    iput-object p2, p0, Lqo0;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lqo0;->d:Landroidx/compose/animation/core/Animatable;

    iput-object p4, p0, Lqo0;->e:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;

    iput-object p5, p0, Lqo0;->f:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;

    iput-object p6, p0, Lqo0;->g:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lqo0;->h:Lkotlinx/coroutines/CoroutineScope;

    iput p8, p0, Lqo0;->i:F

    iput-object p9, p0, Lqo0;->j:Lkotlin/jvm/functions/Function0;

    iput-object p10, p0, Lqo0;->k:Lkotlin/jvm/functions/Function1;

    iput-object p11, p0, Lqo0;->l:Lkotlin/jvm/functions/Function0;

    iput-object p12, p0, Lqo0;->m:Ljava/lang/String;

    iput-object p13, p0, Lqo0;->n:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    iput-object p14, p0, Lqo0;->o:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/SharedTransitionScope;

    move-object/from16 v15, p2

    check-cast v15, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v0, Lqo0;->c:Landroidx/compose/ui/Modifier;

    if-eqz v3, :cond_0

    const-string v4, "PodcastComposable$lambda$4$0"

    invoke-static {v3, v4}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v4, v2, 0x6

    if-nez v4, :cond_2

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v2, v4

    :cond_2
    and-int/lit8 v4, v2, 0x13

    const/16 v5, 0x12

    const/4 v6, 0x1

    if-eq v4, v5, :cond_3

    move v4, v6

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    and-int/2addr v2, v6

    invoke-interface {v15, v2, v4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-boolean v2, v0, Lqo0;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    new-instance v2, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/b;

    move-object v4, v2

    move-object v2, v3

    iget-object v3, v0, Lqo0;->d:Landroidx/compose/animation/core/Animatable;

    move-object v5, v4

    iget-object v4, v0, Lqo0;->e:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;

    move-object v6, v5

    iget-object v5, v0, Lqo0;->f:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;

    move-object v7, v6

    iget-object v6, v0, Lqo0;->g:Lkotlin/jvm/functions/Function1;

    move-object v8, v7

    iget-object v7, v0, Lqo0;->h:Lkotlinx/coroutines/CoroutineScope;

    move-object v9, v8

    iget v8, v0, Lqo0;->i:F

    move-object v10, v9

    iget-object v9, v0, Lqo0;->j:Lkotlin/jvm/functions/Function0;

    move-object v11, v10

    iget-object v10, v0, Lqo0;->k:Lkotlin/jvm/functions/Function1;

    move-object v12, v11

    iget-object v11, v0, Lqo0;->l:Lkotlin/jvm/functions/Function0;

    move-object v13, v12

    iget-object v12, v0, Lqo0;->m:Ljava/lang/String;

    move-object v14, v13

    iget-object v13, v0, Lqo0;->n:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    iget-object v0, v0, Lqo0;->o:Landroidx/compose/runtime/MutableState;

    move-object/from16 v17, v14

    move-object v14, v0

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v14}, Lcom/vuitton/android/presentation/screen/immersivearticle/podcast/b;-><init>(Landroidx/compose/animation/SharedTransitionScope;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/Animatable;Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;FLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Landroidx/compose/runtime/MutableState;)V

    move-object v12, v0

    const v0, 0x793de1e3

    invoke-static {v0, v12, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v8

    const v10, 0x186000

    const/16 v11, 0x2e

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "expanded_transition"

    const/4 v7, 0x0

    move-object v9, v15

    move-object/from16 v2, v16

    invoke-static/range {v2 .. v11}, Landroidx/compose/animation/AnimatedContentKt;->b(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V

    goto :goto_2

    :cond_4
    move-object v9, v15

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
