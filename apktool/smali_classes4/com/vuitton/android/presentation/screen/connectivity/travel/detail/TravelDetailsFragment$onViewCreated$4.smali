.class final synthetic Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$onViewCreated$4;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/Result<",
        "+",
        "Lcom/vuitton/android/presentation/screen/connectivity/travel/TravelUiModel;",
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
    .locals 4

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->K:Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v0, p1, Lkotlin/Result$Failure;

    const/16 v1, 0x8

    if-nez v0, :cond_5

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object p1, v2

    :cond_0
    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/TravelUiModel;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->P()Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModel;

    move-result-object v0

    sget-object v3, Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$EditTravelSuccessEvent;->a:Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$EditTravelSuccessEvent;

    invoke-interface {v0, v3}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModel;->t0(Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;->e:Lcom/vuitton/android/presentation/databinding/ProgressOverlayBinding;

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/ProgressOverlayBinding;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->H:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelForm;

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelForm;->c(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;->j:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->R(Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->S(Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;->h:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/travel/TravelUiModel;

    goto :goto_1

    :cond_4
    invoke-static {}, Lv40;->g()V

    return-object v2

    :cond_5
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;->e:Lcom/vuitton/android/presentation/databinding/ProgressOverlayBinding;

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ProgressOverlayBinding;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance v0, Lx41;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lx41;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_6
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
