.class public final synthetic Landroidx/media3/session/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/media3/session/MediaControllerHolder;

.field public final synthetic d:Landroidx/media3/session/MediaController;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaControllerHolder;Landroidx/media3/session/MediaController;I)V
    .locals 0

    iput p3, p0, Landroidx/media3/session/f;->b:I

    iput-object p1, p0, Landroidx/media3/session/f;->c:Landroidx/media3/session/MediaControllerHolder;

    iput-object p2, p0, Landroidx/media3/session/f;->d:Landroidx/media3/session/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/media3/session/f;->b:I

    iget-object v1, p0, Landroidx/media3/session/f;->d:Landroidx/media3/session/MediaController;

    iget-object p0, p0, Landroidx/media3/session/f;->c:Landroidx/media3/session/MediaControllerHolder;

    packed-switch v0, :pswitch_data_0

    sget v0, Landroidx/media3/session/MediaControllerHolder;->e:I

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isCancelled()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Landroidx/media3/session/MediaController;->release()V

    :cond_0
    return-void

    :pswitch_0
    iput-object v1, p0, Landroidx/media3/session/MediaControllerHolder;->c:Landroidx/media3/session/MediaController;

    iget-boolean v0, p0, Landroidx/media3/session/MediaControllerHolder;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/AbstractFuture;->set(Ljava/lang/Object;)Z

    :cond_1
    new-instance v0, Landroidx/media3/session/f;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroidx/media3/session/f;-><init>(Landroidx/media3/session/MediaControllerHolder;Landroidx/media3/session/MediaController;I)V

    new-instance v1, Landroidx/media3/session/g;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/media3/session/g;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
