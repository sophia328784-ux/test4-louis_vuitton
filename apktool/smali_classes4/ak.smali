.class public final synthetic Lak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;I)V
    .locals 0

    iput p2, p0, Lak;->b:I

    iput-object p1, p0, Lak;->c:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lak;->b:I

    sget-object v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$CloseFiltersEvent;->a:Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$CloseFiltersEvent;

    iget-object p0, p0, Lak;->c:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$QuickAccessFiltersScreen;

    sget-object v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;->SEARCH:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$QuickAccessFiltersScreen;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->l0(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$FiltersErrorEvent;

    sget-object v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;->SEARCH:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$FiltersErrorEvent;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->l0(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    invoke-interface {p0, v1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->l0(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    new-instance v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$QuickAccessFiltersScreen;

    sget-object v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;->PLP:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$QuickAccessFiltersScreen;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->l0(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    new-instance v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$QuickAccessFiltersScreen;

    sget-object v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;->PLP:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$QuickAccessFiltersScreen;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->l0(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    invoke-interface {p0, v1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->l0(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    new-instance v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$ClearAllFiltersEvent;

    sget-object v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;->PLP:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$ClearAllFiltersEvent;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->l0(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    new-instance v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$FiltersErrorEvent;

    sget-object v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;->PLP:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$FiltersErrorEvent;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->l0(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
