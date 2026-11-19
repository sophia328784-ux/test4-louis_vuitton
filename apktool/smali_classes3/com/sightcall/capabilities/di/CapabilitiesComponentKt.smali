.class public final Lcom/sightcall/capabilities/di/CapabilitiesComponentKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "newCapabilitiesModuleComponent",
        "Lcom/sightcall/capabilities/di/CapabilitiesComponent;",
        "capabilities_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final newCapabilitiesModuleComponent()Lcom/sightcall/capabilities/di/CapabilitiesComponent;
    .locals 2

    invoke-static {}, Lcom/sightcall/capabilities/di/DaggerCapabilitiesComponent;->builder()Lcom/sightcall/capabilities/di/DaggerCapabilitiesComponent$Builder;

    move-result-object v0

    invoke-static {}, Lcom/sightcall/core/InitSightcallKt;->getSightCallComponent()Lcom/sightcall/core/di/SightCallComponent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sightcall/capabilities/di/DaggerCapabilitiesComponent$Builder;->sightCallComponent(Lcom/sightcall/core/di/SightCallComponent;)Lcom/sightcall/capabilities/di/DaggerCapabilitiesComponent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/capabilities/di/DaggerCapabilitiesComponent$Builder;->build()Lcom/sightcall/capabilities/di/CapabilitiesComponent;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method
