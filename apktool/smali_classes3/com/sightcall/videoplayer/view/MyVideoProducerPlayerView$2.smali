.class Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;


# direct methods
.method public constructor <init>(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$2;->this$0:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    sget-object p1, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v0, "onPrepared()"

    invoke-virtual {p1, v0}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$2;->this$0:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;

    sget-object v1, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;->PREPARED:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    invoke-static {v0, v1}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->t(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;)V

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$2;->this$0:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;

    invoke-static {v0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->n(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$2;->this$0:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;

    invoke-static {v0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->m(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$2;->this$0:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;

    invoke-static {v0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->p(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)Z

    move-result v0

    iget-object v1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$2;->this$0:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "use restored values (seek:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->r(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", paused:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$2;->this$0:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;

    invoke-static {v1}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->q(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$2;->this$0:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;

    invoke-static {p1}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->r(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->seekTo(I)V

    iget-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$2;->this$0:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;

    invoke-static {p1}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->q(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)Z

    move-result p1

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$2;->this$0:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->x(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)V

    iget-object p0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$2;->this$0:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;

    invoke-static {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->w(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)V

    return-void

    :cond_0
    invoke-static {v0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->x(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)V

    return-void

    :cond_1
    invoke-static {v1}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->x(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$2;->this$0:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;

    invoke-static {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->v(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)V

    return-void
.end method
