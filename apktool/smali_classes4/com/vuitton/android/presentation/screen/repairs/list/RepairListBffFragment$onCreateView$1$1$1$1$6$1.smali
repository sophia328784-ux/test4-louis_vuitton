.class final Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment$onCreateView$1$1$1$1$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;",
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


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment$onCreateView$1$1$1$1$6$1;->b:Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;->L:Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment$onCreateView$1$1$1$1$6$1;->b:Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;->P()Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairListAcceptEstimateClickedEvent;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairListAcceptEstimateClickedEvent;

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;->d(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;->O()Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;->g(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
