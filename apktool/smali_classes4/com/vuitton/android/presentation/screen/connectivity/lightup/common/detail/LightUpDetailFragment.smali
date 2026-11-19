.class public abstract Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;
.super Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/Hilt_LightUpDetailFragment;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailView;
.implements Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/interfaces/LightUpDetailFragmentInterface;


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$Companion;,
        Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001c\n\u0002\u0010\u0003\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\'\u0018\u0000 ^2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001_B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H&\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH&\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH&\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u000bH&\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0008H&\u00a2\u0006\u0004\u0008\u0014\u0010\u0005J\u000f\u0010\u0015\u001a\u00020\u0008H&\u00a2\u0006\u0004\u0008\u0015\u0010\u0005J!\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u00162\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\u001c\u0010\u0005J\u000f\u0010\u001d\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u0005J\u000f\u0010\u001e\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u0005J\u000f\u0010\u001f\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u0005J\u000f\u0010 \u001a\u00020\u0008H\u0004\u00a2\u0006\u0004\u0008 \u0010\u0005J%\u0010#\u001a\u00020\u00082\u0008\u0010!\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u000bH\u0004\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010%\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008%\u0010\u0005J\u001f\u0010(\u001a\u00020\u00082\u0006\u0010&\u001a\u00020\u00062\u0008\u0010\'\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008(\u0010)J\u000f\u0010*\u001a\u00020\u0008H\u0004\u00a2\u0006\u0004\u0008*\u0010\u0005J\u000f\u0010+\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008+\u0010\u0005J\u0017\u0010-\u001a\u00020\u00082\u0006\u0010,\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008-\u0010\u0013J\u000f\u0010.\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008.\u0010\u0005J\u000f\u0010/\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008/\u0010\u0005J\u000f\u00100\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u00080\u0010\u0005J\u0017\u00102\u001a\u00020\u00082\u0006\u00101\u001a\u00020\u000bH\u0004\u00a2\u0006\u0004\u00082\u0010\u0013J\u000f\u00103\u001a\u00020\u0008H\u0004\u00a2\u0006\u0004\u00083\u0010\u0005J\u000f\u00104\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u00084\u0010\u0005J\u0017\u00107\u001a\u00020\u00082\u0006\u00106\u001a\u000205H\u0016\u00a2\u0006\u0004\u00087\u00108J\u000f\u00109\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u00089\u0010\u0005R\u0018\u0010=\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u0018\u0010?\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u0010<R\u001b\u0010E\u001a\u00020@8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008A\u0010B\u001a\u0004\u0008C\u0010DR\u0018\u0010I\u001a\u0004\u0018\u00010F8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008G\u0010HR\u0018\u0010M\u001a\u0004\u0018\u00010J8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR\u0016\u0010P\u001a\u00020N8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010 R$\u0010W\u001a\u0004\u0018\u00010\u00168\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008Q\u0010R\u001a\u0004\u0008S\u0010T\"\u0004\u0008U\u0010VR\u001b\u0010]\u001a\u00020X8@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008Y\u0010Z\u001a\u0004\u0008[\u0010\\\u00a8\u0006`"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailView;",
        "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/interfaces/LightUpDetailFragmentInterface;",
        "<init>",
        "()V",
        "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;",
        "selectedMode",
        "",
        "q0",
        "(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;)V",
        "",
        "i0",
        "()Ljava/lang/String;",
        "Lcom/lightup/sdk/device/enums/LightupDeviceType;",
        "f0",
        "()Lcom/lightup/sdk/device/enums/LightupDeviceType;",
        "presetName",
        "C0",
        "(Ljava/lang/String;)V",
        "x0",
        "E0",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "a0",
        "t",
        "u",
        "k0",
        "Z",
        "powerMode",
        "customText",
        "v0",
        "(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;Ljava/lang/String;)V",
        "o0",
        "mode",
        "previousMode",
        "p0",
        "(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;)V",
        "t0",
        "D0",
        "notificationTitle",
        "A0",
        "y0",
        "b0",
        "l0",
        "url",
        "c0",
        "r0",
        "v",
        "",
        "error",
        "a",
        "(Ljava/lang/Throwable;)V",
        "onDestroyView",
        "",
        "F",
        "Ljava/lang/Integer;",
        "initialToolbarTopPadding",
        "G",
        "initialScrollBottomPadding",
        "Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;",
        "H",
        "Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;",
        "e0",
        "()Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;",
        "binding",
        "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/LightUpLoadingDialogFragment;",
        "I",
        "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/LightUpLoadingDialogFragment;",
        "progressDialog",
        "Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;",
        "J",
        "Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;",
        "lightUpProduct",
        "",
        "K",
        "isAnimationsUpdateRequired",
        "L",
        "Landroid/view/View;",
        "g0",
        "()Landroid/view/View;",
        "u0",
        "(Landroid/view/View;)V",
        "powerManagementLayout",
        "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;",
        "M",
        "Lkotlin/Lazy;",
        "j0",
        "()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;",
        "viewModel",
        "N",
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
.field public static final N:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$Companion;

.field static final synthetic O:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final P:I

.field public static final Q:Ljava/lang/String; = "LIGHT_UP_PRODUCT"

.field private static final R:I = 0x64


# instance fields
.field private F:Ljava/lang/Integer;

.field private G:Ljava/lang/Integer;

.field private final H:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

.field private I:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/LightUpLoadingDialogFragment;

.field private J:Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

.field private K:Z

.field private L:Landroid/view/View;

.field private final M:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->h(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v0, v1, v4

    sput-object v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->O:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->N:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->P:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const v0, 0x7f0d0070

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/Hilt_LightUpDetailFragment;-><init>(I)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$binding$2;->b:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$binding$2;

    invoke-static {p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->d(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->H:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$special$$inlined$viewModels$default$4;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v4, p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    new-instance v0, Landroidx/lifecycle/ViewModelLazy;

    invoke-direct {v0, v1, v2, v4, v3}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->M:Lkotlin/Lazy;

    return-void
.end method

.method public static O(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;Lcom/lightup/sdk/animation/CreatorProject;I)Lkotlin/Unit;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->z0()V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->m0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Lv90;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lv90;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;I)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->K:Z

    if-eqz v0, :cond_2

    const p1, 0x7f140b54

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->A0(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Lv90;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lv90;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;I)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/lightup/sdk/animation/CreatorProject;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->C0(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->B0(Lcom/lightup/sdk/animation/CreatorProject;I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    if-eqz p1, :cond_4

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_5

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/connectivity/views/ToastKt;->a(Lcom/vuitton/android/presentation/screen/base/BaseActivity;)V

    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static P(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->z0()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;->e:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;->ECO:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    :cond_2
    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->q0(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;)V

    :goto_0
    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0
.end method

.method public static Q(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;I)V
    .locals 3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/LightUpLoadingDialogFragment;

    if-eqz p0, :cond_0

    const-string v0, "%"

    invoke-static {p1, v0}, Lcj;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/LightUpLoadingDialogFragment;->F:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/LightUpLoadingDialogFragment;->H:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;->c(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KProperty;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/databinding/DialogLightUpBinding;

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/DialogLightUpBinding;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static R(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/LightUpLoadingDialogFragment;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method public static final synthetic S(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;)Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    return-object p0
.end method

.method public static final T(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lv90;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lv90;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static final U(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;Lcom/lightup/sdk/animation/CreatorProject;I)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lq6;

    const/4 v2, 0x7

    invoke-direct {v1, p0, p1, p2, v2}, Lq6;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static final V(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lv90;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lv90;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lv90;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lv90;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static final W(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;I)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lt6;

    const/4 v2, 0x4

    invoke-direct {v1, p0, p1, v2}, Lt6;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static final synthetic X(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->K:Z

    return-void
.end method

.method public static final Y(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/vuitton/android/presentation/utils/PermissionUtils;->e(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$unPairProduct$1$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$unPairProduct$1$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;)V

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelperInstance;->a()Lcom/lightup/sdk/device/helpers/LightupHelper;

    move-result-object p0

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->a:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/lightup/sdk/device/helpers/LightupHelper;->getDeviceHelper(Lcom/lightup/sdk/device/enums/LightupDeviceType;)Lcom/lightup/sdk/device/helpers/LightupHelperInterface;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper$makeDeviceAvailable$1;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper$makeDeviceAvailable$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$unPairProduct$1$1;)V

    invoke-interface {p0, v1}, Lcom/lightup/sdk/device/helpers/LightupHelperInterface;->openDevice(Lcom/lightup/sdk/device/ble/scanner/listeners/OpenDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    :cond_0
    return-void

    :cond_1
    const-string p0, "lightUpDeviceType"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->H()V

    return-void

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lv90;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lv90;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic w0(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->v0(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: setPowerModeLayoutTitle"

    invoke-static {p0}, Lmt;->i(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public A0(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->e0()Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;

    move-result-object p0

    iget-object v0, p0, Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;->i:Lcom/vuitton/android/presentation/databinding/InAppNotificationBinding;

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/InAppNotificationBinding;->b:Landroidx/cardview/widget/CardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;->i:Lcom/vuitton/android/presentation/databinding/InAppNotificationBinding;

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/InAppNotificationBinding;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;->k:Landroidx/core/widget/NestedScrollView;

    const/16 p1, 0x21

    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->f(I)Z

    return-void
.end method

.method public final B0(Lcom/lightup/sdk/animation/CreatorProject;I)V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$startAnimationForPreset$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$startAnimationForPreset$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;Lcom/lightup/sdk/animation/CreatorProject;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelperInstance;->a()Lcom/lightup/sdk/device/helpers/LightupHelper;

    move-result-object p0

    sget-object p2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->a:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/lightup/sdk/device/helpers/LightupHelper;->getDeviceHelper(Lcom/lightup/sdk/device/enums/LightupDeviceType;)Lcom/lightup/sdk/device/helpers/LightupHelperInterface;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/lightup/sdk/animation/CreatorProject;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1, v0}, Lcom/lightup/sdk/device/helpers/LightupHelperInterface;->startAnimation(Ljava/lang/String;Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    :cond_0
    return-void

    :cond_1
    const-string p0, "lightUpDeviceType"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public abstract C0(Ljava/lang/String;)V
.end method

.method public D0()V
    .locals 2

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->l0()V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->d0()V

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$updateDevice$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$updateDevice$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;)V

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelperInstance;->a()Lcom/lightup/sdk/device/helpers/LightupHelper;

    move-result-object p0

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->a:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/lightup/sdk/device/helpers/LightupHelper;->getDeviceHelper(Lcom/lightup/sdk/device/enums/LightupDeviceType;)Lcom/lightup/sdk/device/helpers/LightupHelperInterface;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, v0}, Lcom/lightup/sdk/device/helpers/LightupHelperInterface;->updateDevice(Lcom/lightup/sdk/device/model/listeners/UpdateDeviceListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    return-void

    :cond_0
    const-string p0, "lightUpDeviceType"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    return-void
.end method

.method public abstract E0()V
.end method

.method public final Z()V
    .locals 4

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/Hilt_LightUpDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->e0()Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;->h:Landroid/widget/LinearLayout;

    const v2, 0x7f0d00a2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->L:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v1, 0x7f140b41

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lhi;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lhi;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->e0()Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lv90;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lv90;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a0()V
    .locals 6

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->e0()Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;->f:Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;->b:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->e0()Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;->k:Landroidx/core/widget/NestedScrollView;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->F:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->F:Ljava/lang/Integer;

    :goto_0
    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->G:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->G:Ljava/lang/Integer;

    :goto_1
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->e0()Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;->b:Landroid/widget/RelativeLayout;

    new-instance v5, Lt90;

    invoke-direct {v5, v0, v2, v1, v3}, Lt90;-><init>(Lcom/google/android/material/appbar/AppBarLayout;ILandroidx/core/widget/NestedScrollView;I)V

    invoke-static {v4, v5}, Landroidx/core/view/ViewCompat;->x(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->e0()Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    return-void
.end method

.method public b0()V
    .locals 2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->e0()Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;

    move-result-object p0

    iget-object v0, p0, Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;->k:Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;->e:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final c0(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "application/pdf"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final d0()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/LightUpLoadingDialogFragment;

    if-nez v1, :cond_0

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/LightUpLoadingDialogFragment;->G:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/LightUpLoadingDialogFragment$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->i0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/LightUpLoadingDialogFragment;

    invoke-direct {v1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/LightUpLoadingDialogFragment;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "TITLE"

    invoke-virtual {v3, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/LightUpLoadingDialogFragment;

    :cond_0
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/LightUpLoadingDialogFragment;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/LightUpLoadingDialogFragment;

    if-eqz p0, :cond_1

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/LightUpLoadingDialogFragment;->G:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/LightUpLoadingDialogFragment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/LightUpLoadingDialogFragment;->I:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final e0()Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->H:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->O:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;->c(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KProperty;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;

    return-object p0
.end method

.method public abstract f0()Lcom/lightup/sdk/device/enums/LightupDeviceType;
.end method

.method public final g0()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->L:Landroid/view/View;

    return-object p0
.end method

.method public final h0()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter;
    .locals 1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->e0()Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract i0()Ljava/lang/String;
.end method

.method public final j0()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->M:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;

    return-object p0
.end method

.method public k0()V
    .locals 7

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->l0()V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->j0()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;->Dc(Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;)V

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelperInstance;->a()Lcom/lightup/sdk/device/helpers/LightupHelper;

    move-result-object v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->a:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    invoke-virtual {v1, v2}, Lcom/lightup/sdk/device/helpers/LightupHelper;->getDeviceHelper(Lcom/lightup/sdk/device/enums/LightupDeviceType;)Lcom/lightup/sdk/device/helpers/LightupHelperInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/lightup/sdk/device/helpers/LightupHelperInterface;->getDeviceAnimations()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->l0()V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->e0()Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;->g:Landroid/widget/LinearLayout;

    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-static {v4}, Lcom/vuitton/foundation/model/domain/extensions/CollectionExtKt;->a(Ljava/util/Collection;)Z

    move-result v4

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->L:Landroid/view/View;

    if-eqz v2, :cond_3

    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-static {v4}, Lcom/vuitton/foundation/model/domain/extensions/CollectionExtKt;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lcom/vuitton/foundation/model/domain/extensions/CollectionExtKt;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;->e:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    invoke-virtual {p0, v2}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->s0(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->h0()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;->i:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, v3

    :goto_2
    if-eqz v0, :cond_9

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/lightup/sdk/animation/CreatorProject;

    invoke-virtual {v5}, Lcom/lightup/sdk/animation/CreatorProject;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move-object v3, v4

    :cond_7
    check-cast v3, Lcom/lightup/sdk/animation/CreatorProject;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/lightup/sdk/animation/CreatorProject;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->B0(Lcom/lightup/sdk/animation/CreatorProject;I)V

    return-void

    :cond_8
    const-string p0, "lightUpDeviceType"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3

    :cond_9
    return-void
.end method

.method public l0()V
    .locals 2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->e0()Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;

    move-result-object p0

    iget-object v0, p0, Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;->e:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;->k:Landroidx/core/widget/NestedScrollView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final m0()Z
    .locals 1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->L:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->L:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final n0(Lcom/lightup/sdk/animation/CreatorProject;)V
    .locals 7

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->m0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->r0()V

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_2

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelperInstance;->a()Lcom/lightup/sdk/device/helpers/LightupHelper;

    move-result-object v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->a:Lcom/lightup/sdk/device/enums/LightupDeviceType;

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Lcom/lightup/sdk/device/helpers/LightupHelper;->getDeviceHelper(Lcom/lightup/sdk/device/enums/LightupDeviceType;)Lcom/lightup/sdk/device/helpers/LightupHelperInterface;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper$stopCurrentAnimation$1;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v1, v2}, Lcom/lightup/sdk/device/helpers/LightupHelperInterface;->stopAnimation(Lcom/lightup/sdk/device/features/process/listener/ActionListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    goto :goto_1

    :cond_1
    const-string p0, "lightUpDeviceType"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/lightup/sdk/animation/CreatorProject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/lightup/sdk/animation/CreatorProject;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/lightup/sdk/animation/CreatorProject;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/16 v6, 0x1f

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;->a(Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->h0()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter;

    move-result-object v1

    if-eqz v1, :cond_6

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/lightup/sdk/animation/CreatorProject;->getId()Ljava/lang/String;

    move-result-object v0

    :cond_5
    iput-object v0, v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter;->d:Ljava/lang/String;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_6
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->j0()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;->Dc(Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;)V

    :cond_7
    return-void
.end method

.method public o0()V
    .locals 3

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lv90;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lv90;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->j0()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;->Ac(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/Hilt_LightUpDetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

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

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->a0()V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->j0()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p2, p0}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;->yc(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "LIGHT_UP_PRODUCT"

    if-lt v0, v1, :cond_0

    const-class v0, Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    if-nez v0, :cond_1

    move-object p1, p2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    :goto_0
    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    goto :goto_1

    :cond_2
    move-object p1, p2

    :goto_1
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->e0()Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;

    move-result-object p1

    iget-object v0, p1, Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;->f:Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;->c:Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;->b:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x6

    invoke-static {p0, v0, p2, v1}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->a(Landroidx/fragment/app/Fragment;Landroidx/appcompat/widget/Toolbar;Ll61;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityHeading(Z)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->x0()V

    iget-object v0, p1, Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;->c:Landroid/widget/Button;

    new-instance v2, Lu90;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lu90;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;I)V

    invoke-static {v0, v2}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iget-object v0, p1, Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;->i:Lcom/vuitton/android/presentation/databinding/InAppNotificationBinding;

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/InAppNotificationBinding;->b:Landroidx/cardview/widget/CardView;

    new-instance v2, Lu90;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lu90;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;I)V

    invoke-static {v0, v2}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iget-object v0, p1, Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;->l:Landroid/widget/TextView;

    new-instance v2, Lu90;

    invoke-direct {v2, p0, v1}, Lu90;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;I)V

    invoke-static {v0, v2}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->h0()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    :cond_3
    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentLightUpProductDetailBinding;->j:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter;

    new-instance v1, Lw20;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lw20;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Light up product should not be null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final p0(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->z0()V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->s0(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;)V

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->b()Lcom/lightup/sdk/animation/CreatorProject;

    move-result-object p1

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;->STANDBY:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    if-ne v0, p2, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->h0()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/lightup/sdk/animation/CreatorProject;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter;->a(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->B0(Lcom/lightup/sdk/animation/CreatorProject;I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    if-eqz p1, :cond_2

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/connectivity/views/ToastKt;->a(Lcom/vuitton/android/presentation/screen/base/BaseActivity;)V

    :cond_3
    return-void
.end method

.method public abstract q0(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;)V
.end method

.method public final r0()V
    .locals 1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->h0()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter;->d:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final s0(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;)V
    .locals 8

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->m0()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->w0(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;Ljava/lang/String;ILjava/lang/Object;)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    return-void

    :pswitch_0
    sget-object v0, Lcom/lightup/sdk/device/enums/DeviceMode;->DISCREET:Lcom/lightup/sdk/device/enums/DeviceMode;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->e(Lcom/lightup/sdk/device/enums/DeviceMode;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->j0()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;

    move-result-object v0

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;->DISCREET:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    const/4 v5, 0x0

    const/16 v6, 0xf7

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;->a(Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;->Dc(Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;)V

    goto/16 :goto_0

    :pswitch_1
    sget-object v0, Lcom/lightup/sdk/device/enums/DeviceMode;->WALKING:Lcom/lightup/sdk/device/enums/DeviceMode;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->e(Lcom/lightup/sdk/device/enums/DeviceMode;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->j0()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;

    move-result-object v0

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;->WALKING:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    const/4 v5, 0x0

    const/16 v6, 0xf7

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;->a(Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;->Dc(Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/lightup/sdk/device/enums/DeviceMode;->ALWAYS_ON:Lcom/lightup/sdk/device/enums/DeviceMode;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->e(Lcom/lightup/sdk/device/enums/DeviceMode;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->j0()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;

    move-result-object v0

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;->ALWAYS_ON:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    const/4 v5, 0x0

    const/16 v6, 0xf7

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;->a(Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;->Dc(Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->n0(Lcom/lightup/sdk/animation/CreatorProject;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->j0()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;

    move-result-object v0

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;->STANDBY:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    const/4 v6, 0x0

    const/16 v7, 0x17

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;->a(Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;->Dc(Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;)V

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/lightup/sdk/device/enums/DeviceMode;->STANDARD:Lcom/lightup/sdk/device/enums/DeviceMode;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->e(Lcom/lightup/sdk/device/enums/DeviceMode;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->j0()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;

    move-result-object v0

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;->STANDARD:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    const/4 v5, 0x0

    const/16 v6, 0xf7

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;->a(Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;->Dc(Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;)V

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/lightup/sdk/device/enums/DeviceMode;->ECO:Lcom/lightup/sdk/device/enums/DeviceMode;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->e(Lcom/lightup/sdk/device/enums/DeviceMode;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->j0()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;

    move-result-object v0

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;->ECO:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    const/4 v5, 0x0

    const/16 v6, 0xf7

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;->a(Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;->Dc(Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    if-eqz p0, :cond_2

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;->e:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public t()V
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;->f:Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/KeepAllMonitoringManager;->c:Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->c:Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->k0()V

    return-void

    :cond_2
    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelper;->a()V

    :cond_3
    if-eqz v2, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    if-eqz v0, :cond_4

    move-object v1, p0

    check-cast v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    :cond_4
    if-eqz v1, :cond_8

    new-instance p0, Lr90;

    const/16 v0, 0x8

    invoke-direct {p0, v1, v0}, Lr90;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;I)V

    invoke-virtual {v1, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Lcom/lightup/sdk/device/devicemanagement/LightupDevice;->getType()Lcom/lightup/sdk/device/enums/LightupDeviceType;

    move-result-object p0

    if-nez p0, :cond_5

    const/4 p0, -0x1

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/LVLightUpMonitoringManager$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    :goto_2
    const/4 v0, 0x1

    if-eq p0, v0, :cond_7

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    goto :goto_3

    :cond_6
    sput-object v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->b:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelperInstance;->a()Lcom/lightup/sdk/device/helpers/LightupHelper;

    move-result-object p0

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->a:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;

    invoke-virtual {p0, v2, v1, v0}, Lcom/lightup/sdk/device/helpers/LightupHelper;->connect(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    return-void

    :cond_7
    sput-object v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/KeepAllMonitoringManager;->b:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    invoke-static {}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/helper/LVLightUpHelperInstance;->a()Lcom/lightup/sdk/device/helpers/LightupHelper;

    move-result-object p0

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/KeepAllMonitoringManager;->a:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/KeepAllMonitoringManager;

    invoke-virtual {p0, v2, v1, v0}, Lcom/lightup/sdk/device/helpers/LightupHelper;->connect(Lcom/lightup/sdk/device/devicemanagement/LightupDevice;Lcom/lightup/sdk/device/ble/scanner/listeners/LightupDeviceConnectionListener;Lcom/lightup/sdk/device/features/process/monitoring/LightupMonitoringListener;)Lcom/lightup/sdk/device/enums/CallStatus;

    :cond_8
    :goto_3
    return-void
.end method

.method public final t0()V
    .locals 1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;->e:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->s0(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;)V

    return-void

    :cond_0
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;->ECO:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->s0(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;)V

    return-void
.end method

.method public u()V
    .locals 5

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

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$showNoDeviceFoundBottomSheet$1;

    invoke-direct {v1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$showNoDeviceFoundBottomSheet$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;)V

    iput-object v1, v0, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;->O:Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$OnPositiveClickListener;

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$showNoDeviceFoundBottomSheet$2;

    invoke-direct {v1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$showNoDeviceFoundBottomSheet$2;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;)V

    iput-object v1, v0, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;->P:Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$OnNegativeClickListener;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget-object v1, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;->S:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public final u0(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->L:Landroid/view/View;

    return-void
.end method

.method public v()V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;->c:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/LVLightUpMonitoringManager$WhenMappings;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    sput-object v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->c:Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

    sput-object v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->b:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    sput-object v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->d:Ljava/lang/Boolean;

    sput-object v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->e:Ljava/lang/Boolean;

    sput-object v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->f:Ljava/lang/Boolean;

    sput-object v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->g:Ljava/lang/Boolean;

    sput-object v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/SneakerMonitoringManager;->h:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    sput-object v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/KeepAllMonitoringManager;->c:Lcom/lightup/sdk/device/devicemanagement/LightupDevice;

    sput-object v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/KeepAllMonitoringManager;->b:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    sput-object v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/KeepAllMonitoringManager;->d:Ljava/lang/Boolean;

    sput-object v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/manager/KeepAllMonitoringManager;->e:Ljava/lang/Boolean;

    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    return-void
.end method

.method public final v0(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/Hilt_LightUpDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    invoke-static {p1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragmentKt;->a(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, "None"

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->L:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const v1, 0x7f140b41

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p2, 0x2

    invoke-static {p0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p2, "%s: %s"

    invoke-static {v0, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public abstract x0()V
.end method

.method public y0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->K:Z

    const v0, 0x7f140b54

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->A0(Ljava/lang/String;)V

    return-void
.end method

.method public final z0()V
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;->R:Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$Companion;

    const v1, 0x7f140b59

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x7f1404b0

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1404b4

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$Companion;->b(Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$showSwitchedOffDialog$1;

    invoke-direct {v1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$showSwitchedOffDialog$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;)V

    iput-object v1, v0, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;->O:Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$OnPositiveClickListener;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget-object v1, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;->S:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
