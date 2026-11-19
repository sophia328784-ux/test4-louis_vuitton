.class public final Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0001\u0018\u00002\u00020\u0001:\u0001\u0008B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling;",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;",
        "systemBarsConfig",
        "<init>",
        "(Landroidx/fragment/app/Fragment;Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;)V",
        "SystemBarsConfig",
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


# instance fields
.field public final b:Landroidx/fragment/app/Fragment;

.field public final c:Lkotlinx/coroutines/flow/MutableStateFlow;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling;->b:Landroidx/fragment/app/Fragment;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public static final a(Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling;)V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;->b:Z

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;->d:Z

    invoke-static {v0, v1, v2}, Lcom/vuitton/android/presentation/compose/components/EdgeToEdgeKt;->d(Landroid/app/Activity;ZZ)V

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;->a:Z

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;->c:Z

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/vuitton/android/presentation/compose/components/EdgeToEdgeKt;->c(Landroidx/fragment/app/FragmentActivity;ZI)V

    const/4 v1, 0x2

    invoke-static {v0, p0, v1}, Lcom/vuitton/android/presentation/compose/components/EdgeToEdgeKt;->c(Landroidx/fragment/app/FragmentActivity;ZI)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 3

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->a(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$onCreate$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$onCreate$1;-><init>(Landroidx/lifecycle/LifecycleOwner;Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    invoke-static {v0, v2, v2, v1, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance p1, Lcom/vuitton/android/presentation/lifecycleaware/BackStackVisibilityListener;

    new-instance v0, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$onCreate$2;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$onCreate$2;-><init>(Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling;->b:Landroidx/fragment/app/Fragment;

    invoke-direct {p1, p0, v0}, Lcom/vuitton/android/presentation/lifecycleaware/BackStackVisibilityListener;-><init>(Landroidx/fragment/app/Fragment;Lcom/vuitton/android/presentation/lifecycleaware/BackStackVisibilityListener$OnBackStackVisibilityListener;)V

    return-void
.end method

.method public final onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    iget-object p1, p0, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method
