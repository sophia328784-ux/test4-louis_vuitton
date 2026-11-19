.class public final synthetic Los0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;I)V
    .locals 0

    iput p2, p0, Los0;->b:I

    iput-object p1, p0, Los0;->c:Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Los0;->b:I

    iget-object p0, p0, Los0;->c:Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;->L:Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;->P()Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairListTrackShipmentClickedEvent;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairListTrackShipmentClickedEvent;

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;->d(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;->O()Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;->k(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;->L:Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->i:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceProductUiModel;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceProductUiModel;->b:Ljava/lang/String;

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_1

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;->P()Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;

    move-result-object v2

    new-instance v4, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairListItemClickedEvent;

    iget-object v5, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->f:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    sget-object v6, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;->OnGoing:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    if-ne v5, v6, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    invoke-direct {v4, v0, v5, v3}, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairListItemClickedEvent;-><init>(Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v4}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;->d(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)V

    :cond_3
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;->O()Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x7f010035

    const v3, 0x7f01003a

    const v4, 0x7f010037

    const v5, 0x7f010020

    invoke-virtual {v0, v4, v5, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->n(IIII)V

    sget-object v2, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;->P:Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;

    invoke-direct {v2}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "CARE_SERVICE"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;->Q:Ljava/lang/String;

    const v3, 0x7f0a0204

    invoke-virtual {v0, v3, v2, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->i(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->d(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/extensions/FragmentTransactionExtKt;->a(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->e()I

    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
