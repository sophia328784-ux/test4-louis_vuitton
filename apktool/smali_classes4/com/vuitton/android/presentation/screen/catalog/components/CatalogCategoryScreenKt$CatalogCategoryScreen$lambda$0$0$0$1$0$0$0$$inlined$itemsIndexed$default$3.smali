.class public final Lcom/vuitton/android/presentation/screen/catalog/components/CatalogCategoryScreenKt$CatalogCategoryScreen$lambda$0$0$0$1$0$0$0$$inlined$itemsIndexed$default$3;
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

.field public final synthetic c:I

.field public final synthetic d:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic e:I

.field public final synthetic f:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Ljava/util/List;ILandroidx/compose/foundation/lazy/LazyListState;ILkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogCategoryScreenKt$CatalogCategoryScreen$lambda$0$0$0$1$0$0$0$$inlined$itemsIndexed$default$3;->b:Ljava/util/List;

    iput p2, p0, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogCategoryScreenKt$CatalogCategoryScreen$lambda$0$0$0$1$0$0$0$$inlined$itemsIndexed$default$3;->c:I

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogCategoryScreenKt$CatalogCategoryScreen$lambda$0$0$0$1$0$0$0$$inlined$itemsIndexed$default$3;->d:Landroidx/compose/foundation/lazy/LazyListState;

    iput p4, p0, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogCategoryScreenKt$CatalogCategoryScreen$lambda$0$0$0$1$0$0$0$$inlined$itemsIndexed$default$3;->e:I

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogCategoryScreenKt$CatalogCategoryScreen$lambda$0$0$0$1$0$0$0$$inlined$itemsIndexed$default$3;->f:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScope;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    move-object v4, p3

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p3

    and-int/lit8 p4, p3, 0x6

    if-nez p4, :cond_1

    invoke-interface {v4, p1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    or-int/2addr p1, p3

    goto :goto_1

    :cond_1
    move p1, p3

    :goto_1
    and-int/lit8 p3, p3, 0x30

    if-nez p3, :cond_3

    invoke-interface {v4, p2}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result p3

    if-eqz p3, :cond_2

    const/16 p3, 0x20

    goto :goto_2

    :cond_2
    const/16 p3, 0x10

    :goto_2
    or-int/2addr p1, p3

    :cond_3
    and-int/lit16 p3, p1, 0x93

    const/16 p4, 0x92

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p3, p4, :cond_4

    move p3, v0

    goto :goto_3

    :cond_4
    move p3, v1

    :goto_3
    and-int/2addr p1, v0

    invoke-interface {v4, p1, p3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogCategoryScreenKt$CatalogCategoryScreen$lambda$0$0$0$1$0$0$0$$inlined$itemsIndexed$default$3;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;

    const p3, 0x1d1c0b8f

    invoke-interface {v4, p3}, Landroidx/compose/runtime/Composer;->L(I)V

    iget p3, p0, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogCategoryScreenKt$CatalogCategoryScreen$lambda$0$0$0$1$0$0$0$$inlined$itemsIndexed$default$3;->c:I

    add-int/2addr p3, p2

    iget-object p4, p0, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogCategoryScreenKt$CatalogCategoryScreen$lambda$0$0$0$1$0$0$0$$inlined$itemsIndexed$default$3;->d:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-interface {v4, p4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v4, p3}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v0, :cond_5

    if-ne v2, v3, :cond_6

    :cond_5
    new-instance v0, Lvj;

    invoke-direct {v0, p4, p3, v1}, Lvj;-><init>(Landroidx/compose/foundation/lazy/LazyListState;II)V

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->e(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v2

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v2, Landroidx/compose/runtime/State;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iget p3, p0, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogCategoryScreenKt$CatalogCategoryScreen$lambda$0$0$0$1$0$0$0$$inlined$itemsIndexed$default$3;->e:I

    if-nez p3, :cond_7

    if-nez p2, :cond_7

    const p2, -0x7516d3b

    invoke-interface {v4, p2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object p2

    iget p2, p2, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->a:F

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->F()V

    :goto_4
    move v7, p2

    goto :goto_5

    :cond_7
    if-nez p2, :cond_8

    const p2, -0x75160d9

    invoke-interface {v4, p2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object p2

    iget p2, p2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->h:F

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_4

    :cond_8
    const p2, -0x75155f9

    invoke-interface {v4, p2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object p2

    iget p2, p2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_4

    :goto_5
    const/4 v9, 0x0

    const/16 v10, 0xd

    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogCategoryScreenKt$CatalogCategoryScreen$lambda$0$0$0$1$0$0$0$$inlined$itemsIndexed$default$3;->f:Lkotlin/jvm/functions/Function1;

    invoke-interface {v4, p0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p2

    invoke-interface {v4, p1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p3

    or-int/2addr p2, p3

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p3

    if-nez p2, :cond_9

    if-ne p3, v3, :cond_a

    :cond_9
    new-instance p3, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogCategoryScreenKt$CatalogCategoryScreen$1$1$1$2$1$1$1$1$1$1;

    invoke-direct {p3, p0, p1}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogCategoryScreenKt$CatalogCategoryScreen$1$1$1$2$1$1$1$1$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;)V

    invoke-interface {v4, p3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    move-object v3, p3

    check-cast v3, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogCategoryScreenKt;->c(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;FLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_6

    :cond_b
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->D()V

    :goto_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
