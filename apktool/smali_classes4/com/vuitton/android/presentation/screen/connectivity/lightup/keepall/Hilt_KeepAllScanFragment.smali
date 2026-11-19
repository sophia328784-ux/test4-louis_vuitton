.class public abstract Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/Hilt_KeepAllScanFragment;
.super Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;
.source "SourceFile"


# instance fields
.field private K:Landroid/content/ContextWrapper;

.field private L:Z

.field private M:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/BaseLightUpScanFragment;-><init>(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/Hilt_KeepAllScanFragment;->L:Z

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/Hilt_KeepAllScanFragment;->M:Z

    return-void
.end method

.method private M()V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/Hilt_KeepAllScanFragment;->K:Landroid/content/ContextWrapper;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/Hilt_BaseLightUpScanFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ldagger/hilt/android/internal/managers/ViewComponentManager$FragmentContextWrapper;

    invoke-direct {v1, v0, p0}, Ldagger/hilt/android/internal/managers/ViewComponentManager$FragmentContextWrapper;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/Hilt_KeepAllScanFragment;->K:Landroid/content/ContextWrapper;

    invoke-super {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/Hilt_BaseLightUpScanFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldagger/hilt/android/flags/FragmentGetContextFix;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/Hilt_KeepAllScanFragment;->L:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public N()V
    .locals 1

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/Hilt_KeepAllScanFragment;->M:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/Hilt_KeepAllScanFragment;->M:Z

    invoke-interface {p0}, Ldagger/hilt/internal/GeneratedComponentManager;->C()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllScanFragment_GeneratedInjector;

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllScanFragment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public abstract synthetic g(Ljava/util/List;)V
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/Hilt_BaseLightUpScanFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/Hilt_KeepAllScanFragment;->L:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/Hilt_KeepAllScanFragment;->M()V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/Hilt_KeepAllScanFragment;->K:Landroid/content/ContextWrapper;

    return-object p0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/Hilt_BaseLightUpScanFragment;->onAttach(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/Hilt_KeepAllScanFragment;->K:Landroid/content/ContextWrapper;

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

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/Hilt_KeepAllScanFragment;->M()V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/Hilt_KeepAllScanFragment;->N()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/Hilt_BaseLightUpScanFragment;->onAttach(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/Hilt_KeepAllScanFragment;->M()V

    .line 34
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/Hilt_KeepAllScanFragment;->N()V

    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    invoke-super {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/Hilt_BaseLightUpScanFragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    new-instance v0, Ldagger/hilt/android/internal/managers/ViewComponentManager$FragmentContextWrapper;

    invoke-direct {v0, p1, p0}, Ldagger/hilt/android/internal/managers/ViewComponentManager$FragmentContextWrapper;-><init>(Landroid/view/LayoutInflater;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method

.method public abstract synthetic t()V
.end method
