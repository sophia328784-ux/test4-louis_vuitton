.class public final Lcom/sightcall/universal/di/SDKInjector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0014\u0010\u0000\u001a\u00020\u00018@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "sdkInjector",
        "Lcom/sightcall/universal/di/SDKInjectorI;",
        "getSdkInjector",
        "()Lcom/sightcall/universal/di/SDKInjectorI;",
        "sdk_installedRelease"
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
.method public static final getSdkInjector()Lcom/sightcall/universal/di/SDKInjectorI;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/di/SDKInjectorI;->Companion:Lcom/sightcall/universal/di/SDKInjectorI$Companion;

    invoke-virtual {v0}, Lcom/sightcall/universal/di/SDKInjectorI$Companion;->getInjector()Lcom/sightcall/universal/di/SDKInjectorI;

    move-result-object v0

    return-object v0
.end method
