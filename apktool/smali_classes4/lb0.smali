.class public final synthetic Llb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/main/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/main/MainActivity;I)V
    .locals 0

    iput p2, p0, Llb0;->b:I

    iput-object p1, p0, Llb0;->c:Lcom/vuitton/android/presentation/screen/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, Llb0;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object p0, p0, Llb0;->c:Lcom/vuitton/android/presentation/screen/main/MainActivity;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog$AlreadySignedIn;

    sget-object v0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/main/MainActivity;->J()Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;

    move-result-object p0

    new-instance v0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$ShowAlreadySignedBottomSheet;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$ShowAlreadySignedBottomSheet;-><init>(Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog$AlreadySignedIn;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;->F6(Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->r:Landroidx/lifecycle/ViewModelLazy;

    check-cast p1, Landroid/content/Intent;

    sget-object v0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    if-eqz p1, :cond_2

    const-string v0, "FILTER_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;->g:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    move-object v4, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    move-object v5, v2

    goto :goto_0

    :cond_1
    move-object v5, p1

    :goto_0
    sget-object v6, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;->PLP:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    new-instance v3, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x18

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;Ljava/util/UUID;Lcom/vuitton/android/presentation/screen/filter/model/FilterType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v3}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->Y0(Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;)V

    :cond_2
    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    invoke-interface {p0, v2}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->o2(Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Landroid/content/Intent;

    sget-object v0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    if-eqz p1, :cond_3

    const-string v0, "MAIN_ACTIVITY_REQUEST_CODE"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_3
    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0xa3

    if-eq p1, v0, :cond_b

    :goto_1
    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0xa4

    if-eq p1, v0, :cond_b

    :goto_2
    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0xa6

    if-ne p1, v0, :cond_7

    goto :goto_5

    :cond_7
    :goto_3
    if-nez v2, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x5b5

    if-ne p1, v0, :cond_9

    sget-object p1, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToCareServicesPage;->a:Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToCareServicesPage;

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/screen/services/ServicesDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/services/ServicesDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_6

    :cond_9
    :goto_4
    if-nez v2, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x5b6

    if-ne p1, v0, :cond_c

    new-instance v1, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;

    sget-object v2, Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;->LOGIN:Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;

    sget-object v7, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;->CUSTOMER_SERVICES:Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    const/16 v10, 0xde

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;-><init>(Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1, p0}, Lcom/vuitton/android/presentation/screen/services/ServicesDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/services/ServicesDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_6

    :cond_b
    :goto_5
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/main/MainActivity;->I()Lcom/vuitton/android/presentation/redirectlink/LinkViewModel;

    move-result-object p0

    invoke-interface {p0}, Lcom/vuitton/android/presentation/redirectlink/LinkViewModel;->B8()V

    :cond_c
    :goto_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p1, Lcom/vuitton/android/core/type/SystemIcons;

    sget-object v0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    iget-boolean p1, p1, Lcom/vuitton/android/core/type/SystemIcons;->a:Z

    const/4 v0, 0x2

    invoke-static {p0, p1, v1, v0}, Lcom/vuitton/android/presentation/compose/components/EdgeToEdgeKt;->b(Landroidx/activity/ComponentActivity;ZZI)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
