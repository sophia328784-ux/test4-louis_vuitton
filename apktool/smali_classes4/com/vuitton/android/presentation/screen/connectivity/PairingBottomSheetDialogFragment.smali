.class public final Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment;
.super Lcom/vuitton/android/presentation/screen/connectivity/Hilt_PairingBottomSheetDialogFragment;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment;",
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
.field public static final S:Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment$Companion;

.field public static final synthetic T:[Lkotlin/reflect/KProperty;

.field public static final V:Ljava/lang/String;


# instance fields
.field public O:Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailActivityRouter;

.field public P:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final Q:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

.field public R:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentPairingBottomSheetDialogBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->h(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v0, v1, v4

    sput-object v1, Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment;->T:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment;->S:Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment$Companion;

    const-string v0, "PairingBottomSheetDialogFragment"

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment;->V:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const v0, 0x7f0d0076

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/Hilt_PairingBottomSheetDialogFragment;-><init>(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseBottomSheet;->U(Z)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseBottomSheet;->T(Z)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment$binding$2;->b:Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment$binding$2;

    invoke-static {p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->d(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment;->Q:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    new-instance v0, Lyk0;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lyk0;-><init>(I)V

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment;->R:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseBottomSheet;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment;->T:[Lkotlin/reflect/KProperty;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment;->Q:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    invoke-virtual {v0, p0, p1}, Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;->c(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KProperty;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/databinding/FragmentPairingBottomSheetDialogBinding;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment;->P:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    const-string v1, "isFeatureAvailableUseCase"

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->TRUNK_SPEAKER:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v3}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v0

    iget-object v3, p1, Lcom/vuitton/android/presentation/databinding/FragmentPairingBottomSheetDialogBinding;->d:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    if-eqz v0, :cond_0

    new-instance v5, Ltl0;

    invoke-direct {v5, p0, p2}, Ltl0;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment;I)V

    invoke-static {v3, v5}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    move v5, p2

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment;->P:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    if-eqz v3, :cond_8

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->SNEAKERS:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v5}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v3

    iget-object v5, p1, Lcom/vuitton/android/presentation/databinding/FragmentPairingBottomSheetDialogBinding;->c:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    new-instance v6, Ltl0;

    const/4 v7, 0x2

    invoke-direct {v6, p0, v7}, Ltl0;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment;I)V

    invoke-static {v5, v6}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    move v6, p2

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p1, Lcom/vuitton/android/presentation/databinding/FragmentPairingBottomSheetDialogBinding;->f:Landroid/view/View;

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    move v6, p2

    goto :goto_2

    :cond_2
    move v6, v4

    :goto_2
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment;->P:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    if-eqz v5, :cond_7

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->KEEP_ALL:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v1}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v1

    iget-object v2, p1, Lcom/vuitton/android/presentation/databinding/FragmentPairingBottomSheetDialogBinding;->b:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    new-instance v6, Ltl0;

    invoke-direct {v6, p0, v5}, Ltl0;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment;I)V

    invoke-static {v2, v6}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    move p0, p2

    goto :goto_3

    :cond_3
    move p0, v4

    :goto_3
    invoke-virtual {v2, p0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p1, Lcom/vuitton/android/presentation/databinding/FragmentPairingBottomSheetDialogBinding;->e:Landroid/view/View;

    if-eqz v1, :cond_4

    if-nez v0, :cond_5

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    move v5, p2

    :cond_5
    :goto_4
    if-eqz v5, :cond_6

    goto :goto_5

    :cond_6
    move p2, v4

    :goto_5
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2
.end method
