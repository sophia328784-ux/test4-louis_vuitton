.class public abstract Landroidx/camera/core/impl/SessionConfig$OutputConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/SessionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OutputConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/SessionConfig$OutputConfig$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroidx/camera/core/impl/DeferrableSurface;)Landroidx/camera/core/impl/SessionConfig$OutputConfig$Builder;
    .locals 3

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig$Builder;

    invoke-direct {v1}, Landroidx/camera/core/impl/SessionConfig$OutputConfig$Builder;-><init>()V

    const/4 v2, 0x0

    if-eqz p0, :cond_2

    iput-object p0, v1, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig$Builder;->a:Landroidx/camera/core/impl/DeferrableSurface;

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eqz p0, :cond_1

    iput-object p0, v1, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig$Builder;->b:Ljava/util/List;

    iput-object v0, v1, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig$Builder;->c:Ljava/lang/Integer;

    iput-object v0, v1, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig$Builder;->d:Ljava/lang/Integer;

    sget-object p0, Landroidx/camera/core/DynamicRange;->d:Landroidx/camera/core/DynamicRange;

    if-eqz p0, :cond_0

    iput-object p0, v1, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig$Builder;->e:Landroidx/camera/core/DynamicRange;

    return-object v1

    :cond_0
    const-string p0, "Null dynamicRange"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-object v2

    :cond_1
    const-string p0, "Null sharedSurfaces"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-object v2

    :cond_2
    const-string p0, "Null surface"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public abstract b()Landroidx/camera/core/DynamicRange;
.end method

.method public abstract c()I
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Ljava/util/List;
.end method

.method public abstract f()Landroidx/camera/core/impl/DeferrableSurface;
.end method

.method public abstract g()I
.end method
