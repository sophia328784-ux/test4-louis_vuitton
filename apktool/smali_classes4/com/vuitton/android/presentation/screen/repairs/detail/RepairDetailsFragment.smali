.class public final Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;
.super Lcom/vuitton/android/presentation/screen/repairs/detail/Hilt_RepairDetailsFragment;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0007\u00b2\u0006\u000c\u0010\u0006\u001a\u00020\u00058\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "Companion",
        "",
        "topPadding",
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
.field public static final P:Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$Companion;

.field public static final Q:Ljava/lang/String;


# instance fields
.field public final F:Landroidx/lifecycle/ViewModelLazy;

.field public final G:Landroidx/lifecycle/ViewModelLazy;

.field public final H:Landroidx/lifecycle/ViewModelLazy;

.field public I:Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

.field public J:Lcom/vuitton/android/core/events/LVEventSender;

.field public K:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

.field public L:Lcom/vuitton/android/presentation/chat/ChatAttachable;

.field public final M:Lkotlin/Lazy;

.field public final N:Lkotlin/Lazy;

.field public final O:Landroidx/activity/result/ActivityResultLauncher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->P:Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$Companion;

    const-string v0, "RepairDetailsFragment"

    sput-object v0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->Q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/Hilt_RepairDetailsFragment;-><init>()V

    sget-object v0, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v2, p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$special$$inlined$activityViewModels$default$2;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    new-instance v5, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$special$$inlined$activityViewModels$default$3;

    invoke-direct {v5, p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v6, Landroidx/lifecycle/ViewModelLazy;

    invoke-direct {v6, v1, v2, v5, v3}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v6, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->F:Landroidx/lifecycle/ViewModelLazy;

    new-instance v1, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    sget-object v2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v3, v1}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    const-class v3, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;

    invoke-virtual {v0, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v5, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v5, v1}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance v6, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$special$$inlined$viewModels$default$4;

    invoke-direct {v6, v4, v1}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v7, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v7, p0, v1}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    invoke-direct {v1, v3, v5, v7, v6}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->G:Landroidx/lifecycle/ViewModelLazy;

    new-instance v1, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$special$$inlined$viewModels$default$6;

    invoke-direct {v1, p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$special$$inlined$viewModels$default$6;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$special$$inlined$viewModels$default$7;

    invoke-direct {v3, v1}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$special$$inlined$viewModels$default$7;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    const-class v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl;

    invoke-virtual {v0, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-instance v2, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$special$$inlined$viewModels$default$8;

    invoke-direct {v2, v1}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$special$$inlined$viewModels$default$8;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$special$$inlined$viewModels$default$9;

    invoke-direct {v3, v4, v1}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$special$$inlined$viewModels$default$9;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$special$$inlined$viewModels$default$10;

    invoke-direct {v4, p0, v1}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$special$$inlined$viewModels$default$10;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    invoke-direct {v1, v0, v2, v4, v3}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->H:Landroidx/lifecycle/ViewModelLazy;

    new-instance v0, Lxn0;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, Lxn0;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->M:Lkotlin/Lazy;

    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$careServiceId$2;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$careServiceId$2;-><init>(Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->N:Lkotlin/Lazy;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lln0;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Lln0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->O:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static O(Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;Ljava/lang/String;Landroid/os/Bundle;)Lkotlin/Unit;
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    const-string v1, "SELECTED_ADDRESS_BUNDLE"

    if-lt p2, v0, :cond_0

    const-class p2, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

    invoke-virtual {p3, v1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Parcelable;

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    instance-of p3, p2, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

    if-nez p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    check-cast p2, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

    :goto_0
    check-cast p2, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->S()Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;

    move-result-object p0

    invoke-interface {p0, p2, p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;->T8(Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;)V

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static P(Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;)Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    const-string v3, "CARE_SERVICE"

    if-lt v0, v1, :cond_0

    const-class v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    invoke-virtual {p0, v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    if-nez v0, :cond_1

    move-object p0, v2

    :cond_1
    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    :goto_0
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    return-object p0

    :cond_2
    return-object v2
.end method


# virtual methods
.method public final Q()Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->I:Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "repairRouter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final R()Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->F:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;

    return-object p0
.end method

.method public final S()Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->G:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;

    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->a(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p1

    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$onCreate$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$onCreate$1;-><init>(Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    invoke-static {p1, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->a(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p1

    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$onCreate$2;

    invoke-direct {v0, p0, v1}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$onCreate$2;-><init>(Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->S()Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;->b6(Ljava/lang/String;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling;

    new-instance v0, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;

    sget-object p2, Lcom/vuitton/android/core/type/SystemIcons;->b:Lcom/vuitton/android/core/type/SystemIcons$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v4, Lcom/vuitton/android/core/type/SystemIcons;->c:Z

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;-><init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p1, p0, v0}, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling;-><init>(Landroidx/fragment/app/Fragment;Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;)V

    new-instance p1, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;

    sget-object p2, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->h:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->j:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;-><init>(Landroidx/fragment/app/Fragment;Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;)V

    new-instance v0, Landroidx/compose/ui/platform/ComposeView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/platform/ComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object p1, Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed;->a:Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/platform/AbstractComposeView;->setViewCompositionStrategy(Landroidx/compose/ui/platform/ViewCompositionStrategy;)V

    new-instance p1, Lks0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lks0;-><init>(Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;I)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const p2, -0x4ede0058

    const/4 p3, 0x1

    invoke-direct {p0, p2, p3, p1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    return-object v0
.end method

.method public final onDestroyView()V
    .locals 2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/Hilt_RepairDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->d(Landroid/content/Context;Landroid/os/IBinder;)V

    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method
