.class public final Lcom/sightcall/pratik/utils/SdkUtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a\u0008\u0010\u0002\u001a\u00020\u0003H\u0007\u001a\u0008\u0010\u0004\u001a\u00020\u0003H\u0007\u001a\u0008\u0010\u0005\u001a\u00020\u0003H\u0007\u001a\u0008\u0010\u0006\u001a\u00020\u0003H\u0007\u001a\u0008\u0010\u0007\u001a\u00020\u0003H\u0007\u001a\u0008\u0010\u0008\u001a\u00020\u0003H\u0007\u001a\u0008\u0010\t\u001a\u00020\u0003H\u0007\u001a\u0008\u0010\n\u001a\u00020\u0003H\u0007\u001a\u0008\u0010\u000b\u001a\u00020\u0003H\u0007\u001a\u0008\u0010\u000c\u001a\u00020\u0003H\u0007\u001a\u0008\u0010\r\u001a\u00020\u0003H\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "sdkVersion",
        "",
        "isAtLeastSdk22",
        "",
        "isAtLeastSdk23",
        "isAtLeastSdk26",
        "isAtLeastSdk27",
        "isAtLeastSdk28",
        "isAtLeastSdk29",
        "isAtLeastSdk30",
        "isAtLeastSdk31",
        "isAtLeastSdk32",
        "isAtLeastSdk33",
        "isAtLeastSdk34",
        "pratik_release"
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
.method public static final isAtLeastSdk22()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final isAtLeastSdk23()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final isAtLeastSdk26()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final isAtLeastSdk27()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final isAtLeastSdk28()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final isAtLeastSdk29()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final isAtLeastSdk30()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final isAtLeastSdk31()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final isAtLeastSdk32()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final isAtLeastSdk33()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final isAtLeastSdk34()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final sdkVersion()I
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method
