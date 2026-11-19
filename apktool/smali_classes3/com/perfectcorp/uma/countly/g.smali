.class final Lcom/perfectcorp/uma/countly/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/perfectcorp/uma/countly/d;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/uma/countly/d;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/uma/countly/g;->a:Lcom/perfectcorp/uma/countly/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/perfectcorp/uma/countly/g;->a:Lcom/perfectcorp/uma/countly/d;

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/perfectcorp/uma/countly/d;->f:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/uma/countly/d;->h()I

    move-result v0

    sget-object v1, Lcom/perfectcorp/uma/countly/d;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/perfectcorp/uma/countly/k;

    invoke-direct {v2, p0, v0}, Lcom/perfectcorp/uma/countly/k;-><init>(Lcom/perfectcorp/uma/countly/d;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
