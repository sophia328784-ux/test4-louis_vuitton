.class Landroidx/camera/video/Recorder$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;


# instance fields
.field public final synthetic a:Landroidx/camera/video/b;

.field public final synthetic b:Landroidx/camera/video/Recorder;


# direct methods
.method public constructor <init>(Landroidx/camera/video/Recorder;Landroidx/camera/video/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/Recorder$4;->b:Landroidx/camera/video/Recorder;

    iput-object p2, p0, Landroidx/camera/video/Recorder$4;->a:Landroidx/camera/video/b;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    iget-object p0, p0, Landroidx/camera/video/Recorder$4;->b:Landroidx/camera/video/Recorder;

    iget-boolean v0, p0, Landroidx/camera/video/Recorder;->a0:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/camera/video/Recorder;->a0:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/camera/video/Recorder;->I(Z)V

    return-void

    :cond_0
    const-string p0, "Recorder"

    const/4 p1, 0x5

    invoke-static {p1, p0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    return-void
.end method

.method public final b(D)V
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/Recorder$4;->b:Landroidx/camera/video/Recorder;

    iput-wide p1, p0, Landroidx/camera/video/Recorder;->h0:D

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "Recorder"

    invoke-static {v0}, Landroidx/camera/core/Logger;->b(Ljava/lang/String;)V

    instance-of v0, p1, Landroidx/camera/video/internal/audio/AudioSourceAccessException;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/camera/video/Recorder$4;->a:Landroidx/camera/video/b;

    invoke-virtual {p0, p1}, Landroidx/camera/video/b;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
