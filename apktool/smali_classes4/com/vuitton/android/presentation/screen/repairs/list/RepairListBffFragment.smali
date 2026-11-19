.class public final Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;
.super Lcom/vuitton/android/presentation/screen/repairs/list/Hilt_RepairListBffFragment;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/chat/ChatHostActivity;


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0005B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/vuitton/android/presentation/chat/ChatHostActivity;",
        "<init>",
        "()V",
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
.field public static final L:Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment$Companion;

.field public static final M:Ljava/lang/String;


# instance fields
.field public final F:Landroidx/lifecycle/ViewModelLazy;

.field public G:Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

.field public H:Lcom/vuitton/android/core/events/LVEventSender;

.field public I:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

.field public J:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

.field public K:Lcom/vuitton/android/presentation/chat/ChatAttachable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;->L:Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment$Companion;

    const-string v0, "RepairListBffFragment"

    sput-object v0, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;->M:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/repairs/list/Hilt_RepairListBffFragment;-><init>()V

    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const-class v1, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment$special$$inlined$viewModels$default$4;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v4, p0, v0}, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    new-instance v0, Landroidx/lifecycle/ViewModelLazy;

    invoke-direct {v0, v1, v2, v4, v3}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;->F:Landroidx/lifecycle/ViewModelLazy;

    return-void
.end method


# virtual methods
.method public final O()Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;->G:Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "repairRouter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final P()Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;->F:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;

    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->a(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p1

    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment$onCreate$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment$onCreate$1;-><init>(Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

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

    new-instance p1, Lms0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lms0;-><init>(Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;I)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const p2, -0x2324bf4f

    const/4 p3, 0x1

    invoke-direct {p0, p2, p3, p1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    return-object v0
.end method
