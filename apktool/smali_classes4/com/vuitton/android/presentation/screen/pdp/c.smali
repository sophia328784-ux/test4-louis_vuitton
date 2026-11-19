.class public final synthetic Lcom/vuitton/android/presentation/screen/pdp/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;

.field public final synthetic c:Landroidx/navigation3/runtime/NavBackStack;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/navigation3/runtime/NavBackStack;Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/c;->b:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/c;->c:Landroidx/navigation3/runtime/NavBackStack;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/pdp/c;->d:Lkotlin/jvm/functions/Function0;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/c;->e:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/PdpRoutes$ContextualSize;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 p1, p3, 0x11

    const/16 v0, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    and-int/2addr p3, v2

    invoke-interface {p2, p3, p1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/c;->b:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;

    invoke-interface {p1}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p3

    const/4 v0, 0x7

    const/4 v2, 0x0

    invoke-static {p3, v2, p2, v1, v0}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object p3

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/c;->c:Landroidx/navigation3/runtime/NavBackStack;

    invoke-interface {p2, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/c;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {p2, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v0, :cond_1

    if-ne v5, v6, :cond_2

    :cond_1
    new-instance v5, Lcom/vuitton/android/presentation/screen/pdp/PdpNavDisplayKt$PdpNavDisplay$1$2$onSizeSelectionHandled$1$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/c;->e:Landroidx/compose/runtime/MutableState;

    invoke-direct {v5, p0, v3, p1, v4}, Lcom/vuitton/android/presentation/screen/pdp/PdpNavDisplayKt$PdpNavDisplay$1$2$onSizeSelectionHandled$1$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/navigation3/runtime/NavBackStack;Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {p2, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-interface {p3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    if-eqz p0, :cond_3

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->Z:Ljava/util/List;

    :cond_3
    if-nez v2, :cond_4

    sget-object v2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_4
    check-cast v2, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ModelSizeVariationUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ModelSizeVariationUiModel;->g:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/vuitton/foundation/model/domain/extensions/CollectionExtKt;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-interface {p2, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {p2, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p3

    or-int/2addr p1, p3

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p3

    if-nez p1, :cond_7

    if-ne p3, v6, :cond_8

    :cond_7
    new-instance p3, Ly0;

    const/16 p1, 0x12

    invoke-direct {p3, v3, v4, p1}, Ly0;-><init>(Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast p3, Lkotlin/jvm/functions/Function0;

    invoke-static {p0, p3, v5, p2, v1}, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/components/ContextualSizingComposableKt;->a(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_2

    :cond_9
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
