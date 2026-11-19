.class public final synthetic Lsr0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment;I)V
    .locals 0

    iput p2, p0, Lsr0;->b:I

    iput-object p1, p0, Lsr0;->c:Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lsr0;->b:I

    iget-object p0, p0, Lsr0;->c:Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment;->M:Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment;->R()Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment;->Q()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p0, :cond_0

    sget-object p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->d:Ljava/lang/String;

    :cond_0
    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;->j(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment;->M:Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment;->S()Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;

    move-result-object p0

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;->S4()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
