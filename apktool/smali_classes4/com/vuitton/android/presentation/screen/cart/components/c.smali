.class public final synthetic Lcom/vuitton/android/presentation/screen/cart/components/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Landroidx/compose/runtime/MutableState;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/cart/CommercialNotification;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Landroidx/compose/runtime/MutableState;

.field public final synthetic h:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/screen/cart/CommercialNotification;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/components/c;->b:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/cart/components/c;->c:Lcom/vuitton/android/presentation/screen/cart/CommercialNotification;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/cart/components/c;->d:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/cart/components/c;->e:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/cart/components/c;->f:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/cart/components/c;->g:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/cart/components/c;->h:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/ColumnScope;

    move-object/from16 v9, p2

    check-cast v9, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v1, v2, 0x11

    const/16 v3, 0x10

    const/4 v4, 0x1

    if-eq v1, v3, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v2, v4

    invoke-interface {v9, v2, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/cart/components/c;->b:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/NativeCartBottomSheetScreen;

    if-nez v2, :cond_1

    const v0, -0x1afacc0a

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_1

    :cond_1
    const v1, -0x1afacc09

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/cart/components/c;->g:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/cart/components/c;->h:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/cart/components/c;->e:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_2

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v5, v1, :cond_3

    :cond_2
    new-instance v10, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$13$1$1$1;

    const-string v15, "getCartFull()V"

    const/16 v16, 0x0

    const/4 v11, 0x0

    const-class v13, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    const-string v14, "getCartFull"

    invoke-direct/range {v10 .. v16}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v5, v10

    :cond_3
    check-cast v5, Lkotlin/reflect/KFunction;

    move-object v7, v5

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v10, 0x0

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/cart/components/c;->c:Lcom/vuitton/android/presentation/screen/cart/CommercialNotification;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/cart/components/c;->d:Lkotlin/jvm/functions/Function0;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/cart/components/c;->f:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v2 .. v10}, Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/NativeCartBottomSheetsKt;->c(Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/NativeCartBottomSheetScreen;Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;Lcom/vuitton/android/presentation/screen/cart/CommercialNotification;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_1

    :cond_4
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
