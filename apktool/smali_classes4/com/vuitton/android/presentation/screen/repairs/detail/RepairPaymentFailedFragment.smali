.class public final Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment;
.super Lcom/vuitton/android/presentation/screen/repairs/detail/Hilt_RepairPaymentFailedFragment;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0007\u00b2\u0006\u000c\u0010\u0006\u001a\u00020\u00058\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment;",
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
.field public static final K:Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment$Companion;

.field public static final L:Ljava/lang/String;


# instance fields
.field public final F:Landroidx/lifecycle/ViewModelLazy;

.field public G:Lcom/vuitton/android/presentation/screen/distantrepairs/DistantRepairRouter;

.field public H:Lcom/vuitton/android/core/events/LVEventSender;

.field public I:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

.field public J:Lcom/vuitton/android/presentation/chat/ChatAttachable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment;->K:Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment$Companion;

    const-string v0, "RepairPaymentFailedFragment"

    sput-object v0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment;->L:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/Hilt_RepairPaymentFailedFragment;-><init>()V

    const-class v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v1, p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment$special$$inlined$activityViewModels$default$2;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment$special$$inlined$activityViewModels$default$3;

    invoke-direct {v3, p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v4, Landroidx/lifecycle/ViewModelLazy;

    invoke-direct {v4, v0, v1, v3, v2}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment;->F:Landroidx/lifecycle/ViewModelLazy;

    return-void
.end method

.method public static final O(Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->a(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment$goToCareServices$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment$goToCareServices$1;-><init>(Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x3

    invoke-static {v0, v2, v2, v1, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment;->G:Lcom/vuitton/android/presentation/screen/distantrepairs/DistantRepairRouter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/DistantRepairRouter;->b(Landroidx/fragment/app/FragmentActivity;)V

    return-void

    :cond_0
    const-string p0, "distantRepairRouter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    new-instance p1, Lbt0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lbt0;-><init>(Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment;I)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const p2, -0x8dbf61a

    const/4 p3, 0x1

    invoke-direct {p0, p2, p3, p1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    return-object v0
.end method
