.class public final synthetic Lgw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/camera/video/internal/encoder/EncoderImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/encoder/EncoderImpl;I)V
    .locals 0

    iput p2, p0, Lgw;->b:I

    iput-object p1, p0, Lgw;->c:Landroidx/camera/video/internal/encoder/EncoderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lgw;->b:I

    const/4 v1, 0x1

    iget-object p0, p0, Lgw;->c:Landroidx/camera/video/internal/encoder/EncoderImpl;

    packed-switch v0, :pswitch_data_0

    iput-boolean v1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl;->E:Z

    iget-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl;->D:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl;->t:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl;->a:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl;->f:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    :cond_0
    invoke-virtual {p0}, Landroidx/camera/video/internal/encoder/EncoderImpl;->n()V

    :cond_1
    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl;->w:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v1, :cond_3

    const/4 p0, 0x6

    if-eq v0, p0, :cond_2

    const/16 p0, 0x8

    if-eq v0, p0, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "Encoder is released"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroidx/camera/video/internal/encoder/EncoderImpl;->m()V

    :goto_0
    return-void

    :pswitch_1
    iget-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl;->z:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl;->a:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl;->A:Ljava/lang/Long;

    invoke-virtual {p0}, Landroidx/camera/video/internal/encoder/EncoderImpl;->p()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl;->z:Z

    :cond_4
    return-void

    :pswitch_2
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl;->i:Ljava/util/concurrent/Executor;

    new-instance v2, Lgw;

    invoke-direct {v2, p0, v1}, Lgw;-><init>(Landroidx/camera/video/internal/encoder/EncoderImpl;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
