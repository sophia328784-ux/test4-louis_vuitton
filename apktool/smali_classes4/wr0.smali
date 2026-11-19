.class public final synthetic Lwr0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;I)V
    .locals 0

    iput p2, p0, Lwr0;->b:I

    iput-object p1, p0, Lwr0;->c:Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lwr0;->b:I

    iget-object p0, p0, Lwr0;->c:Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;->M:Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;->Q()Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;->K:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p0, :cond_1

    sget-object p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->d:Ljava/lang/String;

    :cond_1
    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;->j(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;->M:Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;->F:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->h:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;->R()Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;->L6(Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;)V

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
