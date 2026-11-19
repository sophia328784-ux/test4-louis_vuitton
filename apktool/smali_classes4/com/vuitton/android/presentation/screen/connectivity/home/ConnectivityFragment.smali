.class public final Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;
.super Lcom/vuitton/android/presentation/screen/connectivity/home/Hilt_ConnectivityFragment;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityView;
.implements Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$Listener;


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u000eB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u0005\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityView;",
        "Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$Listener;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onResume",
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
.field public static final Q:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$Companion;

.field public static final synthetic R:[Lkotlin/reflect/KProperty;

.field public static final S:Ljava/lang/String;


# instance fields
.field public final F:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

.field public final G:Landroidx/lifecycle/ViewModelLazy;

.field public H:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityRouter;

.field public I:Lcom/vuitton/android/core/events/LVEventSender;

.field public J:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final K:Lkotlin/Lazy;

.field public final L:Lkotlin/Lazy;

.field public final M:Lkotlin/Lazy;

.field public final N:Lkotlin/Lazy;

.field public O:Z

.field public P:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->h(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v0, v1, v4

    sput-object v1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->R:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->Q:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$Companion;

    const-string v0, "ConnectivityFragment"

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->S:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const v0, 0x7f0d0065

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/home/Hilt_ConnectivityFragment;-><init>(I)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$binding$2;->b:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$binding$2;

    invoke-static {p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->d(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->F:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$special$$inlined$viewModels$default$4;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v4, p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    new-instance v0, Landroidx/lifecycle/ViewModelLazy;

    invoke-direct {v0, v1, v2, v4, v3}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->G:Landroidx/lifecycle/ViewModelLazy;

    new-instance v0, Lep;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lep;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->K:Lkotlin/Lazy;

    new-instance v0, Lep;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lep;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->L:Lkotlin/Lazy;

    new-instance v0, Lep;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lep;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->M:Lkotlin/Lazy;

    new-instance v0, Lep;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lep;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->N:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final B()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->P:Z

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->O:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->R()Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;->j:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v2, Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$ConnectivityScreen;->a:Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$ConnectivityScreen;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->O:Z

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;

    move-result-object p0

    iget-object v1, p0, Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;->d:Lcom/vuitton/android/presentation/databinding/ConnectivityPairedLayoutBinding;

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/ConnectivityPairedLayoutBinding;->b:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;->c:Lcom/vuitton/android/presentation/databinding/ConnectivityNotPairedLayoutBinding;

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/ConnectivityNotPairedLayoutBinding;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final D(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->R()Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;

    move-result-object p0

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$PairWatchV2SuccessEvent;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$PairWatchV2SuccessEvent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;->j:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method

.method public final H(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    if-eqz p2, :cond_0

    const/16 v0, 0x7d2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f140f9a

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const/16 v0, 0xfa0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f140f9b

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_3

    const p1, 0x7f140967

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    if-eqz p2, :cond_4

    sget-object p3, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;->R:Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$Companion;

    const/16 v0, 0x1c

    const/4 v1, 0x0

    invoke-static {p3, p1, v1, v1, v0}, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$Companion;->b(Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;

    move-result-object p1

    sget-object p3, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;->S:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;->e:Landroid/widget/LinearLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final I()V
    .locals 5

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;->d:Lcom/vuitton/android/presentation/databinding/ConnectivityPairedLayoutBinding;

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/ConnectivityPairedLayoutBinding;->g:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;->d:Lcom/vuitton/android/presentation/databinding/ConnectivityPairedLayoutBinding;

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/ConnectivityPairedLayoutBinding;->f:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->R()Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;

    move-result-object v0

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$refreshDeviceListAfterPairingADevice$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$refreshDeviceListAfterPairingADevice$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    invoke-static {v0, v3, v2, v4}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;->Bc(Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final O()Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;
    .locals 1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;->d:Lcom/vuitton/android/presentation/databinding/ConnectivityPairedLayoutBinding;

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/ConnectivityPairedLayoutBinding;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final P()Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;
    .locals 2

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->R:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->F:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;->c(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KProperty;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;

    return-object p0
.end method

.method public final Q()Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityRouter;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->H:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityRouter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "connectivityRouter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final R()Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->G:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;

    return-object p0
.end method

.method public final S(Lcom/vuitton/foundation/model/domain/model/profile/Profile;Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;->d:Lcom/vuitton/android/presentation/databinding/ConnectivityPairedLayoutBinding;

    iget-object v1, v0, Lcom/vuitton/android/presentation/databinding/ConnectivityPairedLayoutBinding;->g:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    move-object v5, p2

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$Listener;Lcom/vuitton/foundation/model/domain/model/profile/Profile;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$initPairedObjectsLayout$1$1$1;

    invoke-direct {p1, v1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$initPairedObjectsLayout$1$1$1;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p0, v0, Lcom/vuitton/android/presentation/databinding/ConnectivityPairedLayoutBinding;->c:Landroid/widget/Button;

    new-instance p1, Ldp;

    const/4 p2, 0x1

    invoke-direct {p1, v3, p2}, Ldp;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;I)V

    const/4 v1, 0x2

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    :cond_1
    iget-object v2, v3, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->M:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_3

    iget-object v2, v3, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->L:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v3, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->K:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move p2, v4

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    if-eqz p1, :cond_5

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const/16 v4, 0x8

    :cond_5
    :goto_1
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v0, Lcom/vuitton/android/presentation/databinding/ConnectivityPairedLayoutBinding;->e:Landroid/widget/FrameLayout;

    new-instance p1, Ldp;

    invoke-direct {p1, v3, v1}, Ldp;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;I)V

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final b(Ljava/util/ArrayList;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->P:Z

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->O:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->R()Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;

    move-result-object v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$ConnectivityScreen;->a:Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel$ConnectivityScreen;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;->j:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/connectivity/models/ConnectivityTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->O:Z

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->O()Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    monitor-enter v1

    :try_start_0
    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;

    move-result-object p1

    iget-object v1, p1, Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;->c:Lcom/vuitton/android/presentation/databinding/ConnectivityNotPairedLayoutBinding;

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/ConnectivityNotPairedLayoutBinding;->b:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;->d:Lcom/vuitton/android/presentation/databinding/ConnectivityPairedLayoutBinding;

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/ConnectivityPairedLayoutBinding;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;->d:Lcom/vuitton/android/presentation/databinding/ConnectivityPairedLayoutBinding;

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/ConnectivityPairedLayoutBinding;->f:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p1, Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;->d:Lcom/vuitton/android/presentation/databinding/ConnectivityPairedLayoutBinding;

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/ConnectivityPairedLayoutBinding;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final d(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Lfp;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lfp;-><init>(Landroidx/fragment/app/FragmentActivity;I)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final k(Ljava/util/ArrayList;)V
    .locals 10

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;->d:Lcom/vuitton/android/presentation/databinding/ConnectivityPairedLayoutBinding;

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ConnectivityPairedLayoutBinding;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->N:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;-><init>(Landroid/content/Context;)V

    const v0, 0x7f140aa4

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f140fda

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    const/16 v6, 0x18

    const v2, 0x7f080290

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;->b(Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lep;

    const/16 v2, 0x8

    invoke-direct {v0, p0, v2}, Lep;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;I)V

    invoke-virtual {v1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;->setOnDiscoverButtonClickListener(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->M:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;-><init>(Landroid/content/Context;)V

    const v0, 0x7f141349

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f140641

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    const/16 v6, 0x18

    const v2, 0x7f080291

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;->b(Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lep;

    const/16 v2, 0x9

    invoke-direct {v0, p0, v2}, Lep;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;I)V

    invoke-virtual {v1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;->setOnDiscoverButtonClickListener(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v0}, Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;-><init>(Landroid/content/Context;)V

    const v0, 0x7f140646

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f14063a

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    const/16 v8, 0x18

    const v4, 0x7f080294

    invoke-static/range {v3 .. v8}, Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;->b(Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lep;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lep;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;I)V

    invoke-virtual {v3, v0}, Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;->setOnDiscoverButtonClickListener(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;-><init>(Landroid/content/Context;)V

    const v0, 0x7f140643

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f14063d

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x0

    const/16 v9, 0x18

    const v5, 0x7f08027a

    invoke-static/range {v4 .. v9}, Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;->b(Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lep;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lep;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;I)V

    invoke-virtual {v4, v0}, Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;->setOnDiscoverButtonClickListener(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->L:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;-><init>(Landroid/content/Context;)V

    const v0, 0x7f140b4f

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f140640

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    const/16 v6, 0x18

    const v2, 0x7f08028d

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;->b(Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lep;

    const/4 v2, 0x7

    invoke-direct {v0, p0, v2}, Lep;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;I)V

    invoke-virtual {v1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;->setOnDiscoverButtonClickListener(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->K:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;-><init>(Landroid/content/Context;)V

    const v0, 0x7f140b2f

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f14063e

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    const/16 v6, 0x18

    const v2, 0x7f08028a

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;->b(Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lep;

    const/4 v2, 0x5

    invoke-direct {v0, p0, v2}, Lep;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;I)V

    invoke-virtual {v1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;->setOnDiscoverButtonClickListener(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public final l(Lcom/vuitton/android/presentation/screen/connectivity/ConnectedObjectUiModel;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;->R:Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$Companion;

    const v2, 0x7f140645

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x7f1404da

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f1404b5

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v1, v2, v3, v4, v5}, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$Companion;->b(Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$removeConnectedObject$1$1;

    invoke-direct {v2, p1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$removeConnectedObject$1$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/ConnectedObjectUiModel;Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;)V

    iput-object v2, v1, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;->O:Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet$OnPositiveClickListener;

    sget-object p0, Lcom/vuitton/android/presentation/view/bottomsheets/GenericBottomSheet;->S:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->a(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p1

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$onCreate$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$onCreate$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onDestroyView()V
    .locals 2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->R()Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;->Ac(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/Hilt_ConnectivityFragment;->onResume()V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->R()Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;

    move-result-object p0

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$onScreenResumed$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$onScreenResumed$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    invoke-static {p0, v1, v0, v2}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;->Bc(Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/home/Hilt_ConnectivityFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

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

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->R()Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p2, p0}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;->yc(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;

    move-result-object p1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    invoke-static {v0, p2}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->b(ILandroid/view/View;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;->g:Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;

    iget-object p2, p2, Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;->b:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v1, 0x1

    invoke-static {v1, p2}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->b(ILandroid/view/View;)V

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;->g:Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;->c:Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;

    iget-object p2, p1, Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;->b:Landroidx/appcompat/widget/Toolbar;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {p0, p2, v3, v2}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->a(Landroidx/fragment/app/Fragment;Landroidx/appcompat/widget/Toolbar;Ll61;I)V

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const p2, 0x7f140a9b

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setAccessibilityHeading(Z)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->R()Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;

    move-result-object p1

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v4, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$onViewCreated$2;

    const-string v9, "handleProfile(Lcom/vuitton/foundation/model/domain/model/profile/Profile;)V"

    const/4 v10, 0x0

    const/4 v5, 0x1

    const-class v7, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;

    const-string v8, "handleProfile"

    move-object v6, p0

    invoke-direct/range {v4 .. v10}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p0, v4}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;->c:Lcom/vuitton/android/presentation/databinding/ConnectivityNotPairedLayoutBinding;

    iget-object p1, p0, Lcom/vuitton/android/presentation/databinding/ConnectivityNotPairedLayoutBinding;->c:Landroid/widget/FrameLayout;

    new-instance p2, Ldp;

    const/4 v2, 0x0

    invoke-direct {p2, v6, v2}, Ldp;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;I)V

    invoke-static {p1, p2}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/databinding/ConnectivityNotPairedLayoutBinding;->i:Landroid/widget/FrameLayout;

    new-instance p2, Ldp;

    const/16 v4, 0x9

    invoke-direct {p2, v6, v4}, Ldp;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;I)V

    invoke-static {p1, p2}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/databinding/ConnectivityNotPairedLayoutBinding;->d:Landroid/widget/FrameLayout;

    new-instance p2, Ldp;

    const/16 v4, 0xa

    invoke-direct {p2, v6, v4}, Ldp;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;I)V

    invoke-static {p1, p2}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/databinding/ConnectivityNotPairedLayoutBinding;->e:Landroid/widget/FrameLayout;

    new-instance p2, Lep;

    const/16 v4, 0xb

    invoke-direct {p2, v6, v4}, Lep;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;I)V

    new-instance v5, Ldp;

    invoke-direct {v5, v6, v4}, Ldp;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;I)V

    invoke-static {p1, p2, v5, v0}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->e(Landroid/view/View;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/databinding/ConnectivityNotPairedLayoutBinding;->h:Landroid/widget/FrameLayout;

    new-instance p2, Lep;

    const/16 v4, 0xc

    invoke-direct {p2, v6, v4}, Lep;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;I)V

    new-instance v5, Ldp;

    invoke-direct {v5, v6, v4}, Ldp;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;I)V

    invoke-static {p1, p2, v5, v0}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->e(Landroid/view/View;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/databinding/ConnectivityNotPairedLayoutBinding;->g:Landroid/widget/FrameLayout;

    new-instance p2, Lep;

    const/16 v4, 0xd

    invoke-direct {p2, v6, v4}, Lep;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;I)V

    new-instance v5, Ldp;

    invoke-direct {v5, v6, v4}, Ldp;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;I)V

    invoke-static {p1, p2, v5, v0}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->e(Landroid/view/View;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/ConnectivityNotPairedLayoutBinding;->f:Landroid/widget/FrameLayout;

    new-instance p1, Lep;

    invoke-direct {p1, v6, v2}, Lep;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;I)V

    new-instance p2, Ldp;

    const/4 v4, 0x4

    invoke-direct {p2, v6, v4}, Ldp;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;I)V

    invoke-static {p0, p1, p2, v0}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->e(Landroid/view/View;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->R()Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;

    move-result-object p0

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    sget-object p2, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p2, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v4, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$getProfile$1;

    invoke-direct {v4, p0, v3}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$getProfile$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p2, v3, v4, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "DEEPLINK"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v3

    :goto_0
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    const-string v5, "PAIRING_V2"

    if-lt p2, v4, :cond_1

    const-class p2, Lcom/vuitton/android/presentation/screen/connectivity/watch/PairWatchV2Ui;

    invoke-virtual {p1, v5, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    instance-of p2, p1, Lcom/vuitton/android/presentation/screen/connectivity/watch/PairWatchV2Ui;

    if-nez p2, :cond_2

    move-object p1, v3

    :cond_2
    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/watch/PairWatchV2Ui;

    :goto_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/watch/PairWatchV2Ui;

    goto :goto_2

    :cond_3
    move-object p1, v3

    :goto_2
    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move-object p1, v3

    :goto_3
    if-eqz p1, :cond_5

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;->e:Landroid/widget/LinearLayout;

    const p2, 0x8000

    invoke-virtual {p0, p2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->R()Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;

    move-result-object p0

    new-instance p2, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$pairWatchV2$1;

    invoke-direct {p2, p0, v3}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$pairWatchV2$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$pairWatchV2$2;

    invoke-direct {v1, p0, p1, v3}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$pairWatchV2$2;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;Lcom/vuitton/android/presentation/screen/connectivity/watch/PairWatchV2Ui;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, p2, v1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;->Bc(Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V

    return-void

    :cond_5
    if-eqz p0, :cond_b

    invoke-static {p0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto/16 :goto_4

    :cond_6
    sget-object p1, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->WATCHFACES:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->Q()Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityRouter;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;->WATCH:Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_b

    sget-object p2, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailActivity;->p:Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailActivity$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "SECTION_TYPE"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "SHOULD_SHOW_WATCH_FACES_PAGE"

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_7
    sget-object p1, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->EARPHONES:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->Q()Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityRouter;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;->EARPHONE:Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityRouter;->a(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;)V

    return-void

    :cond_8
    sget-object p1, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->WATCH:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->Q()Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityRouter;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;->WATCH:Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityRouter;->a(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;)V

    return-void

    :cond_9
    sget-object p1, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->WATCH_V3:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->Q()Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityRouter;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;->WATCH_V3:Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityRouter;->a(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;)V

    return-void

    :cond_a
    sget-object p1, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->TRUNK:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->Q()Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityRouter;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;->TRUNK_SPEAKER:Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityRouter;->a(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;)V

    :cond_b
    :goto_4
    return-void
.end method
