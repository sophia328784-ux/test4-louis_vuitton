.class public final Lcom/sightcall/core/di/CoreModule_ProvideContextFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field private final applicationProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/sightcall/core/di/CoreModule;


# direct methods
.method private constructor <init>(Lcom/sightcall/core/di/CoreModule;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/core/di/CoreModule;",
            "Ldagger/internal/Provider<",
            "Landroid/app/Application;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/core/di/CoreModule_ProvideContextFactory;->module:Lcom/sightcall/core/di/CoreModule;

    iput-object p2, p0, Lcom/sightcall/core/di/CoreModule_ProvideContextFactory;->applicationProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Lcom/sightcall/core/di/CoreModule;Ldagger/internal/Provider;)Lcom/sightcall/core/di/CoreModule_ProvideContextFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/core/di/CoreModule;",
            "Ldagger/internal/Provider<",
            "Landroid/app/Application;",
            ">;)",
            "Lcom/sightcall/core/di/CoreModule_ProvideContextFactory;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/core/di/CoreModule_ProvideContextFactory;

    invoke-direct {v0, p0, p1}, Lcom/sightcall/core/di/CoreModule_ProvideContextFactory;-><init>(Lcom/sightcall/core/di/CoreModule;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static provideContext(Lcom/sightcall/core/di/CoreModule;Landroid/app/Application;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sightcall/core/di/CoreModule;->provideContext(Landroid/app/Application;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sightcall/core/di/CoreModule_ProvideContextFactory;->module:Lcom/sightcall/core/di/CoreModule;

    iget-object p0, p0, Lcom/sightcall/core/di/CoreModule_ProvideContextFactory;->applicationProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    invoke-static {v0, p0}, Lcom/sightcall/core/di/CoreModule_ProvideContextFactory;->provideContext(Lcom/sightcall/core/di/CoreModule;Landroid/app/Application;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/sightcall/core/di/CoreModule_ProvideContextFactory;->get()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method
