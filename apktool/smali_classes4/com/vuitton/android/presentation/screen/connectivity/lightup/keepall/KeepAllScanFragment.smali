.class public final Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllScanFragment;
.super Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/Hilt_KeepAllScanFragment;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllScanFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllScanFragment;",
        "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;",
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
.field public static final O:Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllScanFragment$Companion;

.field public static final synthetic P:[Lkotlin/reflect/KProperty;

.field public static final Q:Ljava/lang/String;


# instance fields
.field public final N:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllScanFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentLightUpKeepAllScanBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->h(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v0, v1, v4

    sput-object v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllScanFragment;->P:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllScanFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllScanFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllScanFragment;->O:Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllScanFragment$Companion;

    const-string v0, "KeepAllScanFragment"

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllScanFragment;->Q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d006f

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/Hilt_KeepAllScanFragment;-><init>(I)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllScanFragment$binding$2;->b:Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllScanFragment$binding$2;

    invoke-static {p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->d(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllScanFragment;->N:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    return-void
.end method


# virtual methods
.method public final P()V
    .locals 2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllScanFragment;->X()Lcom/vuitton/android/presentation/databinding/FragmentLightUpKeepAllScanBinding;

    move-result-object p0

    iget-object v0, p0, Lcom/vuitton/android/presentation/databinding/FragmentLightUpKeepAllScanBinding;->b:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/FragmentLightUpKeepAllScanBinding;->d:Lcom/vuitton/android/presentation/screen/connectivity/views/FixedAspectRatioImageView;

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method

.method public final R()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllScanFragment;->X()Lcom/vuitton/android/presentation/databinding/FragmentLightUpKeepAllScanBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/FragmentLightUpKeepAllScanBinding;->b:Landroid/widget/Button;

    return-object p0
.end method

.method public final S()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllScanFragment;->X()Lcom/vuitton/android/presentation/databinding/FragmentLightUpKeepAllScanBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/FragmentLightUpKeepAllScanBinding;->c:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final U()V
    .locals 2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;->T()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel;

    move-result-object p0

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$PairNoDeviceFoundBottomSheetEvent;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;->KEEPALL:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$PairNoDeviceFoundBottomSheetEvent;-><init>(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel;->Dc(Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;)V

    return-void
.end method

.method public final V()V
    .locals 2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;->T()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel;

    move-result-object p0

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$PairNoDeviceFoundCancelButtonClickEvent;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;->KEEPALL:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$PairNoDeviceFoundCancelButtonClickEvent;-><init>(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel;->Dc(Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;)V

    return-void
.end method

.method public final W()V
    .locals 2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;->T()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel;

    move-result-object p0

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$PairingScreen;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;->KEEPALL:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$PairingScreen;-><init>(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel;->Dc(Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;)V

    return-void
.end method

.method public final X()Lcom/vuitton/android/presentation/databinding/FragmentLightUpKeepAllScanBinding;
    .locals 2

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllScanFragment;->P:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllScanFragment;->N:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;->c(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KProperty;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/databinding/FragmentLightUpKeepAllScanBinding;

    return-object p0
.end method

.method public final g(Ljava/util/List;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllScanFragment;->X()Lcom/vuitton/android/presentation/databinding/FragmentLightUpKeepAllScanBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/vuitton/android/presentation/databinding/FragmentLightUpKeepAllScanBinding;->b:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/databinding/FragmentLightUpKeepAllScanBinding;->d:Lcom/vuitton/android/presentation/screen/connectivity/views/FixedAspectRatioImageView;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;->Q()Landroid/view/animation/AlphaAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->R(Ljava/util/List;)V

    :cond_1
    iget-object p1, v0, Lcom/vuitton/android/presentation/databinding/FragmentLightUpKeepAllScanBinding;->b:Landroid/widget/Button;

    const v0, 0x7f140b3f

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllScanFragment;->X()Lcom/vuitton/android/presentation/databinding/FragmentLightUpKeepAllScanBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/vuitton/android/presentation/databinding/FragmentLightUpKeepAllScanBinding;->e:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setAccessibilityHeading(Z)V

    const v1, 0x7f140b48

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/vuitton/android/presentation/databinding/FragmentLightUpKeepAllScanBinding;->b:Landroid/widget/Button;

    new-instance v1, Lw40;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lw40;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllScanFragment;I)V

    invoke-static {p2, v1}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentLightUpKeepAllScanBinding;->c:Landroid/widget/ImageView;

    new-instance p2, Lw40;

    invoke-direct {p2, p0, v0}, Lw40;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllScanFragment;I)V

    invoke-static {p1, p2}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final t()V
    .locals 0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;->T()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel;->Cc()V

    return-void
.end method
