.class final Lcom/sightcall/core/di/DaggerSightCallComponent$SightCallComponentImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/core/di/SightCallComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/core/di/DaggerSightCallComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SightCallComponentImpl"
.end annotation


# instance fields
.field private final application:Landroid/app/Application;

.field private final coreModule:Lcom/sightcall/core/di/CoreModule;

.field provideSightcallActivityLifecycleCallbacksProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/core/util/SightcallActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final sightCallComponentImpl:Lcom/sightcall/core/di/DaggerSightCallComponent$SightCallComponentImpl;


# direct methods
.method public constructor <init>(Lcom/sightcall/core/di/CoreModule;Landroid/app/Application;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/sightcall/core/di/DaggerSightCallComponent$SightCallComponentImpl;->sightCallComponentImpl:Lcom/sightcall/core/di/DaggerSightCallComponent$SightCallComponentImpl;

    iput-object p1, p0, Lcom/sightcall/core/di/DaggerSightCallComponent$SightCallComponentImpl;->coreModule:Lcom/sightcall/core/di/CoreModule;

    iput-object p2, p0, Lcom/sightcall/core/di/DaggerSightCallComponent$SightCallComponentImpl;->application:Landroid/app/Application;

    invoke-direct {p0, p1, p2}, Lcom/sightcall/core/di/DaggerSightCallComponent$SightCallComponentImpl;->initialize(Lcom/sightcall/core/di/CoreModule;Landroid/app/Application;)V

    return-void
.end method

.method private initialize(Lcom/sightcall/core/di/CoreModule;Landroid/app/Application;)V
    .locals 0

    invoke-static {p1}, Lcom/sightcall/core/di/CoreModule_ProvideSightcallActivityLifecycleCallbacksFactory;->create(Lcom/sightcall/core/di/CoreModule;)Lcom/sightcall/core/di/CoreModule_ProvideSightcallActivityLifecycleCallbacksFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/core/di/DaggerSightCallComponent$SightCallComponentImpl;->provideSightcallActivityLifecycleCallbacksProvider:Ldagger/internal/Provider;

    return-void
.end method


# virtual methods
.method public context()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sightcall/core/di/DaggerSightCallComponent$SightCallComponentImpl;->coreModule:Lcom/sightcall/core/di/CoreModule;

    iget-object p0, p0, Lcom/sightcall/core/di/DaggerSightCallComponent$SightCallComponentImpl;->application:Landroid/app/Application;

    invoke-static {v0, p0}, Lcom/sightcall/core/di/CoreModule_ProvideContextFactory;->provideContext(Lcom/sightcall/core/di/CoreModule;Landroid/app/Application;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public sightcallActivityLifecycleCallbacks()Lcom/sightcall/core/util/SightcallActivityLifecycleCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/core/di/DaggerSightCallComponent$SightCallComponentImpl;->provideSightcallActivityLifecycleCallbacksProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/core/util/SightcallActivityLifecycleCallbacks;

    return-object p0
.end method
