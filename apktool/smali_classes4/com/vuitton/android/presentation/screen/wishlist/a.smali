.class public final synthetic Lcom/vuitton/android/presentation/screen/wishlist/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Landroidx/navigation/NavHostController;

.field public final synthetic g:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;Ljava/lang/String;IILandroidx/navigation/NavHostController;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/wishlist/a;->b:Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/wishlist/a;->c:Ljava/lang/String;

    iput p3, p0, Lcom/vuitton/android/presentation/screen/wishlist/a;->d:I

    iput p4, p0, Lcom/vuitton/android/presentation/screen/wishlist/a;->e:I

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/wishlist/a;->f:Landroidx/navigation/NavHostController;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/wishlist/a;->g:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    check-cast v13, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->t:Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    and-int/2addr v1, v4

    invoke-interface {v13, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_33

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/wishlist/a;->g:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->h:Z

    const-string v2, "IS_STORE_MODE_CONTEXT"

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/wishlist/a;->b:Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;

    iget v14, v0, Lcom/vuitton/android/presentation/screen/wishlist/a;->d:I

    iget v15, v0, Lcom/vuitton/android/presentation/screen/wishlist/a;->e:I

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v1, :cond_22

    const v1, 0xe94393e

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-virtual {v8}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->H()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/vuitton/foundation/model/domain/extensions/CollectionExtKt;->a(Ljava/util/Collection;)Z

    move-result v1

    const/4 v7, 0x0

    if-eqz v1, :cond_b

    const v1, 0xe94315f

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_1

    if-ne v3, v6, :cond_2

    :cond_1
    new-instance v3, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$onCreate$1$1$2$1$1;

    invoke-direct {v3, v8, v7}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$onCreate$1$1$2$1$1;-><init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v1, v3}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v8}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->I()Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    move-result-object v1

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_3

    if-ne v3, v6, :cond_4

    :cond_3
    move-object v2, v6

    goto :goto_1

    :cond_4
    move-object v2, v6

    goto :goto_2

    :goto_1
    new-instance v6, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$onCreate$1$1$2$2$1;

    const-string v11, "finish()V"

    const/4 v12, 0x0

    const/4 v7, 0x0

    const-class v9, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;

    const-string v10, "finish"

    invoke-direct/range {v6 .. v12}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v3, v6

    :goto_2
    check-cast v3, Lkotlin/reflect/KFunction;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_5

    if-ne v7, v2, :cond_6

    :cond_5
    new-instance v6, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$onCreate$1$1$2$3$1;

    const-string v11, "openSharedProductDetails-C1oCpJM(Ljava/lang/String;Ljava/lang/String;)V"

    const/4 v12, 0x0

    const/4 v7, 0x2

    const-class v9, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;

    const-string v10, "openSharedProductDetails"

    invoke-direct/range {v6 .. v12}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v7, v6

    :cond_6
    check-cast v7, Lkotlin/reflect/KFunction;

    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v13, v14}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v9

    or-int/2addr v6, v9

    invoke-interface {v13, v15}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v9

    or-int/2addr v6, v9

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v6, :cond_7

    if-ne v9, v2, :cond_8

    :cond_7
    new-instance v9, Le71;

    invoke-direct {v9, v8, v14, v15, v4}, Le71;-><init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;III)V

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    move-object v4, v9

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v6, :cond_9

    if-ne v9, v2, :cond_a

    :cond_9
    new-instance v9, Lf71;

    invoke-direct {v9, v8, v5}, Lf71;-><init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;I)V

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    move-object v5, v9

    check-cast v5, Lkotlin/jvm/functions/Function0;

    move-object v2, v3

    move-object v3, v7

    const/4 v7, 0x0

    move-object v6, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/wishlist/a;->c:Ljava/lang/String;

    move-object v0, v6

    move-object v6, v13

    invoke-static/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/wishlist/share/components/SharedWishlistComposableKt;->a(Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_3

    :cond_b
    move-object v1, v6

    const v0, 0xeab8b0b

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_c

    if-ne v6, v1, :cond_d

    :cond_c
    new-instance v6, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$onCreate$1$1$2$6$1;

    invoke-direct {v6, v8, v7}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$onCreate$1$1$2$6$1;-><init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v0, v6}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v8}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->I()Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    move-result-object v0

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_e

    if-ne v4, v1, :cond_f

    :cond_e
    new-instance v6, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$onCreate$1$1$2$7$1;

    const-string v11, "finish()V"

    const/4 v12, 0x0

    const/4 v7, 0x0

    const-class v9, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;

    const-string v10, "finish"

    invoke-direct/range {v6 .. v12}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v4, v6

    :cond_f
    check-cast v4, Lkotlin/reflect/KFunction;

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v3, :cond_10

    if-ne v6, v1, :cond_11

    :cond_10
    new-instance v6, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$onCreate$1$1$2$8$1;

    const-string v11, "startWishlist()V"

    const/4 v12, 0x0

    const/4 v7, 0x0

    const-class v9, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;

    const-string v10, "startWishlist"

    invoke-direct/range {v6 .. v12}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_11
    move-object v3, v6

    check-cast v3, Lkotlin/reflect/KFunction;

    invoke-virtual {v8}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->I()Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    move-result-object v6

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v7, :cond_12

    if-ne v9, v1, :cond_13

    :cond_12
    new-instance v16, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$onCreate$1$1$2$9$1;

    const-string v21, "nativeShareWishlist()V"

    const/16 v22, 0x0

    const/16 v17, 0x0

    const-class v19, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    const-string v20, "nativeShareWishlist"

    move-object/from16 v18, v6

    invoke-direct/range {v16 .. v22}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v9, v16

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_13
    move-object/from16 v16, v9

    check-cast v16, Lkotlin/reflect/KFunction;

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_14

    if-ne v7, v1, :cond_15

    :cond_14
    new-instance v6, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$onCreate$1$1$2$10$1;

    const-string v11, "openProductDetails-C1oCpJM(Ljava/lang/String;Ljava/lang/String;)V"

    const/4 v12, 0x0

    const/4 v7, 0x2

    const-class v9, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;

    const-string v10, "openProductDetails"

    invoke-direct/range {v6 .. v12}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v7, v6

    :cond_15
    check-cast v7, Lkotlin/reflect/KFunction;

    invoke-virtual {v8}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->I()Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    move-result-object v6

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_16

    if-ne v10, v1, :cond_17

    :cond_16
    new-instance v17, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$onCreate$1$1$2$11$1;

    const-string v22, "deleteProduct-1Zqi3gk(Ljava/lang/String;)V"

    const/16 v23, 0x0

    const/16 v18, 0x1

    const-class v20, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    const-string v21, "deleteProduct"

    move-object/from16 v19, v6

    invoke-direct/range {v17 .. v23}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v10, v17

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_17
    check-cast v10, Lkotlin/reflect/KFunction;

    invoke-virtual {v8}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->I()Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    move-result-object v6

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v9, :cond_18

    if-ne v11, v1, :cond_19

    :cond_18
    new-instance v17, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$onCreate$1$1$2$12$1;

    const-string v22, "onItemExpanded-sAjZjhE(Ljava/lang/String;Ljava/lang/String;)V"

    const/16 v23, 0x0

    const/16 v18, 0x2

    const-class v20, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    const-string v21, "onItemExpanded"

    move-object/from16 v19, v6

    invoke-direct/range {v17 .. v23}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v11, v17

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_19
    check-cast v11, Lkotlin/reflect/KFunction;

    invoke-virtual {v8}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->I()Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    move-result-object v6

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v9, :cond_1a

    if-ne v12, v1, :cond_1b

    :cond_1a
    new-instance v17, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$onCreate$1$1$2$13$1;

    const-string v22, "onItemCollapsed-fvG9qJw(Ljava/lang/String;)V"

    const/16 v23, 0x0

    const/16 v18, 0x1

    const-class v20, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    const-string v21, "onItemCollapsed"

    move-object/from16 v19, v6

    invoke-direct/range {v17 .. v23}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v12, v17

    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1b
    check-cast v12, Lkotlin/reflect/KFunction;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    check-cast v16, Lkotlin/jvm/functions/Function0;

    move-object v6, v11

    check-cast v6, Lkotlin/jvm/functions/Function2;

    check-cast v12, Lkotlin/jvm/functions/Function1;

    check-cast v10, Lkotlin/jvm/functions/Function1;

    move-object v9, v7

    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v7, :cond_1c

    if-ne v11, v1, :cond_1d

    :cond_1c
    new-instance v11, Lf71;

    const/4 v7, 0x3

    invoke-direct {v11, v8, v7}, Lf71;-><init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;I)V

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1d
    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v13, v14}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v17

    or-int v7, v7, v17

    invoke-interface {v13, v15}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v17

    or-int v7, v7, v17

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v7, :cond_1e

    if-ne v5, v1, :cond_1f

    :cond_1e
    new-instance v5, Le71;

    const/4 v7, 0x2

    invoke-direct {v5, v8, v14, v15, v7}, Le71;-><init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;III)V

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1f
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v7, :cond_20

    if-ne v14, v1, :cond_21

    :cond_20
    new-instance v14, Lf71;

    const/4 v1, 0x4

    invoke-direct {v14, v8, v1}, Lf71;-><init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;I)V

    invoke-interface {v13, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_21
    check-cast v14, Lkotlin/jvm/functions/Function0;

    move-object v7, v12

    move-object v12, v14

    const/16 v14, 0x180

    const/4 v15, 0x0

    move v1, v2

    const/4 v2, 0x0

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    move-object v8, v10

    move-object v10, v11

    move-object v11, v5

    move-object/from16 v5, v16

    invoke-static/range {v0 .. v15}, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistComposableKt;->a(Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    :goto_3
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_4

    :cond_22
    move-object v1, v6

    const v4, 0xeccc9e0

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-virtual {v8}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->I()Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    move-result-object v4

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_23

    if-ne v6, v1, :cond_24

    :cond_23
    new-instance v6, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$onCreate$1$1$2$17$1;

    const-string v11, "finish()V"

    const/4 v12, 0x0

    const/4 v7, 0x0

    const-class v9, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;

    const-string v10, "finish"

    invoke-direct/range {v6 .. v12}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_24
    check-cast v6, Lkotlin/reflect/KFunction;

    move-object v5, v6

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_25

    if-ne v7, v1, :cond_26

    :cond_25
    new-instance v6, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$onCreate$1$1$2$18$1;

    const-string v11, "startWishlist()V"

    const/4 v12, 0x0

    const/4 v7, 0x0

    const-class v9, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;

    const-string v10, "startWishlist"

    invoke-direct/range {v6 .. v12}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v7, v6

    :cond_26
    check-cast v7, Lkotlin/reflect/KFunction;

    move-object/from16 v16, v7

    check-cast v16, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_27

    if-ne v7, v1, :cond_28

    :cond_27
    new-instance v6, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$onCreate$1$1$2$19$1;

    const-string v11, "openProductDetails-C1oCpJM(Ljava/lang/String;Ljava/lang/String;)V"

    const/4 v12, 0x0

    const/4 v7, 0x2

    const-class v9, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;

    const-string v10, "openProductDetails"

    invoke-direct/range {v6 .. v12}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v7, v6

    :cond_28
    check-cast v7, Lkotlin/reflect/KFunction;

    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v8}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->I()Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    move-result-object v6

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_29

    if-ne v10, v1, :cond_2a

    :cond_29
    new-instance v17, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$onCreate$1$1$2$20$1;

    const-string v22, "deleteProduct-1Zqi3gk(Ljava/lang/String;)V"

    const/16 v23, 0x0

    const/16 v18, 0x1

    const-class v20, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    const-string v21, "deleteProduct"

    move-object/from16 v19, v6

    invoke-direct/range {v17 .. v23}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v10, v17

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2a
    check-cast v10, Lkotlin/reflect/KFunction;

    move-object v6, v10

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_2b

    if-ne v10, v1, :cond_2c

    :cond_2b
    new-instance v10, Lf71;

    const/4 v9, 0x5

    invoke-direct {v10, v8, v9}, Lf71;-><init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;I)V

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2c
    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v8}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->I()Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    move-result-object v9

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v11

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v11, :cond_2d

    if-ne v12, v1, :cond_2e

    :cond_2d
    new-instance v17, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$onCreate$1$1$2$22$1;

    const-string v22, "onShareWishlistClicked(Ljava/lang/String;Ljava/lang/String;)V"

    const/16 v23, 0x0

    const/16 v18, 0x2

    const-class v20, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    const-string v21, "onShareWishlistClicked"

    move-object/from16 v19, v9

    invoke-direct/range {v17 .. v23}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v12, v17

    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2e
    check-cast v12, Lkotlin/reflect/KFunction;

    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v13, v14}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v11

    or-int/2addr v9, v11

    invoke-interface {v13, v15}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v11

    or-int/2addr v9, v11

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v9, :cond_2f

    if-ne v11, v1, :cond_30

    :cond_2f
    new-instance v11, Le71;

    invoke-direct {v11, v8, v14, v15, v3}, Le71;-><init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;III)V

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_30
    move-object v9, v11

    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v11

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v11, :cond_31

    if-ne v14, v1, :cond_32

    :cond_31
    new-instance v14, Lf71;

    invoke-direct {v14, v8, v3}, Lf71;-><init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;I)V

    invoke-interface {v13, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_32
    check-cast v14, Lkotlin/jvm/functions/Function0;

    move-object v8, v12

    const/16 v12, 0xc00

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/wishlist/a;->f:Landroidx/navigation/NavHostController;

    move-object v1, v4

    move-object v3, v5

    move-object v5, v7

    move-object v7, v10

    move-object v11, v13

    move-object v10, v14

    move-object/from16 v4, v16

    invoke-static/range {v0 .. v12}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistNavHostKt;->a(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_4

    :cond_33
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->D()V

    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
