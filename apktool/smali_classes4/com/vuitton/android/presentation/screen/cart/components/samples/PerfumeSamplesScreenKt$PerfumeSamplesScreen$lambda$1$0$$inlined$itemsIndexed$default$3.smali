.class public final Lcom/vuitton/android/presentation/screen/cart/components/samples/PerfumeSamplesScreenKt$PerfumeSamplesScreen$lambda$1$0$$inlined$itemsIndexed$default$3;
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

.field public final synthetic c:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/components/samples/PerfumeSamplesScreenKt$PerfumeSamplesScreen$lambda$1$0$$inlined$itemsIndexed$default$3;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/cart/components/samples/PerfumeSamplesScreenKt$PerfumeSamplesScreen$lambda$1$0$$inlined$itemsIndexed$default$3;->c:Lkotlin/jvm/functions/Function2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScope;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    and-int/lit8 v0, p4, 0x6

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    move p1, v1

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

    const/16 v2, 0x92

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p4, v2, :cond_4

    move p4, v4

    goto :goto_3

    :cond_4
    move p4, v3

    :goto_3
    and-int/lit8 v2, p1, 0x1

    invoke-interface {p3, v2, p4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p4

    if-eqz p4, :cond_c

    sget-object p4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object p4, p0, Lcom/vuitton/android/presentation/screen/cart/components/samples/PerfumeSamplesScreenKt$PerfumeSamplesScreen$lambda$1$0$$inlined$itemsIndexed$default$3;->b:Ljava/util/List;

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;

    const v2, -0x3f4ec3de

    invoke-interface {p3, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {p3}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v5, 0x0

    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v6, v2, v5, v1}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    and-int/lit8 v2, p1, 0x70

    xor-int/lit8 v2, v2, 0x30

    if-le v2, v0, :cond_5

    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    and-int/lit8 p1, p1, 0x30

    if-ne p1, v0, :cond_6

    goto :goto_4

    :cond_6
    move v4, v3

    :cond_7
    :goto_4
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v4, :cond_8

    if-ne p1, v0, :cond_9

    :cond_8
    new-instance p1, Lcom/vuitton/android/presentation/screen/cart/components/samples/PerfumeSamplesScreenKt$PerfumeSamplesScreen$2$1$1$1$1;

    invoke-direct {p1, p2}, Lcom/vuitton/android/presentation/screen/cart/components/samples/PerfumeSamplesScreenKt$PerfumeSamplesScreen$2$1$1$1$1;-><init>(I)V

    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v3, p1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/components/samples/PerfumeSamplesScreenKt$PerfumeSamplesScreen$lambda$1$0$$inlined$itemsIndexed$default$3;->c:Lkotlin/jvm/functions/Function2;

    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p2

    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr p2, v1

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez p2, :cond_a

    if-ne v1, v0, :cond_b

    :cond_a
    new-instance v1, Lcom/vuitton/android/presentation/screen/cart/components/samples/PerfumeSamplesScreenKt$PerfumeSamplesScreen$2$1$1$2$1;

    invoke-direct {v1, p0, p4}, Lcom/vuitton/android/presentation/screen/cart/components/samples/PerfumeSamplesScreenKt$PerfumeSamplesScreen$2$1$1$2$1;-><init>(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;)V

    invoke-interface {p3, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, p4, v1, p3, v3}, Lcom/vuitton/android/presentation/screen/cart/components/samples/PerfumeSamplesScreenKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_5

    :cond_c
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->D()V

    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
