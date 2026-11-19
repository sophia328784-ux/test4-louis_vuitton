.class public final synthetic Lr51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/camera/camera2/internal/VideoUsageControl;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/VideoUsageControl;I)V
    .locals 0

    iput p2, p0, Lr51;->b:I

    iput-object p1, p0, Lr51;->c:Landroidx/camera/camera2/internal/VideoUsageControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lr51;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lr51;->c:Landroidx/camera/camera2/internal/VideoUsageControl;

    iget-object p0, p0, Landroidx/camera/camera2/internal/VideoUsageControl;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const-string p0, "VideoUsageControl"

    const/4 v0, 0x3

    invoke-static {v0, p0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    return-void

    :pswitch_0
    iget-object p0, p0, Lr51;->c:Landroidx/camera/camera2/internal/VideoUsageControl;

    iget-object p0, p0, Landroidx/camera/camera2/internal/VideoUsageControl;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    const-string v0, "VideoUsageControl"

    if-gez p0, :cond_0

    const/4 p0, 0x5

    invoke-static {p0, v0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    invoke-static {p0, v0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
