.class Landroidx/camera/video/internal/encoder/EncoderImpl$2;
.super Landroidx/camera/video/internal/encoder/InputBufferImpl;
.source "SourceFile"


# instance fields
.field public final synthetic i:Landroidx/camera/video/internal/encoder/EncoderImpl;


# direct methods
.method public constructor <init>(Landroidx/camera/video/internal/encoder/EncoderImpl;Landroid/media/MediaCodec;I)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$2;->i:Landroidx/camera/video/internal/encoder/EncoderImpl;

    invoke-direct {p0, p2, p3}, Landroidx/camera/video/internal/encoder/InputBufferImpl;-><init>(Landroid/media/MediaCodec;I)V

    return-void
.end method


# virtual methods
.method public final b(J)V
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$2;->i:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-boolean v1, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->c:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Landroidx/camera/video/internal/encoder/EncoderImpl;->r(J)J

    move-result-wide p1

    :goto_0
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/InputBufferImpl;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Landroidx/core/util/Preconditions;->a(Z)V

    iput-wide p1, p0, Landroidx/camera/video/internal/encoder/InputBufferImpl;->g:J

    return-void

    :cond_2
    const-string p0, "The buffer is submitted or canceled."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method
