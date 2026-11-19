.class public final Lcom/vuitton/android/presentation/common/editorial/components/grids/GridSKt$GridS_f8_ukHw$lambda$3$0$1$0$$inlined$itemsIndexed$default$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;",
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

.field public final synthetic d:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Ljava/util/List;FLkotlin/jvm/functions/Function2;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/common/editorial/components/grids/GridSKt$GridS_f8_ukHw$lambda$3$0$1$0$$inlined$itemsIndexed$default$4;->b:Ljava/util/List;

    iput p2, p0, Lcom/vuitton/android/presentation/common/editorial/components/grids/GridSKt$GridS_f8_ukHw$lambda$3$0$1$0$$inlined$itemsIndexed$default$4;->c:F

    iput-object p3, p0, Lcom/vuitton/android/presentation/common/editorial/components/grids/GridSKt$GridS_f8_ukHw$lambda$3$0$1$0$$inlined$itemsIndexed$default$4;->d:Lkotlin/jvm/functions/Function2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    and-int/lit8 v0, p4, 0x6

    if-nez v0, :cond_1

    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    or-int/2addr p1, p4

    goto :goto_1

    :cond_1
    move p1, p4

    :goto_1
    and-int/lit8 p4, p4, 0x30

    const/16 v0, 0x20

    if-nez p4, :cond_3

    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result p4

    if-eqz p4, :cond_2

    move p4, v0

    goto :goto_2

    :cond_2
    const/16 p4, 0x10

    :goto_2
    or-int/2addr p1, p4

    :cond_3
    and-int/lit16 p4, p1, 0x93

    const/16 v1, 0x92

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p4, v1, :cond_4

    move p4, v3

    goto :goto_3

    :cond_4
    move p4, v2

    :goto_3
    and-int/lit8 v1, p1, 0x1

    invoke-interface {p3, v1, p4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p4

    if-eqz p4, :cond_b

    sget-object p4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object p4, p0, Lcom/vuitton/android/presentation/common/editorial/components/grids/GridSKt$GridS_f8_ukHw$lambda$3$0$1$0$$inlined$itemsIndexed$default$4;->b:Ljava/util/List;

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    const v1, -0x241922dd

    invoke-interface {p3, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    iget v4, p0, Lcom/vuitton/android/presentation/common/editorial/components/grids/GridSKt$GridS_f8_ukHw$lambda$3$0$1$0$$inlined$itemsIndexed$default$4;->c:F

    invoke-static {v1, v4}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v5, :cond_5

    sget-object v4, Lcom/vuitton/android/presentation/common/editorial/components/grids/GridSKt$GridS$2$1$2$1$1$1$1;->b:Lcom/vuitton/android/presentation/common/editorial/components/grids/GridSKt$GridS$2$1$2$1$1$1$1;

    invoke-interface {p3, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object p0, p0, Lcom/vuitton/android/presentation/common/editorial/components/grids/GridSKt$GridS_f8_ukHw$lambda$3$0$1$0$$inlined$itemsIndexed$default$4;->d:Lkotlin/jvm/functions/Function2;

    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v4, v6

    and-int/lit8 v6, p1, 0x70

    xor-int/lit8 v6, v6, 0x30

    if-le v6, v0, :cond_6

    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v6

    if-nez v6, :cond_8

    :cond_6
    and-int/lit8 p1, p1, 0x30

    if-ne p1, v0, :cond_7

    goto :goto_4

    :cond_7
    move v3, v2

    :cond_8
    :goto_4
    or-int p1, v4, v3

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez p1, :cond_9

    if-ne v0, v5, :cond_a

    :cond_9
    new-instance v0, Lcom/vuitton/android/presentation/common/editorial/components/grids/GridSKt$GridS$2$1$2$1$1$2$1;

    invoke-direct {v0, p0, p4, p2}, Lcom/vuitton/android/presentation/common/editorial/components/grids/GridSKt$GridS$2$1$2$1$1$2$1;-><init>(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;I)V

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, p4, v0, p3, v2}, Lcom/vuitton/android/presentation/common/editorial/components/grids/GridSItemKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_5

    :cond_b
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->D()V

    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
