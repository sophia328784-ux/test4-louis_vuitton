.class public abstract Lcom/vuitton/android/presentation/Hilt_LVApplication;
.super Landroid/app/Application;
.source "SourceFile"

# interfaces
.implements Ldagger/hilt/internal/GeneratedComponentManagerHolder;


# instance fields
.field private b:Z

.field private final c:Ldagger/hilt/android/internal/managers/ApplicationComponentManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/Hilt_LVApplication;->b:Z

    new-instance v0, Ldagger/hilt/android/internal/managers/ApplicationComponentManager;

    new-instance v1, Lcom/vuitton/android/presentation/Hilt_LVApplication$1;

    invoke-direct {v1, p0}, Lcom/vuitton/android/presentation/Hilt_LVApplication$1;-><init>(Lcom/vuitton/android/presentation/Hilt_LVApplication;)V

    invoke-direct {v0, v1}, Ldagger/hilt/android/internal/managers/ApplicationComponentManager;-><init>(Ldagger/hilt/android/internal/managers/ComponentSupplier;)V

    iput-object v0, p0, Lcom/vuitton/android/presentation/Hilt_LVApplication;->c:Ldagger/hilt/android/internal/managers/ApplicationComponentManager;

    return-void
.end method


# virtual methods
.method public final C()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/Hilt_LVApplication;->e()Ldagger/hilt/android/internal/managers/ApplicationComponentManager;

    move-result-object p0

    invoke-virtual {p0}, Ldagger/hilt/android/internal/managers/ApplicationComponentManager;->C()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final e()Ldagger/hilt/android/internal/managers/ApplicationComponentManager;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/Hilt_LVApplication;->c:Ldagger/hilt/android/internal/managers/ApplicationComponentManager;

    return-object p0
.end method

.method public bridge synthetic f()Ldagger/hilt/internal/GeneratedComponentManager;
    .locals 0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/Hilt_LVApplication;->e()Ldagger/hilt/android/internal/managers/ApplicationComponentManager;

    move-result-object p0

    return-object p0
.end method

.method public g()V
    .locals 1

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/Hilt_LVApplication;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/Hilt_LVApplication;->b:Z

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/Hilt_LVApplication;->C()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/LVApplication_GeneratedInjector;

    check-cast p0, Lcom/vuitton/android/presentation/LVApplication;

    invoke-interface {v0, p0}, Lcom/vuitton/android/presentation/LVApplication_GeneratedInjector;->p(Lcom/vuitton/android/presentation/LVApplication;)V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 0

    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->p(Lcom/vuitton/android/presentation/Hilt_LVApplication;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/Hilt_LVApplication;->g()V

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    return-void
.end method
