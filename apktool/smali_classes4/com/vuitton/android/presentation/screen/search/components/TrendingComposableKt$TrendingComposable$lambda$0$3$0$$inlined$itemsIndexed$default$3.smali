.class public final Lcom/vuitton/android/presentation/screen/search/components/TrendingComposableKt$TrendingComposable$lambda$0$3$0$$inlined$itemsIndexed$default$3;
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

.field public final synthetic c:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/search/components/TrendingComposableKt$TrendingComposable$lambda$0$3$0$$inlined$itemsIndexed$default$3;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/search/components/TrendingComposableKt$TrendingComposable$lambda$0$3$0$$inlined$itemsIndexed$default$3;->c:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScope;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move-object/from16 v3, p3

    check-cast v3, Landroidx/compose/runtime/Composer;

    move-object/from16 v4, p4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    and-int/lit8 v5, v4, 0x6

    if-nez v5, :cond_1

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v4

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    and-int/lit8 v4, v4, 0x30

    const/16 v5, 0x20

    if-nez v4, :cond_3

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    :cond_3
    and-int/lit16 v4, v1, 0x93

    const/16 v6, 0x92

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v4, v6, :cond_4

    move v4, v7

    goto :goto_3

    :cond_4
    move v4, v8

    :goto_3
    and-int/lit8 v6, v1, 0x1

    invoke-interface {v3, v6, v4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_c

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/search/components/TrendingComposableKt$TrendingComposable$lambda$0$3$0$$inlined$itemsIndexed$default$3;->b:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/search/models/TrendingItemUiModel;

    const v6, 0x7029c603

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/search/components/TrendingComposableKt$TrendingComposable$lambda$0$3$0$$inlined$itemsIndexed$default$3;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v6, v9

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v6, :cond_5

    if-ne v9, v10, :cond_6

    :cond_5
    new-instance v9, Lcom/vuitton/android/presentation/screen/search/components/TrendingComposableKt$TrendingComposable$1$4$1$1$1$1;

    invoke-direct {v9, v0, v4}, Lcom/vuitton/android/presentation/screen/search/components/TrendingComposableKt$TrendingComposable$1$4$1$1$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/search/models/TrendingItemUiModel;)V

    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    move-object v15, v9

    check-cast v15, Lkotlin/jvm/functions/Function0;

    const/16 v16, 0xf

    sget-object v11, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Landroidx/compose/foundation/ClickableKt;->d(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    and-int/lit8 v6, v1, 0x70

    xor-int/lit8 v6, v6, 0x30

    if-le v6, v5, :cond_7

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v6

    if-nez v6, :cond_9

    :cond_7
    and-int/lit8 v1, v1, 0x30

    if-ne v1, v5, :cond_8

    goto :goto_4

    :cond_8
    move v7, v8

    :cond_9
    :goto_4
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v7, :cond_a

    if-ne v1, v10, :cond_b

    :cond_a
    new-instance v1, Lcom/vuitton/android/presentation/screen/search/components/TrendingComposableKt$TrendingComposable$1$4$1$1$2$1;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/search/components/TrendingComposableKt$TrendingComposable$1$4$1$1$2$1;-><init>(I)V

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v8, v1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const-string v1, "search_TrendingItem_view"

    invoke-static {v0, v1}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0, v4, v3, v8, v8}, Lcom/vuitton/android/presentation/screen/search/components/TrendingComposableKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/search/models/TrendingItemUiModel;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_5

    :cond_c
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->D()V

    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
