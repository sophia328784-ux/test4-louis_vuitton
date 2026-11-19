.class public final Lcom/sightcall/core/di/CoreModule_ProvideSightcallActivityLifecycleCallbacksFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/sightcall/core/util/SightcallActivityLifecycleCallbacks;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/sightcall/core/di/CoreModule;


# direct methods
.method private constructor <init>(Lcom/sightcall/core/di/CoreModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/core/di/CoreModule_ProvideSightcallActivityLifecycleCallbacksFactory;->module:Lcom/sightcall/core/di/CoreModule;

    return-void
.end method

.method public static create(Lcom/sightcall/core/di/CoreModule;)Lcom/sightcall/core/di/CoreModule_ProvideSightcallActivityLifecycleCallbacksFactory;
    .locals 1

    new-instance v0, Lcom/sightcall/core/di/CoreModule_ProvideSightcallActivityLifecycleCallbacksFactory;

    invoke-direct {v0, p0}, Lcom/sightcall/core/di/CoreModule_ProvideSightcallActivityLifecycleCallbacksFactory;-><init>(Lcom/sightcall/core/di/CoreModule;)V

    return-object v0
.end method

.method public static provideSightcallActivityLifecycleCallbacks(Lcom/sightcall/core/di/CoreModule;)Lcom/sightcall/core/util/SightcallActivityLifecycleCallbacks;
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/core/di/CoreModule;->provideSightcallActivityLifecycleCallbacks()Lcom/sightcall/core/util/SightcallActivityLifecycleCallbacks;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Lcom/sightcall/core/util/SightcallActivityLifecycleCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/core/di/CoreModule_ProvideSightcallActivityLifecycleCallbacksFactory;->module:Lcom/sightcall/core/di/CoreModule;

    invoke-static {p0}, Lcom/sightcall/core/di/CoreModule_ProvideSightcallActivityLifecycleCallbacksFactory;->provideSightcallActivityLifecycleCallbacks(Lcom/sightcall/core/di/CoreModule;)Lcom/sightcall/core/util/SightcallActivityLifecycleCallbacks;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0}, Lcom/sightcall/core/di/CoreModule_ProvideSightcallActivityLifecycleCallbacksFactory;->get()Lcom/sightcall/core/util/SightcallActivityLifecycleCallbacks;

    move-result-object p0

    return-object p0
.end method
