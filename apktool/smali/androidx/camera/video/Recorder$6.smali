.class Landroidx/camera/video/Recorder$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/utils/futures/FutureCallback<",
        "Ljava/util/List<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroidx/camera/video/Recorder;


# direct methods
.method public constructor <init>(Landroidx/camera/video/Recorder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/Recorder$6;->a:Landroidx/camera/video/Recorder;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 2

    iget-object p0, p0, Landroidx/camera/video/Recorder$6;->a:Landroidx/camera/video/Recorder;

    iget-object v0, p0, Landroidx/camera/video/Recorder;->s:Landroidx/camera/video/Recorder$RecordingRecord;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "In-progress recording shouldn\'t be null"

    invoke-static {v1, v0}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    iget-object v0, p0, Landroidx/camera/video/Recorder;->s:Landroidx/camera/video/Recorder$RecordingRecord;

    check-cast v0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 p1, 0x3

    const-string v0, "Recorder"

    invoke-static {p1, v0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object p1, p0, Landroidx/camera/video/Recorder;->E:Landroid/media/MediaMuxer;

    if-nez p1, :cond_1

    const/16 p1, 0x8

    goto :goto_1

    :cond_1
    const/4 p1, 0x6

    :goto_1
    invoke-virtual {p0, p1}, Landroidx/camera/video/Recorder;->i(I)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/util/List;

    const-string p1, "Recorder"

    const/4 v0, 0x3

    invoke-static {v0, p1}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object p0, p0, Landroidx/camera/video/Recorder$6;->a:Landroidx/camera/video/Recorder;

    iget p1, p0, Landroidx/camera/video/Recorder;->W:I

    invoke-virtual {p0, p1}, Landroidx/camera/video/Recorder;->i(I)V

    return-void
.end method
