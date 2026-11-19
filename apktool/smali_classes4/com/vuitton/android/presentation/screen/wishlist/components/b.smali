.class public final synthetic Lcom/vuitton/android/presentation/screen/wishlist/components/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Z

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:Lkotlin/jvm/functions/Function0;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(ZLcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    iput p9, p0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->b:I

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->c:Z

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->d:Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->e:Lkotlin/jvm/functions/Function0;

    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->f:Z

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->g:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->h:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->i:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->j:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->b:I

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->j:Landroidx/compose/runtime/MutableState;

    packed-switch v1, :pswitch_data_0

    move-object/from16 v15, p1

    check-cast v15, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v7, v1, 0x3

    if-eq v7, v4, :cond_0

    move v3, v5

    :cond_0
    and-int/2addr v1, v5

    invoke-interface {v15, v1, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->d:Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_1

    if-ne v3, v2, :cond_2

    :cond_1
    new-instance v7, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistComposableKt$WishlistComposable$7$1$1;

    const-string v12, "isStoreModeStillValid()Z"

    const/4 v13, 0x0

    const/4 v8, 0x0

    const-class v10, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    const-string v11, "isStoreModeStillValid"

    invoke-direct/range {v7 .. v13}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v3, v7

    :cond_2
    check-cast v3, Lkotlin/reflect/KFunction;

    move-object v8, v3

    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;

    iget-object v10, v1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->j:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    const/16 v16, 0x0

    iget-boolean v7, v0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->c:Z

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->e:Lkotlin/jvm/functions/Function0;

    iget-boolean v11, v0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->f:Z

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->g:Lkotlin/jvm/functions/Function0;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->h:Lkotlin/jvm/functions/Function0;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->i:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v7 .. v16}, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistComposableKt;->b(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_0

    :cond_3
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->D()V

    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object/from16 v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v7, v1, 0x3

    if-eq v7, v4, :cond_4

    move v3, v5

    :cond_4
    and-int/2addr v1, v5

    invoke-interface {v9, v1, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->d:Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_5

    if-ne v3, v2, :cond_6

    :cond_5
    new-instance v10, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistComposableKt$WishlistComposable$5$1$1;

    const-string v15, "isStoreModeStillValid()Z"

    const/16 v16, 0x0

    const/4 v11, 0x0

    const-class v13, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    const-string v14, "isStoreModeStillValid"

    invoke-direct/range {v10 .. v16}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v3, v10

    :cond_6
    check-cast v3, Lkotlin/reflect/KFunction;

    move-object v2, v3

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->j:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    const/4 v10, 0x0

    iget-boolean v1, v0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->c:Z

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->e:Lkotlin/jvm/functions/Function0;

    iget-boolean v5, v0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->f:Z

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->g:Lkotlin/jvm/functions/Function0;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->h:Lkotlin/jvm/functions/Function0;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->i:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v1 .. v10}, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistComposableKt;->b(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_7
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    move-object/from16 v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v7, v1, 0x3

    if-eq v7, v4, :cond_8

    move v3, v5

    :cond_8
    and-int/2addr v1, v5

    invoke-interface {v9, v1, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->d:Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_9

    if-ne v3, v2, :cond_a

    :cond_9
    new-instance v10, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistComposableKt$WishlistComposable$3$1$1;

    const-string v15, "isStoreModeStillValid()Z"

    const/16 v16, 0x0

    const/4 v11, 0x0

    const-class v13, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    const-string v14, "isStoreModeStillValid"

    invoke-direct/range {v10 .. v16}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v3, v10

    :cond_a
    check-cast v3, Lkotlin/reflect/KFunction;

    move-object v2, v3

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->j:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    const/4 v10, 0x0

    iget-boolean v1, v0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->c:Z

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->e:Lkotlin/jvm/functions/Function0;

    iget-boolean v5, v0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->f:Z

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->g:Lkotlin/jvm/functions/Function0;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->h:Lkotlin/jvm/functions/Function0;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->i:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v1 .. v10}, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistComposableKt;->b(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_2

    :cond_b
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    move-object/from16 v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v7, v1, 0x3

    if-eq v7, v4, :cond_c

    move v3, v5

    :cond_c
    and-int/2addr v1, v5

    invoke-interface {v9, v1, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->d:Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_d

    if-ne v3, v2, :cond_e

    :cond_d
    new-instance v10, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistComposableKt$WishlistComposable$2$1$1;

    const-string v15, "isStoreModeStillValid()Z"

    const/16 v16, 0x0

    const/4 v11, 0x0

    const-class v13, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    const-string v14, "isStoreModeStillValid"

    invoke-direct/range {v10 .. v16}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v3, v10

    :cond_e
    check-cast v3, Lkotlin/reflect/KFunction;

    move-object v2, v3

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->j:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    const/4 v10, 0x0

    iget-boolean v1, v0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->c:Z

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->e:Lkotlin/jvm/functions/Function0;

    iget-boolean v5, v0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->f:Z

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->g:Lkotlin/jvm/functions/Function0;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->h:Lkotlin/jvm/functions/Function0;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/wishlist/components/b;->i:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v1 .. v10}, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistComposableKt;->b(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_3

    :cond_f
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->D()V

    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
