.class public final Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment;
.super Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseBottomSheet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment$Companion;,
        Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment$Listener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0001\u0018\u00002\u00020\u0001:\u0002\u000b\u000cB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment;",
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
        "Listener",
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
.field public static final N:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment$Companion;

.field public static final synthetic O:[Lkotlin/reflect/KProperty;

.field public static final P:Ljava/lang/String;


# instance fields
.field public L:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet$openScanBLEDeviceBottomSheet$listener$1;

.field public final M:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerBleDeviceListBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->h(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v0, v1, v4

    sput-object v1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment;->O:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment;->N:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment$Companion;

    const-string v0, "LVBLEDeviceListFragment"

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment;->P:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d007e

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseBottomSheet;-><init>(I)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment$binding$2;->b:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment$binding$2;

    invoke-static {p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->d(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment;->M:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    return-void
.end method


# virtual methods
.method public final V()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerBleDeviceListBinding;
    .locals 2

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment;->O:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment;->M:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;->c(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KProperty;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerBleDeviceListBinding;

    return-object p0
.end method

.method public final W()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lf50;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lf50;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-static {}, Lcom/lp/ble/manager/LPBLEManager;->getInstance()Lcom/lp/ble/manager/LPBLEManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lp/ble/manager/LPBLEManager;->stopScan()V

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseBottomSheet;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment;->V()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerBleDeviceListBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerBleDeviceListBinding;->c:Lcom/vuitton/android/presentation/databinding/ReusableBottomSheetTitleLayoutBinding;

    iget-object v0, p2, Lcom/vuitton/android/presentation/databinding/ReusableBottomSheetTitleLayoutBinding;->d:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityHeading(Z)V

    const v2, 0x7f141286

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p2, Lcom/vuitton/android/presentation/databinding/ReusableBottomSheetTitleLayoutBinding;->c:Landroid/widget/ImageView;

    new-instance v0, Le50;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Le50;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment;I)V

    invoke-static {p2, v0}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iget-object p2, p1, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerBleDeviceListBinding;->b:Landroid/widget/Button;

    new-instance v0, Le50;

    invoke-direct {v0, p0, v1}, Le50;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment;I)V

    invoke-static {p2, v0}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerBleDeviceListBinding;->e:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBluetoothDeviceAdapter;

    new-instance v0, Le50;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Le50;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment;I)V

    invoke-direct {p2, v0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBluetoothDeviceAdapter;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Lf50;

    invoke-direct {p2, p0, v2}, Lf50;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment;I)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
