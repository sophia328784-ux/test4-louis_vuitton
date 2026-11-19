.class Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$3;->this$0:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 2

    sget-object p1, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onVideoSizeChanged(width:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$3;->this$0:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {p1, v0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->u(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;Landroid/graphics/Point;)V

    iget-object p0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$3;->this$0:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;

    invoke-static {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->y(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)V

    return-void
.end method
