.class public final Lcom/sightcall/core/InitSightcallKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0007\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082.\u00a2\u0006\u0002\n\u0000\"\u0011\u0010\u0002\u001a\u00020\u00018F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u001a\u0010\u0005\u001a\u00020\u0006X\u0080.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "_sightCallComponent",
        "Lcom/sightcall/core/di/SightCallComponent;",
        "sightCallComponent",
        "getSightCallComponent",
        "()Lcom/sightcall/core/di/SightCallComponent;",
        "manager",
        "Lcom/sightcall/core/experiences/Manager;",
        "getManager",
        "()Lcom/sightcall/core/experiences/Manager;",
        "setManager",
        "(Lcom/sightcall/core/experiences/Manager;)V",
        "initSightcall",
        "",
        "application",
        "Landroid/app/Application;",
        "core_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static _sightCallComponent:Lcom/sightcall/core/di/SightCallComponent;

.field public static manager:Lcom/sightcall/core/experiences/Manager;


# direct methods
.method public static final getManager()Lcom/sightcall/core/experiences/Manager;
    .locals 1

    sget-object v0, Lcom/sightcall/core/InitSightcallKt;->manager:Lcom/sightcall/core/experiences/Manager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "manager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static final getSightCallComponent()Lcom/sightcall/core/di/SightCallComponent;
    .locals 1

    sget-object v0, Lcom/sightcall/core/InitSightcallKt;->_sightCallComponent:Lcom/sightcall/core/di/SightCallComponent;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "_sightCallComponent"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static final initSightcall(Landroid/app/Application;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/core/di/DaggerSightCallComponent;->factory()Lcom/sightcall/core/di/SightCallComponent$Factory;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sightcall/core/di/SightCallComponent$Factory;->create(Landroid/app/Application;)Lcom/sightcall/core/di/SightCallComponent;

    move-result-object p0

    sput-object p0, Lcom/sightcall/core/InitSightcallKt;->_sightCallComponent:Lcom/sightcall/core/di/SightCallComponent;

    new-instance p0, Lcom/sightcall/core/experiences/Manager;

    new-instance v0, Lcom/sightcall/core/experiences/Orchestrator;

    invoke-direct {v0}, Lcom/sightcall/core/experiences/Orchestrator;-><init>()V

    invoke-direct {p0, v0}, Lcom/sightcall/core/experiences/Manager;-><init>(Lcom/sightcall/core/experiences/Orchestrator;)V

    invoke-static {p0}, Lcom/sightcall/core/InitSightcallKt;->setManager(Lcom/sightcall/core/experiences/Manager;)V

    return-void
.end method

.method public static final setManager(Lcom/sightcall/core/experiences/Manager;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object p0, Lcom/sightcall/core/InitSightcallKt;->manager:Lcom/sightcall/core/experiences/Manager;

    return-void
.end method
