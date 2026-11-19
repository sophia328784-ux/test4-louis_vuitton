.class public final synthetic Lcom/vuitton/android/presentation/screen/cart/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/a;->b:Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;->w:Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity$Companion;

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    and-int/2addr v0, v3

    invoke-interface {v9, v0, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v9}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v0

    invoke-static {v0, v9}, Landroidx/compose/foundation/layout/WindowInsetsKt;->e(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    move-result v1

    invoke-static {v1}, Lcom/vuitton/android/presentation/extensions/ResourcesExtKt;->b(F)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v9}, Landroidx/compose/runtime/SnapshotStateKt;->l(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-interface {v0}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    move-result v0

    invoke-static {v0}, Lcom/vuitton/android/presentation/extensions/ResourcesExtKt;->b(F)F

    move-result v0

    float-to-int v0, v0

    move-object/from16 v2, p0

    iget-object v12, v2, Lcom/vuitton/android/presentation/screen/cart/a;->b:Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;

    iget-object v2, v12, Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;->s:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v2}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    iget-object v5, v12, Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;->t:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v5}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;

    iget-object v6, v12, Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;->v:Lkotlin/Lazy;

    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;

    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v7, :cond_1

    if-ne v8, v10, :cond_2

    :cond_1
    move-object v7, v10

    goto :goto_1

    :cond_2
    move-object v7, v10

    goto :goto_2

    :goto_1
    new-instance v10, Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity$onCreate$1$1$1$1$1;

    const-string v15, "openCatalog()V"

    const/16 v16, 0x0

    const/4 v11, 0x0

    const-class v13, Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;

    const-string v14, "openCatalog"

    invoke-direct/range {v10 .. v16}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v8, v10

    :goto_2
    check-cast v8, Lkotlin/reflect/KFunction;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v10

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v10, :cond_3

    if-ne v11, v7, :cond_4

    :cond_3
    new-instance v10, Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity$onCreate$1$1$1$2$1;

    const-string v15, "setSystemColors-MHaHrOc(ZZ)V"

    const/16 v16, 0x0

    const/4 v11, 0x2

    const-class v13, Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;

    const-string v14, "setSystemColors"

    invoke-direct/range {v10 .. v16}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v11, v10

    :cond_4
    check-cast v11, Lkotlin/reflect/KFunction;

    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v10

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v10, v13

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v13

    or-int/2addr v10, v13

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v10, :cond_5

    if-ne v13, v7, :cond_6

    :cond_5
    new-instance v13, Lzd;

    const/4 v10, 0x7

    invoke-direct {v13, v12, v0, v1, v10}, Lzd;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    invoke-interface {v9, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v13, Lkotlin/jvm/functions/Function1;

    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_7

    if-ne v1, v7, :cond_8

    :cond_7
    new-instance v1, Loe0;

    invoke-direct {v1, v12, v3}, Loe0;-><init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;I)V

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v0, :cond_9

    if-ne v10, v7, :cond_a

    :cond_9
    new-instance v10, Lqe0;

    invoke-direct {v10, v12, v4}, Lqe0;-><init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;I)V

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_b

    if-ne v4, v7, :cond_c

    :cond_b
    new-instance v4, Lqe0;

    invoke-direct {v4, v12, v3}, Lqe0;-><init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;I)V

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v4, Lkotlin/jvm/functions/Function1;

    move-object v7, v10

    const/4 v10, 0x0

    move-object v0, v2

    move-object v2, v6

    move-object v3, v8

    move-object v6, v1

    move-object v8, v4

    move-object v1, v5

    move-object v4, v11

    move-object v5, v13

    invoke-static/range {v0 .. v10}, Lcom/vuitton/android/presentation/screen/cart/NativeCartNavHostKt;->a(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_3

    :cond_d
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->D()V

    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
