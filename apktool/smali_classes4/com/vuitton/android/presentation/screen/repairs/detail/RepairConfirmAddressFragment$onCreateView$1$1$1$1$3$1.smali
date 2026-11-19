.class final synthetic Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment$onCreateView$1$1$1$1$3$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
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
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;->M:Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lvr0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lvr0;-><init>(Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;I)V

    const-string v1, "SELECT_ADDRESS_REQUEST"

    invoke-static {p0, v1, v0}, Landroidx/fragment/app/FragmentKt;->b(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;->Q()Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;->R()Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;->g:Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;->F:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->h:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->E:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p0, :cond_1

    sget-object p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;->d:Ljava/lang/String;

    :cond_1
    invoke-static {v0, v1, p0}, Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;->h(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
