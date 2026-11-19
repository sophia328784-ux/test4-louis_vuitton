.class public final synthetic Landroidx/camera/video/internal/encoder/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/video/internal/encoder/EncoderImpl;

.field public final synthetic c:J

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/encoder/EncoderImpl;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/e;->b:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iput-wide p2, p0, Landroidx/camera/video/internal/encoder/e;->c:J

    iput-wide p4, p0, Landroidx/camera/video/internal/encoder/e;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Landroidx/camera/video/internal/encoder/e;->b:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v1, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->a:Ljava/lang/String;

    iget-object v2, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->w:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const-string p0, "Unknown state: "

    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->w:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    invoke-static {v0, p0}, Lct0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string p0, "Encoder is released"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :pswitch_1
    sget-object p0, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->CONFIGURED:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    invoke-virtual {v0, p0}, Landroidx/camera/video/internal/encoder/EncoderImpl;->o(Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;)V

    return-void

    :pswitch_2
    iget-object v2, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->w:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    sget-object v3, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->STOPPING:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    invoke-virtual {v0, v3}, Landroidx/camera/video/internal/encoder/EncoderImpl;->o(Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;)V

    iget-object v3, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->x:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v6, v4, v6

    if-eqz v6, :cond_4

    const-wide/16 v6, -0x1

    iget-wide v8, p0, Landroidx/camera/video/internal/encoder/e;->c:J

    cmp-long v6, v8, v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v6, v8, v4

    if-gez v6, :cond_1

    const/4 v6, 0x5

    invoke-static {v6, v1}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    :goto_0
    iget-wide v8, p0, Landroidx/camera/video/internal/encoder/e;->d:J

    :cond_1
    cmp-long p0, v8, v4

    if-ltz p0, :cond_3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p0

    iput-object p0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->x:Landroid/util/Range;

    invoke-static {v8, v9}, Landroidx/camera/video/internal/DebugUtils;->b(J)Ljava/lang/String;

    const/4 p0, 0x3

    invoke-static {p0, v1}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    sget-object p0, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->PAUSED:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    if-ne v2, p0, :cond_2

    iget-object p0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->A:Ljava/lang/Long;

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Landroidx/camera/video/internal/encoder/EncoderImpl;->p()V

    return-void

    :cond_2
    const/4 p0, 0x1

    iput-boolean p0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->z:Z

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    new-instance v1, Lgw;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lgw;-><init>(Landroidx/camera/video/internal/encoder/EncoderImpl;I)V

    const-wide/16 v2, 0x3e8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    iput-object p0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->B:Ljava/util/concurrent/ScheduledFuture;

    return-void

    :cond_3
    const-string p0, "The start time should be before the stop time."

    invoke-static {p0}, Lmd;->h(Ljava/lang/Object;)V

    return-void

    :cond_4
    const-string p0, "There should be a \"start\" before \"stop\""

    invoke-static {p0}, Lmd;->h(Ljava/lang/Object;)V

    :pswitch_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
