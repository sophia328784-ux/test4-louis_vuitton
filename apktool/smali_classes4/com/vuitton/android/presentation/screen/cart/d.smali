.class public final synthetic Lcom/vuitton/android/presentation/screen/cart/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lkotlin/jvm/functions/Function2;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;

.field public final synthetic g:Landroidx/navigation/NavHostController;

.field public final synthetic h:Landroid/content/Context;

.field public final synthetic i:Lkotlin/jvm/functions/Function0;

.field public final synthetic j:Lkotlin/jvm/functions/Function1;

.field public final synthetic k:Lkotlin/jvm/functions/Function0;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Landroidx/navigation/NavHostController;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/cart/d;->b:Z

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/cart/d;->c:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/cart/d;->d:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/cart/d;->e:Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/cart/d;->f:Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/cart/d;->g:Landroidx/navigation/NavHostController;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/cart/d;->h:Landroid/content/Context;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/cart/d;->i:Lkotlin/jvm/functions/Function0;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/cart/d;->j:Lkotlin/jvm/functions/Function1;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/cart/d;->k:Lkotlin/jvm/functions/Function0;

    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/cart/d;->l:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v15, p3

    check-cast v15, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/cart/d;->b:Z

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->b(Z)Z

    move-result v3

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/cart/d;->c:Lkotlin/jvm/functions/Function2;

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v3, :cond_0

    if-ne v5, v6, :cond_1

    :cond_0
    new-instance v5, Lcom/vuitton/android/presentation/screen/cart/NativeCartNavHostKt$NativeCartNavHost$7$1$1$1$1;

    const/4 v3, 0x0

    invoke-direct {v5, v2, v4, v3}, Lcom/vuitton/android/presentation/screen/cart/NativeCartNavHostKt$NativeCartNavHost$7$1$1$1$1;-><init>(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v1, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/d;->g:Landroidx/navigation/NavHostController;

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/cart/d;->h:Landroid/content/Context;

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    const/4 v7, 0x0

    if-nez v3, :cond_2

    if-ne v5, v6, :cond_3

    :cond_2
    new-instance v5, Lgf0;

    invoke-direct {v5, v2, v4, v7}, Lgf0;-><init>(Landroidx/navigation/NavHostController;Landroid/content/Context;I)V

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast v5, Lkotlin/jvm/functions/Function0;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/cart/d;->d:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/cart/d;->i:Lkotlin/jvm/functions/Function0;

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v8, v10

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v8, :cond_4

    if-ne v10, v6, :cond_5

    :cond_4
    new-instance v10, Lhf0;

    invoke-direct {v10, v3, v9, v7}, Lhf0;-><init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    move-object v7, v10

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v8, v9

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_6

    if-ne v9, v6, :cond_7

    :cond_6
    new-instance v9, Lk60;

    const/16 v8, 0x13

    invoke-direct {v9, v3, v2, v8}, Lk60;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    move-object v8, v9

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_8

    if-ne v10, v6, :cond_9

    :cond_8
    new-instance v10, Lyj;

    const/4 v9, 0x5

    invoke-direct {v10, v2, v9}, Lyj;-><init>(Landroidx/navigation/NavHostController;I)V

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    move-object v9, v10

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v10

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v10, v11

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v10, :cond_a

    if-ne v11, v6, :cond_b

    :cond_a
    new-instance v11, Lt30;

    const/16 v10, 0x12

    invoke-direct {v11, v3, v2, v10}, Lt30;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    move-object v10, v11

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v2, :cond_c

    if-ne v11, v6, :cond_d

    :cond_c
    new-instance v11, Lef;

    const/16 v2, 0x9

    invoke-direct {v11, v4, v2}, Lef;-><init>(Landroid/content/Context;I)V

    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/cart/d;->k:Lkotlin/jvm/functions/Function0;

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v2, v12

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v2, :cond_e

    if-ne v12, v6, :cond_f

    :cond_e
    new-instance v12, Lhf0;

    const/4 v2, 0x1

    invoke-direct {v12, v3, v4, v2}, Lhf0;-><init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_f
    move-object v13, v12

    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/cart/d;->l:Lkotlin/jvm/functions/Function1;

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v2, v12

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v2, :cond_10

    if-ne v12, v6, :cond_11

    :cond_10
    new-instance v12, Lk60;

    const/16 v2, 0x14

    invoke-direct {v12, v3, v4, v2}, Lk60;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_11
    move-object v14, v12

    check-cast v14, Lkotlin/jvm/functions/Function1;

    const/16 v16, 0x0

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/cart/d;->e:Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;

    move-object v6, v5

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/cart/d;->f:Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/cart/d;->j:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v3 .. v16}, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt;->b(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    return-object v1
.end method
