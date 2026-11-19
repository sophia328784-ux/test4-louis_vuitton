.class public final synthetic Ltl0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment;I)V
    .locals 0

    iput p2, p0, Ltl0;->b:I

    iput-object p1, p0, Ltl0;->c:Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Ltl0;->b:I

    const-string v1, "LIGHT_UP_PRODUCT"

    const-string v2, "LIGHT_UP_DEVICE_TYPE"

    const-class v3, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    const-string v4, "connectivitySectionDetailActivityRouter"

    iget-object p0, p0, Ltl0;->c:Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment;

    const/4 v5, 0x0

    check-cast p1, Landroid/view/View;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment;->S:Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment;->R:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$PairButtonFromBottomSheetClickEvent;

    sget-object v6, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;->X408PAIR:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    invoke-direct {v0, v6}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$PairButtonFromBottomSheetClickEvent;-><init>(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment;->O:Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailActivityRouter;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget-object v0, Lcom/lightup/sdk/device/enums/LightupDeviceType;->X408PAIR:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    sget-object v4, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->t:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v5

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment;->S:Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment;->R:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$PairButtonFromBottomSheetClickEvent;

    sget-object v6, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;->KEEPALL:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    invoke-direct {v0, v6}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$PairButtonFromBottomSheetClickEvent;-><init>(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment;->O:Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailActivityRouter;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget-object v0, Lcom/lightup/sdk/device/enums/LightupDeviceType;->KEEPALL:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_2

    sget-object v4, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->t:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v5

    :pswitch_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment;->S:Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment;->O:Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailActivityRouter;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_4

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/ScanActivity;->t:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/ScanActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/ScanActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
