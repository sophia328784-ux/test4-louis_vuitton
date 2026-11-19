.class public final synthetic Ljk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;I)V
    .locals 0

    iput p2, p0, Ljk;->b:I

    iput-object p1, p0, Ljk;->c:Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Ljk;->b:I

    const/4 v1, 0x0

    iget-object p0, p0, Ljk;->c:Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->x:Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->H()Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;

    move-result-object p0

    sget-object v0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$DispatchFilterSwipedEvent;->a:Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$DispatchFilterSwipedEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;->O0(Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->x:Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->I()Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    move-result-object p0

    new-instance v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$QuickAccessFiltersScreen;

    sget-object v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;->PLP:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$QuickAccessFiltersScreen;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->l0(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->x:Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->I()Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;->SORT_BY:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->o2(Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDestinations$ToTransparentFiltersPage;

    sget-object v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;->PLP:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    invoke-direct {v0, v2, v1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDestinations$ToTransparentFiltersPage;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;)V

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDestinations$ToTransparentFiltersPage;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->w:Landroidx/activity/result/ActivityResultLauncher;

    invoke-static {v0, p0}, Lcom/vuitton/android/platform/extensions/IntentExtensionKt;->b(Landroid/content/Intent;Landroidx/activity/result/ActivityResultLauncher;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->x:Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->I()Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    move-result-object p0

    sget-object v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$CloseFiltersEvent;->a:Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$CloseFiltersEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->l0(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    sget-object v0, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->x:Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->I()Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    move-result-object p0

    new-instance v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$ClearAllFiltersEvent;

    sget-object v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;->PLP:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$ClearAllFiltersEvent;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->l0(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    sget-object v0, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->x:Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->I()Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    move-result-object p0

    new-instance v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$FiltersErrorEvent;

    sget-object v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;->PLP:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$FiltersErrorEvent;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->l0(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->r:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->c(Landroidx/lifecycle/LifecycleOwner;)V

    goto :goto_0

    :cond_0
    const-string p0, "chatLifecycleObserver"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    sget-object v0, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->x:Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity$Companion;

    sget-object v0, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$ToAICompanionPage;->a:Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$ToAICompanionPage;

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_7
    sget-object v0, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->x:Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->I()Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;->MORES_FILTERS:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->o2(Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDestinations$ToTransparentFiltersPage;

    sget-object v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;->PLP:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    invoke-direct {v0, v2, v1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDestinations$ToTransparentFiltersPage;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;)V

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDestinations$ToTransparentFiltersPage;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->w:Landroidx/activity/result/ActivityResultLauncher;

    invoke-static {v0, p0}, Lcom/vuitton/android/platform/extensions/IntentExtensionKt;->b(Landroid/content/Intent;Landroidx/activity/result/ActivityResultLauncher;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_8
    sget-object v0, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->x:Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity$Companion;

    sget-object v0, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$ToWishlistPage;->a:Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$ToWishlistPage;

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    sget-object v0, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->x:Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->I()Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->o2(Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
