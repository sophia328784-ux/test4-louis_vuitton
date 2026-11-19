.class public final synthetic Lcom/vuitton/android/presentation/screen/cart/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Lkotlin/jvm/functions/Function2;

.field public final synthetic e:Landroidx/navigation/NavHostController;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function2;Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/vuitton/android/presentation/screen/cart/c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/cart/c;->c:Z

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/cart/c;->d:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/cart/c;->e:Landroidx/navigation/NavHostController;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/cart/c;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;Landroidx/navigation/NavHostController;)V
    .locals 1

    .line 15
    const/4 v0, 0x1

    iput v0, p0, Lcom/vuitton/android/presentation/screen/cart/c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/cart/c;->c:Z

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/cart/c;->d:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/cart/c;->f:Ljava/lang/Object;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/cart/c;->e:Landroidx/navigation/NavHostController;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lcom/vuitton/android/presentation/screen/cart/c;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/cart/c;->f:Ljava/lang/Object;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/cart/c;->d:Lkotlin/jvm/functions/Function2;

    iget-boolean v7, v0, Lcom/vuitton/android/presentation/screen/cart/c;->c:Z

    packed-switch v1, :pswitch_data_0

    check-cast v5, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v8, p2

    check-cast v8, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v9, p3

    check-cast v9, Landroidx/compose/runtime/Composer;

    move-object/from16 v10, p4

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->b(Z)Z

    move-result v8

    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v8, v10

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v8, :cond_0

    if-ne v10, v4, :cond_1

    :cond_0
    new-instance v10, Lcom/vuitton/android/presentation/screen/cart/NativeCartNavHostKt$NativeCartNavHost$7$1$2$1$1;

    invoke-direct {v10, v7, v6, v3}, Lcom/vuitton/android/presentation/screen/cart/NativeCartNavHostKt$NativeCartNavHost$7$1$2$1$1;-><init>(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v1, v10}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/cart/c;->e:Landroidx/navigation/NavHostController;

    invoke-interface {v9, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_2

    if-ne v3, v4, :cond_3

    :cond_2
    new-instance v11, Lcom/vuitton/android/presentation/screen/cart/NativeCartNavHostKt$NativeCartNavHost$7$1$2$2$1;

    const-string v16, "popBackStack()Z"

    const/16 v17, 0x8

    const/4 v12, 0x0

    const-class v14, Landroidx/navigation/NavHostController;

    const-string v15, "popBackStack"

    invoke-direct/range {v11 .. v17}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v9, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v3, v11

    :cond_3
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v5, v7, v3, v9, v2}, Lcom/vuitton/android/presentation/screen/cart/components/samples/PerfumeSamplesComposableKt;->a(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    return-object v1

    :pswitch_0
    check-cast v5, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v8, p2

    check-cast v8, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v9, p3

    check-cast v9, Landroidx/compose/runtime/Composer;

    move-object/from16 v10, p4

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->b(Z)Z

    move-result v8

    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v8, v10

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v8, :cond_4

    if-ne v10, v4, :cond_5

    :cond_4
    new-instance v10, Lcom/vuitton/android/presentation/screen/cart/NativeCartNavHostKt$NativeCartNavHost$7$1$4$1$1;

    invoke-direct {v10, v7, v6, v3}, Lcom/vuitton/android/presentation/screen/cart/NativeCartNavHostKt$NativeCartNavHost$7$1$4$1$1;-><init>(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v1, v10}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/cart/c;->e:Landroidx/navigation/NavHostController;

    invoke-interface {v9, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_6

    if-ne v3, v4, :cond_7

    :cond_6
    new-instance v11, Lcom/vuitton/android/presentation/screen/cart/NativeCartNavHostKt$NativeCartNavHost$7$1$4$2$1;

    const-string v16, "popBackStack()Z"

    const/16 v17, 0x8

    const/4 v12, 0x0

    const-class v14, Landroidx/navigation/NavHostController;

    const-string v15, "popBackStack"

    invoke-direct/range {v11 .. v17}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v9, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v3, v11

    :cond_7
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v7, v3, v5, v9, v2}, Lcom/vuitton/android/presentation/screen/cart/components/packaging/PackagingComposableKt;->a(ZLkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;Landroidx/compose/runtime/Composer;I)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
