.class public final Lcom/vuitton/android/presentation/screen/orders/components/list/OrderListScreenKt$OrderList$lambda$7$0$$inlined$items$default$4;
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

.field public final synthetic c:Z

.field public final synthetic d:Ljava/util/Set;

.field public final synthetic e:Lkotlin/jvm/functions/Function3;


# direct methods
.method public constructor <init>(Ljava/util/List;ZLjava/util/Set;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/components/list/OrderListScreenKt$OrderList$lambda$7$0$$inlined$items$default$4;->b:Ljava/util/List;

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/orders/components/list/OrderListScreenKt$OrderList$lambda$7$0$$inlined$items$default$4;->c:Z

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/orders/components/list/OrderListScreenKt$OrderList$lambda$7$0$$inlined$items$default$4;->d:Ljava/util/Set;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/orders/components/list/OrderListScreenKt$OrderList$lambda$7$0$$inlined$items$default$4;->e:Lkotlin/jvm/functions/Function3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

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

    if-eq p3, p4, :cond_4

    move p3, v0

    goto :goto_3

    :cond_4
    const/4 p3, 0x0

    :goto_3
    and-int/2addr p1, v0

    invoke-interface {v4, p1, p3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/components/list/OrderListScreenKt$OrderList$lambda$7$0$$inlined$items$default$4;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;

    const p2, 0x7fddb2e6

    invoke-interface {v4, p2}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/orders/components/list/OrderListScreenKt$OrderList$lambda$7$0$$inlined$items$default$4;->d:Ljava/util/Set;

    iget-object p3, p1, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->e:Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 v2, p2, 0x1

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/orders/components/list/OrderListScreenKt$OrderList$lambda$7$0$$inlined$items$default$4;->e:Lkotlin/jvm/functions/Function3;

    invoke-interface {v4, p2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p3

    invoke-interface {v4, p1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p4

    or-int/2addr p3, p4

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p4

    if-nez p3, :cond_5

    sget-object p3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne p4, p3, :cond_6

    :cond_5
    new-instance p4, Lcom/vuitton/android/presentation/screen/orders/components/list/OrderListScreenKt$OrderList$3$1$2$1$1;

    invoke-direct {p4, p2, p1}, Lcom/vuitton/android/presentation/screen/orders/components/list/OrderListScreenKt$OrderList$3$1$2$1$1;-><init>(Lkotlin/jvm/functions/Function3;Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;)V

    invoke-interface {v4, p4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    move-object v3, p4

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x0

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/orders/components/list/OrderListScreenKt$OrderList$lambda$7$0$$inlined$items$default$4;->c:Z

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/orders/components/list/OrderListScreenKt;->b(Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;ZZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_4

    :cond_7
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->D()V

    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
