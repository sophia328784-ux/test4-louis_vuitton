.class public abstract Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/Hilt_SneakerDetailFragment;
.super Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;
.source "SourceFile"


# instance fields
.field private S:Landroid/content/ContextWrapper;

.field private T:Z

.field private V:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/Hilt_SneakerDetailFragment;->T:Z

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/Hilt_SneakerDetailFragment;->V:Z

    return-void
.end method

.method private M()V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/Hilt_SneakerDetailFragment;->S:Landroid/content/ContextWrapper;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/Hilt_LightUpDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ldagger/hilt/android/internal/managers/ViewComponentManager$FragmentContextWrapper;

    invoke-direct {v1, v0, p0}, Ldagger/hilt/android/internal/managers/ViewComponentManager$FragmentContextWrapper;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/Hilt_SneakerDetailFragment;->S:Landroid/content/ContextWrapper;

    invoke-super {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/Hilt_LightUpDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldagger/hilt/android/flags/FragmentGetContextFix;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/Hilt_SneakerDetailFragment;->T:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public N()V
    .locals 1

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/Hilt_SneakerDetailFragment;->V:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/Hilt_SneakerDetailFragment;->V:Z

    invoke-interface {p0}, Ldagger/hilt/internal/GeneratedComponentManager;->C()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerDetailFragment_GeneratedInjector;

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerDetailFragment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/Hilt_LightUpDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/Hilt_SneakerDetailFragment;->T:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/Hilt_SneakerDetailFragment;->M()V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/Hilt_SneakerDetailFragment;->S:Landroid/content/ContextWrapper;

    return-object p0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/Hilt_LightUpDetailFragment;->onAttach(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/Hilt_SneakerDetailFragment;->S:Landroid/content/ContextWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ldagger/hilt/android/internal/managers/FragmentComponentManager;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const-string v0, "onAttach called multiple times with different Context! Hilt Fragments should not be retained."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Ldagger/hilt/internal/Preconditions;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/Hilt_SneakerDetailFragment;->M()V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/Hilt_SneakerDetailFragment;->N()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/Hilt_LightUpDetailFragment;->onAttach(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/Hilt_SneakerDetailFragment;->M()V

    .line 34
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/Hilt_SneakerDetailFragment;->N()V

    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    invoke-super {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/Hilt_LightUpDetailFragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    new-instance v0, Ldagger/hilt/android/internal/managers/ViewComponentManager$FragmentContextWrapper;

    invoke-direct {v0, p1, p0}, Ldagger/hilt/android/internal/managers/ViewComponentManager$FragmentContextWrapper;-><init>(Landroid/view/LayoutInflater;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method
