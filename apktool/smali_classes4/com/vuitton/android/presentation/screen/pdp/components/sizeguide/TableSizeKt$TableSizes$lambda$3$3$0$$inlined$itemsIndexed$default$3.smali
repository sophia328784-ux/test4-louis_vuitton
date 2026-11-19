.class public final Lcom/vuitton/android/presentation/screen/pdp/components/sizeguide/TableSizeKt$TableSizes$lambda$3$3$0$$inlined$itemsIndexed$default$3;
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

.field public final synthetic c:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/components/sizeguide/TableSizeKt$TableSizes$lambda$3$3$0$$inlined$itemsIndexed$default$3;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/components/sizeguide/TableSizeKt$TableSizes$lambda$3$3$0$$inlined$itemsIndexed$default$3;->c:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScope;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    move-object v6, p3

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p3

    and-int/lit8 p4, p3, 0x6

    if-nez p4, :cond_1

    invoke-interface {v6, p1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

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

    const/16 p4, 0x20

    if-nez p3, :cond_3

    invoke-interface {v6, p2}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result p3

    if-eqz p3, :cond_2

    move p3, p4

    goto :goto_2

    :cond_2
    const/16 p3, 0x10

    :goto_2
    or-int/2addr p1, p3

    :cond_3
    and-int/lit16 p3, p1, 0x93

    const/16 v0, 0x92

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p3, v0, :cond_4

    move p3, v2

    goto :goto_3

    :cond_4
    move p3, v1

    :goto_3
    and-int/lit8 v0, p1, 0x1

    invoke-interface {v6, v0, p3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p3

    if-eqz p3, :cond_c

    sget-object p3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/components/sizeguide/TableSizeKt$TableSizes$lambda$3$3$0$$inlined$itemsIndexed$default$3;->b:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Ljava/util/List;

    const p3, 0x6816858a

    invoke-interface {v6, p3}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object p3, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    sget-object p3, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    const/high16 v0, 0x42dc0000    # 110.0f

    invoke-static {p3, v0}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move p3, v1

    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/components/sizeguide/TableSizeKt$TableSizes$lambda$3$3$0$$inlined$itemsIndexed$default$3;->c:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    if-eqz v3, :cond_5

    iget-object v3, v3, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Pair;

    if-eqz v5, :cond_6

    iget-object v5, v5, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-ne v5, p2, :cond_6

    move v5, v2

    goto :goto_5

    :cond_6
    move v5, v2

    move v2, p3

    :goto_5
    and-int/lit8 v7, p1, 0x70

    xor-int/lit8 v7, v7, 0x30

    if-le v7, p4, :cond_7

    invoke-interface {v6, p2}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v7

    if-nez v7, :cond_8

    :cond_7
    and-int/lit8 p1, p1, 0x30

    if-ne p1, p4, :cond_9

    :cond_8
    move p3, v5

    :cond_9
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p1

    if-nez p3, :cond_a

    sget-object p3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne p1, p3, :cond_b

    :cond_a
    new-instance p1, Lcom/vuitton/android/presentation/screen/pdp/components/sizeguide/TableSizeKt$TableSizes$1$1$1$2$1$1;

    invoke-direct {p1, p2, p0}, Lcom/vuitton/android/presentation/screen/pdp/components/sizeguide/TableSizeKt$TableSizes$1$1$1$2$1$1;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-interface {v6, p1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/16 v7, 0x36

    invoke-static/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/pdp/components/sizeguide/TableSizeColumnKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;ZLjava/lang/Integer;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_6

    :cond_c
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->D()V

    :goto_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
