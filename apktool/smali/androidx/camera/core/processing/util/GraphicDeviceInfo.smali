.class public abstract Landroidx/camera/core/processing/util/GraphicDeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/processing/util/GraphicDeviceInfo$Builder;
    }
.end annotation


# direct methods
.method public static a()Landroidx/camera/core/processing/util/GraphicDeviceInfo$Builder;
    .locals 2

    new-instance v0, Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo$Builder;

    invoke-direct {v0}, Landroidx/camera/core/processing/util/GraphicDeviceInfo$Builder;-><init>()V

    const-string v1, "0.0"

    iput-object v1, v0, Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo$Builder;->a:Ljava/lang/String;

    iput-object v1, v0, Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo$Builder;->b:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo$Builder;->c:Ljava/lang/String;

    iput-object v1, v0, Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo$Builder;->d:Ljava/lang/String;

    return-object v0
.end method
