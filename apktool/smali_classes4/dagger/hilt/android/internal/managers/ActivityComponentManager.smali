.class public Ldagger/hilt/android/internal/managers/ActivityComponentManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/hilt/internal/GeneratedComponentManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/hilt/android/internal/managers/ActivityComponentManager$ActivityComponentBuilderEntryPoint;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/hilt/internal/GeneratedComponentManager<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public volatile b:Ldagger/hilt/android/components/ActivityComponent;

.field public final c:Ljava/lang/Object;

.field public final d:Landroid/app/Activity;

.field public final e:Ldagger/hilt/internal/GeneratedComponentManager;

.field public f:Ldagger/hilt/android/internal/managers/SavedStateHandleHolder;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldagger/hilt/android/internal/managers/ActivityComponentManager;->c:Ljava/lang/Object;

    iput-object p1, p0, Ldagger/hilt/android/internal/managers/ActivityComponentManager;->d:Landroid/app/Activity;

    new-instance v0, Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager;

    check-cast p1, Landroidx/activity/ComponentActivity;

    invoke-direct {v0, p1}, Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager;-><init>(Landroidx/activity/ComponentActivity;)V

    iput-object v0, p0, Ldagger/hilt/android/internal/managers/ActivityComponentManager;->e:Ldagger/hilt/internal/GeneratedComponentManager;

    return-void
.end method


# virtual methods
.method public final C()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ldagger/hilt/android/internal/managers/ActivityComponentManager;->b:Ldagger/hilt/android/components/ActivityComponent;

    if-nez v0, :cond_1

    iget-object v0, p0, Ldagger/hilt/android/internal/managers/ActivityComponentManager;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ldagger/hilt/android/internal/managers/ActivityComponentManager;->b:Ldagger/hilt/android/components/ActivityComponent;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ldagger/hilt/android/internal/managers/ActivityComponentManager;->b()Ldagger/hilt/android/components/ActivityComponent;

    move-result-object v1

    iput-object v1, p0, Ldagger/hilt/android/internal/managers/ActivityComponentManager;->b:Ldagger/hilt/android/components/ActivityComponent;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    iget-object p0, p0, Ldagger/hilt/android/internal/managers/ActivityComponentManager;->b:Ldagger/hilt/android/components/ActivityComponent;

    return-object p0
.end method

.method public final a()V
    .locals 1

    iget-object p0, p0, Ldagger/hilt/android/internal/managers/ActivityComponentManager;->f:Ldagger/hilt/android/internal/managers/SavedStateHandleHolder;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Ldagger/hilt/android/internal/managers/SavedStateHandleHolder;->a:Landroidx/lifecycle/viewmodel/CreationExtras;

    :cond_0
    return-void
.end method

.method public final b()Ldagger/hilt/android/components/ActivityComponent;
    .locals 3

    iget-object v0, p0, Ldagger/hilt/android/internal/managers/ActivityComponentManager;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    instance-of v1, v1, Ldagger/hilt/internal/GeneratedComponentManager;

    if-nez v1, :cond_1

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/app/Application;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Did you forget to specify your Application\'s class name in your manifest\'s <application />\'s android:name attribute?"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "Hilt Activity must be attached to an @HiltAndroidApp Application. "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object p0, p0, Ldagger/hilt/android/internal/managers/ActivityComponentManager;->e:Ldagger/hilt/internal/GeneratedComponentManager;

    const-class v1, Ldagger/hilt/android/internal/managers/ActivityComponentManager$ActivityComponentBuilderEntryPoint;

    invoke-static {v1, p0}, Ldagger/hilt/EntryPoints;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldagger/hilt/android/internal/managers/ActivityComponentManager$ActivityComponentBuilderEntryPoint;

    invoke-interface {p0}, Ldagger/hilt/android/internal/managers/ActivityComponentManager$ActivityComponentBuilderEntryPoint;->a()Ldagger/hilt/android/internal/builders/ActivityComponentBuilder;

    move-result-object p0

    invoke-interface {p0, v0}, Ldagger/hilt/android/internal/builders/ActivityComponentBuilder;->a(Landroid/app/Activity;)Ldagger/hilt/android/internal/builders/ActivityComponentBuilder;

    invoke-interface {p0}, Ldagger/hilt/android/internal/builders/ActivityComponentBuilder;->build()Ldagger/hilt/android/components/ActivityComponent;

    move-result-object p0

    return-object p0
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Ldagger/hilt/android/internal/managers/ActivityComponentManager;->e:Ldagger/hilt/internal/GeneratedComponentManager;

    check-cast v0, Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager;

    iget-object v1, v0, Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager;->b:Landroidx/activity/ComponentActivity;

    iget-object v0, v0, Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager;->c:Landroidx/activity/ComponentActivity;

    new-instance v2, Landroidx/lifecycle/ViewModelProvider;

    new-instance v3, Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager$1;

    invoke-direct {v3, v0}, Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v1, v3}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v0, Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager$ActivityRetainedComponentViewModel;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/lifecycle/ViewModelProvider;->a(Lkotlin/reflect/KClass;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager$ActivityRetainedComponentViewModel;

    iget-object v0, v0, Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager$ActivityRetainedComponentViewModel;->b:Ldagger/hilt/android/internal/managers/SavedStateHandleHolder;

    iput-object v0, p0, Ldagger/hilt/android/internal/managers/ActivityComponentManager;->f:Ldagger/hilt/android/internal/managers/SavedStateHandleHolder;

    iget-object v1, v0, Ldagger/hilt/android/internal/managers/SavedStateHandleHolder;->a:Landroidx/lifecycle/viewmodel/CreationExtras;

    if-nez v1, :cond_0

    iget-object p0, p0, Ldagger/hilt/android/internal/managers/ActivityComponentManager;->d:Landroid/app/Activity;

    check-cast p0, Landroidx/activity/ComponentActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object p0

    iget-boolean v1, v0, Ldagger/hilt/android/internal/managers/SavedStateHandleHolder;->b:Z

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "setExtras should only be called for an Activity that extends ComponentActivity"

    invoke-static {v1, v3, v2}, Ldagger/hilt/internal/Preconditions;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object p0, v0, Ldagger/hilt/android/internal/managers/SavedStateHandleHolder;->a:Landroidx/lifecycle/viewmodel/CreationExtras;

    :cond_0
    return-void
.end method
