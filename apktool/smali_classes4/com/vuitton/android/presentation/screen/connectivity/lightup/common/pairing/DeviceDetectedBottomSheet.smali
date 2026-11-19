.class public final Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;
.super Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/Hilt_DeviceDetectedBottomSheet;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet$Companion;,
        Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;",
        "Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseBottomSheet;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
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
.field public static final S:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet$Companion;

.field public static final synthetic T:[Lkotlin/reflect/KProperty;

.field public static final V:Ljava/lang/String;


# instance fields
.field public final O:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

.field public final P:Lkotlin/Lazy;

.field public final Q:Landroidx/lifecycle/ViewModelLazy;

.field public R:Lcom/lightup/sdk/device/devicemanagement/LightupDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentLightUpScanBottomSheetBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->h(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v0, v1, v4

    sput-object v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;->T:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;->S:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet$Companion;

    const-string v0, "DeviceDetectedBottomSheet"

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;->V:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const v0, 0x7f0d0071

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/Hilt_DeviceDetectedBottomSheet;-><init>(I)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet$binding$2;->b:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet$binding$2;

    invoke-static {p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->d(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;->O:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    new-instance v0, Lss;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lss;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;->P:Lkotlin/Lazy;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedViewModel;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet$special$$inlined$viewModels$default$3;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet$special$$inlined$viewModels$default$4;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet$special$$inlined$viewModels$default$5;

    invoke-direct {v4, p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    new-instance v0, Landroidx/lifecycle/ViewModelLazy;

    invoke-direct {v0, v1, v2, v4, v3}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;->Q:Landroidx/lifecycle/ViewModelLazy;

    return-void
.end method

.method public static V(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;)Lcom/lightup/sdk/device/enums/LightupDeviceType;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const-string v3, "LIGHT_UP_DEVICE_TYPE"

    if-lt v1, v2, :cond_0

    const-class v0, Lcom/lightup/sdk/device/enums/LightupDeviceType;

    invoke-virtual {p0, v3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    instance-of v1, p0, Lcom/lightup/sdk/device/enums/LightupDeviceType;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    move-object p0, v0

    check-cast p0, Lcom/lightup/sdk/device/enums/LightupDeviceType;

    :goto_1
    check-cast p0, Lcom/lightup/sdk/device/enums/LightupDeviceType;

    return-object p0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final W()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedViewModel;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;->Q:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedViewModel;

    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;->P:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lightup/sdk/device/enums/LightupDeviceType;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/LVLightUpMonitoringManagerKt;->a(Lcom/lightup/sdk/device/enums/LightupDeviceType;)Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;->W()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedViewModel;

    move-result-object p0

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$ResultScreen;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$ResultScreen;-><init>(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedViewModel;->d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseBottomSheet;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;->W()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedViewModel;

    move-result-object p1

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lnt;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lnt;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;I)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;->W()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedViewModel;

    move-result-object p1

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lnt;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2}, Lnt;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;I)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;->T:[Lkotlin/reflect/KProperty;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;->O:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    invoke-virtual {v0, p0, p1}, Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;->c(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KProperty;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/databinding/FragmentLightUpScanBottomSheetBinding;

    iget-object v0, p1, Lcom/vuitton/android/presentation/databinding/FragmentLightUpScanBottomSheetBinding;->f:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/vuitton/android/presentation/databinding/FragmentLightUpScanBottomSheetBinding;->e:Landroid/widget/TextView;

    const v4, 0x7f1403cf

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;->P:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lightup/sdk/device/enums/LightupDeviceType;

    if-eqz v0, :cond_4

    iget-object v4, p1, Lcom/vuitton/android/presentation/databinding/FragmentLightUpScanBottomSheetBinding;->d:Landroid/widget/ImageView;

    sget-object v5, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v5, v6

    const v7, 0x7f080285

    if-eq v6, v1, :cond_1

    if-eq v6, v2, :cond_0

    goto :goto_0

    :cond_0
    const v7, 0x7f08029d

    :cond_1
    :goto_0
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v5, v0

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const v0, 0x7f140b37

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const v0, 0x7f140b35

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p1, Lcom/vuitton/android/presentation/databinding/FragmentLightUpScanBottomSheetBinding;->c:Landroid/widget/Button;

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/a;

    invoke-direct {v1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/a;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;)V

    invoke-static {v0, v1}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentLightUpScanBottomSheetBinding;->b:Landroid/widget/Button;

    new-instance v0, Lnt;

    invoke-direct {v0, p0, p2}, Lnt;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;I)V

    invoke-static {p1, v0}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
