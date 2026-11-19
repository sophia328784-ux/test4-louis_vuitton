.class public final synthetic Lcom/vuitton/android/presentation/screen/wishlist/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

.field public final synthetic c:Z

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Landroidx/navigation/NavHostController;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Lkotlin/jvm/functions/Function2;

.field public final synthetic i:Lkotlin/jvm/functions/Function0;

.field public final synthetic j:Lkotlin/jvm/functions/Function1;

.field public final synthetic k:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/wishlist/b;->b:Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/wishlist/b;->c:Z

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/wishlist/b;->d:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/wishlist/b;->e:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/wishlist/b;->f:Landroidx/navigation/NavHostController;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/wishlist/b;->g:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/wishlist/b;->h:Lkotlin/jvm/functions/Function2;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/wishlist/b;->i:Lkotlin/jvm/functions/Function0;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/wishlist/b;->j:Lkotlin/jvm/functions/Function1;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/wishlist/b;->k:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

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

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/wishlist/b;->b:Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v2, :cond_0

    if-ne v4, v11, :cond_1

    :cond_0
    new-instance v4, Lcom/vuitton/android/presentation/screen/wishlist/WishlistNavHostKt$WishlistNavHost$4$1$1$1$1;

    const/4 v2, 0x0

    invoke-direct {v4, v6, v2}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistNavHostKt$WishlistNavHost$4$1$1$1$1;-><init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v1, v4}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_2

    if-ne v4, v11, :cond_3

    :cond_2
    new-instance v4, Lcom/vuitton/android/presentation/screen/wishlist/WishlistNavHostKt$WishlistNavHost$4$1$1$2$1;

    const-string v9, "onItemExpanded-sAjZjhE(Ljava/lang/String;Ljava/lang/String;)V"

    const/4 v10, 0x0

    const/4 v5, 0x2

    const-class v7, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    const-string v8, "onItemExpanded"

    invoke-direct/range {v4 .. v10}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    move-object v2, v4

    check-cast v2, Lkotlin/reflect/KFunction;

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_4

    if-ne v5, v11, :cond_5

    :cond_4
    new-instance v4, Lcom/vuitton/android/presentation/screen/wishlist/WishlistNavHostKt$WishlistNavHost$4$1$1$3$1;

    const-string v9, "onItemCollapsed-fvG9qJw(Ljava/lang/String;)V"

    const/4 v10, 0x0

    const/4 v5, 0x1

    const-class v7, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    const-string v8, "onItemCollapsed"

    invoke-direct/range {v4 .. v10}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v5, v4

    :cond_5
    check-cast v5, Lkotlin/reflect/KFunction;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/wishlist/b;->f:Landroidx/navigation/NavHostController;

    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_6

    if-ne v8, v11, :cond_7

    :cond_6
    new-instance v8, Lyj;

    const/16 v7, 0x13

    invoke-direct {v8, v4, v7}, Lyj;-><init>(Landroidx/navigation/NavHostController;I)V

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v8, Lkotlin/jvm/functions/Function0;

    move-object v9, v2

    check-cast v9, Lkotlin/jvm/functions/Function2;

    move-object v10, v5

    check-cast v10, Lkotlin/jvm/functions/Function1;

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-boolean v4, v0, Lcom/vuitton/android/presentation/screen/wishlist/b;->c:Z

    const/4 v5, 0x0

    move-object/from16 v16, v3

    move-object v3, v6

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/wishlist/b;->d:Lkotlin/jvm/functions/Function0;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/wishlist/b;->e:Lkotlin/jvm/functions/Function0;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/wishlist/b;->g:Lkotlin/jvm/functions/Function1;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/wishlist/b;->h:Lkotlin/jvm/functions/Function2;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/wishlist/b;->i:Lkotlin/jvm/functions/Function0;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/wishlist/b;->j:Lkotlin/jvm/functions/Function1;

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/wishlist/b;->k:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v3 .. v18}, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistComposableKt;->a(Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    return-object v1
.end method
