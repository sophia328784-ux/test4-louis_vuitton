.class public final Lcom/vuitton/android/presentation/lifecycleaware/BackStackVisibilityListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;
.implements Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/lifecycleaware/BackStackVisibilityListener$OnBackStackVisibilityListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\tB\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/lifecycleaware/BackStackVisibilityListener;",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "Lcom/vuitton/android/presentation/lifecycleaware/BackStackVisibilityListener$OnBackStackVisibilityListener;",
        "listener",
        "<init>",
        "(Landroidx/fragment/app/Fragment;Lcom/vuitton/android/presentation/lifecycleaware/BackStackVisibilityListener$OnBackStackVisibilityListener;)V",
        "OnBackStackVisibilityListener",
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

.field public final c:Lcom/vuitton/android/presentation/lifecycleaware/BackStackVisibilityListener$OnBackStackVisibilityListener;

.field public d:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/vuitton/android/presentation/lifecycleaware/BackStackVisibilityListener$OnBackStackVisibilityListener;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/lifecycleaware/BackStackVisibilityListener;->b:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lcom/vuitton/android/presentation/lifecycleaware/BackStackVisibilityListener;->c:Lcom/vuitton/android/presentation/lifecycleaware/BackStackVisibilityListener$OnBackStackVisibilityListener;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method


# virtual methods
.method public final onBackStackChanged()V
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/lifecycleaware/BackStackVisibilityListener;->d:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->M()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->f0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/fragment/app/Fragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    :cond_1
    check-cast v1, Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Lcom/vuitton/android/presentation/lifecycleaware/BackStackVisibilityListener;->b:Landroidx/fragment/app/Fragment;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/lifecycleaware/BackStackVisibilityListener;->c:Lcom/vuitton/android/presentation/lifecycleaware/BackStackVisibilityListener$OnBackStackVisibilityListener;

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lcom/vuitton/android/presentation/lifecycleaware/BackStackVisibilityListener$OnBackStackVisibilityListener;->a()V

    return-void

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_3
    const-string p0, "fragmentManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1
.end method

.method public final onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    iget-object p1, p0, Lcom/vuitton/android/presentation/lifecycleaware/BackStackVisibilityListener;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/vuitton/android/presentation/lifecycleaware/BackStackVisibilityListener;->d:Landroidx/fragment/app/FragmentManager;

    iget-object p1, p1, Landroidx/fragment/app/FragmentManager;->o:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    iget-object p1, p0, Lcom/vuitton/android/presentation/lifecycleaware/BackStackVisibilityListener;->d:Landroidx/fragment/app/FragmentManager;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/fragment/app/FragmentManager;->o:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/vuitton/android/presentation/lifecycleaware/BackStackVisibilityListener;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/LifecycleObserver;)V

    return-void

    :cond_0
    const-string p0, "fragmentManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
