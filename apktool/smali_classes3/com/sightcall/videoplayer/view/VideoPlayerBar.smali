.class public Lcom/sightcall/videoplayer/view/VideoPlayerBar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/videoplayer/view/VideoPlayerBar$ProgressHandler;,
        Lcom/sightcall/videoplayer/view/VideoPlayerBar$VisibilityCallback;
    }
.end annotation


# static fields
.field public static final ACCELERATE_INTERPOLATOR:Landroid/view/animation/AccelerateInterpolator;

.field public static final DECELERATE_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field private controller:Lcom/sightcall/videoplayer/view/MediaPlayerController;

.field private handler:Lcom/sightcall/videoplayer/view/VideoPlayerBar$ProgressHandler;

.field private isDragging:Z

.field private isShowing:Z

.field private playPauseButton:Landroidx/appcompat/widget/AppCompatImageView;

.field private seekbar:Landroid/widget/SeekBar;

.field private visibilityCallback:Lcom/sightcall/videoplayer/view/VideoPlayerBar$VisibilityCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->ACCELERATE_INTERPOLATOR:Landroid/view/animation/AccelerateInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->DECELERATE_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->init()V

    return-void
.end method

.method public static synthetic a(Lcom/sightcall/videoplayer/view/VideoPlayerBar;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->instrumented$0$init$--V(Lcom/sightcall/videoplayer/view/VideoPlayerBar;Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sightcall/videoplayer/view/VideoPlayerBar;)Lcom/sightcall/videoplayer/view/MediaPlayerController;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->controller:Lcom/sightcall/videoplayer/view/MediaPlayerController;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sightcall/videoplayer/view/VideoPlayerBar;)Lcom/sightcall/videoplayer/view/VideoPlayerBar$ProgressHandler;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->handler:Lcom/sightcall/videoplayer/view/VideoPlayerBar$ProgressHandler;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sightcall/videoplayer/view/VideoPlayerBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->isDragging:Z

    return p0
.end method

.method private doPauseResume()V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->controller:Lcom/sightcall/videoplayer/view/MediaPlayerController;

    invoke-interface {v0}, Lcom/sightcall/videoplayer/view/MediaPlayerController;->isPlaying()Z

    move-result v0

    iget-object v1, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->controller:Lcom/sightcall/videoplayer/view/MediaPlayerController;

    if-eqz v0, :cond_0

    invoke-interface {v1}, Lcom/sightcall/videoplayer/view/MediaPlayerController;->pause()V

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/sightcall/videoplayer/view/MediaPlayerController;->resume()V

    :goto_0
    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->updatePlayPause()V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sightcall/videoplayer/view/VideoPlayerBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->isShowing:Z

    return p0
.end method

.method public static bridge synthetic f(Lcom/sightcall/videoplayer/view/VideoPlayerBar;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->isDragging:Z

    return-void
.end method

.method public static bridge synthetic g(Lcom/sightcall/videoplayer/view/VideoPlayerBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->updatePlayPause()V

    return-void
.end method

.method public static bridge synthetic h(Lcom/sightcall/videoplayer/view/VideoPlayerBar;)I
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->updateProgress()I

    move-result p0

    return p0
.end method

.method private init()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/sightcall/videoplayer/R$layout;->universal_view_video_player_bar:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v0, Lcom/sightcall/videoplayer/R$id;->universal_video_player_play_pause:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->playPauseButton:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v1, Lhi;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Lhi;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/sightcall/videoplayer/R$id;->universal_video_player_progress:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->seekbar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/sightcall/videoplayer/view/VideoPlayerBar$1;

    invoke-direct {v1, p0}, Lcom/sightcall/videoplayer/view/VideoPlayerBar$1;-><init>(Lcom/sightcall/videoplayer/view/VideoPlayerBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sightcall/videoplayer/view/VideoPlayerBar$ProgressHandler;

    invoke-direct {v0, p0}, Lcom/sightcall/videoplayer/view/VideoPlayerBar$ProgressHandler;-><init>(Lcom/sightcall/videoplayer/view/VideoPlayerBar;)V

    iput-object v0, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->handler:Lcom/sightcall/videoplayer/view/VideoPlayerBar$ProgressHandler;

    return-void
.end method

.method private static synthetic instrumented$0$init$--V(Lcom/sightcall/videoplayer/view/VideoPlayerBar;Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->lambda$init$0(Landroid/view/View;)V

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0
.end method

.method private synthetic lambda$init$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->doPauseResume()V

    invoke-virtual {p0}, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->show()V

    return-void
.end method

.method private updatePlayPause()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->playPauseButton:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object p0, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->controller:Lcom/sightcall/videoplayer/view/MediaPlayerController;

    invoke-interface {p0}, Lcom/sightcall/videoplayer/view/MediaPlayerController;->isPlaying()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method

.method private updateProgress()I
    .locals 7

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->controller:Lcom/sightcall/videoplayer/view/MediaPlayerController;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->isDragging:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/sightcall/videoplayer/view/MediaPlayerController;->getCurrentPosition()I

    move-result v0

    iget-object v2, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->controller:Lcom/sightcall/videoplayer/view/MediaPlayerController;

    invoke-interface {v2}, Lcom/sightcall/videoplayer/view/MediaPlayerController;->getDuration()I

    move-result v2

    if-lez v2, :cond_1

    const-wide/16 v3, 0x3e8

    int-to-long v5, v0

    mul-long/2addr v5, v3

    int-to-long v1, v2

    div-long/2addr v5, v1

    iget-object p0, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->seekbar:Landroid/widget/SeekBar;

    long-to-int v1, v5

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return v0

    :cond_1
    iget-object p0, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return v0

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public hide()V
    .locals 2

    iget-boolean v0, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->isShowing:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->isDragging:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->handler:Lcom/sightcall/videoplayer/view/VideoPlayerBar$ProgressHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->isShowing:Z

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->ACCELERATE_INTERPOLATOR:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/sightcall/videoplayer/view/VideoPlayerBar$2;

    invoke-direct {v1, p0}, Lcom/sightcall/videoplayer/view/VideoPlayerBar$2;-><init>(Lcom/sightcall/videoplayer/view/VideoPlayerBar;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public isShowing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->isShowing:Z

    return p0
.end method

.method public setCallback(Lcom/sightcall/videoplayer/view/VideoPlayerBar$VisibilityCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->visibilityCallback:Lcom/sightcall/videoplayer/view/VideoPlayerBar$VisibilityCallback;

    return-void
.end method

.method public setMediaPlayerController(Lcom/sightcall/videoplayer/view/MediaPlayerController;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->controller:Lcom/sightcall/videoplayer/view/MediaPlayerController;

    return-void
.end method

.method public show()V
    .locals 2

    iget-boolean v0, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->isShowing:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->updateProgress()I

    iput-boolean v1, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->isShowing:Z

    :cond_0
    invoke-direct {p0}, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->updatePlayPause()V

    iget-object v0, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->handler:Lcom/sightcall/videoplayer/view/VideoPlayerBar$ProgressHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->DECELERATE_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sightcall/videoplayer/view/VideoPlayerBar;->visibilityCallback:Lcom/sightcall/videoplayer/view/VideoPlayerBar$VisibilityCallback;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sightcall/videoplayer/view/VideoPlayerBar$VisibilityCallback;->onPlayerBarShown()V

    :cond_1
    return-void
.end method
