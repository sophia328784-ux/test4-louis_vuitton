.class public final synthetic Lcom/vuitton/android/presentation/screen/cart/components/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceTracker;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Landroidx/activity/compose/ManagedActivityResultLauncher;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Landroidx/compose/runtime/MutableState;

.field public final synthetic i:Lkotlin/jvm/functions/Function0;

.field public final synthetic j:Lkotlin/jvm/functions/Function0;

.field public final synthetic k:Lkotlin/jvm/functions/Function3;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Landroidx/compose/runtime/State;

.field public final synthetic n:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(ZLcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceTracker;Landroid/content/Context;Landroidx/activity/compose/ManagedActivityResultLauncher;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/cart/components/b;->b:Z

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/cart/components/b;->c:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/cart/components/b;->d:Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceTracker;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/cart/components/b;->e:Landroid/content/Context;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/cart/components/b;->f:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/cart/components/b;->g:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/cart/components/b;->h:Landroidx/compose/runtime/MutableState;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/cart/components/b;->i:Lkotlin/jvm/functions/Function0;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/cart/components/b;->j:Lkotlin/jvm/functions/Function0;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/cart/components/b;->k:Lkotlin/jvm/functions/Function3;

    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/cart/components/b;->l:Lkotlin/jvm/functions/Function1;

    iput-object p12, p0, Lcom/vuitton/android/presentation/screen/cart/components/b;->m:Landroidx/compose/runtime/State;

    iput-object p13, p0, Lcom/vuitton/android/presentation/screen/cart/components/b;->n:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/PaddingValues;

    move-object/from16 v6, p2

    check-cast v6, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v3, v2, 0x6

    if-nez v3, :cond_1

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v2, v3

    :cond_1
    and-int/lit8 v3, v2, 0x13

    const/16 v4, 0x12

    const/4 v7, 0x1

    if-eq v3, v4, :cond_2

    move v3, v7

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    and-int/2addr v2, v7

    invoke-interface {v6, v2, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_1d

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/cart/components/b;->b:Z

    if-nez v2, :cond_1c

    const v2, 0x39ba6862

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v3, "NativeCartComposable$lambda$33"

    invoke-direct {v2, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/cart/components/b;->h:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/cart/components/b;->m:Landroidx/compose/runtime/State;

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/cart/components/b;->n:Landroidx/compose/runtime/State;

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/cart/components/b;->c:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v9, :cond_4

    if-ne v10, v12, :cond_3

    goto :goto_2

    :cond_3
    move-object v5, v12

    goto :goto_3

    :cond_4
    :goto_2
    new-instance v9, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$11$1$1;

    const-string v14, "removeSample(Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;)V"

    const/4 v15, 0x0

    const/4 v10, 0x1

    move-object v13, v12

    const-class v12, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    move-object/from16 v16, v13

    const-string v13, "removeSample"

    move-object/from16 v5, v16

    invoke-direct/range {v9 .. v15}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v10, v9

    :goto_3
    move-object/from16 v16, v10

    check-cast v16, Lkotlin/reflect/KFunction;

    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_5

    if-ne v10, v5, :cond_6

    :cond_5
    new-instance v9, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$11$2$1;

    const-string v14, "requestShoppingBag()V"

    const/4 v15, 0x0

    const/4 v10, 0x0

    const-class v12, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    const-string v13, "requestShoppingBag"

    invoke-direct/range {v9 .. v15}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v10, v9

    :cond_6
    move-object/from16 v17, v10

    check-cast v17, Lkotlin/reflect/KFunction;

    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_7

    if-ne v10, v5, :cond_8

    :cond_7
    new-instance v9, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$11$3$1;

    const-string v14, "updateQuantity(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;I)V"

    const/4 v15, 0x0

    const/4 v10, 0x2

    const-class v12, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    const-string v13, "updateQuantity"

    invoke-direct/range {v9 .. v15}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v10, v9

    :cond_8
    move-object/from16 v18, v10

    check-cast v18, Lkotlin/reflect/KFunction;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/cart/components/b;->d:Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceTracker;

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v10

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v10, :cond_9

    if-ne v12, v5, :cond_a

    :cond_9
    new-instance v19, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$11$4$1;

    const-string v24, "trackOpenReinsurance(Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;)V"

    const/16 v25, 0x0

    const/16 v20, 0x1

    const-class v22, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceTracker;

    const-string v23, "trackOpenReinsurance"

    move-object/from16 v21, v9

    invoke-direct/range {v19 .. v25}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v12, v19

    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    move-object/from16 v19, v12

    check-cast v19, Lkotlin/reflect/KFunction;

    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_b

    if-ne v10, v5, :cond_c

    :cond_b
    new-instance v9, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$11$5$1;

    const-string v14, "onItemExpanded-Cirf5Rc(Ljava/lang/String;)V"

    const/4 v15, 0x0

    const/4 v10, 0x1

    const-class v12, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    const-string v13, "onItemExpanded"

    invoke-direct/range {v9 .. v15}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v10, v9

    :cond_c
    move-object/from16 v20, v10

    check-cast v20, Lkotlin/reflect/KFunction;

    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_d

    if-ne v10, v5, :cond_e

    :cond_d
    new-instance v9, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$11$6$1;

    const-string v14, "onItemCollapsed-Cirf5Rc(Ljava/lang/String;)V"

    const/4 v15, 0x0

    const/4 v10, 0x1

    const-class v12, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    const-string v13, "onItemCollapsed"

    invoke-direct/range {v9 .. v15}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v10, v9

    :cond_e
    move-object/from16 v21, v10

    check-cast v21, Lkotlin/reflect/KFunction;

    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_f

    if-ne v10, v5, :cond_10

    :cond_f
    new-instance v9, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$11$7$1;

    const-string v14, "removeItemFromCart(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;Z)V"

    const/4 v15, 0x0

    const/4 v10, 0x1

    const-class v12, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    const-string v13, "removeItemFromCart"

    invoke-direct/range {v9 .. v15}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v10, v9

    :cond_10
    move-object/from16 v22, v10

    check-cast v22, Lkotlin/jvm/functions/Function1;

    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_11

    if-ne v10, v5, :cond_12

    :cond_11
    new-instance v9, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$11$8$1;

    const-string v14, "requestAddToWishlist(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;)V"

    const/4 v15, 0x0

    const/4 v10, 0x1

    const-class v12, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    const-string v13, "requestAddToWishlist"

    invoke-direct/range {v9 .. v15}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v10, v9

    :cond_12
    check-cast v10, Lkotlin/reflect/KFunction;

    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/cart/components/b;->e:Landroid/content/Context;

    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v9, v13

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/cart/components/b;->f:Landroidx/activity/compose/ManagedActivityResultLauncher;

    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v9, v14

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v9, :cond_13

    if-ne v14, v5, :cond_14

    :cond_13
    new-instance v14, Ljx;

    const/16 v9, 0x16

    invoke-direct {v14, v11, v12, v13, v9}, Ljx;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v6, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_14
    check-cast v14, Lkotlin/jvm/functions/Function1;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/cart/components/b;->g:Lkotlin/jvm/functions/Function1;

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v12

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v12, v13

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v12, :cond_15

    if-ne v13, v5, :cond_16

    :cond_15
    new-instance v13, Lo8;

    const/16 v12, 0x8

    invoke-direct {v13, v9, v1, v12}, Lo8;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;I)V

    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_16
    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v9, :cond_17

    if-ne v12, v5, :cond_18

    :cond_17
    new-instance v12, Lte0;

    const/4 v9, 0x0

    invoke-direct {v12, v11, v9}, Lte0;-><init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;I)V

    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_18
    check-cast v12, Lkotlin/jvm/functions/Function0;

    move-object/from16 v11, v16

    check-cast v11, Lkotlin/jvm/functions/Function1;

    check-cast v17, Lkotlin/jvm/functions/Function0;

    check-cast v18, Lkotlin/jvm/functions/Function2;

    check-cast v19, Lkotlin/jvm/functions/Function1;

    move-object/from16 v16, v20

    check-cast v16, Lkotlin/jvm/functions/Function1;

    check-cast v21, Lkotlin/jvm/functions/Function1;

    check-cast v10, Lkotlin/jvm/functions/Function1;

    const/16 v23, 0x0

    const/16 v24, 0x0

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/cart/components/b;->i:Lkotlin/jvm/functions/Function0;

    move-object v15, v5

    move-object v5, v8

    move-object v8, v12

    move-object/from16 v12, v17

    move-object/from16 v17, v21

    move-object/from16 v21, v6

    move-object v6, v14

    move-object/from16 v14, v19

    move-object/from16 v19, v10

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/cart/components/b;->j:Lkotlin/jvm/functions/Function0;

    move-object/from16 v20, v15

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/cart/components/b;->k:Lkotlin/jvm/functions/Function3;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/cart/components/b;->l:Lkotlin/jvm/functions/Function1;

    move-object/from16 v25, v3

    move-object v3, v4

    move-object v4, v7

    move-object v7, v13

    move-object/from16 v13, v18

    move-object/from16 v18, v22

    const/16 v22, 0x0

    move-object/from16 v26, v20

    move-object/from16 v20, v0

    move-object/from16 v0, v25

    invoke-static/range {v2 .. v24}, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartFilledScreenKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v6, v21

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

    iget-boolean v2, v2, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->d:Z

    const/4 v9, 0x0

    if-eqz v2, :cond_19

    const v2, 0x39dc689a

    invoke-static {v2, v6, v0}, Lpq0;->j(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    sget-object v2, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v0, v2}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v2, 0x7

    invoke-static {v0, v9, v9, v2}, Lcom/vuitton/android/presentation/extensions/ModifierExtKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x6

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v8}, Lcom/vuitton/android/presentation/compose/components/ProgressViewKt;->a(Landroidx/compose/ui/Modifier;JZLandroidx/compose/runtime/Composer;II)V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_4

    :cond_19
    const v0, 0x39e01a96

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    :goto_4
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v2, 0x7f14067d

    invoke-static {v6, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

    iget-boolean v3, v3, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->d:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_1a

    move-object/from16 v13, v26

    if-ne v5, v13, :cond_1b

    :cond_1a
    new-instance v5, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$11$12$1;

    invoke-direct {v5, v0, v2, v1, v9}, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$11$12$1;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1b
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v3, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_5

    :cond_1c
    const v0, 0x39e65716

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_5

    :cond_1d
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->D()V

    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
