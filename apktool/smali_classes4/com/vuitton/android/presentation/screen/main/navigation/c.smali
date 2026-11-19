.class public final synthetic Lcom/vuitton/android/presentation/screen/main/navigation/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Lkotlin/jvm/functions/Function3;

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Landroid/content/Context;Lkotlin/jvm/functions/Function3;IILkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/main/navigation/c;->b:Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/main/navigation/c;->c:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/main/navigation/c;->d:Landroid/content/Context;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/main/navigation/c;->e:Lkotlin/jvm/functions/Function3;

    iput p5, p0, Lcom/vuitton/android/presentation/screen/main/navigation/c;->f:I

    iput p6, p0, Lcom/vuitton/android/presentation/screen/main/navigation/c;->g:I

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/main/navigation/c;->h:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    check-cast v13, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/2addr v1, v3

    invoke-interface {v13, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/main/navigation/c;->b:Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;

    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v1, :cond_1

    if-ne v2, v3, :cond_2

    :cond_1
    new-instance v5, Lcom/vuitton/android/presentation/screen/main/navigation/WishlistNavigationKt$wishlistComposable$3$3$1$1;

    const-string v10, "nativeShareWishlist()V"

    const/4 v11, 0x0

    const/4 v6, 0x0

    const-class v8, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;

    const-string v9, "nativeShareWishlist"

    invoke-direct/range {v5 .. v11}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v2, v5

    :cond_2
    check-cast v2, Lkotlin/reflect/KFunction;

    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_3

    if-ne v5, v3, :cond_4

    :cond_3
    new-instance v5, Lcom/vuitton/android/presentation/screen/main/navigation/WishlistNavigationKt$wishlistComposable$3$3$2$1;

    const-string v10, "deleteProduct-1Zqi3gk(Ljava/lang/String;)V"

    const/4 v11, 0x0

    const/4 v6, 0x1

    const-class v8, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;

    const-string v9, "deleteProduct"

    invoke-direct/range {v5 .. v11}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    move-object v1, v5

    check-cast v1, Lkotlin/reflect/KFunction;

    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_5

    if-ne v6, v3, :cond_6

    :cond_5
    new-instance v5, Lcom/vuitton/android/presentation/screen/main/navigation/WishlistNavigationKt$wishlistComposable$3$3$3$1;

    const-string v10, "onItemExpanded-sAjZjhE(Ljava/lang/String;Ljava/lang/String;)V"

    const/4 v11, 0x0

    const/4 v6, 0x2

    const-class v8, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;

    const-string v9, "onItemExpanded"

    invoke-direct/range {v5 .. v11}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v6, v5

    :cond_6
    move-object v12, v6

    check-cast v12, Lkotlin/reflect/KFunction;

    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_7

    if-ne v6, v3, :cond_8

    :cond_7
    new-instance v5, Lcom/vuitton/android/presentation/screen/main/navigation/WishlistNavigationKt$wishlistComposable$3$3$4$1;

    const-string v10, "onItemCollapsed-fvG9qJw(Ljava/lang/String;)V"

    const/4 v11, 0x0

    const/4 v6, 0x1

    const-class v8, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;

    const-string v9, "onItemCollapsed"

    invoke-direct/range {v5 .. v11}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v6, v5

    :cond_8
    check-cast v6, Lkotlin/reflect/KFunction;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/main/navigation/c;->c:Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_9

    if-ne v9, v3, :cond_a

    :cond_9
    new-instance v9, Ldk;

    invoke-direct {v9, v5, v4}, Ldk;-><init>(Lcom/vuitton/android/presentation/screen/main/MainNavigationState;I)V

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    move-object v4, v9

    check-cast v4, Lkotlin/jvm/functions/Function0;

    move-object v5, v2

    check-cast v5, Lkotlin/jvm/functions/Function0;

    check-cast v12, Lkotlin/jvm/functions/Function2;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    move-object v8, v1

    check-cast v8, Lkotlin/jvm/functions/Function1;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/main/navigation/c;->d:Landroid/content/Context;

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v2, :cond_b

    if-ne v9, v3, :cond_c

    :cond_b
    new-instance v9, Lcom/vuitton/android/presentation/screen/main/navigation/WishlistNavigationKt$wishlistComposable$3$3$6$1;

    invoke-direct {v9, v1}, Lcom/vuitton/android/presentation/screen/main/navigation/WishlistNavigationKt$wishlistComposable$3$3$6$1;-><init>(Landroid/content/Context;)V

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_d

    new-instance v1, Lr61;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lr61;-><init>(I)V

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_d
    move-object v10, v1

    check-cast v10, Lkotlin/jvm/functions/Function0;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/main/navigation/c;->e:Lkotlin/jvm/functions/Function3;

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    iget v11, v0, Lcom/vuitton/android/presentation/screen/main/navigation/c;->f:I

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v14

    or-int/2addr v2, v14

    iget v14, v0, Lcom/vuitton/android/presentation/screen/main/navigation/c;->g:I

    invoke-interface {v13, v14}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v15

    or-int/2addr v2, v15

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v2, :cond_e

    if-ne v15, v3, :cond_f

    :cond_e
    new-instance v15, Ltj;

    const/16 v2, 0xe

    invoke-direct {v15, v1, v11, v14, v2}, Ltj;-><init>(Lkotlin/jvm/functions/Function3;III)V

    invoke-interface {v13, v15}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_f
    move-object v11, v15

    check-cast v11, Lkotlin/jvm/functions/Function1;

    const/16 v14, 0xdb0

    const/4 v15, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/main/navigation/c;->h:Lkotlin/jvm/functions/Function0;

    move-object/from16 v16, v12

    move-object v12, v0

    move-object v0, v7

    move-object v7, v6

    move-object/from16 v6, v16

    invoke-static/range {v0 .. v15}, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistComposableKt;->a(Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    goto :goto_1

    :cond_10
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
