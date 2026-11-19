.class final synthetic Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$onCreateView$1$1$1$1$4$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;",
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
    .locals 2

    check-cast p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->P:Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->R()Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$ModifyDeliveryClickedEvent;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$ModifyDeliveryClickedEvent;

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;->d(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)V

    new-instance v0, Les0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Les0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const-string v1, "SELECT_ADDRESS_REQUEST"

    invoke-static {p0, v1, v0}, Landroidx/fragment/app/FragmentKt;->b(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->Q()Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->S()Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;

    move-result-object p0

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;->g:Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel$Companion;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->E:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    sget-object p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;->d:Ljava/lang/String;

    :cond_0
    invoke-static {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;->h(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
