.class public final synthetic Lu90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;I)V
    .locals 0

    iput p2, p0, Lu90;->b:I

    iput-object p1, p0, Lu90;->c:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lu90;->b:I

    const/4 v3, 0x0

    const-string v4, "lightUpDeviceType"

    iget-object v0, v0, Lu90;->c:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Landroid/view/View;

    sget-object v2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->N:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;->R:Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$Companion;

    const v2, 0x7f140b5b

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x7f140fa3

    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f140fa4

    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v1, v2, v3, v4, v5}, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$Companion;->b(Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$showUnPairDialog$1;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$showUnPairDialog$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;)V

    iput-object v2, v1, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;->O:Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$OnPositiveClickListener;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v2, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;->S:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->z0()V

    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Landroid/view/View;

    sget-object v5, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->N:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->c()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget-object v5, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet;->S:Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet$Companion;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/Hilt_LightUpDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->a:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    if-eqz v7, :cond_1b

    sget-object v8, Lcom/lightup/sdk/device/enums/LightupDeviceType;->KEEPALL:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    const-string v9, " ["

    const-string v10, "["

    const v11, 0x7f140b4e

    const v12, 0x7f140b4d

    const-string v13, ""

    const-string v14, "] "

    if-ne v7, v8, :cond_4

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelperInstance;->a()Lcom/lightup/sdk/device/helpers/LightupHelper;

    move-result-object v6

    sget-object v7, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->a:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    if-eqz v7, :cond_3

    invoke-virtual {v6, v7}, Lcom/lightup/sdk/device/helpers/LightupHelper;->getDeviceHelper(Lcom/lightup/sdk/device/enums/LightupDeviceType;)Lcom/lightup/sdk/device/helpers/LightupHelperInterface;

    move-result-object v6

    if-eqz v6, :cond_1

    sget-object v7, Lcom/lightup/sdk/device/enums/PairOrientation;->UNKNOWN:Lcom/lightup/sdk/device/enums/PairOrientation;

    invoke-interface {v6, v7}, Lcom/lightup/sdk/device/helpers/LightupHelperInterface;->getFirmwareVersion(Lcom/lightup/sdk/device/enums/PairOrientation;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object v6, v3

    :goto_1
    if-nez v6, :cond_2

    move-object/from16 v16, v3

    move-object v6, v13

    goto :goto_6

    :cond_2
    move-object/from16 v16, v3

    goto :goto_6

    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3

    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v6, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_5
    move-object v7, v3

    :goto_2
    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelperInstance;->a()Lcom/lightup/sdk/device/helpers/LightupHelper;

    move-result-object v15

    move-object/from16 v16, v3

    sget-object v3, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->a:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    if-eqz v3, :cond_1a

    invoke-virtual {v15, v3}, Lcom/lightup/sdk/device/helpers/LightupHelper;->getDeviceHelper(Lcom/lightup/sdk/device/enums/LightupDeviceType;)Lcom/lightup/sdk/device/helpers/LightupHelperInterface;

    move-result-object v3

    if-eqz v3, :cond_6

    sget-object v15, Lcom/lightup/sdk/device/enums/PairOrientation;->LEFT:Lcom/lightup/sdk/device/enums/PairOrientation;

    invoke-interface {v3, v15}, Lcom/lightup/sdk/device/helpers/LightupHelperInterface;->getFirmwareVersion(Lcom/lightup/sdk/device/enums/PairOrientation;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_6
    move-object/from16 v3, v16

    :goto_3
    if-eqz v6, :cond_7

    invoke-virtual {v6, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_7
    move-object/from16 v6, v16

    :goto_4
    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelperInstance;->a()Lcom/lightup/sdk/device/helpers/LightupHelper;

    move-result-object v15

    sget-object v2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->a:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    if-eqz v2, :cond_19

    invoke-virtual {v15, v2}, Lcom/lightup/sdk/device/helpers/LightupHelper;->getDeviceHelper(Lcom/lightup/sdk/device/enums/LightupDeviceType;)Lcom/lightup/sdk/device/helpers/LightupHelperInterface;

    move-result-object v2

    if-eqz v2, :cond_8

    sget-object v15, Lcom/lightup/sdk/device/enums/PairOrientation;->RIGHT:Lcom/lightup/sdk/device/enums/PairOrientation;

    invoke-interface {v2, v15}, Lcom/lightup/sdk/device/helpers/LightupHelperInterface;->getFirmwareVersion(Lcom/lightup/sdk/device/enums/PairOrientation;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_8
    move-object/from16 v2, v16

    :goto_5
    invoke-static {v10, v7, v14, v3, v9}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v3, v6, v14, v2}, Ld21;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_6
    const-string v2, "Firmware: "

    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/Hilt_LightUpDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v6, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->a:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    if-eqz v6, :cond_18

    if-ne v6, v8, :cond_c

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelperInstance;->a()Lcom/lightup/sdk/device/helpers/LightupHelper;

    move-result-object v3

    sget-object v6, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->a:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    if-eqz v6, :cond_b

    invoke-virtual {v3, v6}, Lcom/lightup/sdk/device/helpers/LightupHelper;->getDeviceHelper(Lcom/lightup/sdk/device/enums/LightupDeviceType;)Lcom/lightup/sdk/device/helpers/LightupHelperInterface;

    move-result-object v3

    if-eqz v3, :cond_9

    sget-object v6, Lcom/lightup/sdk/device/enums/PairOrientation;->UNKNOWN:Lcom/lightup/sdk/device/enums/PairOrientation;

    invoke-interface {v3, v6}, Lcom/lightup/sdk/device/helpers/LightupHelperInterface;->getBoardVersion(Lcom/lightup/sdk/device/enums/PairOrientation;)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_9
    move-object/from16 v3, v16

    :goto_7
    if-nez v3, :cond_a

    goto :goto_c

    :cond_a
    move-object v13, v3

    goto :goto_c

    :cond_b
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v16

    :cond_c
    if-eqz v3, :cond_d

    invoke-virtual {v3, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_d
    move-object/from16 v6, v16

    :goto_8
    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelperInstance;->a()Lcom/lightup/sdk/device/helpers/LightupHelper;

    move-result-object v7

    sget-object v8, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->a:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    if-eqz v8, :cond_17

    invoke-virtual {v7, v8}, Lcom/lightup/sdk/device/helpers/LightupHelper;->getDeviceHelper(Lcom/lightup/sdk/device/enums/LightupDeviceType;)Lcom/lightup/sdk/device/helpers/LightupHelperInterface;

    move-result-object v7

    if-eqz v7, :cond_e

    sget-object v8, Lcom/lightup/sdk/device/enums/PairOrientation;->LEFT:Lcom/lightup/sdk/device/enums/PairOrientation;

    invoke-interface {v7, v8}, Lcom/lightup/sdk/device/helpers/LightupHelperInterface;->getBoardVersion(Lcom/lightup/sdk/device/enums/PairOrientation;)Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    :cond_e
    move-object/from16 v7, v16

    :goto_9
    if-eqz v3, :cond_f

    invoke-virtual {v3, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_f
    move-object/from16 v3, v16

    :goto_a
    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelperInstance;->a()Lcom/lightup/sdk/device/helpers/LightupHelper;

    move-result-object v8

    sget-object v11, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->a:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    if-eqz v11, :cond_16

    invoke-virtual {v8, v11}, Lcom/lightup/sdk/device/helpers/LightupHelper;->getDeviceHelper(Lcom/lightup/sdk/device/enums/LightupDeviceType;)Lcom/lightup/sdk/device/helpers/LightupHelperInterface;

    move-result-object v8

    if-eqz v8, :cond_10

    sget-object v11, Lcom/lightup/sdk/device/enums/PairOrientation;->RIGHT:Lcom/lightup/sdk/device/enums/PairOrientation;

    invoke-interface {v8, v11}, Lcom/lightup/sdk/device/helpers/LightupHelperInterface;->getBoardVersion(Lcom/lightup/sdk/device/enums/PairOrientation;)Ljava/lang/String;

    move-result-object v8

    goto :goto_b

    :cond_10
    move-object/from16 v8, v16

    :goto_b
    invoke-static {v10, v6, v14, v7, v9}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v6, v3, v14, v8}, Ld21;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :goto_c
    const-string v3, "Hardware: "

    invoke-virtual {v3, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/lightup/sdk/device/helpers/LightupHelper;->Companion:Lcom/lightup/sdk/device/helpers/LightupHelper$Companion;

    invoke-virtual {v6}, Lcom/lightup/sdk/device/helpers/LightupHelper$Companion;->getSdkVersion()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SDK Version: "

    invoke-static {v7, v6}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->a:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    if-eqz v7, :cond_15

    invoke-static {v7}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/LVLightUpMonitoringManagerKt;->a(Lcom/lightup/sdk/device/enums/LightupDeviceType;)Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    move-result-object v4

    if-nez v4, :cond_11

    const/4 v4, -0x1

    :goto_d
    const/4 v7, 0x1

    goto :goto_e

    :cond_11
    sget-object v7, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/LVLightUpMonitoringManager$WhenMappings;->b:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v7, v4

    goto :goto_d

    :goto_e
    if-eq v4, v7, :cond_14

    const/4 v7, 0x2

    if-eq v4, v7, :cond_13

    :cond_12
    move-object/from16 v4, v16

    goto :goto_f

    :cond_13
    sget-object v4, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->c:Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->getDebugIdentifier()Ljava/lang/String;

    move-result-object v4

    goto :goto_f

    :cond_14
    sget-object v4, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/KeepAllMonitoringManager;->c:Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->getDebugIdentifier()Ljava/lang/String;

    move-result-object v4

    :goto_f
    const-string v7, "Identifier: "

    invoke-static {v7, v4}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v6, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const v3, 0x7f141414    # 1.9683E38f

    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v0, v2}, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet$Companion;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet;

    move-result-object v0

    sget-object v2, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet;->V:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_10

    :cond_15
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v16

    :cond_16
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v16

    :cond_17
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v16

    :cond_18
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v16

    :cond_19
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v16

    :cond_1a
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v16

    :cond_1b
    move-object/from16 v16, v3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v16

    :cond_1c
    :goto_10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    move-object/from16 v16, v3

    move-object/from16 v1, p1

    check-cast v1, Landroid/view/View;

    sget-object v2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->N:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->c()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->e0()Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;->i:Lcom/vuitton/android/presentation/databinding/InAppNotificationBinding;

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/InAppNotificationBinding;->b:Landroidx/cardview/widget/CardView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->l0()V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->d0()V

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$updateAnimations$1;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$updateAnimations$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;)V

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelperInstance;->a()Lcom/lightup/sdk/device/helpers/LightupHelper;

    move-result-object v0

    sget-object v2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->a:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    if-eqz v2, :cond_1d

    invoke-virtual {v0, v2}, Lcom/lightup/sdk/device/helpers/LightupHelper;->getDeviceHelper(Lcom/lightup/sdk/device/enums/LightupDeviceType;)Lcom/lightup/sdk/device/helpers/LightupHelperInterface;

    move-result-object v0

    if-eqz v0, :cond_1f

    const/4 v7, 0x1

    invoke-interface {v0, v7, v1}, Lcom/lightup/sdk/device/helpers/LightupHelperInterface;->updateAnimations(ZLcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    goto :goto_11

    :cond_1d
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v16

    :cond_1e
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->z0()V

    :cond_1f
    :goto_11
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
