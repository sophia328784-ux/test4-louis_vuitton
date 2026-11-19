.class public final synthetic Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Landroidx/paging/compose/LazyPagingItems;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;

.field public final synthetic h:Lkotlin/jvm/functions/Function2;

.field public final synthetic i:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Landroidx/paging/compose/LazyPagingItems;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/b;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/b;->c:Landroidx/paging/compose/LazyPagingItems;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/b;->d:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/b;->e:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/b;->f:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/b;->g:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/b;->h:Lkotlin/jvm/functions/Function2;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/b;->i:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScope;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    move-object v5, p3

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 p1, p3, 0x30

    if-nez p1, :cond_1

    invoke-interface {v5, p2}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x20

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    :goto_0
    or-int/2addr p3, p1

    :cond_1
    and-int/lit16 p1, p3, 0x91

    const/16 p4, 0x90

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, p4, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    and-int/2addr p3, v1

    invoke-interface {v5, p3, p1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_d

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/b;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel;

    instance-of p2, p1, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel$BrandContentLine;

    iget-object p3, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/b;->c:Landroidx/paging/compose/LazyPagingItems;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/b;->e:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/b;->f:Lkotlin/jvm/functions/Function1;

    const/4 p4, 0x0

    if-eqz p2, :cond_8

    const p2, 0x282755d7

    invoke-interface {v5, p2}, Landroidx/compose/runtime/Composer;->L(I)V

    check-cast p1, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel$BrandContentLine;

    iget p1, p1, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel$BrandContentLine;->a:I

    invoke-virtual {p3, p1}, Landroidx/paging/compose/LazyPagingItems;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel;

    instance-of p2, p1, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$HalfEdito;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/b;->d:Lkotlin/jvm/functions/Function1;

    if-eqz p2, :cond_3

    const p0, 0x435c2331

    invoke-interface {v5, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    check-cast p1, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$HalfEdito;

    invoke-static {p4, p1, v2, v5, v0}, Lcom/vuitton/android/presentation/screen/plp/components/composables/brandcontent/PLPHalfEditoComposableKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$HalfEdito;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_2

    :cond_3
    instance-of p0, p1, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$ProductSlider;

    if-eqz p0, :cond_4

    const p0, 0x435c3eff

    invoke-interface {v5, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    move-object v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$ProductSlider;

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/plp/components/composables/brandcontent/PLPProductSliderComposableKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$ProductSlider;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_2

    :cond_4
    instance-of p0, p1, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$ProductHighlight;

    if-eqz p0, :cond_5

    const p0, 0x435c6c62

    invoke-interface {v5, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    move-object v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$ProductHighlight;

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/plp/components/composables/brandcontent/PLPProductHighlightComposableKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$ProductHighlight;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_2

    :cond_5
    instance-of p0, p1, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$CuratedText;

    if-eqz p0, :cond_6

    const p0, 0x435c98b1

    invoke-interface {v5, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    check-cast p1, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$CuratedText;

    invoke-static {p4, p1, v5, v0}, Lcom/vuitton/android/presentation/screen/plp/components/composables/brandcontent/PLPCuratedTextComposableKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$CuratedText;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_2

    :cond_6
    instance-of p0, p1, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$ProductFullscreen;

    if-eqz p0, :cond_7

    const p0, 0x435cad43

    invoke-interface {v5, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    move-object v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$ProductFullscreen;

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/plp/components/composables/brandcontent/PLPProductFullscreenComposableKt;->c(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$ProductFullscreen;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_2

    :cond_7
    const p0, 0x435cd5d6

    invoke-interface {v5, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    :goto_2
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_5

    :cond_8
    instance-of p2, p1, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel$ProductLine;

    if-eqz p2, :cond_c

    const p2, 0x283f8d99

    invoke-interface {v5, p2}, Landroidx/compose/runtime/Composer;->L(I)V

    check-cast p1, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel$ProductLine;

    iget p2, p1, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel$ProductLine;->a:I

    invoke-virtual {p3, p2}, Landroidx/paging/compose/LazyPagingItems;->a(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$Products;

    if-eqz p3, :cond_9

    move-object p4, p2

    check-cast p4, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$Products;

    :cond_9
    if-eqz p4, :cond_b

    const p2, 0x28414a9e

    invoke-interface {v5, p2}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-object p2, p1, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel$ProductLine;->b:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p2, p3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {v1, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    iget-object v0, p4, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$Products;->b:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    iget v2, p1, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel$ProductLine;->c:I

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/b;->g:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;

    move-object v7, v5

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/b;->h:Lkotlin/jvm/functions/Function2;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/b;->i:Lkotlin/jvm/functions/Function2;

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPItemsKt;->c(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;Ljava/util/ArrayList;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    move-object v5, v7

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_4

    :cond_b
    const p0, 0x28491030

    invoke-interface {v5, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    :goto_4
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    :goto_5
    sget-object p0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_6

    :cond_c
    const p0, 0x435c117a

    invoke-static {v5, p0}, Lo60;->v(Landroidx/compose/runtime/Composer;I)Lkotlin/NoWhenBranchMatchedException;

    move-result-object p0

    throw p0

    :cond_d
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->D()V

    :goto_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
