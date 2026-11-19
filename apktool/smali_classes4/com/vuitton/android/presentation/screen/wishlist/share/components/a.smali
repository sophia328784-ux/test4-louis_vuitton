.class public final synthetic Lcom/vuitton/android/presentation/screen/wishlist/share/components/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/wishlist/share/components/ComposableSingletons$SharedWishlistScreenKt;->a:Lcom/vuitton/android/presentation/screen/wishlist/share/components/ComposableSingletons$SharedWishlistScreenKt;

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v0, v3

    invoke-interface {v4, v0, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;

    sget-object v6, Lcom/vuitton/android/presentation/screen/options/dispatch/models/InAppDispatchMockKt;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const/16 v16, 0x3fe

    const/16 v17, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v17}, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;Ljava/lang/String;ZLkotlin/Result;ZLjava/lang/String;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/vuitton/android/presentation/screen/wishlist/share/components/ComposableSingletons$SharedWishlistScreenKt$lambda$643921462$1$1$1;->b:Lcom/vuitton/android/presentation/screen/wishlist/share/components/ComposableSingletons$SharedWishlistScreenKt$lambda$643921462$1$1$1;

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/16 v5, 0xd80

    const/4 v0, 0x0

    const-string v2, "18/01/2024"

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/wishlist/share/components/SharedWishlistScreenKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
