.class public final synthetic Lee;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:Z

.field public final synthetic i:Ljava/util/List;

.field public final synthetic j:Lkotlin/jvm/functions/Function0;

.field public final synthetic k:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Lkotlin/jvm/functions/Function0;

.field public final synthetic n:Landroid/content/Context;

.field public final synthetic o:Lkotlin/jvm/functions/Function0;

.field public final synthetic p:Lkotlin/jvm/functions/Function0;

.field public final synthetic q:Lkotlin/jvm/functions/Function0;

.field public final synthetic r:Lkotlin/jvm/functions/Function0;

.field public final synthetic s:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(ZLcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLjava/util/List;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lee;->b:Z

    iput-object p2, p0, Lee;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;

    iput-object p3, p0, Lee;->d:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    iput-object p4, p0, Lee;->e:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lee;->f:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lee;->g:Lkotlin/jvm/functions/Function0;

    iput-boolean p7, p0, Lee;->h:Z

    iput-object p8, p0, Lee;->i:Ljava/util/List;

    iput-object p9, p0, Lee;->j:Lkotlin/jvm/functions/Function0;

    iput-object p10, p0, Lee;->k:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    iput-object p11, p0, Lee;->l:Lkotlin/jvm/functions/Function1;

    iput-object p12, p0, Lee;->m:Lkotlin/jvm/functions/Function0;

    iput-object p13, p0, Lee;->n:Landroid/content/Context;

    iput-object p14, p0, Lee;->o:Lkotlin/jvm/functions/Function0;

    iput-object p15, p0, Lee;->p:Lkotlin/jvm/functions/Function0;

    move-object/from16 p1, p16

    iput-object p1, p0, Lee;->q:Lkotlin/jvm/functions/Function0;

    move-object/from16 p1, p17

    iput-object p1, p0, Lee;->r:Lkotlin/jvm/functions/Function0;

    move-object/from16 p1, p18

    iput-object p1, p0, Lee;->s:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/2addr v1, v4

    invoke-interface {v7, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-boolean v1, v0, Lee;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v3, "BeautyVtoBottomBar$lambda$0$1"

    invoke-direct {v2, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v4, :cond_1

    new-instance v3, Lu5;

    const/16 v4, 0x1a

    invoke-direct {v3, v4}, Lu5;-><init>(I)V

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v3, Lkotlin/jvm/functions/Function1;

    new-instance v8, Lge;

    iget-object v9, v0, Lee;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;

    iget-object v10, v0, Lee;->d:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    iget-object v11, v0, Lee;->e:Lkotlin/jvm/functions/Function0;

    iget-object v12, v0, Lee;->f:Lkotlin/jvm/functions/Function1;

    iget-object v13, v0, Lee;->g:Lkotlin/jvm/functions/Function0;

    iget-boolean v14, v0, Lee;->h:Z

    iget-object v15, v0, Lee;->i:Ljava/util/List;

    iget-object v4, v0, Lee;->j:Lkotlin/jvm/functions/Function0;

    iget-object v5, v0, Lee;->k:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    iget-object v6, v0, Lee;->l:Lkotlin/jvm/functions/Function1;

    move-object/from16 p1, v1

    iget-object v1, v0, Lee;->m:Lkotlin/jvm/functions/Function0;

    move-object/from16 v19, v1

    iget-object v1, v0, Lee;->n:Landroid/content/Context;

    move-object/from16 v20, v1

    iget-object v1, v0, Lee;->o:Lkotlin/jvm/functions/Function0;

    move-object/from16 v21, v1

    iget-object v1, v0, Lee;->p:Lkotlin/jvm/functions/Function0;

    move-object/from16 v22, v1

    iget-object v1, v0, Lee;->q:Lkotlin/jvm/functions/Function0;

    move-object/from16 v23, v1

    iget-object v1, v0, Lee;->r:Lkotlin/jvm/functions/Function0;

    iget-object v0, v0, Lee;->s:Lkotlin/jvm/functions/Function0;

    move-object/from16 v25, v0

    move-object/from16 v24, v1

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    invoke-direct/range {v8 .. v25}, Lge;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLjava/util/List;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    const v0, 0x2f141ad7

    invoke-static {v0, v8, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v6

    const v8, 0x186180

    const/16 v9, 0x28

    move-object v1, v2

    move-object v2, v3

    const/4 v3, 0x0

    const-string v4, "VtoBottomBar switch with LookBottomBar"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v9}, Landroidx/compose/animation/AnimatedContentKt;->b(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V

    goto :goto_1

    :cond_2
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
