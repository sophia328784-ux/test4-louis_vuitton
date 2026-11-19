.class public abstract Lcom/vuitton/android/presentation/screenshaker/Hilt_ScreenShakerDebugActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Ldagger/hilt/internal/GeneratedComponentManagerHolder;


# instance fields
.field private volatile i:Ldagger/hilt/android/internal/managers/ActivityComponentManager;

.field private final j:Ljava/lang/Object;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vuitton/android/presentation/screenshaker/Hilt_ScreenShakerDebugActivity;->j:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/screenshaker/Hilt_ScreenShakerDebugActivity;->k:Z

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screenshaker/Hilt_ScreenShakerDebugActivity;->v()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;-><init>(I)V

    .line 18
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screenshaker/Hilt_ScreenShakerDebugActivity;->j:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screenshaker/Hilt_ScreenShakerDebugActivity;->k:Z

    .line 20
    invoke-direct {p0}, Lcom/vuitton/android/presentation/screenshaker/Hilt_ScreenShakerDebugActivity;->v()V

    return-void
.end method

.method private v()V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screenshaker/Hilt_ScreenShakerDebugActivity$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screenshaker/Hilt_ScreenShakerDebugActivity$1;-><init>(Lcom/vuitton/android/presentation/screenshaker/Hilt_ScreenShakerDebugActivity;)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnContextAvailableListener(Landroidx/activity/contextaware/OnContextAvailableListener;)V

    return-void
.end method

.method private z()V
    .locals 0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screenshaker/Hilt_ScreenShakerDebugActivity;->w()Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    move-result-object p0

    invoke-virtual {p0}, Ldagger/hilt/android/internal/managers/ActivityComponentManager;->c()V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screenshaker/Hilt_ScreenShakerDebugActivity;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/screenshaker/Hilt_ScreenShakerDebugActivity;->k:Z

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screenshaker/Hilt_ScreenShakerDebugActivity;->C()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerDebugActivity_GeneratedInjector;

    check-cast p0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerDebugActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public final C()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screenshaker/Hilt_ScreenShakerDebugActivity;->w()Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    move-result-object p0

    invoke-virtual {p0}, Ldagger/hilt/android/internal/managers/ActivityComponentManager;->C()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 1

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    invoke-static {p0, v0}, Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories;->a(Landroidx/appcompat/app/AppCompatActivity;Landroidx/lifecycle/ViewModelProvider$Factory;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screenshaker/Hilt_ScreenShakerDebugActivity;->z()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screenshaker/Hilt_ScreenShakerDebugActivity;->w()Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    move-result-object p0

    invoke-virtual {p0}, Ldagger/hilt/android/internal/managers/ActivityComponentManager;->a()V

    return-void
.end method

.method public final w()Ldagger/hilt/android/internal/managers/ActivityComponentManager;
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screenshaker/Hilt_ScreenShakerDebugActivity;->i:Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screenshaker/Hilt_ScreenShakerDebugActivity;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/vuitton/android/presentation/screenshaker/Hilt_ScreenShakerDebugActivity;->i:Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screenshaker/Hilt_ScreenShakerDebugActivity;->y()Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/vuitton/android/presentation/screenshaker/Hilt_ScreenShakerDebugActivity;->i:Ldagger/hilt/android/internal/managers/ActivityComponentManager;

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
    iget-object p0, p0, Lcom/vuitton/android/presentation/screenshaker/Hilt_ScreenShakerDebugActivity;->i:Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    return-object p0
.end method

.method public bridge synthetic x()Ldagger/hilt/internal/GeneratedComponentManager;
    .locals 0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screenshaker/Hilt_ScreenShakerDebugActivity;->w()Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    move-result-object p0

    return-object p0
.end method

.method public y()Ldagger/hilt/android/internal/managers/ActivityComponentManager;
    .locals 1

    new-instance v0, Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    invoke-direct {v0, p0}, Ldagger/hilt/android/internal/managers/ActivityComponentManager;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method
