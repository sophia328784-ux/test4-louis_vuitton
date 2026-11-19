.class public final Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;,
        Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$ContentArrangement;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u0008\tB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;",
        "bottomBarConfig",
        "<init>",
        "(Landroidx/fragment/app/Fragment;Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;)V",
        "BottomBarConfig",
        "ContentArrangement",
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

.field public c:Lcom/vuitton/android/presentation/screen/navigationbar/BottomBarListener;

.field public final d:Lkotlinx/coroutines/flow/MutableStateFlow;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;->b:Landroidx/fragment/app/Fragment;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;->d:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public static final a(Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;)V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;->c:Lcom/vuitton/android/presentation/screen/navigationbar/BottomBarListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;->d:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->b:Z

    iget-object p0, p0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;->c:Lcom/vuitton/android/presentation/screen/navigationbar/BottomBarListener;

    const-string v1, "Required value was null."

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/navigationbar/BottomBarListener;->b()V

    return-void

    :cond_0
    invoke-static {v1}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/navigationbar/BottomBarListener;->a()V

    return-void

    :cond_2
    invoke-static {v1}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p0, "Do not call `dispatchBottomBarConfig` for this activity"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final b(Z)V
    .locals 10

    :goto_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;->d:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;

    iget-object v6, v2, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->d:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$ContentArrangement;

    iget-boolean v7, v2, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->e:Z

    iget-boolean v8, v2, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->f:Z

    iget v9, v2, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->g:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;

    const/4 v5, 0x0

    move v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;-><init>(ZILcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$ContentArrangement;ZZI)V

    invoke-interface {v0, v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    move p1, v4

    goto :goto_0
.end method

.method public final onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/navigationbar/BottomBarListener;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lcom/vuitton/android/presentation/screen/navigationbar/BottomBarListener;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    iput-object v1, p0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;->c:Lcom/vuitton/android/presentation/screen/navigationbar/BottomBarListener;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->a(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$onCreate$1;

    invoke-direct {v2, p1, p0, v3}, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$onCreate$1;-><init>(Landroidx/lifecycle/LifecycleOwner;Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    invoke-static {v1, v3, v3, v2, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance p1, Lcom/vuitton/android/presentation/lifecycleaware/BackStackVisibilityListener;

    new-instance v1, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$onCreate$2;

    invoke-direct {v1, p0}, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$onCreate$2;-><init>(Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;)V

    invoke-direct {p1, v0, v1}, Lcom/vuitton/android/presentation/lifecycleaware/BackStackVisibilityListener;-><init>(Landroidx/fragment/app/Fragment;Lcom/vuitton/android/presentation/lifecycleaware/BackStackVisibilityListener$OnBackStackVisibilityListener;)V

    return-void
.end method

.method public final onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;->c:Lcom/vuitton/android/presentation/screen/navigationbar/BottomBarListener;

    iget-object p1, p0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method
