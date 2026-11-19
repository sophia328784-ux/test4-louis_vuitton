.class public final Lcom/sightcall/mediacapture/repo/di/RepositoryModule_ProvidesExecutorFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/concurrent/Executor;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/sightcall/mediacapture/repo/di/RepositoryModule;


# direct methods
.method private constructor <init>(Lcom/sightcall/mediacapture/repo/di/RepositoryModule;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/mediacapture/repo/di/RepositoryModule;",
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/mediacapture/repo/di/RepositoryModule_ProvidesExecutorFactory;->module:Lcom/sightcall/mediacapture/repo/di/RepositoryModule;

    iput-object p2, p0, Lcom/sightcall/mediacapture/repo/di/RepositoryModule_ProvidesExecutorFactory;->contextProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Lcom/sightcall/mediacapture/repo/di/RepositoryModule;Ldagger/internal/Provider;)Lcom/sightcall/mediacapture/repo/di/RepositoryModule_ProvidesExecutorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/mediacapture/repo/di/RepositoryModule;",
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/sightcall/mediacapture/repo/di/RepositoryModule_ProvidesExecutorFactory;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/mediacapture/repo/di/RepositoryModule_ProvidesExecutorFactory;

    invoke-direct {v0, p0, p1}, Lcom/sightcall/mediacapture/repo/di/RepositoryModule_ProvidesExecutorFactory;-><init>(Lcom/sightcall/mediacapture/repo/di/RepositoryModule;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static providesExecutor(Lcom/sightcall/mediacapture/repo/di/RepositoryModule;Landroid/content/Context;)Ljava/util/concurrent/Executor;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sightcall/mediacapture/repo/di/RepositoryModule;->providesExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/sightcall/mediacapture/repo/di/RepositoryModule_ProvidesExecutorFactory;->get()Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/sightcall/mediacapture/repo/di/RepositoryModule_ProvidesExecutorFactory;->module:Lcom/sightcall/mediacapture/repo/di/RepositoryModule;

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/di/RepositoryModule_ProvidesExecutorFactory;->contextProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/sightcall/mediacapture/repo/di/RepositoryModule_ProvidesExecutorFactory;->providesExecutor(Lcom/sightcall/mediacapture/repo/di/RepositoryModule;Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method
