.class public final Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;
.super Lcom/vuitton/android/presentation/screen/connectivity/lightup/Hilt_LightUpActivity;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/lvlisteners/LVLightUpDeviceScanListener;


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$Companion;,
        Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0005B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;",
        "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/BaseLightUpActivity;",
        "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/lvlisteners/LVLightUpDeviceScanListener;",
        "<init>",
        "()V",
        "Companion",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final t:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$Companion;


# instance fields
.field public q:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpRouter;

.field public final r:Lkotlin/Lazy;

.field public final s:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$bluetoothReceiver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->t:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/Hilt_LightUpActivity;-><init>()V

    new-instance v0, Lx60;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lx60;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->r:Lkotlin/Lazy;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$bluetoothReceiver$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$bluetoothReceiver$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;)V

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->s:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$bluetoothReceiver$1;

    return-void
.end method

.method public static O(Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;)Lcom/lightup/sdk/device/enums/LightupDeviceType;
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "LIGHT_UP_DEVICE_TYPE"

    if-lt v0, v1, :cond_0

    const-class v0, Lcom/lightup/sdk/device/enums/LightupDeviceType;

    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    instance-of v0, p0, Lcom/lightup/sdk/device/enums/LightupDeviceType;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    :cond_1
    check-cast p0, Lcom/lightup/sdk/device/enums/LightupDeviceType;

    :goto_0
    check-cast p0, Lcom/lightup/sdk/device/enums/LightupDeviceType;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    return-object p0

    :cond_3
    :goto_1
    sget-object p0, Lcom/lightup/sdk/device/enums/LightupDeviceType;->KEEPALL:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    return-object p0
.end method


# virtual methods
.method public final H()V
    .locals 3

    invoke-static {p0}, Lcom/vuitton/android/presentation/utils/PermissionUtils;->c(Lcom/vuitton/android/presentation/screen/base/BaseActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/vuitton/android/presentation/utils/PermissionUtils;->a(Lcom/vuitton/android/presentation/screen/base/BaseActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/vuitton/android/presentation/utils/PermissionUtils;->a:[Ljava/lang/String;

    aget-object v2, v1, v0

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x5ce

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    :cond_1
    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$checkGps$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$checkGps$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;)V

    invoke-static {p0, v0}, Lcom/vuitton/android/presentation/utils/PermissionUtils;->b(Lcom/vuitton/android/presentation/screen/base/BaseActivity;Lcom/vuitton/android/presentation/utils/PermissionUtils$PermissionListener;)V

    :cond_2
    return-void

    :cond_3
    invoke-static {p0}, Lcom/vuitton/android/presentation/utils/PermissionUtils;->d(Lcom/vuitton/android/presentation/screen/base/BaseActivity;)V

    return-void
.end method

.method public final J()V
    .locals 2

    new-instance v0, Lr90;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lr90;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final K()V
    .locals 2

    new-instance v0, Lr90;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lr90;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final L(Z)V
    .locals 2

    new-instance v0, Lac;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p1, v1}, Lac;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final M()V
    .locals 2

    new-instance v0, Lr90;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lr90;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final N(Lcom/lightup/sdk/device/enums/PairOrientation;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljr;

    const/16 v1, 0x1a

    invoke-direct {v0, p0, p1, v1}, Ljr;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final P()V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->r:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lightup/sdk/device/enums/LightupDeviceType;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/BaseLightUpActivity;->I(Lcom/lightup/sdk/device/enums/LightupDeviceType;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->M()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/interfaces/LightUpFragmentInterface;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/interfaces/LightUpFragmentInterface;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/interfaces/LightUpFragmentInterface;->t()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final Q()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;
    .locals 3

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->a:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerDetailFragment;->Z:Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerDetailFragment$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerDetailFragment;->t0:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->G(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerDetailFragment;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllDetailFragment;->Y:Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllDetailFragment$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllDetailFragment;->h0:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->G(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllDetailFragment;

    return-object p0

    :cond_2
    const-string p0, "lightUpDeviceType"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1
.end method

.method public final R(Ljava/util/List;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelperInstance;->a()Lcom/lightup/sdk/device/helpers/LightupHelper;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper$startScan$1;

    invoke-direct {v1, p1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper$startScan$1;-><init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->a:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    if-eqz p0, :cond_0

    invoke-virtual {v0, v1, p0}, Lcom/lightup/sdk/device/helpers/LightupHelper;->startScan(Lcom/lightup/sdk/device/ble/scanner/listeners/LightupScanProcessListener;Lcom/lightup/sdk/device/enums/LightupDeviceType;)Lcom/lightup/sdk/device/enums/CallStatus;

    return-void

    :cond_0
    const-string p0, "lightUpDeviceType"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x9ed

    const/4 v0, -0x1

    if-eq p1, p3, :cond_6

    const/16 p3, 0x9f3

    if-eq p1, p3, :cond_0

    goto :goto_2

    :cond_0
    if-ne p2, v0, :cond_3

    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x2

    if-ge p1, p2, :cond_2

    sget-object p2, Lcom/vuitton/android/presentation/utils/PermissionUtils;->a:[Ljava/lang/String;

    aget-object p3, p2, p1

    invoke-static {p0, p3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x5ce

    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    :cond_2
    new-instance p1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$checkGps$1;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$checkGps$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;)V

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/utils/PermissionUtils;->b(Lcom/vuitton/android/presentation/screen/base/BaseActivity;Lcom/vuitton/android/presentation/utils/PermissionUtils$PermissionListener;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->M()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    instance-of p2, p1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/interfaces/LightUpScanFragmentInterface;

    if-eqz p2, :cond_5

    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/interfaces/LightUpScanFragmentInterface;

    invoke-interface {p1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/interfaces/LightUpScanFragmentInterface;->A()V

    goto :goto_1

    :cond_5
    instance-of p2, p1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/interfaces/LightUpDetailFragmentInterface;

    if-eqz p2, :cond_4

    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/interfaces/LightUpDetailFragmentInterface;

    invoke-interface {p1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/interfaces/LightUpDetailFragmentInterface;->u()V

    goto :goto_1

    :cond_6
    if-eq p2, v0, :cond_9

    if-eqz p2, :cond_8

    :cond_7
    :goto_2
    return-void

    :cond_8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->P()V

    return-void
.end method

.method public final onConnected(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;ZLcom/lightup/sdk/device/helpers/LightupHelperInterface;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Ls90;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3}, Ls90;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;Lcom/lightup/sdk/device/devicemanagement/LightupDevice;I)V

    invoke-virtual {p0, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->r:Lkotlin/Lazy;

    invoke-super {p0, p1}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0023

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    const-string v4, "LIGHT_UP_PRODUCT"

    if-lt v2, v3, :cond_0

    const-class v2, Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    instance-of v2, p1, Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    if-nez v2, :cond_1

    move-object p1, v1

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    :goto_0
    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    goto :goto_1

    :cond_2
    move-object p1, v1

    :goto_1
    invoke-static {p0}, Lcom/vuitton/android/presentation/utils/PermissionUtils;->c(Lcom/vuitton/android/presentation/screen/base/BaseActivity;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p0}, Lcom/vuitton/android/presentation/utils/PermissionUtils;->d(Lcom/vuitton/android/presentation/screen/base/BaseActivity;)V

    :cond_3
    :try_start_0
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lightup/sdk/device/enums/LightupDeviceType;

    invoke-virtual {p0, v2}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/BaseLightUpActivity;->I(Lcom/lightup/sdk/device/enums/LightupDeviceType;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    invoke-static {p0}, Lcom/vuitton/android/presentation/utils/PermissionUtils;->d(Lcom/vuitton/android/presentation/screen/base/BaseActivity;)V

    :goto_2
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lightup/sdk/device/enums/LightupDeviceType;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->a:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->q:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpRouter;

    const-string v3, "lightUpRouter"

    if-nez p1, :cond_7

    if-eqz v2, :cond_6

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lightup/sdk/device/enums/LightupDeviceType;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpRouter$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    move-object p1, v1

    goto :goto_4

    :cond_4
    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanFragment;->O:Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanFragment;->Q:Ljava/lang/String;

    new-instance p1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanFragment;

    invoke-direct {p1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerScanFragment;-><init>()V

    :goto_3
    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    goto :goto_4

    :cond_5
    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllScanFragment;->O:Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllScanFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllScanFragment;->Q:Ljava/lang/String;

    new-instance p1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllScanFragment;

    invoke-direct {p1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllScanFragment;-><init>()V

    goto :goto_3

    :goto_4
    if-eqz v1, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const v0, 0x7f0a0204

    invoke-virtual {p0, v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->e()I

    goto :goto_5

    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :cond_7
    if-eqz v2, :cond_9

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpRouter;->a(Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;)V

    :cond_8
    :goto_5
    return-void

    :cond_9
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1
.end method

.method public final onDeviceShutDown(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;Lcom/lightup/sdk/device/enums/PowerOffReason;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lr90;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2}, Lr90;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;I)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onNoDeviceFound(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lr90;

    const/16 v0, 0x9

    invoke-direct {p1, p0, v0}, Lr90;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;I)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onPause()V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->s:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$bluetoothReceiver$1;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x0

    const/16 v0, 0x5ce

    if-eq p1, v0, :cond_4

    const/16 v1, 0x5cf

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p3, p2}, Lkotlin/collections/ArraysKt;->g([II)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0}, Lcom/vuitton/android/presentation/utils/PermissionUtils;->a(Lcom/vuitton/android/presentation/screen/base/BaseActivity;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_0
    const/4 p1, 0x2

    if-ge p2, p1, :cond_2

    sget-object p1, Lcom/vuitton/android/presentation/utils/PermissionUtils;->a:[Ljava/lang/String;

    aget-object p3, p1, p2

    invoke-static {p0, p3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    :cond_2
    new-instance p1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$checkGps$1;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$checkGps$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;)V

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/utils/PermissionUtils;->b(Lcom/vuitton/android/presentation/screen/base/BaseActivity;Lcom/vuitton/android/presentation/utils/PermissionUtils$PermissionListener;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-static {p3, p2}, Lkotlin/collections/ArraysKt;->g([II)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$checkGps$1;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$checkGps$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;)V

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/utils/PermissionUtils;->b(Lcom/vuitton/android/presentation/screen/base/BaseActivity;Lcom/vuitton/android/presentation/utils/PermissionUtils$PermissionListener;)V

    return-void

    :cond_5
    new-instance p1, Lr90;

    const/4 p2, 0x7

    invoke-direct {p1, p0, p2}, Lr90;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;I)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onRequiresUpdate(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;ZLcom/lightup/sdk/device/helpers/LightupHelperInterface;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lr90;

    const/4 p2, 0x6

    invoke-direct {p1, p0, p2}, Lr90;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;I)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->s:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity$bluetoothReceiver$1;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final onSupportNavigateUp()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->J()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->V()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
