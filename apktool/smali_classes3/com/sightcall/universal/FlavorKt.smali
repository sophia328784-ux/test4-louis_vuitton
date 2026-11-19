.class public final Lcom/sightcall/universal/FlavorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u001a\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0006\u0010\u0005\u001a\u00020\u0004\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "AppTypeInstalled",
        "",
        "AppTypeInstant",
        "isInstalledApp",
        "",
        "isInstantApp",
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


# static fields
.field private static final AppTypeInstalled:Ljava/lang/String; = "installed"

.field private static final AppTypeInstant:Ljava/lang/String; = "instant"


# direct methods
.method public static final isInstalledApp()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final isInstantApp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
