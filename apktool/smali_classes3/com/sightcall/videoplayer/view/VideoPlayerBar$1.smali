.class Lcom/sightcall/videoplayer/view/VideoPlayerBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/videoplayer/view/VideoPlayerBar;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/videoplayer/view/VideoPlayerBar;


# direct methods
.method public constructor <init>(Lcom/sightcall/videoplayer/view/VideoPlayerBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar$1;->this$0:Lcom/sightcall/videoplayer/view/VideoPlayerBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar$1;->this$0:Lcom/sightcall/videoplayer/view/VideoPlayerBar;

    invoke-static {p1}, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->b(Lcom/sightcall/videoplayer/view/VideoPlayerBar;)Lcom/sightcall/videoplayer/view/MediaPlayerController;

    move-result-object p1

    iget-object p0, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar$1;->this$0:Lcom/sightcall/videoplayer/view/VideoPlayerBar;

    invoke-static {p0}, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->b(Lcom/sightcall/videoplayer/view/VideoPlayerBar;)Lcom/sightcall/videoplayer/view/MediaPlayerController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sightcall/videoplayer/view/MediaPlayerController;->getDuration()I

    move-result p0

    mul-int/2addr p0, p2

    int-to-long p2, p0

    const-wide/16 v0, 0x3e8

    div-long/2addr p2, v0

    long-to-int p0, p2

    invoke-interface {p1, p0}, Lcom/sightcall/videoplayer/view/MediaPlayerController;->seekTo(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object p1, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar$1;->this$0:Lcom/sightcall/videoplayer/view/VideoPlayerBar;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->f(Lcom/sightcall/videoplayer/view/VideoPlayerBar;Z)V

    iget-object p1, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar$1;->this$0:Lcom/sightcall/videoplayer/view/VideoPlayerBar;

    invoke-virtual {p1}, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->show()V

    iget-object p1, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar$1;->this$0:Lcom/sightcall/videoplayer/view/VideoPlayerBar;

    invoke-static {p1}, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->b(Lcom/sightcall/videoplayer/view/VideoPlayerBar;)Lcom/sightcall/videoplayer/view/MediaPlayerController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sightcall/videoplayer/view/MediaPlayerController;->startSeek()V

    iget-object p0, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar$1;->this$0:Lcom/sightcall/videoplayer/view/VideoPlayerBar;

    invoke-static {p0}, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->c(Lcom/sightcall/videoplayer/view/VideoPlayerBar;)Lcom/sightcall/videoplayer/view/VideoPlayerBar$ProgressHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar$1;->this$0:Lcom/sightcall/videoplayer/view/VideoPlayerBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->f(Lcom/sightcall/videoplayer/view/VideoPlayerBar;Z)V

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar$1;->this$0:Lcom/sightcall/videoplayer/view/VideoPlayerBar;

    invoke-static {v0}, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->h(Lcom/sightcall/videoplayer/view/VideoPlayerBar;)I

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar$1;->this$0:Lcom/sightcall/videoplayer/view/VideoPlayerBar;

    invoke-static {v0}, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->g(Lcom/sightcall/videoplayer/view/VideoPlayerBar;)V

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar$1;->this$0:Lcom/sightcall/videoplayer/view/VideoPlayerBar;

    invoke-virtual {v0}, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->show()V

    iget-object p0, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar$1;->this$0:Lcom/sightcall/videoplayer/view/VideoPlayerBar;

    invoke-static {p0}, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->c(Lcom/sightcall/videoplayer/view/VideoPlayerBar;)Lcom/sightcall/videoplayer/view/VideoPlayerBar$ProgressHandler;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
