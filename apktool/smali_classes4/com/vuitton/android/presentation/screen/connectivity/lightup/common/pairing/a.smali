.class public final synthetic Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/a;->b:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    check-cast p1, Landroid/view/View;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;->S:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/a;->b:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;->R:Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->b()Lcom/lightup/sdk/animation/CreatorProject;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->getType()Lcom/lightup/sdk/device/enums/LightupDeviceType;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/LVLightUpMonitoringManagerKt;->a(Lcom/lightup/sdk/device/enums/LightupDeviceType;)Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;->W()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedViewModel;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$ConfirmPairingButtonClickEvent;

    invoke-direct {v2, v4}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$ConfirmPairingButtonClickEvent;-><init>(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;)V

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedViewModel;->d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelperInstance;->a()Lcom/lightup/sdk/device/helpers/LightupHelper;

    move-result-object v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->a:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    const/4 v11, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {v1, v2}, Lcom/lightup/sdk/device/helpers/LightupHelper;->getDeviceHelper(Lcom/lightup/sdk/device/enums/LightupDeviceType;)Lcom/lightup/sdk/device/helpers/LightupHelperInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/lightup/sdk/device/helpers/LightupHelperInterface;->getMode()Lcom/lightup/sdk/device/enums/DeviceMode;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v11

    :goto_0
    if-eqz v1, :cond_2

    sget-object v2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragmentKt$WhenMappings;->b:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    return-object v11

    :pswitch_0
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;->DISCREET:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    goto :goto_1

    :pswitch_1
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;->ECO:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    goto :goto_1

    :pswitch_2
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;->WALKING:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    goto :goto_1

    :pswitch_3
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;->ALWAYS_ON:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    goto :goto_1

    :pswitch_4
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;->ECO:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    goto :goto_1

    :pswitch_5
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;->ECO:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    goto :goto_1

    :pswitch_6
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;->STANDARD:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    :goto_1
    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    :goto_2
    move-object v6, v1

    goto :goto_4

    :cond_2
    :goto_3
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;->ECO:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    goto :goto_2

    :goto_4
    new-instance v2, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->getUniqueId()Lcom/lightup/sdk/device/model/device/DeviceId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lightup/sdk/device/model/device/DeviceId;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/lightup/sdk/animation/CreatorProject;->getName()Ljava/lang/String;

    move-result-object p1

    move-object v8, p1

    goto :goto_5

    :cond_3
    move-object v8, v11

    :goto_5
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/lightup/sdk/animation/CreatorProject;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    move-object v9, p1

    goto :goto_6

    :cond_4
    move-object v9, v11

    :goto_6
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/lightup/sdk/animation/CreatorProject;->getId()Ljava/lang/String;

    move-result-object p1

    move-object v10, p1

    goto :goto_7

    :cond_5
    move-object v10, v11

    :goto_7
    invoke-direct/range {v2 .. v10}, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;->W()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedViewModel;

    move-result-object p0

    new-instance p1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedViewModel$insertLightUpProduct$1;

    invoke-direct {p1, p0, v11}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedViewModel$insertLightUpProduct$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedViewModel;Lkotlin/coroutines/Continuation;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedViewModel$insertLightUpProduct$2;

    invoke-direct {v0, p0, v2, v11}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedViewModel$insertLightUpProduct$2;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedViewModel;Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;->Bc(Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V

    goto :goto_8

    :cond_6
    const-string p0, "lightUpDeviceType"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v11

    :cond_7
    :goto_8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
