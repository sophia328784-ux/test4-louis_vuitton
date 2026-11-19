.class public final synthetic Lf4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;I)V
    .locals 0

    iput p2, p0, Lf4;->b:I

    iput-object p1, p0, Lf4;->c:Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lf4;->b:I

    const/4 v1, 0x0

    iget-object p0, p0, Lf4;->c:Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->u:Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->I()Lcom/vuitton/android/presentation/databinding/ActivityAddTravelBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ActivityAddTravelBinding;->h:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->r:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;

    goto :goto_0

    :cond_0
    const-string p0, "Unhandled tab index"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->q:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->p:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;

    :goto_0
    invoke-interface {p1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelForm;->isValid()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->J()Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModel;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$ValidateNewTravelClickEvent;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->I()Lcom/vuitton/android/presentation/databinding/ActivityAddTravelBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/presentation/databinding/ActivityAddTravelBinding;->h:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v3

    if-eqz v3, :cond_4

    if-eq v3, v0, :cond_3

    const-string v0, "hotel"

    goto :goto_1

    :cond_3
    const-string v0, "train"

    goto :goto_1

    :cond_4
    const-string v0, "plane"

    :goto_1
    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$ValidateNewTravelClickEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModel;->t0(Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel;)V

    invoke-interface {p1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelForm;->y()Lcom/vuitton/android/presentation/screen/connectivity/travel/TravelUiModel;

    move-result-object p1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->I()Lcom/vuitton/android/presentation/databinding/ActivityAddTravelBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/vuitton/android/presentation/databinding/ActivityAddTravelBinding;->g:Lcom/vuitton/android/presentation/databinding/ProgressOverlayBinding;

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/ProgressOverlayBinding;->b:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/ActivityAddTravelBinding;->b:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->d(Landroid/content/Context;Landroid/os/IBinder;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->J()Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModel;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModel;->W6(Lcom/vuitton/android/presentation/screen/connectivity/travel/TravelUiModel;)V

    :cond_5
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_2
    return-object v1

    :pswitch_0
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->u:Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->J()Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModel;->getUserId()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->I()Lcom/vuitton/android/presentation/databinding/ActivityAddTravelBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/presentation/databinding/ActivityAddTravelBinding;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {p0, v0, p1}, Lcom/vuitton/android/presentation/utils/WatchUtilsKt;->b(Landroid/content/Context;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/profile/Profile;)Ljava/lang/String;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
