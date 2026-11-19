.class public final synthetic Lpp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModel;)V
    .locals 1

    .line 14
    const/4 v0, 0x3

    iput v0, p0, Lpp;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpp;->d:Ljava/lang/Object;

    iput-object p2, p0, Lpp;->c:Ljava/lang/Object;

    iput-object p3, p0, Lpp;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType;)V
    .locals 1

    const/16 v0, 0x13

    iput v0, p0, Lpp;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpp;->d:Ljava/lang/Object;

    iput-object p2, p0, Lpp;->e:Ljava/lang/Object;

    iput-object p3, p0, Lpp;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 15
    iput p4, p0, Lpp;->b:I

    iput-object p1, p0, Lpp;->c:Ljava/lang/Object;

    iput-object p2, p0, Lpp;->d:Ljava/lang/Object;

    iput-object p3, p0, Lpp;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;I)V
    .locals 0

    .line 16
    iput p4, p0, Lpp;->b:I

    iput-object p1, p0, Lpp;->c:Ljava/lang/Object;

    iput-object p2, p0, Lpp;->e:Ljava/lang/Object;

    iput-object p3, p0, Lpp;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 17
    iput p4, p0, Lpp;->b:I

    iput-object p1, p0, Lpp;->e:Ljava/lang/Object;

    iput-object p2, p0, Lpp;->c:Ljava/lang/Object;

    iput-object p3, p0, Lpp;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 14

    iget v0, p0, Lpp;->b:I

    const/16 v1, 0x1c

    sget-object v2, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairListInitiateClickedEvent;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairListInitiateClickedEvent;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lpp;->e:Ljava/lang/Object;

    iget-object v8, p0, Lpp;->d:Ljava/lang/Object;

    iget-object p0, p0, Lpp;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lkotlin/jvm/functions/Function0;

    check-cast v8, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;

    check-cast v7, Landroidx/compose/foundation/pager/PagerState;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnRegistrationCloseEvent;

    invoke-virtual {v7}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v0

    if-eqz v0, :cond_3

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "account_activation_step"

    goto :goto_0

    :cond_1
    const-string v0, "birth_info_step"

    goto :goto_0

    :cond_2
    const-string v0, "personal_info_step"

    goto :goto_0

    :cond_3
    const-string v0, "credentials_step"

    :goto_0
    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel$OnRegistrationCloseEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, p0}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;->L4(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/compose/ui/platform/SoftwareKeyboardController;

    check-cast v8, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModel;

    check-cast v7, Landroidx/compose/runtime/MutableState;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroidx/compose/ui/platform/SoftwareKeyboardController;->b()V

    :cond_4
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginViewState;->a:Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;->c:Z

    if-eqz p0, :cond_5

    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginTrackingUiModel$OnLoginClickEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginTrackingUiModel$OnLoginClickEvent;

    invoke-interface {v8, p0}, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModel;->P6(Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginTrackingUiModel;)V

    invoke-interface {v8, v6}, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModel;->c7(Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;)V

    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->o:Lcom/vuitton/android/presentation/screen/cart/models/CartContributionUiModel;

    if-eqz p0, :cond_6

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/models/CartContributionUiModel;->c:Lcom/vuitton/android/presentation/screen/cart/models/ContributionPackagingUiModel;

    if-eqz p0, :cond_6

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/models/ContributionPackagingUiModel;->d:Ljava/lang/String;

    if-eqz p0, :cond_6

    invoke-interface {v7, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    invoke-interface {v8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

    check-cast v8, Lkotlin/jvm/functions/Function3;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    if-eqz p0, :cond_8

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModelKt;->a(Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;)Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/NativeCartBottomSheetScreen$BottomSheetOutOfStock;->a:Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/NativeCartBottomSheetScreen$BottomSheetOutOfStock;

    invoke-interface {v8, p0, v6, v6}, Lkotlin/jvm/functions/Function3;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_8
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    check-cast p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceTracker;

    check-cast v8, Landroidx/compose/runtime/MutableState;

    check-cast v7, Landroidx/compose/runtime/MutableState;

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/NativeCartBottomSheetScreen;

    sget-object v1, Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/NativeCartBottomSheetScreen$BottomSheetReinsurance;->a:Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/NativeCartBottomSheetScreen$BottomSheetReinsurance;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v1, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTrackingUiModel$CloseReinsurance;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTrackingUiModel$CloseReinsurance;-><init>(Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;)V

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :cond_9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    check-cast p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    check-cast v8, Landroidx/compose/runtime/MutableState;

    check-cast v7, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    if-eqz v0, :cond_c

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;->c:Ljava/util/List;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;->d:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;

    if-eqz v0, :cond_c

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->a:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iget v3, v3, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    iget-wide v5, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;->a:D

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;->c:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$InitiateCheckout;

    new-instance v3, Lkotlin/Pair;

    const-string v8, "af_content_id"

    invoke-direct {v3, v8, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lkotlin/Pair;

    const-string v8, "af_quantity"

    invoke-direct {v2, v8, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-instance v5, Lkotlin/Pair;

    const-string v6, "af_price"

    invoke-direct {v5, v6, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Lkotlin/Pair;

    const-string v6, "af_currency"

    invoke-direct {v4, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v3, v2, v5, v4}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->i([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$InitiateCheckout;-><init>(Ljava/util/Map;)V

    invoke-virtual {v7, v1}, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;->a(Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;)V

    :cond_c
    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;->mc()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    check-cast p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;

    check-cast v8, Landroid/content/Context;

    check-cast v7, Landroidx/compose/runtime/State;

    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenCareServiceEvent;->a:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenCareServiceEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;->W(Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;)V

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->n:Ljava/lang/String;

    if-eqz p0, :cond_d

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->h:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;

    iget p0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->a:I

    if-nez p0, :cond_d

    new-instance p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToImmersiveArticlePage;

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToImmersiveArticlePage;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v8}, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v8, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    :cond_d
    sget-object p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToCareServicesPage;->a:Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToCareServicesPage;

    invoke-static {p0, v8}, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v8, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    check-cast p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;

    check-cast v8, Landroidx/activity/compose/ManagedActivityResultLauncher;

    check-cast v7, Landroid/content/Context;

    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenMyLV;->a:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenMyLV;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;->W(Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToEditAvatarPage;->a:Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToEditAvatarPage;

    invoke-static {p0, v7}, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v8, p0}, Landroidx/activity/compose/ManagedActivityResultLauncher;->a(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_7
    check-cast v7, Lkotlin/jvm/functions/Function1;

    check-cast p0, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    check-cast v8, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

    invoke-interface {v7, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, p0, v6}, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;->d(Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_8
    check-cast p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;

    check-cast v8, Lcom/vuitton/android/presentation/common/ScreenOrigin;

    check-cast v7, Landroidx/compose/runtime/MutableState;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v7, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0, v8}, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;->b(Lcom/vuitton/android/presentation/common/ScreenOrigin;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    check-cast v8, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    check-cast p0, Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType;

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->c(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;)V

    check-cast p0, Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType$SighCallBottomSheet;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType$SighCallBottomSheet;->a:Ljava/lang/String;

    invoke-interface {v7, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_a
    check-cast p0, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    check-cast v8, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitchLegalState;

    sget-object v0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitchKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v0, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->a:I

    invoke-interface {p0, v3}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->a(I)V

    invoke-interface {v7, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_b
    check-cast p0, Landroidx/compose/material3/TopAppBarScrollBehavior;

    check-cast v8, Landroidx/compose/runtime/MutableFloatState;

    check-cast v7, Landroidx/compose/runtime/MutableFloatState;

    sget-object v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    if-eqz p0, :cond_e

    invoke-interface {p0}, Landroidx/compose/material3/TopAppBarScrollBehavior;->getState()Landroidx/compose/material3/TopAppBarState;

    move-result-object v0

    if-eqz v0, :cond_e

    iget v0, v0, Landroidx/compose/material3/TopAppBarState;->a:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    :cond_e
    invoke-interface {v8}, Landroidx/compose/runtime/FloatState;->a()F

    move-result v0

    invoke-interface {v7}, Landroidx/compose/runtime/FloatState;->a()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Float;F)Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz p0, :cond_f

    invoke-interface {p0}, Landroidx/compose/material3/TopAppBarScrollBehavior;->getState()Landroidx/compose/material3/TopAppBarState;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-interface {v8}, Landroidx/compose/runtime/FloatState;->a()F

    move-result v0

    invoke-interface {v7}, Landroidx/compose/runtime/FloatState;->a()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Landroidx/compose/material3/TopAppBarState;->a:F

    :cond_f
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_c
    check-cast p0, Landroidx/compose/runtime/MutableFloatState;

    check-cast v8, Landroidx/compose/runtime/MutableFloatState;

    check-cast v7, Landroidx/compose/runtime/MutableFloatState;

    sget-object v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    invoke-interface {p0}, Landroidx/compose/runtime/FloatState;->a()F

    move-result p0

    invoke-interface {v8}, Landroidx/compose/runtime/FloatState;->a()F

    move-result v0

    add-float/2addr v0, p0

    invoke-interface {v7, v0}, Landroidx/compose/runtime/MutableFloatState;->w(F)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_d
    check-cast v7, Lkotlin/jvm/functions/Function1;

    check-cast p0, Landroidx/compose/material3/DatePickerState;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Landroidx/compose/material3/DatePickerState;->c()Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v7, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_e
    check-cast v7, Lkotlin/jvm/functions/Function1;

    check-cast p0, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-interface {v7, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_f
    check-cast p0, Lkotlin/jvm/functions/Function0;

    check-cast v8, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

    check-cast v7, Landroidx/compose/runtime/MutableState;

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->a:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;

    instance-of v0, v0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$CookiesAcceptanceBottomSheet;

    if-eqz v0, :cond_10

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_10
    sget-object p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;->INBOX:Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;

    invoke-interface {v8, p0}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;->v5(Lcom/vuitton/android/presentation/screen/permissions/PermissionContext;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_10
    check-cast p0, Lkotlin/jvm/functions/Function0;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    check-cast v7, Landroidx/compose/runtime/MutableState;

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v7, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_6

    :cond_11
    invoke-interface {v8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_11
    check-cast p0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModel;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    check-cast v8, Ljava/lang/String;

    sget-object v0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/models/GiftTrackingUiModel$DiscoverGiftingExperienceEvent;->a:Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/models/GiftTrackingUiModel$DiscoverGiftingExperienceEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModel;->i3(Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/models/GiftTrackingUiModel;)V

    invoke-interface {v7, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_12
    check-cast v7, Lkotlin/jvm/functions/Function1;

    check-cast p0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;

    check-cast v8, Landroidx/compose/runtime/MutableState;

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v8, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {v7, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_13
    check-cast p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0}, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;->a()I

    move-result p0

    if-nez p0, :cond_12

    invoke-interface {v8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_7

    :cond_12
    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_14
    check-cast p0, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;

    check-cast v8, Landroid/content/Context;

    check-cast v7, Landroidx/activity/compose/ManagedActivityResultLauncher;

    new-instance v0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToAudioGuidePage;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToAudioGuidePage;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v8}, Lcom/vuitton/android/presentation/screen/feed/FeedDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/feed/FeedDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0, v7}, Lcom/vuitton/android/platform/extensions/IntentExtensionKt;->b(Landroid/content/Intent;Landroidx/activity/result/ActivityResultLauncher;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_15
    check-cast p0, Lnd;

    check-cast v8, Ljava/lang/String;

    check-cast v7, Landroidx/compose/ui/platform/SoftwareKeyboardController;

    sget v0, Landroidx/compose/material3/ExposedDropdownMenuKt;->a:I

    invoke-virtual {p0}, Lnd;->invoke()Ljava/lang/Object;

    sget-object p0, Landroidx/compose/material3/ExposedDropdownMenuAnchorType;->b:Landroidx/compose/material3/ExposedDropdownMenuAnchorType$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/compose/material3/ExposedDropdownMenuAnchorType;->d:Ljava/lang/String;

    invoke-static {v8, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    if-eqz v7, :cond_13

    invoke-interface {v7}, Landroidx/compose/ui/platform/SoftwareKeyboardController;->a()V

    :cond_13
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_16
    check-cast p0, Lkotlin/jvm/functions/Function0;

    check-cast v8, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;

    check-cast v7, Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->g:Z

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->e:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoUiModel;->f:Lcom/vuitton/android/presentation/profile/models/PhoneNumberUiModel;

    if-eqz p0, :cond_14

    iget-object v6, p0, Lcom/vuitton/android/presentation/profile/models/PhoneNumberUiModel;->d:Ljava/lang/String;

    :cond_14
    if-eqz v6, :cond_15

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_16

    :cond_15
    sget-object p0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel$SaveProfileWithMissingPhoneNumber;->a:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel$SaveProfileWithMissingPhoneNumber;

    goto :goto_8

    :cond_16
    if-eqz v0, :cond_17

    sget-object p0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel$SaveProfileWithSmsDisclaimerEvent;->a:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel$SaveProfileWithSmsDisclaimerEvent;

    goto :goto_8

    :cond_17
    sget-object p0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel$SaveProfileEvent;->a:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel$SaveProfileEvent;

    :goto_8
    invoke-interface {v8, p0}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;->m5(Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_17
    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModel;

    check-cast v8, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    check-cast v7, Landroidx/compose/runtime/MutableState;

    invoke-interface {p0, v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModel;->d(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)V

    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState$Companion;

    new-instance p0, Lk40;

    invoke-direct {p0, v1}, Lk40;-><init>(I)V

    invoke-virtual {v8, p0}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->b(Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v7, v6}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_18
    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;

    check-cast v8, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    check-cast v7, Landroidx/compose/runtime/MutableState;

    invoke-interface {p0, v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;->d(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)V

    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState$Companion;

    new-instance p0, Lk40;

    invoke-direct {p0, v1}, Lk40;-><init>(I)V

    invoke-virtual {v8, p0}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->b(Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v7, v6}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_19
    check-cast v8, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    check-cast p0, Landroidx/compose/runtime/MutableState;

    check-cast v7, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModel;

    new-instance v0, Ldt;

    invoke-direct {v0, p0, v7, v4}, Ldt;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v8, v0}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->b(Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1a
    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTracker;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    check-cast v7, Landroidx/compose/runtime/MutableState;

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ModelSizeVariationUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ModelSizeVariationUiModel;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel$OnClickOnClose;

    invoke-direct {v1, v0, v6}, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel$OnClickOnClose;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ContextualSizingTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-interface {v8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1b
    check-cast p0, Landroidx/compose/foundation/gestures/ContentInViewNode;

    move-object v0, v8

    check-cast v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    move-object v1, v7

    check-cast v1, Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/ContentInViewNode;->u:Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

    :goto_9
    iget-object v4, v2, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;->a:Landroidx/compose/runtime/collection/MutableVector;

    iget v7, v4, Landroidx/compose/runtime/collection/MutableVector;->d:I

    if-eqz v7, :cond_1a

    if-eqz v7, :cond_19

    add-int/lit8 v7, v7, -0x1

    iget-object v4, v4, Landroidx/compose/runtime/collection/MutableVector;->b:[Ljava/lang/Object;

    aget-object v4, v4, v7

    check-cast v4, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    iget-object v4, v4, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;->a:Lkotlin/jvm/functions/Function0;

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroidx/compose/ui/geometry/Rect;

    if-nez v8, :cond_18

    move-object v7, p0

    move p0, v5

    goto :goto_a

    :cond_18
    const-wide/16 v11, 0x0

    const/4 v13, 0x3

    const-wide/16 v9, 0x0

    move-object v7, p0

    invoke-static/range {v7 .. v13}, Landroidx/compose/foundation/gestures/ContentInViewNode;->j2(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/ui/geometry/Rect;JJI)Z

    move-result p0

    :goto_a
    if-eqz p0, :cond_1b

    iget-object p0, v2, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;->a:Landroidx/compose/runtime/collection/MutableVector;

    iget v4, p0, Landroidx/compose/runtime/collection/MutableVector;->d:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroidx/compose/runtime/collection/MutableVector;->o(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;->b:Lkotlinx/coroutines/CancellableContinuation;

    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    sget-object v8, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-interface {p0, v4}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    move-object p0, v7

    goto :goto_9

    :cond_19
    const-string p0, "MutableVector is empty."

    invoke-static {p0}, Lzy0;->c(Ljava/lang/String;)V

    goto :goto_b

    :cond_1a
    move-object v7, p0

    :cond_1b
    iget-boolean p0, v7, Landroidx/compose/foundation/gestures/ContentInViewNode;->v:Z

    if-eqz p0, :cond_1c

    iget-object p0, v7, Landroidx/compose/foundation/gestures/ContentInViewNode;->t:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/geometry/Rect;

    if-eqz p0, :cond_1c

    const-wide/16 v10, 0x0

    const/4 v12, 0x3

    const-wide/16 v8, 0x0

    move-object v6, v7

    move-object v7, p0

    invoke-static/range {v6 .. v12}, Landroidx/compose/foundation/gestures/ContentInViewNode;->j2(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/ui/geometry/Rect;JJI)Z

    move-result p0

    move-object v7, v6

    if-ne p0, v5, :cond_1c

    iput-boolean v3, v7, Landroidx/compose/foundation/gestures/ContentInViewNode;->v:Z

    :cond_1c
    sget-object p0, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v2, 0x0

    invoke-static {v7, v1, v2, v3}, Landroidx/compose/foundation/gestures/ContentInViewNode;->h2(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/foundation/gestures/BringIntoViewSpec;J)F

    move-result p0

    iput p0, v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->e:F

    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_b
    return-object v6

    :pswitch_1c
    check-cast p0, Lcom/vuitton/android/presentation/contact/ContactUsTracker;

    check-cast v8, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    sget-object v0, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$Chat;->a:Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$Chat;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/contact/ContactUsTracker;->b(Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;)V

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->c(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;)V

    invoke-interface {v7, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
