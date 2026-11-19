.class public final synthetic Lo01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/spotlight/SpotlightActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/spotlight/SpotlightActivity;I)V
    .locals 0

    iput p2, p0, Lo01;->b:I

    iput-object p1, p0, Lo01;->c:Lcom/vuitton/android/presentation/screen/spotlight/SpotlightActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lo01;->b:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object p0, p0, Lo01;->c:Lcom/vuitton/android/presentation/screen/spotlight/SpotlightActivity;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightActivity;->r:Lcom/vuitton/android/presentation/screen/spotlight/SpotlightActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightActivity;->H()Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;->a:Ljava/util/List;

    if-ltz p1, :cond_2

    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    if-ge p1, v4, :cond_2

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->d:Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;->c:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    new-instance v4, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightDestinations$ToProductPage;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;->a:Ljava/lang/String;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->d:Ljava/lang/String;

    :goto_1
    invoke-direct {v4, v0, v2, v1, v3}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightDestinations$ToProductPage;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v4, p0}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/spotlight/SpotlightDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightActivity;->H()Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModel;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModel;->p7(II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightActivity;->r:Lcom/vuitton/android/presentation/screen/spotlight/SpotlightActivity$Companion;

    and-int/lit8 v0, p2, 0x3

    const/4 v4, 0x1

    if-eq v0, v1, :cond_3

    move v2, v4

    :cond_3
    and-int/2addr p2, v4

    invoke-interface {p1, p2, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object p2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->f:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    new-instance v0, Les0;

    const/16 v1, 0x9

    invoke-direct {v0, p0, p2, v1}, Les0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const p0, 0x66bea05

    invoke-static {p0, v0, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    const/16 p2, 0x30

    invoke-static {v3, p0, p1, p2}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
