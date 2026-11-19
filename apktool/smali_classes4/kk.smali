.class public final synthetic Lkk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;I)V
    .locals 0

    iput p2, p0, Lkk;->b:I

    iput-object p1, p0, Lkk;->c:Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lkk;->b:I

    iget-object p0, p0, Lkk;->c:Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->x:Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->H()Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;

    move-result-object p0

    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$DispatchFilterSelectedEvent;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$DispatchFilterSelectedEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;->O0(Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v0, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->x:Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->H()Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;

    move-result-object p0

    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$PlpScrolledEvent;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3, v1, v2}, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$PlpScrolledEvent;-><init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;->O0(Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->x:Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->I()Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    move-result-object p0

    new-instance v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$SwipeSimpleFiltersEvent;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$SwipeSimpleFiltersEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->l0(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->x:Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToPdpPage;

    iget-object v2, p1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->H()Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;->C2()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToPdpPage;-><init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1, p0}, Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/catalog/CatalogDestinations$ToPdpPage;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
