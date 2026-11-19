.class public final Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$lambda$2$0$$inlined$itemsIndexed$default$3;
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

.field public final synthetic c:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic g:Landroidx/compose/foundation/lazy/LazyListState;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/lazy/LazyListState;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$lambda$2$0$$inlined$itemsIndexed$default$3;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$lambda$2$0$$inlined$itemsIndexed$default$3;->c:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$lambda$2$0$$inlined$itemsIndexed$default$3;->d:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$lambda$2$0$$inlined$itemsIndexed$default$3;->e:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$lambda$2$0$$inlined$itemsIndexed$default$3;->f:Lkotlinx/coroutines/CoroutineScope;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$lambda$2$0$$inlined$itemsIndexed$default$3;->g:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScope;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v7

    check-cast p3, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p4, p2, 0x6

    if-nez p4, :cond_1

    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    or-int/2addr p1, p2

    goto :goto_1

    :cond_1
    move p1, p2

    :goto_1
    and-int/lit8 p2, p2, 0x30

    const/16 p4, 0x20

    if-nez p2, :cond_3

    invoke-interface {p3, v7}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result p2

    if-eqz p2, :cond_2

    move p2, p4

    goto :goto_2

    :cond_2
    const/16 p2, 0x10

    :goto_2
    or-int/2addr p1, p2

    :cond_3
    and-int/lit16 p2, p1, 0x93

    const/16 v0, 0x92

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_4

    move p2, v2

    goto :goto_3

    :cond_4
    move p2, v1

    :goto_3
    and-int/lit8 v0, p1, 0x1

    invoke-interface {p3, v0, p2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_a

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$lambda$2$0$$inlined$itemsIndexed$default$3;->b:Ljava/util/List;

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;

    const v0, -0x26c90b4d

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$lambda$2$0$$inlined$itemsIndexed$default$3;->c:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    invoke-interface {p3, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$lambda$2$0$$inlined$itemsIndexed$default$3;->d:Lkotlin/jvm/functions/Function1;

    invoke-interface {p3, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$lambda$2$0$$inlined$itemsIndexed$default$3;->e:Lkotlin/jvm/functions/Function1;

    invoke-interface {p3, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$lambda$2$0$$inlined$itemsIndexed$default$3;->f:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {p3, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$lambda$2$0$$inlined$itemsIndexed$default$3;->g:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-interface {p3, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    and-int/lit8 v8, p1, 0x70

    xor-int/lit8 v3, v8, 0x30

    if-le v3, p4, :cond_5

    invoke-interface {p3, v7}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    and-int/lit8 p1, p1, 0x30

    if-ne p1, p4, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    or-int p1, v0, v1

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p4

    if-nez p1, :cond_9

    sget-object p1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne p4, p1, :cond_8

    goto :goto_4

    :cond_8
    move-object v1, p2

    goto :goto_5

    :cond_9
    :goto_4
    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$3$1$1$1$1;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$lambda$2$0$$inlined$itemsIndexed$default$3;->f:Lkotlinx/coroutines/CoroutineScope;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$lambda$2$0$$inlined$itemsIndexed$default$3;->g:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$lambda$2$0$$inlined$itemsIndexed$default$3;->c:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$lambda$2$0$$inlined$itemsIndexed$default$3;->d:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$lambda$2$0$$inlined$itemsIndexed$default$3;->e:Lkotlin/jvm/functions/Function1;

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$3$1$1$1$1;-><init>(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/lazy/LazyListState;I)V

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object p4, v0

    :goto_5
    check-cast p4, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v7, p4, p3, v8}, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt;->a(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_6

    :cond_a
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->D()V

    :goto_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
