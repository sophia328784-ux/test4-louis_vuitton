.class public final synthetic Lbk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;I)V
    .locals 0

    iput p2, p0, Lbk;->b:I

    iput-object p1, p0, Lbk;->c:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lbk;->b:I

    iget-object p0, p0, Lbk;->c:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    check-cast p1, Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$SwipeSimpleFiltersEvent;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$SwipeSimpleFiltersEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->l0(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$SwipeSimpleFiltersEvent;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$SwipeSimpleFiltersEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->l0(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$SwipeSimpleFiltersEvent;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$SwipeSimpleFiltersEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->l0(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
