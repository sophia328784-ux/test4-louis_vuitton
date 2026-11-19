.class public final Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$delete$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$OnPositiveClickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$delete$1",
        "Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$OnPositiveClickListener;",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;

.field public final synthetic b:Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$delete$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$delete$1;->b:Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->K:Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$delete$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->P()Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModel;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$DeleteTravelEvent;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->J:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel$DeleteTravelEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModel;->t0(Lcom/vuitton/android/presentation/screen/connectivity/travel/models/TravelTrackingUiModel;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/travel/TravelUiModel;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/TravelUiModel;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;->e:Lcom/vuitton/android/presentation/databinding/ProgressOverlayBinding;

    iget-object v2, v2, Lcom/vuitton/android/presentation/databinding/ProgressOverlayBinding;->b:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;->P()Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModel;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModel;->Xa(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$delete$1;->b:Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    :cond_0
    return-void
.end method
