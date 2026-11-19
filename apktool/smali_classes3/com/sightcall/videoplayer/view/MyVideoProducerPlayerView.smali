.class public Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Lnet/rtccloud/sdk/VideoProducer;
.implements Lcom/sightcall/common/MyVideoProducer;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/sightcall/videoplayer/view/MediaPlayerController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;,
        Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$OnPlayerCallback;,
        Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;
    }
.end annotation


# instance fields
.field private advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

.field private bar:Lcom/sightcall/videoplayer/view/VideoPlayerBar;

.field private call:Lnet/rtccloud/sdk/Call;

.field private capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;

.field private final completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private final dst:Landroid/graphics/RectF;

.field private final errorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private final infoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private isPaused:Z

.field private isRendering:Z

.field private isStarted:Z

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final matrix:Landroid/graphics/Matrix;

.field private final measureDim:Lnet/rtccloud/sdk/util/Dimension;

.field private mp:Landroid/media/MediaPlayer;

.field private mpState:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

.field private parameters:Lnet/rtccloud/sdk/Call$Parameters;

.field private playerCallback:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$OnPlayerCallback;

.field private final preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private previewSize:Landroid/graphics/Point;

.field private restored:Z

.field private restoredPaused:Z

.field private restoredSeekTo:I

.field private final scaleType:Lnet/rtccloud/sdk/util/ScaleType;

.field private senderHandler:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;

.field private sink:Lnet/rtccloud/sdk/Sink$Video;

.field private snapshotOption:Z

.field private final src:Landroid/graphics/RectF;

.field private surface:Landroid/view/Surface;

.field private uri:Landroid/net/Uri;

.field private final videoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private who:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lnet/rtccloud/sdk/Call$Parameters;

    invoke-direct {p1}, Lnet/rtccloud/sdk/Call$Parameters;-><init>()V

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    sget-object p1, Lnet/rtccloud/sdk/util/ScaleType;->FIT:Lnet/rtccloud/sdk/util/ScaleType;

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->scaleType:Lnet/rtccloud/sdk/util/ScaleType;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->matrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->src:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->dst:Landroid/graphics/RectF;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object p1, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;->IDLE:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mpState:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    new-instance p1, Lnet/rtccloud/sdk/util/Dimension;

    invoke-direct {p1}, Lnet/rtccloud/sdk/util/Dimension;-><init>()V

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->measureDim:Lnet/rtccloud/sdk/util/Dimension;

    new-instance p1, Lie0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lie0;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance p1, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$2;

    invoke-direct {p1, p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$2;-><init>(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)V

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance p1, Lje0;

    invoke-direct {p1, p0, v0}, Lje0;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance p1, Lke0;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    new-instance p1, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$3;

    invoke-direct {p1, p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$3;-><init>(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)V

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->videoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    new-instance p1, Lnet/rtccloud/sdk/Call$Parameters;

    invoke-direct {p1}, Lnet/rtccloud/sdk/Call$Parameters;-><init>()V

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    .line 95
    sget-object p1, Lnet/rtccloud/sdk/util/ScaleType;->FIT:Lnet/rtccloud/sdk/util/ScaleType;

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->scaleType:Lnet/rtccloud/sdk/util/ScaleType;

    .line 96
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->matrix:Landroid/graphics/Matrix;

    .line 97
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->src:Landroid/graphics/RectF;

    .line 98
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->dst:Landroid/graphics/RectF;

    .line 99
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 100
    sget-object p1, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;->IDLE:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mpState:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    .line 101
    new-instance p1, Lnet/rtccloud/sdk/util/Dimension;

    invoke-direct {p1}, Lnet/rtccloud/sdk/util/Dimension;-><init>()V

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->measureDim:Lnet/rtccloud/sdk/util/Dimension;

    .line 102
    new-instance p1, Lie0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lie0;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 103
    new-instance p1, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$2;

    invoke-direct {p1, p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$2;-><init>(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)V

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 104
    new-instance p1, Lje0;

    invoke-direct {p1, p0, p2}, Lje0;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 105
    new-instance p1, Lke0;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 106
    new-instance p1, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$3;

    invoke-direct {p1, p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$3;-><init>(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)V

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->videoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 107
    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    new-instance p1, Lnet/rtccloud/sdk/Call$Parameters;

    invoke-direct {p1}, Lnet/rtccloud/sdk/Call$Parameters;-><init>()V

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    .line 110
    sget-object p1, Lnet/rtccloud/sdk/util/ScaleType;->FIT:Lnet/rtccloud/sdk/util/ScaleType;

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->scaleType:Lnet/rtccloud/sdk/util/ScaleType;

    .line 111
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->matrix:Landroid/graphics/Matrix;

    .line 112
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->src:Landroid/graphics/RectF;

    .line 113
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->dst:Landroid/graphics/RectF;

    .line 114
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 115
    sget-object p1, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;->IDLE:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mpState:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    .line 116
    new-instance p1, Lnet/rtccloud/sdk/util/Dimension;

    invoke-direct {p1}, Lnet/rtccloud/sdk/util/Dimension;-><init>()V

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->measureDim:Lnet/rtccloud/sdk/util/Dimension;

    .line 117
    new-instance p1, Lie0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lie0;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 118
    new-instance p1, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$2;

    invoke-direct {p1, p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$2;-><init>(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)V

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 119
    new-instance p1, Lje0;

    invoke-direct {p1, p0, p2}, Lje0;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 120
    new-instance p1, Lke0;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 121
    new-instance p1, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$3;

    invoke-direct {p1, p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$3;-><init>(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)V

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->videoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 122
    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->init()V

    return-void
.end method

.method public static synthetic a(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->lambda$new$2(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic b(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->lambda$stopRendering$1()V

    return-void
.end method

.method public static synthetic c(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->lambda$mediaPlayerInit$6()V

    return-void
.end method

.method public static synthetic d(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->lambda$hideBar$5()V

    return-void
.end method

.method public static synthetic e(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->lambda$mediaPlayerResume$8()V

    return-void
.end method

.method public static synthetic f(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->lambda$startRendering$0()V

    return-void
.end method

.method public static synthetic g(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;Landroid/media/MediaPlayer;II)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->lambda$new$3(Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Landroid/media/MediaPlayer;II)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->lambda$new$4(Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->lambda$mediaPlayerDestroy$7()V

    return-void
.end method

.method private init()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lnet/rtccloud/sdk/util/ViewUtils;->whoami(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->who:Ljava/lang/String;

    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private isMediaPlayerReady(Landroid/media/MediaPlayer;)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->isStarted:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->isRendering:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mpState:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    sget-object p1, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;->IDLE:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    if-eq p0, p1, :cond_0

    sget-object p1, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;->PREPARING:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic j(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->lambda$startSeek$10()V

    return-void
.end method

.method public static synthetic k(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->lambda$mediaPlayerPause$9()V

    return-void
.end method

.method public static bridge synthetic l(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->isPaused:Z

    return p0
.end method

.method private synthetic lambda$hideBar$5()V
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->hideBar()V

    return-void
.end method

.method private synthetic lambda$mediaPlayerDestroy$7()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->playerCallback:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$OnPlayerCallback;

    invoke-interface {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$OnPlayerCallback;->onPlayerStop()V

    return-void
.end method

.method private synthetic lambda$mediaPlayerInit$6()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->playerCallback:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$OnPlayerCallback;

    invoke-interface {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$OnPlayerCallback;->onPlayerStart()V

    return-void
.end method

.method private synthetic lambda$mediaPlayerPause$9()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->playerCallback:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$OnPlayerCallback;

    invoke-interface {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$OnPlayerCallback;->onPlayerPause()V

    return-void
.end method

.method private synthetic lambda$mediaPlayerResume$8()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->playerCallback:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$OnPlayerCallback;

    invoke-interface {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$OnPlayerCallback;->onPlayerResume()V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/media/MediaPlayer;)V
    .locals 1

    sget-object p1, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v0, "onCompletion()"

    invoke-virtual {p1, v0}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->pause()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->seekTo(I)V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/media/MediaPlayer;II)Z
    .locals 2

    sget-object p1, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onError(what:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " extra:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->onStopProducer()V

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$new$4(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$startRendering$0()V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->updateScaling()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private synthetic lambda$startSeek$10()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->playerCallback:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$OnPlayerCallback;

    invoke-interface {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$OnPlayerCallback;->onPlayerStartSeek()V

    return-void
.end method

.method private synthetic lambda$stopRendering$1()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public static bridge synthetic m(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->isRendering:Z

    return p0
.end method

.method private mediaPlayerDestroy()V
    .locals 2

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "mediaPlayerDestroy()"

    invoke-virtual {v0, v1}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->hideBar()V

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->senderHandler:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;->teardown()V

    iput-object v1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->senderHandler:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;

    :cond_0
    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mp:Landroid/media/MediaPlayer;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->isRendering:Z

    iput-boolean v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->isPaused:Z

    iput-object v1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->previewSize:Landroid/graphics/Point;

    sget-object v0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;->IDLE:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    iput-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mpState:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->STOPPED_PLAYER:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    new-instance v0, Lhe0;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lhe0;-><init>(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private mediaPlayerInit()V
    .locals 3

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "mediaPlayerInit()"

    invoke-virtual {v0, v1}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;->IDLE:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    iput-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mpState:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mp:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mp:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mp:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mp:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mp:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mp:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->videoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mp:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mp:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    sget-object v0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;->PREPARING:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    iput-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mpState:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->isRendering:Z

    invoke-static {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;->create(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->senderHandler:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;

    iget-object v1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {v0, v1}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;->updateTimeout(Lnet/rtccloud/sdk/Call$Parameters;)V

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->STARTED_PLAYER:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    new-instance v0, Lhe0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lhe0;-><init>(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v2, "Error while creating the MediaPlayer"

    invoke-virtual {v1, v2, v0}, Lcom/sightcall/pratik/logs/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;->IDLE:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    iput-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mpState:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    return-void
.end method

.method private mediaPlayerPause()V
    .locals 2

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "mediaPlayerPause()"

    invoke-virtual {v0, v1}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mp:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->isMediaPlayerReady(Landroid/media/MediaPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->isPaused:Z

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;

    invoke-interface {v0}, Lcom/sightcall/capabilities/CapabilitiesRepository;->pauseVideo()V

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_1
    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    sget-object v1, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;->DrawDrop:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;

    invoke-interface {v0, p0, v1}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->selectStandaloneMode(Ljava/lang/Object;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;)V

    sget-object v0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;->PAUSED:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    iput-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mpState:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->PAUSED_PLAYER:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    new-instance v0, Lhe0;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lhe0;-><init>(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private mediaPlayerResume()V
    .locals 3

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "mediaPlayerResume()"

    invoke-virtual {v0, v1}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mp:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->isMediaPlayerReady(Landroid/media/MediaPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->isPaused:Z

    iget-object v1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;

    invoke-interface {v1}, Lcom/sightcall/capabilities/CapabilitiesRepository;->resumeVideo()V

    iget-object v1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/sightcall/videoplayer/R$string;->universal_call_error_video_file:I

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->unloadUri()V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    sget-object v1, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;->Pointer:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;

    invoke-interface {v0, p0, v1}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->selectStandaloneMode(Ljava/lang/Object;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;)V

    sget-object v0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;->STARTED:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    iput-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mpState:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    invoke-virtual {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->showBar()V

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->RESUMED_PLAYER:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    new-instance v0, Lhe0;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lhe0;-><init>(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static bridge synthetic n(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->isStarted:Z

    return p0
.end method

.method public static bridge synthetic o(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->previewSize:Landroid/graphics/Point;

    return-object p0
.end method

.method public static bridge synthetic p(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->restored:Z

    return p0
.end method

.method private postRequestLayout()V
    .locals 1

    new-instance v0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$1;

    invoke-direct {v0, p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$1;-><init>(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static bridge synthetic q(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->restoredPaused:Z

    return p0
.end method

.method public static bridge synthetic r(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)I
    .locals 0

    iget p0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->restoredSeekTo:I

    return p0
.end method

.method private restartRendering()V
    .locals 2

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "restartRendering()"

    invoke-virtual {v0, v1}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->isStarted:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->isRendering:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->stopRendering()V

    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->startRendering()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static bridge synthetic s(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)Lnet/rtccloud/sdk/Sink$Video;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->sink:Lnet/rtccloud/sdk/Sink$Video;

    return-object p0
.end method

.method private startRendering()V
    .locals 3

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startRendering() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->who:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->isRendering:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->uri:Landroid/net/Uri;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mediaPlayerInit()V

    new-instance v0, Lhe0;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lhe0;-><init>(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private stopRendering()V
    .locals 2

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "stopRendering()"

    invoke-virtual {v0, v1}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->isRendering:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mediaPlayerDestroy()V

    new-instance v0, Lhe0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lhe0;-><init>(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static bridge synthetic t(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mpState:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$MediaPlayerState;

    return-void
.end method

.method public static bridge synthetic u(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->previewSize:Landroid/graphics/Point;

    return-void
.end method

.method private updateScaling()V
    .locals 8

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->src:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->src:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->previewSize:Landroid/graphics/Point;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->src:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    :goto_0
    move v4, v1

    goto :goto_1

    :cond_0
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    goto :goto_0

    :goto_1
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->src:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    :goto_2
    move v5, v0

    goto :goto_3

    :cond_1
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    goto :goto_2

    :goto_3
    iget-object v2, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->scaleType:Lnet/rtccloud/sdk/util/ScaleType;

    iget-object v3, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->dst:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->src:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->right:F

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v2 .. v7}, Lnet/rtccloud/sdk/util/ViewUtils;->applyScalingTo(Lnet/rtccloud/sdk/util/ScaleType;Landroid/graphics/RectF;FFFF)F

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->src:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->dst:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public static bridge synthetic v(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mediaPlayerDestroy()V

    return-void
.end method

.method public static bridge synthetic w(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mediaPlayerPause()V

    return-void
.end method

.method public static bridge synthetic x(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mediaPlayerResume()V

    return-void
.end method

.method public static bridge synthetic y(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->postRequestLayout()V

    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mp:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->isMediaPlayerReady(Landroid/media/MediaPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p0

    return p0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mp:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->isMediaPlayerReady(Landroid/media/MediaPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p0

    return p0
.end method

.method public getPreviewSize()Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->previewSize:Landroid/graphics/Point;

    return-object p0
.end method

.method public hideBar()V
    .locals 2

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "hideBar()"

    invoke-virtual {v0, v1}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->bar:Lcom/sightcall/videoplayer/view/VideoPlayerBar;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->bar:Lcom/sightcall/videoplayer/view/VideoPlayerBar;

    invoke-virtual {p0}, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->hide()V

    return-void

    :cond_0
    new-instance v0, Lhe0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lhe0;-><init>(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public initWithOption(Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;Lcom/sightcall/capabilities/CapabilitiesRepository;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    iput-object p2, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;

    iput-boolean p3, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->snapshotOption:Z

    return-void
.end method

.method public isPaused()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->isPaused:Z

    return p0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mp:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->isMediaPlayerReady(Landroid/media/MediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isStarted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->isStarted:Z

    return p0
.end method

.method public loadUri(Landroid/net/Uri;)V
    .locals 3

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadUri("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->uri:Landroid/net/Uri;

    iget-boolean p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->isRendering:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->restartRendering()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->startRendering()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "onAttachedToWindow()"

    invoke-virtual {v0, v1}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    return-void
.end method

.method public onBind(Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Sink$Video;)V
    .locals 2

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "onBind()"

    invoke-virtual {v0, v1}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->call:Lnet/rtccloud/sdk/Call;

    iput-object p2, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->sink:Lnet/rtccloud/sdk/Sink$Video;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->parameters()Lnet/rtccloud/sdk/Call$Parameters;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "onDetachedFromWindow()"

    invoke-virtual {v0, v1}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->previewSize:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->measureDim:Lnet/rtccloud/sdk/util/Dimension;

    if-eqz v0, :cond_0

    invoke-static {v1, v0, p1, p2}, Lnet/rtccloud/sdk/util/ViewUtils;->measureWithPreviewSize(Lnet/rtccloud/sdk/util/Dimension;Landroid/graphics/Point;II)V

    goto :goto_0

    :cond_0
    invoke-static {v1, p1, p2}, Lnet/rtccloud/sdk/util/ViewUtils;->measureWithSpecs(Lnet/rtccloud/sdk/util/Dimension;II)V

    :goto_0
    iget-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->measureDim:Lnet/rtccloud/sdk/util/Dimension;

    iget p2, p1, Lnet/rtccloud/sdk/util/Dimension;->width:I

    iget p1, p1, Lnet/rtccloud/sdk/util/Dimension;->height:I

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/TextureView;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->updateScaling()V

    iget-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    invoke-interface {p1, p0, p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->layoutOver(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public onStartProducer()V
    .locals 2

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "onStart()"

    invoke-virtual {v0, v1}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->isStarted:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->isPaused:Z

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    invoke-interface {v0, p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->setAnchor(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    invoke-interface {v0, p0, p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->layoutOver(Ljava/lang/Object;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    invoke-interface {v0, p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->resumeAnnotations(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;

    invoke-interface {v0}, Lcom/sightcall/capabilities/CapabilitiesRepository;->activateVideo()V

    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->startRendering()V

    return-void
.end method

.method public onStopProducer()V
    .locals 2

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "onStop()"

    invoke-virtual {v0, v1}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->isStarted:Z

    iput-boolean v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->isPaused:Z

    iget-object v1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;

    invoke-interface {v1}, Lcom/sightcall/capabilities/CapabilitiesRepository;->stopVideo()V

    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->stopRendering()V

    iput-boolean v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->restored:Z

    iput-boolean v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->restoredPaused:Z

    iput v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->restoredSeekTo:I

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 4

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, ", "

    const-string v2, ")"

    const-string v3, "onSurfaceTextureAvailable("

    invoke-static {p2, p3, v3, v1, v2}, Lfc;->f(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;)V

    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->surface:Landroid/view/Surface;

    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->startRendering()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    sget-object p1, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v0, "onSurfaceTextureDestroyed()"

    invoke-virtual {p1, v0}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mp:Landroid/media/MediaPlayer;

    invoke-direct {p0, p1}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->isMediaPlayerReady(Landroid/media/MediaPlayer;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->restored:Z

    iget-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p1

    iput p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->restoredSeekTo:I

    iget-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->restoredPaused:Z

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->surface:Landroid/view/Surface;

    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->stopRendering()V

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    sget-object p0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string p1, ", "

    const-string v0, ")"

    const-string v1, "onSurfaceTextureSizeChanged("

    invoke-static {p2, p3, v1, p1, v0}, Lfc;->f(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onUnbind()V
    .locals 2

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "onUnbind()"

    invoke-virtual {v0, v1}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->isStarted:Z

    iput-boolean v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->isPaused:Z

    new-instance v0, Lnet/rtccloud/sdk/Call$Parameters;

    invoke-direct {v0}, Lnet/rtccloud/sdk/Call$Parameters;-><init>()V

    iput-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->call:Lnet/rtccloud/sdk/Call;

    iput-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->sink:Lnet/rtccloud/sdk/Sink$Video;

    iput-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->previewSize:Landroid/graphics/Point;

    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->postRequestLayout()V

    return-void
.end method

.method public pause()V
    .locals 2

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "pause()"

    invoke-virtual {v0, v1}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mediaPlayerPause()V

    return-void
.end method

.method public resetState()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->restored:Z

    iput v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->restoredSeekTo:I

    iput-boolean v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->restoredPaused:Z

    return-void
.end method

.method public restore(Lcom/sightcall/videoplayer/model/VideoPlayer;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sightcall/videoplayer/model/VideoPlayer;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->restored:Z

    invoke-virtual {p1}, Lcom/sightcall/videoplayer/model/VideoPlayer;->getSeek()I

    move-result v0

    iput v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->restoredSeekTo:I

    invoke-virtual {p1}, Lcom/sightcall/videoplayer/model/VideoPlayer;->getPaused()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->restoredPaused:Z

    invoke-virtual {p1}, Lcom/sightcall/videoplayer/model/VideoPlayer;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->loadUri(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "resume()"

    invoke-virtual {v0, v1}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mediaPlayerResume()V

    return-void
.end method

.method public saveState()Lcom/sightcall/videoplayer/model/VideoPlayer;
    .locals 2

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->uri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/sightcall/videoplayer/model/VideoPlayer;

    invoke-direct {v0}, Lcom/sightcall/videoplayer/model/VideoPlayer;-><init>()V

    iget-object v1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sightcall/videoplayer/model/VideoPlayer;->setUri(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mp:Landroid/media/MediaPlayer;

    invoke-direct {p0, v1}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->isMediaPlayerReady(Landroid/media/MediaPlayer;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sightcall/videoplayer/model/VideoPlayer;->setSeek(I)V

    invoke-virtual {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->isPlaying()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/sightcall/videoplayer/model/VideoPlayer;->setPaused(Z)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/sightcall/videoplayer/model/VideoPlayer;->setSeek(I)V

    invoke-virtual {v0, p0}, Lcom/sightcall/videoplayer/model/VideoPlayer;->setPaused(Z)V

    return-object v0
.end method

.method public seekTo(I)V
    .locals 3

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "seekTo("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mp:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->isMediaPlayerReady(Landroid/media/MediaPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public seekToRelative(I)V
    .locals 3

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "seekToRelative("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mp:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->isMediaPlayerReady(Landroid/media/MediaPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    add-int/2addr v1, p1

    iget-object p0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public setOnPlayerCallback(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$OnPlayerCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->playerCallback:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$OnPlayerCallback;

    return-void
.end method

.method public setVideoPlayerBar(Lcom/sightcall/videoplayer/view/VideoPlayerBar;)V
    .locals 1

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->bar:Lcom/sightcall/videoplayer/view/VideoPlayerBar;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->bar:Lcom/sightcall/videoplayer/view/VideoPlayerBar;

    invoke-virtual {p1, p0}, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->setMediaPlayerController(Lcom/sightcall/videoplayer/view/MediaPlayerController;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->bar:Lcom/sightcall/videoplayer/view/VideoPlayerBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showBar()V
    .locals 2

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "showBar()"

    invoke-virtual {v0, v1}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->mp:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->isMediaPlayerReady(Landroid/media/MediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->bar:Lcom/sightcall/videoplayer/view/VideoPlayerBar;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->bar:Lcom/sightcall/videoplayer/view/VideoPlayerBar;

    invoke-virtual {p0}, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->show()V

    return-void

    :cond_0
    new-instance v0, Lhe0;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lhe0;-><init>(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public snapshot()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->senderHandler:Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;->a(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView$SenderHandler;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    iget-boolean p0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->snapshotOption:Z

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lnet/rtccloud/sdk/Jni;->nConvertBGR2RGB(Landroid/graphics/Bitmap;)Z

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public startSeek()V
    .locals 2

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "startSeek()"

    invoke-virtual {v0, v1}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;)V

    new-instance v0, Lhe0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lhe0;-><init>(Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unloadUri()V
    .locals 2

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "unloadUri()"

    invoke-virtual {v0, v1}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->isRendering:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->uri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->stopRendering()V

    :cond_1
    :goto_0
    return-void
.end method
