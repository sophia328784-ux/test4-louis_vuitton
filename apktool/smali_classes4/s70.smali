.class public final synthetic Ls70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Lkotlin/Function;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/pager/PagerState;Lcom/vuitton/android/presentation/compose/components/PagerParallaxFactor;ZZLandroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ls70;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls70;->f:Ljava/lang/Object;

    iput-boolean p2, p0, Ls70;->c:Z

    iput-object p3, p0, Ls70;->g:Ljava/lang/Object;

    iput-object p4, p0, Ls70;->h:Ljava/lang/Object;

    iput-boolean p5, p0, Ls70;->d:Z

    iput-boolean p6, p0, Ls70;->e:Z

    iput-object p7, p0, Ls70;->i:Lkotlin/Function;

    return-void
.end method

.method public synthetic constructor <init>(ZZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 21
    const/4 p8, 0x1

    iput p8, p0, Ls70;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ls70;->c:Z

    iput-boolean p2, p0, Ls70;->d:Z

    iput-boolean p3, p0, Ls70;->e:Z

    iput-object p4, p0, Ls70;->f:Ljava/lang/Object;

    iput-object p5, p0, Ls70;->g:Ljava/lang/Object;

    iput-object p6, p0, Ls70;->h:Ljava/lang/Object;

    iput-object p7, p0, Ls70;->i:Lkotlin/Function;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Ls70;->b:I

    const/4 v2, 0x1

    iget-object v3, v0, Ls70;->i:Lkotlin/Function;

    iget-object v4, v0, Ls70;->h:Ljava/lang/Object;

    iget-object v5, v0, Ls70;->g:Ljava/lang/Object;

    iget-object v6, v0, Ls70;->f:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    move-object v10, v6

    check-cast v10, Lkotlin/jvm/functions/Function0;

    move-object v11, v5

    check-cast v11, Lkotlin/jvm/functions/Function0;

    move-object v12, v4

    check-cast v12, Lkotlin/jvm/functions/Function0;

    move-object v13, v3

    check-cast v13, Lkotlin/jvm/functions/Function0;

    move-object/from16 v14, p1

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v15

    iget-boolean v7, v0, Ls70;->c:Z

    iget-boolean v8, v0, Ls70;->d:Z

    iget-boolean v9, v0, Ls70;->e:Z

    invoke-static/range {v7 .. v15}, Lcom/vuitton/android/presentation/screen/authentication/welcome/components/bottomsheet/SignInSelectionBottomSheetContentKt;->a(ZZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v6, Landroidx/compose/ui/Modifier;

    move-object v7, v5

    check-cast v7, Landroidx/compose/foundation/pager/PagerState;

    move-object v9, v4

    check-cast v9, Lcom/vuitton/android/presentation/compose/components/PagerParallaxFactor;

    move-object v12, v3

    check-cast v12, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object/from16 v13, p1

    check-cast v13, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v3, "LVSlideShow_ROuykTE$lambda$0"

    if-eqz v6, :cond_0

    invoke-static {v6, v3}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    :cond_0
    and-int/lit8 v4, v1, 0x3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    and-int/2addr v1, v2

    invoke-interface {v13, v1, v4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-boolean v1, v0, Ls70;->c:Z

    if-eqz v1, :cond_2

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/GradientKt;->b:Landroidx/compose/ui/graphics/LinearGradient;

    invoke-static {v1, v2}, Lcom/vuitton/android/designkit/ui/theme/GradientKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Brush;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-interface {v6, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    const/4 v14, 0x0

    iget-boolean v10, v0, Ls70;->d:Z

    iget-boolean v11, v0, Ls70;->e:Z

    invoke-static/range {v7 .. v14}, Lcom/vuitton/android/presentation/compose/components/LVSlideShowKt;->b(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/compose/components/PagerParallaxFactor;ZZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    goto :goto_2

    :cond_3
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
