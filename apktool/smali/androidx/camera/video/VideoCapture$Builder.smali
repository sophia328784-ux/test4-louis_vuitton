.class public final Landroidx/camera/video/VideoCapture$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/UseCaseConfig$Builder;
.implements Landroidx/camera/core/impl/ImageOutputConfig$Builder;
.implements Landroidx/camera/core/impl/ImageInputConfig$Builder;
.implements Landroidx/camera/core/internal/ThreadConfig$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/VideoCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/camera/video/VideoOutput;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/UseCaseConfig$Builder<",
        "Landroidx/camera/video/VideoCapture<",
        "TT;>;",
        "Landroidx/camera/video/impl/VideoCaptureConfig<",
        "TT;>;",
        "Landroidx/camera/video/VideoCapture$Builder<",
        "TT;>;>;",
        "Landroidx/camera/core/impl/ImageOutputConfig$Builder<",
        "Landroidx/camera/video/VideoCapture$Builder<",
        "TT;>;>;",
        "Landroidx/camera/core/impl/ImageInputConfig$Builder<",
        "Landroidx/camera/video/VideoCapture$Builder<",
        "TT;>;>;",
        "Landroidx/camera/core/internal/ThreadConfig$Builder<",
        "Landroidx/camera/video/VideoCapture$Builder<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/camera/core/impl/MutableOptionsBundle;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/MutableOptionsBundle;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/VideoCapture$Builder;->a:Landroidx/camera/core/impl/MutableOptionsBundle;

    sget-object v0, Landroidx/camera/video/impl/VideoCaptureConfig;->N:Landroidx/camera/core/impl/Config$Option;

    iget-object v1, p1, Landroidx/camera/core/impl/OptionsBundle;->M:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-object v0, Landroidx/camera/core/internal/TargetConfig;->L:Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {p1, v0, v1}, Landroidx/camera/core/impl/OptionsBundle;->f(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    const-class v3, Landroidx/camera/video/VideoCapture;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Invalid target class configuration for "

    const-string v0, ": "

    invoke-static {p1, p0, v0, v2}, Lb21;->s(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    throw v1

    :cond_1
    :goto_0
    sget-object p0, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->VIDEO_CAPTURE:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    sget-object v2, Landroidx/camera/core/impl/UseCaseConfig;->E:Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {p1, v2, p0}, Landroidx/camera/core/impl/MutableOptionsBundle;->o(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v3}, Landroidx/camera/core/impl/MutableOptionsBundle;->o(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    sget-object p0, Landroidx/camera/core/internal/TargetConfig;->K:Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {p1, p0, v1}, Landroidx/camera/core/impl/OptionsBundle;->f(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroidx/camera/core/impl/MutableOptionsBundle;->o(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    const-string p0, "VideoOutput is required"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Landroidx/camera/video/VideoOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 99
    invoke-static {}, Landroidx/camera/core/impl/MutableOptionsBundle;->d0()Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object v0

    .line 100
    sget-object v1, Landroidx/camera/video/impl/VideoCaptureConfig;->N:Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {v0, v1, p1}, Landroidx/camera/core/impl/MutableOptionsBundle;->o(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 101
    invoke-direct {p0, v0}, Landroidx/camera/video/VideoCapture$Builder;-><init>(Landroidx/camera/core/impl/MutableOptionsBundle;)V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/camera/core/impl/MutableConfig;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/VideoCapture$Builder;->a:Landroidx/camera/core/impl/MutableOptionsBundle;

    return-object p0
.end method

.method public final b(I)Ljava/lang/Object;
    .locals 2

    sget-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->l:Landroidx/camera/core/impl/Config$Option;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Landroidx/camera/video/VideoCapture$Builder;->a:Landroidx/camera/core/impl/MutableOptionsBundle;

    invoke-virtual {v1, v0, p1}, Landroidx/camera/core/impl/MutableOptionsBundle;->o(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final c(Landroid/util/Size;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "setTargetResolution is not supported."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d()Landroidx/camera/core/impl/UseCaseConfig;
    .locals 1

    new-instance v0, Landroidx/camera/video/impl/VideoCaptureConfig;

    iget-object p0, p0, Landroidx/camera/video/VideoCapture$Builder;->a:Landroidx/camera/core/impl/MutableOptionsBundle;

    invoke-static {p0}, Landroidx/camera/core/impl/OptionsBundle;->c0(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/OptionsBundle;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/camera/video/impl/VideoCaptureConfig;-><init>(Landroidx/camera/core/impl/OptionsBundle;)V

    return-object v0
.end method
