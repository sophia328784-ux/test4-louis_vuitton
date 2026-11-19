.class public abstract Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;
.super Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/Hilt_BaseLightUpScanFragment;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanView;
.implements Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/interfaces/LightUpScanFragmentInterface;


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\'\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0011\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J!\u0010\r\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0011\u0010\u000f\u001a\u0004\u0018\u00010\u0008H\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0011\u0010\u0011\u001a\u0004\u0018\u00010\u0008H\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u000cH&\u00a2\u0006\u0004\u0008\u0014\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u000cH&\u00a2\u0006\u0004\u0008\u0015\u0010\u0013J\u000f\u0010\u0016\u001a\u00020\u000cH&\u00a2\u0006\u0004\u0008\u0016\u0010\u0013J\u000f\u0010\u0017\u001a\u00020\u000cH&\u00a2\u0006\u0004\u0008\u0017\u0010\u0013J\u000f\u0010\u0018\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0013J\u001f\u0010\u001d\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u0013J\u000f\u0010 \u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008 \u0010\u0013R\u0018\u0010#\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0018\u0010%\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010\"R\u001a\u0010+\u001a\u00020&8\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*R\u001b\u00101\u001a\u00020,8@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010.\u001a\u0004\u0008/\u00100\u00a8\u00062"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanView;",
        "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/interfaces/LightUpScanFragmentInterface;",
        "",
        "layoutId",
        "<init>",
        "(I)V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "S",
        "()Landroid/view/View;",
        "R",
        "O",
        "()V",
        "W",
        "U",
        "V",
        "P",
        "A",
        "Lcom/lightup/sdk/device/devicemanagement/LightupDevice;",
        "device",
        "Lcom/lightup/sdk/device/enums/LightupDeviceType;",
        "deviceType",
        "h",
        "(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;Lcom/lightup/sdk/device/enums/LightupDeviceType;)V",
        "onStop",
        "onDestroyView",
        "F",
        "Ljava/lang/Integer;",
        "initialCloseTopMargin",
        "G",
        "initialStartPairingBottomPadding",
        "Landroid/view/animation/AlphaAnimation;",
        "H",
        "Landroid/view/animation/AlphaAnimation;",
        "Q",
        "()Landroid/view/animation/AlphaAnimation;",
        "anim",
        "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel;",
        "I",
        "Lkotlin/Lazy;",
        "T",
        "()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel;",
        "viewModel",
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
.field public static final J:I = 0x8


# instance fields
.field private F:Ljava/lang/Integer;

.field private G:Ljava/lang/Integer;

.field private final H:Landroid/view/animation/AlphaAnimation;

.field private final I:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/Hilt_BaseLightUpScanFragment;-><init>(I)V

    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3dcccccd    # 0.1f

    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;->H:Landroid/view/animation/AlphaAnimation;

    new-instance p1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment$special$$inlined$viewModels$default$1;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v1, p1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    const-class v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v1, p1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment$special$$inlined$viewModels$default$4;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v3, p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    new-instance p1, Landroidx/lifecycle/ViewModelLazy;

    invoke-direct {p1, v0, v1, v3, v2}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;->I:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public A()V
    .locals 5

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/Hilt_BaseLightUpScanFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;->U()V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;->P()V

    sget-object v0, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;->R:Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$Companion;

    const v1, 0x7f140b3e

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x7f140b2c

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1410e0

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f140b2d

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, v3, v4}, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$Companion;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment$showDetectionFailedBottomSheet$1;

    invoke-direct {v1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment$showDetectionFailedBottomSheet$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;)V

    iput-object v1, v0, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;->O:Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$OnPositiveClickListener;

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment$showDetectionFailedBottomSheet$2;

    invoke-direct {v1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment$showDetectionFailedBottomSheet$2;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;)V

    iput-object v1, v0, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;->P:Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$OnNegativeClickListener;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v1, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;->S:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public O()V
    .locals 7

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;->S()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;->R()Landroid/view/View;

    move-result-object v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_4

    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_1

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_2

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;->F:Ljava/lang/Integer;

    if-nez v6, :cond_3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;->F:Ljava/lang/Integer;

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;->F:Ljava/lang/Integer;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_2

    :cond_5
    move v4, v2

    :goto_2
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_6

    move-object v3, v5

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_6
    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;->G:Ljava/lang/Integer;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_3

    :cond_7
    if-eqz v3, :cond_8

    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;->G:Ljava/lang/Integer;

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_a

    :goto_4
    return-void

    :cond_a
    new-instance v2, Lpc;

    invoke-direct {v2, v0, v1, v3, v4}, Lpc;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p0, v2}, Landroidx/core/view/ViewCompat;->x(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    return-void
.end method

.method public abstract P()V
.end method

.method public final Q()Landroid/view/animation/AlphaAnimation;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;->H:Landroid/view/animation/AlphaAnimation;

    return-object p0
.end method

.method public R()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public S()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final T()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;->I:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel;

    return-object p0
.end method

.method public abstract U()V
.end method

.method public abstract V()V
.end method

.method public abstract W()V
.end method

.method public h(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;Lcom/lightup/sdk/device/enums/LightupDeviceType;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;->P()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;->S:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;

    invoke-direct {v1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "LIGHT_UP_DEVICE_TYPE"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;->R:Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;->V:Ljava/lang/String;

    invoke-virtual {v1, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;->T()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;->Ac(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/vuitton/android/presentation/utils/PermissionUtils;->e(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelperInstance;->a:Lcom/lightup/sdk/device/helpers/LightupHelper;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelperInstance;->a()Lcom/lightup/sdk/device/helpers/LightupHelper;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->a:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/lightup/sdk/device/helpers/LightupHelper;->stopScan(Lcom/lightup/sdk/device/enums/LightupDeviceType;)V

    goto :goto_0

    :cond_0
    const-string p0, "lightUpDeviceType"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;->P()V

    :cond_2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/Hilt_BaseLightUpScanFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance p1, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling;

    new-instance v0, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;-><init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p1, p0, v0}, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling;-><init>(Landroidx/fragment/app/Fragment;Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;->O()V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;->T()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p2, p0}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;->yc(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Object;)V

    return-void
.end method
