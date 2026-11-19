.class public final synthetic Lnt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;I)V
    .locals 0

    iput p2, p0, Lnt;->b:I

    iput-object p1, p0, Lnt;->c:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, Lnt;->b:I

    iget-object p0, p0, Lnt;->c:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lkotlin/Unit;

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;->S:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Let;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Let;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;->S:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet$Companion;

    new-instance v0, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/LVLightUpMonitoringManager$WhenMappings;->b:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->a()V

    :cond_0
    sput-object v2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->b:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    sput-object v2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->d:Ljava/lang/Boolean;

    sput-object v2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->e:Ljava/lang/Boolean;

    sput-object v2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->f:Ljava/lang/Boolean;

    sput-object v2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->g:Ljava/lang/Boolean;

    sput-object v2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->h:Ljava/lang/Boolean;

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->c:Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

    goto :goto_0

    :cond_1
    invoke-static {}, Lv40;->g()V

    goto :goto_4

    :cond_2
    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->a()V

    :cond_3
    sput-object v2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/KeepAllMonitoringManager;->b:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    sput-object v2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/KeepAllMonitoringManager;->d:Ljava/lang/Boolean;

    sput-object v2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/KeepAllMonitoringManager;->e:Ljava/lang/Boolean;

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/KeepAllMonitoringManager;->c:Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    goto :goto_1

    :cond_4
    move-object p0, v2

    :goto_1
    if-eqz p0, :cond_7

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->J()I

    move-result v0

    add-int/2addr v0, v3

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->V()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->q:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpRouter;

    if-eqz v0, :cond_6

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    iget-object v4, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;->a:Ljava/lang/String;

    iget-object v5, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    iget-object v6, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;->c:Ljava/lang/String;

    iget-object v7, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;->d:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    iget-object v8, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;->e:Ljava/lang/String;

    iget-object v9, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;->f:Ljava/lang/String;

    iget-object v10, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;->g:Ljava/lang/String;

    iget-object v11, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;->h:Ljava/lang/String;

    invoke-direct/range {v3 .. v11}, Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpRouter;->a(Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;)V

    goto :goto_3

    :cond_6
    const-string p0, "lightUpRouter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_7
    :goto_3
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_4
    return-object v2

    :pswitch_1
    check-cast p1, Landroid/view/View;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;->S:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;->R:Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->getType()Lcom/lightup/sdk/device/enums/LightupDeviceType;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/LVLightUpMonitoringManagerKt;->a(Lcom/lightup/sdk/device/enums/LightupDeviceType;)Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;->W()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedViewModel;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$CancelPairingWhenDeviceFoundButtonClickEvent;

    invoke-direct {v1, p1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$CancelPairingWhenDeviceFoundButtonClickEvent;-><init>(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedViewModel;->d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
