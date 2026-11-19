.class Lcom/sightcall/videoplayer/view/VideoPlayerBar$ProgressHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/videoplayer/view/VideoPlayerBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressHandler"
.end annotation


# static fields
.field static final SHOW_PROGRESS:I = 0x1


# instance fields
.field private final barReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sightcall/videoplayer/view/VideoPlayerBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sightcall/videoplayer/view/VideoPlayerBar;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar$ProgressHandler;->barReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar$ProgressHandler;->barReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sightcall/videoplayer/view/VideoPlayerBar;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->g(Lcom/sightcall/videoplayer/view/VideoPlayerBar;)V

    invoke-static {p1}, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->h(Lcom/sightcall/videoplayer/view/VideoPlayerBar;)I

    move-result v1

    invoke-static {p1}, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->d(Lcom/sightcall/videoplayer/view/VideoPlayerBar;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1}, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->e(Lcom/sightcall/videoplayer/view/VideoPlayerBar;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->b(Lcom/sightcall/videoplayer/view/VideoPlayerBar;)Lcom/sightcall/videoplayer/view/MediaPlayerController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sightcall/videoplayer/view/MediaPlayerController;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    rem-int/lit16 v1, v1, 0x3e8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    rsub-int p1, v1, 0x3e8

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    :goto_1
    return-void
.end method
