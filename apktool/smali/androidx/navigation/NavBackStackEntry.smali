.class public final Landroidx/navigation/NavBackStackEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;
.implements Landroidx/lifecycle/ViewModelStoreOwner;
.implements Landroidx/lifecycle/HasDefaultViewModelProviderFactory;
.implements Landroidx/savedstate/SavedStateRegistryOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavBackStackEntry$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001\u000bB#\u0008\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0000\u0012\u0010\u0008\u0002\u0010\u0008\u001a\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u0007\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/navigation/NavBackStackEntry;",
        "Landroidx/lifecycle/LifecycleOwner;",
        "Landroidx/lifecycle/ViewModelStoreOwner;",
        "Landroidx/lifecycle/HasDefaultViewModelProviderFactory;",
        "Landroidx/savedstate/SavedStateRegistryOwner;",
        "entry",
        "Landroid/os/Bundle;",
        "Landroidx/savedstate/SavedState;",
        "arguments",
        "<init>",
        "(Landroidx/navigation/NavBackStackEntry;Landroid/os/Bundle;)V",
        "Companion",
        "navigation-common_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final k:Landroidx/navigation/NavBackStackEntry$Companion;


# instance fields
.field public final b:Landroidx/navigation/internal/NavContext;

.field public c:Landroidx/navigation/NavDestination;

.field public final d:Landroid/os/Bundle;

.field public e:Landroidx/lifecycle/Lifecycle$State;

.field public final f:Landroidx/navigation/NavViewModelStoreProvider;

.field public final g:Ljava/lang/String;

.field public final h:Landroid/os/Bundle;

.field public final i:Landroidx/navigation/internal/NavBackStackEntryImpl;

.field public final j:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/navigation/NavBackStackEntry$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigation/NavBackStackEntry$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavBackStackEntry$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/navigation/NavBackStackEntry;Landroid/os/Bundle;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Landroidx/navigation/NavBackStackEntry;->b:Landroidx/navigation/internal/NavContext;

    iget-object v2, p1, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    iget-object v4, p1, Landroidx/navigation/NavBackStackEntry;->e:Landroidx/lifecycle/Lifecycle$State;

    iget-object v5, p1, Landroidx/navigation/NavBackStackEntry;->f:Landroidx/navigation/NavViewModelStoreProvider;

    iget-object v6, p1, Landroidx/navigation/NavBackStackEntry;->g:Ljava/lang/String;

    iget-object v7, p1, Landroidx/navigation/NavBackStackEntry;->h:Landroid/os/Bundle;

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Landroidx/navigation/NavBackStackEntry;-><init>(Landroidx/navigation/internal/NavContext;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p0, v0, Landroidx/navigation/NavBackStackEntry;->i:Landroidx/navigation/internal/NavBackStackEntryImpl;

    iget-object p2, p1, Landroidx/navigation/NavBackStackEntry;->e:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->d:Landroidx/lifecycle/Lifecycle$State;

    iget-object p0, v0, Landroidx/navigation/NavBackStackEntry;->i:Landroidx/navigation/internal/NavBackStackEntryImpl;

    iget-object p1, p1, Landroidx/navigation/NavBackStackEntry;->i:Landroidx/navigation/internal/NavBackStackEntryImpl;

    iget-object p1, p1, Landroidx/navigation/internal/NavBackStackEntryImpl;->l:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->l:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0}, Landroidx/navigation/internal/NavBackStackEntryImpl;->c()V

    return-void
.end method

.method public constructor <init>(Landroidx/navigation/NavBackStackEntry;Landroid/os/Bundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 61
    iget-object p2, p1, Landroidx/navigation/NavBackStackEntry;->i:Landroidx/navigation/internal/NavBackStackEntryImpl;

    .line 62
    invoke-virtual {p2}, Landroidx/navigation/internal/NavBackStackEntryImpl;->a()Landroid/os/Bundle;

    move-result-object p2

    .line 63
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/navigation/NavBackStackEntry;-><init>(Landroidx/navigation/NavBackStackEntry;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroidx/navigation/internal/NavContext;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry;->b:Landroidx/navigation/internal/NavContext;

    .line 52
    iput-object p2, p0, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    .line 53
    iput-object p3, p0, Landroidx/navigation/NavBackStackEntry;->d:Landroid/os/Bundle;

    .line 54
    iput-object p4, p0, Landroidx/navigation/NavBackStackEntry;->e:Landroidx/lifecycle/Lifecycle$State;

    .line 55
    iput-object p5, p0, Landroidx/navigation/NavBackStackEntry;->f:Landroidx/navigation/NavViewModelStoreProvider;

    .line 56
    iput-object p6, p0, Landroidx/navigation/NavBackStackEntry;->g:Ljava/lang/String;

    .line 57
    iput-object p7, p0, Landroidx/navigation/NavBackStackEntry;->h:Landroid/os/Bundle;

    .line 58
    new-instance p1, Landroidx/navigation/internal/NavBackStackEntryImpl;

    invoke-direct {p1, p0}, Landroidx/navigation/internal/NavBackStackEntryImpl;-><init>(Landroidx/navigation/NavBackStackEntry;)V

    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry;->i:Landroidx/navigation/internal/NavBackStackEntryImpl;

    .line 59
    new-instance p1, Lx60;

    const/16 p2, 0xd

    invoke-direct {p1, p0, p2}, Lx60;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry;->j:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/navigation/internal/NavContext;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;Ljava/lang/String;Landroid/os/Bundle;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 60
    invoke-direct/range {p0 .. p7}, Landroidx/navigation/NavBackStackEntry;-><init>(Landroidx/navigation/internal/NavContext;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/lifecycle/SavedStateHandle;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NavBackStackEntry;->j:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/SavedStateHandle;

    return-object p0
.end method

.method public final b(Landroidx/lifecycle/Lifecycle$State;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/navigation/NavBackStackEntry;->i:Landroidx/navigation/internal/NavBackStackEntryImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->l:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0}, Landroidx/navigation/internal/NavBackStackEntryImpl;->c()V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    instance-of v1, p1, Landroidx/navigation/NavBackStackEntry;

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    check-cast p1, Landroidx/navigation/NavBackStackEntry;

    iget-object v1, p1, Landroidx/navigation/NavBackStackEntry;->d:Landroid/os/Bundle;

    iget-object v2, p1, Landroidx/navigation/NavBackStackEntry;->g:Ljava/lang/String;

    iget-object v3, p0, Landroidx/navigation/NavBackStackEntry;->g:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    iget-object v3, p1, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroidx/navigation/NavBackStackEntry;->i:Landroidx/navigation/internal/NavBackStackEntryImpl;

    iget-object v2, v2, Landroidx/navigation/internal/NavBackStackEntryImpl;->k:Landroidx/lifecycle/LifecycleRegistry;

    iget-object v3, p1, Landroidx/navigation/NavBackStackEntry;->i:Landroidx/navigation/internal/NavBackStackEntryImpl;

    iget-object v3, v3, Landroidx/navigation/internal/NavBackStackEntryImpl;->k:Landroidx/lifecycle/LifecycleRegistry;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroidx/navigation/NavBackStackEntry;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Landroidx/navigation/NavBackStackEntry;->d:Landroid/os/Bundle;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_5

    check-cast p1, Ljava/lang/Iterable;

    instance-of v2, p1, Ljava/util/Collection;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_2
    return v0
.end method

.method public final getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;
    .locals 5

    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->i:Landroidx/navigation/internal/NavBackStackEntryImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/lifecycle/viewmodel/MutableCreationExtras;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroidx/lifecycle/viewmodel/MutableCreationExtras;-><init>(Landroidx/lifecycle/viewmodel/CreationExtras;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v2, Landroidx/lifecycle/SavedStateHandleSupport;->a:Landroidx/lifecycle/SavedStateHandleSupport$special$$inlined$Key$1;

    iget-object v4, v0, Landroidx/navigation/internal/NavBackStackEntryImpl;->a:Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/viewmodel/MutableCreationExtras;->b(Landroidx/lifecycle/viewmodel/CreationExtras$Key;Ljava/lang/Object;)V

    sget-object v2, Landroidx/lifecycle/SavedStateHandleSupport;->b:Landroidx/lifecycle/SavedStateHandleSupport$special$$inlined$Key$2;

    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/viewmodel/MutableCreationExtras;->b(Landroidx/lifecycle/viewmodel/CreationExtras$Key;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/navigation/internal/NavBackStackEntryImpl;->a()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v2, Landroidx/lifecycle/SavedStateHandleSupport;->c:Landroidx/lifecycle/SavedStateHandleSupport$special$$inlined$Key$3;

    invoke-virtual {v1, v2, v0}, Landroidx/lifecycle/viewmodel/MutableCreationExtras;->b(Landroidx/lifecycle/viewmodel/CreationExtras$Key;Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Landroidx/navigation/NavBackStackEntry;->b:Landroidx/navigation/internal/NavContext;

    if-eqz p0, :cond_2

    iget-object p0, p0, Landroidx/navigation/internal/NavContext;->a:Landroid/content/Context;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v3

    :goto_0
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/app/Application;

    goto :goto_1

    :cond_2
    move-object p0, v3

    :goto_1
    if-eqz p0, :cond_3

    move-object v3, p0

    :cond_3
    if-eqz v3, :cond_4

    sget-object p0, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->f:Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory$special$$inlined$Key$1;

    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/viewmodel/MutableCreationExtras;->b(Landroidx/lifecycle/viewmodel/CreationExtras$Key;Ljava/lang/Object;)V

    :cond_4
    return-object v1
.end method

.method public final getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NavBackStackEntry;->i:Landroidx/navigation/internal/NavBackStackEntryImpl;

    iget-object p0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->m:Landroidx/lifecycle/SavedStateViewModelFactory;

    return-object p0
.end method

.method public final getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NavBackStackEntry;->i:Landroidx/navigation/internal/NavBackStackEntryImpl;

    iget-object p0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->k:Landroidx/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method public final getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NavBackStackEntry;->i:Landroidx/navigation/internal/NavBackStackEntryImpl;

    iget-object p0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->h:Landroidx/savedstate/SavedStateRegistryController;

    iget-object p0, p0, Landroidx/savedstate/SavedStateRegistryController;->b:Landroidx/savedstate/SavedStateRegistry;

    return-object p0
.end method

.method public final getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .locals 3

    iget-object p0, p0, Landroidx/navigation/NavBackStackEntry;->i:Landroidx/navigation/internal/NavBackStackEntryImpl;

    iget-boolean v0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->k:Landroidx/lifecycle/LifecycleRegistry;

    iget-object v0, v0, Landroidx/lifecycle/LifecycleRegistry;->i:Landroidx/lifecycle/Lifecycle$State;

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->e:Landroidx/navigation/NavViewModelStoreProvider;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->f:Ljava/lang/String;

    invoke-interface {v0, p0}, Landroidx/navigation/NavViewModelStoreProvider;->V1(Ljava/lang/String;)Landroidx/lifecycle/ViewModelStore;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "You must call setViewModelStore() on your NavHostController before accessing the ViewModelStore of a navigation graph."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v1

    :cond_1
    const-string p0, "You cannot access the NavBackStackEntry\'s ViewModels after the NavBackStackEntry is destroyed."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v1

    :cond_2
    const-string p0, "You cannot access the NavBackStackEntry\'s ViewModels until it is added to the NavController\'s back stack (i.e., the Lifecycle of the NavBackStackEntry reaches the CREATED state)."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v1
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->c:Landroidx/navigation/NavDestination;

    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->d:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->i:Landroidx/navigation/internal/NavBackStackEntryImpl;

    iget-object v0, v0, Landroidx/navigation/internal/NavBackStackEntryImpl;->k:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Landroidx/navigation/NavBackStackEntry;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NavBackStackEntry;->i:Landroidx/navigation/internal/NavBackStackEntryImpl;

    invoke-virtual {p0}, Landroidx/navigation/internal/NavBackStackEntryImpl;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
