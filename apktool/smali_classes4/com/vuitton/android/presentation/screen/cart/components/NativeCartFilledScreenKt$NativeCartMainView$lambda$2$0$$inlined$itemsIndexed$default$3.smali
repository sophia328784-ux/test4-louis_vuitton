.class public final Lcom/vuitton/android/presentation/screen/cart/components/NativeCartFilledScreenKt$NativeCartMainView$lambda$2$0$$inlined$itemsIndexed$default$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/foundation/lazy/LazyItemScope;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:F

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Lkotlin/jvm/functions/Function1;

.field public final synthetic i:Lkotlin/jvm/functions/Function2;

.field public final synthetic j:Lkotlin/jvm/functions/Function1;

.field public final synthetic k:Lkotlin/jvm/functions/Function3;


# direct methods
.method public constructor <init>(Ljava/util/List;FLcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartFilledScreenKt$NativeCartMainView$lambda$2$0$$inlined$itemsIndexed$default$3;->b:Ljava/util/List;

    iput p2, p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartFilledScreenKt$NativeCartMainView$lambda$2$0$$inlined$itemsIndexed$default$3;->c:F

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartFilledScreenKt$NativeCartMainView$lambda$2$0$$inlined$itemsIndexed$default$3;->d:Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartFilledScreenKt$NativeCartMainView$lambda$2$0$$inlined$itemsIndexed$default$3;->e:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartFilledScreenKt$NativeCartMainView$lambda$2$0$$inlined$itemsIndexed$default$3;->f:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartFilledScreenKt$NativeCartMainView$lambda$2$0$$inlined$itemsIndexed$default$3;->g:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartFilledScreenKt$NativeCartMainView$lambda$2$0$$inlined$itemsIndexed$default$3;->h:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartFilledScreenKt$NativeCartMainView$lambda$2$0$$inlined$itemsIndexed$default$3;->i:Lkotlin/jvm/functions/Function2;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartFilledScreenKt$NativeCartMainView$lambda$2$0$$inlined$itemsIndexed$default$3;->j:Lkotlin/jvm/functions/Function1;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartFilledScreenKt$NativeCartMainView$lambda$2$0$$inlined$itemsIndexed$default$3;->k:Lkotlin/jvm/functions/Function3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScope;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move-object/from16 v14, p3

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p4

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    and-int/lit8 v4, v3, 0x6

    const/4 v5, 0x2

    if-nez v4, :cond_1

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    or-int/2addr v1, v3

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    and-int/lit8 v3, v3, 0x30

    const/16 v4, 0x20

    if-nez v3, :cond_3

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v1, v3

    :cond_3
    and-int/lit16 v3, v1, 0x93

    const/16 v6, 0x92

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v3, v6, :cond_4

    move v3, v8

    goto :goto_3

    :cond_4
    move v3, v7

    :goto_3
    and-int/lit8 v6, v1, 0x1

    invoke-interface {v14, v6, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_c

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartFilledScreenKt$NativeCartMainView$lambda$2$0$$inlined$itemsIndexed$default$3;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    const v6, -0x3145411a

    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->L(I)V

    iget v6, v0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartFilledScreenKt$NativeCartMainView$lambda$2$0$$inlined$itemsIndexed$default$3;->c:F

    const/4 v9, 0x0

    sget-object v10, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v10, v6, v9, v5}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v5

    if-eqz v2, :cond_5

    move v6, v8

    goto :goto_4

    :cond_5
    move v6, v7

    :goto_4
    sget-object v9, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartFilledScreenKt$NativeCartMainView$2$1$3$1;->b:Lcom/vuitton/android/presentation/screen/cart/components/NativeCartFilledScreenKt$NativeCartMainView$2$1$3$1;

    invoke-static {v5, v6, v9, v14, v7}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v5

    and-int/lit8 v6, v1, 0x70

    xor-int/lit8 v6, v6, 0x30

    if-le v6, v4, :cond_6

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v6

    if-nez v6, :cond_8

    :cond_6
    and-int/lit8 v1, v1, 0x30

    if-ne v1, v4, :cond_7

    goto :goto_5

    :cond_7
    move v8, v7

    :cond_8
    :goto_5
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v8, :cond_9

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v4, :cond_a

    :cond_9
    new-instance v1, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartFilledScreenKt$NativeCartMainView$2$1$3$2$1;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartFilledScreenKt$NativeCartMainView$2$1$3$2$1;-><init>(I)V

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v5, v7, v1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v2, v3, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->j:Ljava/lang/String;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartFilledScreenKt$NativeCartMainView$lambda$2$0$$inlined$itemsIndexed$default$3;->d:Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

    iget-object v5, v4, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->c:Ljava/lang/String;

    if-nez v5, :cond_b

    const/4 v5, 0x0

    :cond_b
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    iget-object v2, v4, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->i:Lcom/vuitton/android/presentation/screen/cart/models/NativeCartFeatureFlags;

    iget-boolean v6, v2, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartFeatureFlags;->b:Z

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartFilledScreenKt$NativeCartMainView$lambda$2$0$$inlined$itemsIndexed$default$3;->k:Lkotlin/jvm/functions/Function3;

    const/4 v15, 0x0

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartFilledScreenKt$NativeCartMainView$lambda$2$0$$inlined$itemsIndexed$default$3;->e:Lkotlin/jvm/functions/Function1;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartFilledScreenKt$NativeCartMainView$lambda$2$0$$inlined$itemsIndexed$default$3;->f:Lkotlin/jvm/functions/Function1;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartFilledScreenKt$NativeCartMainView$lambda$2$0$$inlined$itemsIndexed$default$3;->g:Lkotlin/jvm/functions/Function1;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartFilledScreenKt$NativeCartMainView$lambda$2$0$$inlined$itemsIndexed$default$3;->h:Lkotlin/jvm/functions/Function1;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartFilledScreenKt$NativeCartMainView$lambda$2$0$$inlined$itemsIndexed$default$3;->i:Lkotlin/jvm/functions/Function2;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartFilledScreenKt$NativeCartMainView$lambda$2$0$$inlined$itemsIndexed$default$3;->j:Lkotlin/jvm/functions/Function1;

    move-object v4, v3

    move-object v3, v1

    invoke-static/range {v3 .. v15}, Lcom/vuitton/android/presentation/screen/cart/components/sections/NativeCartItemKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;ZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_6

    :cond_c
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->D()V

    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
