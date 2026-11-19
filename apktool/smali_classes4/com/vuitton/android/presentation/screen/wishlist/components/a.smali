.class public final synthetic Lcom/vuitton/android/presentation/screen/wishlist/components/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/vuitton/android/presentation/screen/wishlist/components/a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vuitton/android/presentation/screen/wishlist/components/a;->b:I

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v5, p2

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v6, Lcom/vuitton/android/presentation/screen/wishlist/components/ComposableSingletons$WishlistScreenKt;->a:Lcom/vuitton/android/presentation/screen/wishlist/components/ComposableSingletons$WishlistScreenKt;

    and-int/lit8 v6, v5, 0x3

    if-eq v6, v3, :cond_0

    move v2, v4

    :cond_0
    and-int/lit8 v3, v5, 0x1

    invoke-interface {v0, v3, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1

    new-instance v2, Landroidx/compose/material3/SnackbarHostState;

    invoke-direct {v2}, Landroidx/compose/material3/SnackbarHostState;-><init>()V

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    move-object v6, v2

    check-cast v6, Landroidx/compose/material3/SnackbarHostState;

    new-instance v7, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;

    sget-object v8, Lcom/vuitton/android/presentation/screen/options/dispatch/models/InAppDispatchMockKt;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const/16 v18, 0x3f4

    const/16 v19, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v7 .. v19}, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;Ljava/lang/String;ZLkotlin/Result;ZLjava/lang/String;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {}, Lcom/vuitton/android/presentation/extensions/WindowInsetsExtKt;->a()Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v10

    sget-object v8, Lcom/vuitton/android/presentation/screen/wishlist/components/ComposableSingletons$WishlistScreenKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_2

    new-instance v2, Loo;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, Loo;-><init>(I)V

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    move-object v11, v2

    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    sget-object v2, Lcom/vuitton/android/presentation/screen/wishlist/components/ComposableSingletons$WishlistScreenKt$lambda$-371452118$1$3$1;->b:Lcom/vuitton/android/presentation/screen/wishlist/components/ComposableSingletons$WishlistScreenKt$lambda$-371452118$1$3$1;

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    move-object v12, v2

    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    sget-object v2, Lcom/vuitton/android/presentation/screen/wishlist/components/ComposableSingletons$WishlistScreenKt$lambda$-371452118$1$4$1;->b:Lcom/vuitton/android/presentation/screen/wishlist/components/ComposableSingletons$WishlistScreenKt$lambda$-371452118$1$4$1;

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    move-object v13, v2

    check-cast v13, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    sget-object v2, Lcom/vuitton/android/presentation/screen/wishlist/components/ComposableSingletons$WishlistScreenKt$lambda$-371452118$1$5$1;->b:Lcom/vuitton/android/presentation/screen/wishlist/components/ComposableSingletons$WishlistScreenKt$lambda$-371452118$1$5$1;

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    move-object v14, v2

    check-cast v14, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    sget-object v2, Lcom/vuitton/android/presentation/screen/wishlist/components/ComposableSingletons$WishlistScreenKt$lambda$-371452118$1$6$1;->b:Lcom/vuitton/android/presentation/screen/wishlist/components/ComposableSingletons$WishlistScreenKt$lambda$-371452118$1$6$1;

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    move-object v15, v2

    check-cast v15, Lkotlin/jvm/functions/Function1;

    const v17, 0x36d86c30

    const/16 v18, 0x6

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v16, v0

    invoke-static/range {v5 .. v18}, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistScreenKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_0

    :cond_7
    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->D()V

    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object/from16 v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v5, Lcom/vuitton/android/presentation/screen/wishlist/components/ComposableSingletons$WishlistProductItemKt;->a:Lcom/vuitton/android/presentation/screen/wishlist/components/ComposableSingletons$WishlistProductItemKt;

    and-int/lit8 v5, v0, 0x3

    if-eq v5, v3, :cond_8

    move v2, v4

    :cond_8
    and-int/2addr v0, v4

    invoke-interface {v9, v0, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v2, "lambda_590637934$lambda$0"

    invoke-direct {v0, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistMocksKt;->a:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistItemUiModel;

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_9

    new-instance v3, Loo;

    const/16 v4, 0x11

    invoke-direct {v3, v4}, Loo;-><init>(I)V

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    move-object v5, v3

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_a

    new-instance v3, Loo;

    const/16 v4, 0x12

    invoke-direct {v3, v4}, Loo;-><init>(I)V

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    move-object v6, v3

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_b

    sget-object v3, Lcom/vuitton/android/presentation/screen/wishlist/components/ComposableSingletons$WishlistProductItemKt$lambda$590637934$1$3$1;->b:Lcom/vuitton/android/presentation/screen/wishlist/components/ComposableSingletons$WishlistProductItemKt$lambda$590637934$1$3$1;

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    move-object v7, v3

    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_c

    sget-object v3, Lcom/vuitton/android/presentation/screen/wishlist/components/ComposableSingletons$WishlistProductItemKt$lambda$590637934$1$4$1;->b:Lcom/vuitton/android/presentation/screen/wishlist/components/ComposableSingletons$WishlistProductItemKt$lambda$590637934$1$4$1;

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    move-object v8, v3

    check-cast v8, Lkotlin/jvm/functions/Function1;

    const v10, 0xdb6d86

    const/4 v11, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v11}, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistProductItemKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistItemUiModel;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_1

    :cond_d
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
