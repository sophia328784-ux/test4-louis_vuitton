.class final synthetic Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity$onCreate$5;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/Result<",
        "+",
        "Lkotlin/Unit;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->u:Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->I()Lcom/vuitton/android/presentation/databinding/ActivityAddTravelBinding;

    move-result-object v0

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p1, Lkotlin/Result$Failure;

    const/16 v1, 0x8

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->J()Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModel;

    move-result-object p0

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$CreateTravelSuccessEvent;->a:Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$CreateTravelSuccessEvent;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModel;->t0(Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel;)V

    iget-object p0, v0, Lcom/vuitton/android/presentation/databinding/ActivityAddTravelBinding;->g:Lcom/vuitton/android/presentation/databinding/ProgressOverlayBinding;

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/ProgressOverlayBinding;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v0, Lcom/vuitton/android/presentation/databinding/ActivityAddTravelBinding;->b:Landroid/widget/ScrollView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v0, Lcom/vuitton/android/presentation/databinding/ActivityAddTravelBinding;->e:Lcom/vuitton/android/presentation/databinding/TravelCreationConfirmationBinding;

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/TravelCreationConfirmationBinding;->b:Landroid/widget/LinearLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->J()Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModel;

    move-result-object p1

    sget-object v2, Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$CreateTravelErrorEvent;->a:Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$CreateTravelErrorEvent;

    invoke-interface {p1, v2}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModel;->t0(Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/databinding/ActivityAddTravelBinding;->g:Lcom/vuitton/android/presentation/databinding/ProgressOverlayBinding;

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ProgressOverlayBinding;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Lz1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lz1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
