.class public final Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/BluetoothInfoFragment;
.super Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/Hilt_BluetoothInfoFragment;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/BluetoothInfoFragment$Companion;,
        Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/BluetoothInfoFragment$Listener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u000b\u000cB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/BluetoothInfoFragment;",
        "Landroidx/fragment/app/Fragment;",
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
.field public static final H:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/BluetoothInfoFragment$Companion;

.field public static final synthetic I:[Lkotlin/reflect/KProperty;

.field public static final J:Ljava/lang/String;


# instance fields
.field public final F:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

.field public G:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet$openBluetoothInfoFragment$listener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/BluetoothInfoFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerBluetoothInfoBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->h(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v0, v1, v4

    sput-object v1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/BluetoothInfoFragment;->I:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/BluetoothInfoFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/BluetoothInfoFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/BluetoothInfoFragment;->H:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/BluetoothInfoFragment$Companion;

    const-string v0, "BluetoothInfoFragment"

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/BluetoothInfoFragment;->J:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d007f

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/Hilt_BluetoothInfoFragment;-><init>(I)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/BluetoothInfoFragment$binding$2;->b:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/BluetoothInfoFragment$binding$2;

    invoke-static {p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->d(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/BluetoothInfoFragment;->F:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    return-void
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/Hilt_BluetoothInfoFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

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

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/BluetoothInfoFragment;->I:[Lkotlin/reflect/KProperty;

    const/4 p2, 0x0

    aget-object v0, p1, p2

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/BluetoothInfoFragment;->F:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;->c(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KProperty;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerBluetoothInfoBinding;

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerBluetoothInfoBinding;->c:Landroid/widget/Button;

    new-instance v2, Lue;

    invoke-direct {v2, p0, p2}, Lue;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/BluetoothInfoFragment;I)V

    invoke-static {v0, v2}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    aget-object p1, p1, p2

    invoke-virtual {v1, p0, p1}, Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;->c(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KProperty;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerBluetoothInfoBinding;

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerBluetoothInfoBinding;->b:Landroid/widget/Button;

    new-instance p2, Lue;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lue;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/BluetoothInfoFragment;I)V

    invoke-static {p1, p2}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
