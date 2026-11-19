.class public final synthetic Lkd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/Object;J)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lkd0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkd0;->d:Ljava/lang/Object;

    iput-object p2, p0, Lkd0;->e:Ljava/lang/Object;

    iput-wide p3, p0, Lkd0;->c:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;JLjava/lang/Object;I)V
    .locals 0

    .line 13
    iput p5, p0, Lkd0;->b:I

    iput-object p1, p0, Lkd0;->d:Ljava/lang/Object;

    iput-wide p2, p0, Lkd0;->c:J

    iput-object p4, p0, Lkd0;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lkd0;->b:I

    iget-object v1, p0, Lkd0;->e:Ljava/lang/Object;

    iget-wide v2, p0, Lkd0;->c:J

    iget-object p0, p0, Lkd0;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/batch/android/v0/l;

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v2, v3, v1}, Lcom/batch/android/v0/l;->y(Lcom/batch/android/v0/l;JLjava/lang/String;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-interface {p0, v2, v3, v1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener;->r(JLjava/lang/Object;)V

    return-void

    :pswitch_1
    check-cast p0, Ljava/util/concurrent/ExecutorService;

    check-cast v1, Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :try_start_0
    invoke-interface {p0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
