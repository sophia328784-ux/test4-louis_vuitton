.class public Lcom/sightcall/universal/internal/view/CallButtonBar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/view/CallButtonBar$Listener;
    }
.end annotation


# static fields
.field public static final ACCELERATE_INTERPOLATOR:Landroid/view/animation/AccelerateInterpolator;

.field public static final DECELERATE_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field private isRemote:Z

.field private final labelPaint:Landroid/text/TextPaint;

.field private listener:Lcom/sightcall/universal/internal/view/CallButtonBar$Listener;

.field private localLabel:Ljava/lang/String;

.field private remoteLabel:Ljava/lang/String;

.field private remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

.field private session:Lcom/sightcall/universal/model/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/sightcall/universal/internal/view/CallButtonBar;->ACCELERATE_INTERPOLATOR:Landroid/view/animation/AccelerateInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/sightcall/universal/internal/view/CallButtonBar;->DECELERATE_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/CallButtonBar;->labelPaint:Landroid/text/TextPaint;

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/CallButtonBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance p1, Landroid/text/TextPaint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/CallButtonBar;->labelPaint:Landroid/text/TextPaint;

    .line 17
    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/CallButtonBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance p1, Landroid/text/TextPaint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/CallButtonBar;->labelPaint:Landroid/text/TextPaint;

    .line 20
    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/CallButtonBar;->init()V

    return-void
.end method

.method private init()V
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/sightcall/universal/internal/view/CallButton;->MICRO:Lcom/sightcall/universal/internal/view/CallButton;

    sget-object v2, Lcom/sightcall/universal/internal/view/CallButton;->AUDIO_SOURCE:Lcom/sightcall/universal/internal/view/CallButton;

    sget-object v3, Lcom/sightcall/universal/internal/view/CallButton;->VIDEO:Lcom/sightcall/universal/internal/view/CallButton;

    sget-object v4, Lcom/sightcall/universal/internal/view/CallButton;->VIDEO_PAUSE_RESUME:Lcom/sightcall/universal/internal/view/CallButton;

    sget-object v5, Lcom/sightcall/universal/internal/view/CallButton;->VIDEO_SOURCE:Lcom/sightcall/universal/internal/view/CallButton;

    sget-object v6, Lcom/sightcall/universal/internal/view/CallButton;->FLASH:Lcom/sightcall/universal/internal/view/CallButton;

    sget-object v7, Lcom/sightcall/universal/internal/view/CallButton;->SHARE_MEDIA:Lcom/sightcall/universal/internal/view/CallButton;

    sget-object v8, Lcom/sightcall/universal/internal/view/CallButton;->HANGUP:Lcom/sightcall/universal/internal/view/CallButton;

    filled-new-array/range {v1 .. v8}, [Lcom/sightcall/universal/internal/view/CallButton;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/internal/view/CallButtonBar;->inflate([Lcom/sightcall/universal/internal/view/CallButton;)V

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/CallButtonBar;->labelPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/CallButtonBar;->labelPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/CallButtonBar;->labelPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sightcall/universal/util/UiUtils;->dp2px(FLandroid/content/res/Resources;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/sightcall/universal/R$string;->universal_call_local_bar_label:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/CallButtonBar;->localLabel:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/sightcall/universal/R$string;->universal_call_remote_bar_label:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/CallButtonBar;->remoteLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build(Lcom/sightcall/universal/model/Session;Z)V
    .locals 1

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/CallButtonBar;->session:Lcom/sightcall/universal/model/Session;

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/CallButtonBar;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    iput-boolean p2, p0, Lcom/sightcall/universal/internal/view/CallButtonBar;->isRemote:Z

    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Session;->buttonsRemote()[Lcom/sightcall/universal/internal/view/CallButton;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sightcall/universal/model/Session;->buttonsLocal()[Lcom/sightcall/universal/internal/view/CallButton;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/view/CallButtonBar;->inflate([Lcom/sightcall/universal/internal/view/CallButton;)V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/CallButtonBar;->labelPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/CallButtonBar;->labelPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    iget-boolean v2, p0, Lcom/sightcall/universal/internal/view/CallButtonBar;->isRemote:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/CallButtonBar;->remoteLabel:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/CallButtonBar;->remoteLabel:Ljava/lang/String;

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/CallButtonBar;->labelPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v0, v3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sightcall/universal/internal/view/CallButtonBar;->localLabel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/CallButtonBar;->localLabel:Ljava/lang/String;

    int-to-float v0, v0

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/CallButtonBar;->labelPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v0, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public find(Lcom/sightcall/universal/internal/view/CallButton;)Lcom/sightcall/universal/internal/view/CallButtonImageView;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/sightcall/universal/internal/view/CallButtonImageView;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/sightcall/universal/internal/view/CallButtonImageView;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->getType()Lcom/sightcall/universal/internal/view/CallButton;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public hide()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/internal/view/CallButtonBar;->ACCELERATE_INTERPOLATOR:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/sightcall/universal/internal/view/CallButtonBar$1;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/internal/view/CallButtonBar$1;-><init>(Lcom/sightcall/universal/internal/view/CallButtonBar;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public varargs inflate([Lcom/sightcall/universal/internal/view/CallButton;)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz p1, :cond_4

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/internal/view/CallButton;->SHARE_MEDIA:Lcom/sightcall/universal/internal/view/CallButton;

    sget-object v2, Lcom/sightcall/universal/internal/view/CallButton;->SHARE_PHOTO:Lcom/sightcall/universal/internal/view/CallButton;

    sget-object v3, Lcom/sightcall/universal/internal/view/CallButton;->SHARE_PICTURE:Lcom/sightcall/universal/internal/view/CallButton;

    sget-object v4, Lcom/sightcall/universal/internal/view/CallButton;->SCREENCAST:Lcom/sightcall/universal/internal/view/CallButton;

    sget-object v5, Lcom/sightcall/universal/internal/view/CallButton;->SNAPSHOT:Lcom/sightcall/universal/internal/view/CallButton;

    invoke-static {v1, v2, v3, v4, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sightcall/universal/internal/view/CallButton;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/sightcall/universal/internal/view/CallButton;->SHARE_STOP:Lcom/sightcall/universal/internal/view/CallButton;

    invoke-virtual {v2, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5, v0, p0}, Lcom/sightcall/universal/internal/view/CallButton;->inflate(Landroid/content/Context;Lcom/sightcall/universal/internal/view/CallButtonBar;)Lcom/sightcall/universal/internal/view/CallButtonImageView;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v3, 0x1

    :cond_3
    invoke-virtual {v4, v0, p0}, Lcom/sightcall/universal/internal/view/CallButton;->inflate(Landroid/content/Context;Lcom/sightcall/universal/internal/view/CallButtonBar;)Lcom/sightcall/universal/internal/view/CallButtonImageView;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public isRemote()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/view/CallButtonBar;->isRemote:Z

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    instance-of v0, p1, Lcom/sightcall/universal/internal/view/CallButtonImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/CallButtonBar;->listener:Lcom/sightcall/universal/internal/view/CallButtonBar$Listener;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/sightcall/universal/internal/view/CallButtonImageView;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->getType()Lcom/sightcall/universal/internal/view/CallButton;

    move-result-object v2

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/view/CallButtonBar;->isRemote:Z

    invoke-interface {v0, v1, v2, p0}, Lcom/sightcall/universal/internal/view/CallButtonBar$Listener;->onCallButtonClick(Lcom/sightcall/universal/internal/view/CallButtonImageView;Lcom/sightcall/universal/internal/view/CallButton;Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0
.end method

.method public setOnCallButtonClickListener(Lcom/sightcall/universal/internal/view/CallButtonBar$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/CallButtonBar;->listener:Lcom/sightcall/universal/internal/view/CallButtonBar$Listener;

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public show()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/internal/view/CallButtonBar;->DECELERATE_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public update(Lnet/rtccloud/sdk/Call;)V
    .locals 28

    move-object/from16 v0, p0

    if-eqz p1, :cond_37

    invoke-virtual/range {p1 .. p1}, Lnet/rtccloud/sdk/Call;->status()Lnet/rtccloud/sdk/Call$Status;

    move-result-object v1

    sget-object v2, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    if-eq v1, v2, :cond_0

    goto/16 :goto_2e

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lnet/rtccloud/sdk/Call;->audio()Lnet/rtccloud/sdk/AudioModule;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v2

    invoke-virtual {v2}, Lnet/rtccloud/sdk/VideoModule;->producer()Lnet/rtccloud/sdk/VideoProducer;

    move-result-object v3

    instance-of v4, v3, Lcom/sightcall/universal/internal/view/UvcProducer;

    instance-of v5, v3, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    if-eqz v5, :cond_1

    move-object v7, v3

    check-cast v7, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lnet/rtccloud/sdk/Call;->conference()Lnet/rtccloud/sdk/ConferenceModule;

    move-result-object v9

    invoke-virtual {v9}, Lnet/rtccloud/sdk/ConferenceModule;->recording()Lnet/rtccloud/sdk/RecordingModule;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lnet/rtccloud/sdk/Call;->isConference()Z

    invoke-virtual {v2}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result v10

    invoke-virtual {v9}, Lnet/rtccloud/sdk/RecordingModule;->isRecording()Z

    move-result v9

    invoke-virtual {v8}, Lnet/rtccloud/sdk/ScreenshareModule;->isSending()Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->isSending()Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v8}, Lnet/rtccloud/sdk/ScreenshareModule;->isReceiving()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->isReceiving()Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v8, 0x1

    :goto_4
    invoke-virtual {v2}, Lnet/rtccloud/sdk/VideoModule;->isReceiving()Z

    move-result v2

    invoke-static {v3}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoProducerExtensionsKt;->isMyVideoProducerPlayerView(Lnet/rtccloud/sdk/VideoProducer;)Z

    move-result v14

    iget-object v15, v0, Lcom/sightcall/universal/internal/view/CallButtonBar;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    if-eqz v15, :cond_6

    const/16 v16, 0x1

    goto :goto_5

    :cond_6
    const/16 v16, 0x0

    :goto_5
    if-eqz v16, :cond_7

    invoke-virtual {v15}, Lcom/sightcall/universal/internal/model/RemoteState;->isMuted()Z

    move-result v15

    if-eqz v15, :cond_7

    const/4 v15, 0x1

    goto :goto_6

    :cond_7
    const/4 v15, 0x0

    :goto_6
    if-eqz v16, :cond_8

    iget-object v6, v0, Lcom/sightcall/universal/internal/view/CallButtonBar;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-virtual {v6}, Lcom/sightcall/universal/internal/model/RemoteState;->isCameraEnabled()Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x1

    goto :goto_7

    :cond_8
    const/4 v6, 0x0

    :goto_7
    if-eqz v16, :cond_9

    iget-object v12, v0, Lcom/sightcall/universal/internal/view/CallButtonBar;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-virtual {v12}, Lcom/sightcall/universal/internal/model/RemoteState;->isCameraPaused()Z

    move-result v12

    if-eqz v12, :cond_9

    const/4 v12, 0x1

    goto :goto_8

    :cond_9
    const/4 v12, 0x0

    :goto_8
    if-eqz v16, :cond_a

    iget-object v13, v0, Lcom/sightcall/universal/internal/view/CallButtonBar;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-virtual {v13}, Lcom/sightcall/universal/internal/model/RemoteState;->isFlashAvailable()Z

    move-result v13

    if-eqz v13, :cond_a

    const/4 v13, 0x1

    goto :goto_9

    :cond_a
    const/4 v13, 0x0

    :goto_9
    move-object/from16 v18, v1

    if-eqz v16, :cond_b

    iget-object v1, v0, Lcom/sightcall/universal/internal/view/CallButtonBar;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/model/RemoteState;->isPlayerEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_a

    :cond_b
    const/4 v1, 0x0

    :goto_a
    move/from16 v19, v1

    if-eqz v16, :cond_c

    iget-object v1, v0, Lcom/sightcall/universal/internal/view/CallButtonBar;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/model/RemoteState;->isPlayerPaused()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_b

    :cond_c
    const/4 v1, 0x0

    :goto_b
    if-eqz v16, :cond_d

    move/from16 v16, v1

    iget-object v1, v0, Lcom/sightcall/universal/internal/view/CallButtonBar;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/model/RemoteState;->isFlashEnabled()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_c

    :cond_d
    move/from16 v16, v1

    :cond_e
    const/4 v1, 0x0

    :goto_c
    if-nez v11, :cond_10

    if-eqz v10, :cond_f

    if-eqz v14, :cond_f

    goto :goto_d

    :cond_f
    move/from16 v20, v2

    const/4 v2, 0x0

    goto :goto_e

    :cond_10
    :goto_d
    move/from16 v20, v2

    const/4 v2, 0x1

    :goto_e
    if-nez v8, :cond_12

    if-eqz v20, :cond_11

    if-eqz v19, :cond_11

    goto :goto_f

    :cond_11
    move/from16 v21, v4

    const/4 v4, 0x0

    goto :goto_10

    :cond_12
    :goto_f
    move/from16 v21, v4

    const/4 v4, 0x1

    :goto_10
    if-nez v2, :cond_14

    if-eqz v4, :cond_13

    goto :goto_11

    :cond_13
    const/16 v22, 0x0

    goto :goto_12

    :cond_14
    :goto_11
    const/16 v22, 0x1

    :goto_12
    if-nez v10, :cond_16

    if-nez v20, :cond_16

    if-nez v11, :cond_16

    if-eqz v8, :cond_15

    goto :goto_13

    :cond_15
    move/from16 v23, v5

    const/4 v5, 0x0

    goto :goto_14

    :cond_16
    :goto_13
    move/from16 v23, v5

    const/4 v5, 0x1

    :goto_14
    move-object/from16 v24, v7

    move/from16 v25, v10

    const/4 v7, 0x0

    :goto_15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-ge v7, v10, :cond_37

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move/from16 v26, v7

    instance-of v7, v10, Lcom/sightcall/universal/internal/view/CallButtonImageView;

    if-nez v7, :cond_17

    :goto_16
    move/from16 v27, v5

    :goto_17
    const/4 v5, 0x1

    goto/16 :goto_2d

    :cond_17
    check-cast v10, Lcom/sightcall/universal/internal/view/CallButtonImageView;

    sget-object v7, Lcom/sightcall/universal/internal/view/CallButtonBar$2;->$SwitchMap$com$sightcall$universal$internal$view$CallButton:[I

    invoke-virtual {v10}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->getType()Lcom/sightcall/universal/internal/view/CallButton;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Enum;->ordinal()I

    move-result v27

    aget v7, v7, v27

    packed-switch v7, :pswitch_data_0

    const/4 v7, 0x1

    invoke-virtual {v10, v7}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->setEnabled(Z)V

    :goto_18
    move/from16 v27, v5

    :goto_19
    move v5, v7

    goto/16 :goto_2d

    :pswitch_0
    const/4 v7, 0x1

    invoke-virtual {v10, v7}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->setEnabled(Z)V

    goto :goto_18

    :pswitch_1
    const/4 v7, 0x1

    invoke-virtual {v10, v7}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->setEnabled(Z)V

    goto :goto_18

    :pswitch_2
    xor-int/lit8 v7, v22, 0x1

    invoke-virtual {v10, v7}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->setEnabled(Z)V

    goto :goto_16

    :pswitch_3
    iget-boolean v7, v0, Lcom/sightcall/universal/internal/view/CallButtonBar;->isRemote:Z

    if-eqz v7, :cond_18

    if-eqz v11, :cond_18

    const/4 v7, 0x0

    invoke-virtual {v10, v7}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->setEnabled(Z)V

    goto :goto_16

    :cond_18
    move/from16 v27, v7

    const/4 v7, 0x0

    if-nez v27, :cond_19

    if-eqz v8, :cond_19

    invoke-virtual {v10, v7}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->setEnabled(Z)V

    goto :goto_16

    :cond_19
    if-eqz v27, :cond_1b

    if-eqz v20, :cond_1a

    if-nez v12, :cond_1a

    if-nez v16, :cond_1a

    const/4 v7, 0x1

    goto :goto_1a

    :cond_1a
    const/4 v7, 0x0

    :goto_1a
    invoke-virtual {v10, v7}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->setEnabled(Z)V

    goto :goto_16

    :cond_1b
    if-eqz v25, :cond_1c

    instance-of v7, v3, Lcom/sightcall/common/MyVideoProducer;

    if-eqz v7, :cond_1c

    move-object v7, v3

    check-cast v7, Lcom/sightcall/common/MyVideoProducer;

    invoke-interface {v7}, Lcom/sightcall/common/MyVideoProducer;->isPaused()Z

    move-result v7

    if-nez v7, :cond_1c

    const/4 v7, 0x1

    goto :goto_1b

    :cond_1c
    const/4 v7, 0x0

    :goto_1b
    invoke-virtual {v10, v7}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->setEnabled(Z)V

    goto :goto_16

    :pswitch_4
    invoke-virtual {v10, v5}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->setEnabled(Z)V

    goto :goto_16

    :pswitch_5
    iget-boolean v7, v0, Lcom/sightcall/universal/internal/view/CallButtonBar;->isRemote:Z

    invoke-virtual {v10, v7}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->setEnabled(Z)V

    iget-object v7, v0, Lcom/sightcall/universal/internal/view/CallButtonBar;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-virtual {v7}, Lcom/sightcall/universal/internal/model/RemoteState;->gpsRequest()Lcom/sightcall/universal/internal/model/GpsRequest;

    move-result-object v7

    move/from16 v27, v5

    iget-boolean v5, v0, Lcom/sightcall/universal/internal/view/CallButtonBar;->isRemote:Z

    if-eqz v5, :cond_1d

    if-eqz v7, :cond_1d

    invoke-virtual {v7}, Lcom/sightcall/universal/internal/model/GpsRequest;->isRequesting()Z

    move-result v5

    if-eqz v5, :cond_1d

    const/4 v5, 0x1

    goto :goto_1c

    :cond_1d
    const/4 v5, 0x0

    :goto_1c
    invoke-virtual {v10, v5}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_17

    :pswitch_6
    move/from16 v27, v5

    xor-int/lit8 v5, v22, 0x1

    invoke-virtual {v10, v5}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->setEnabled(Z)V

    goto/16 :goto_17

    :pswitch_7
    move/from16 v27, v5

    xor-int/lit8 v5, v22, 0x1

    invoke-virtual {v10, v5}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->setEnabled(Z)V

    goto/16 :goto_17

    :pswitch_8
    move/from16 v27, v5

    invoke-virtual {v10, v9}, Landroid/view/View;->setActivated(Z)V

    const/4 v7, 0x1

    invoke-virtual {v10, v7}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->setEnabled(Z)V

    goto/16 :goto_19

    :pswitch_9
    move/from16 v27, v5

    const/4 v7, 0x1

    invoke-virtual {v10, v7}, Landroid/view/View;->setActivated(Z)V

    iget-boolean v5, v0, Lcom/sightcall/universal/internal/view/CallButtonBar;->isRemote:Z

    if-eqz v5, :cond_1e

    invoke-virtual {v10, v4}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->setEnabled(Z)V

    goto/16 :goto_17

    :cond_1e
    invoke-virtual {v10, v2}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->setEnabled(Z)V

    goto/16 :goto_17

    :pswitch_a
    move/from16 v27, v5

    if-nez v11, :cond_23

    if-nez v8, :cond_23

    instance-of v5, v3, Lcom/sightcall/common/MyVideoProducer;

    if-eqz v5, :cond_1f

    move-object v5, v3

    check-cast v5, Lcom/sightcall/common/MyVideoProducer;

    invoke-interface {v5}, Lcom/sightcall/common/MyVideoProducer;->isPaused()Z

    move-result v5

    if-nez v5, :cond_23

    :cond_1f
    iget-object v5, v0, Lcom/sightcall/universal/internal/view/CallButtonBar;->session:Lcom/sightcall/universal/model/Session;

    if-eqz v5, :cond_20

    iget-object v5, v5, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v5}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v5

    goto :goto_1d

    :cond_20
    const/4 v5, 0x0

    :goto_1d
    sget-object v7, Lcom/sightcall/universal/model/Session$Role;->HOST:Lcom/sightcall/universal/model/Session$Role;

    if-ne v5, v7, :cond_22

    if-eqz v6, :cond_21

    if-nez v12, :cond_23

    :cond_21
    if-eqz v19, :cond_22

    if-eqz v16, :cond_22

    goto :goto_1e

    :cond_22
    const/4 v5, 0x0

    goto :goto_1f

    :cond_23
    :goto_1e
    const/4 v5, 0x1

    :goto_1f
    invoke-virtual {v10, v5}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->setEnabled(Z)V

    goto/16 :goto_17

    :pswitch_b
    move/from16 v27, v5

    iget-boolean v5, v0, Lcom/sightcall/universal/internal/view/CallButtonBar;->isRemote:Z

    if-eqz v5, :cond_25

    invoke-virtual {v10, v1}, Landroid/view/View;->setActivated(Z)V

    if-eqz v13, :cond_24

    if-nez v12, :cond_24

    const/4 v5, 0x1

    goto :goto_20

    :cond_24
    const/4 v5, 0x0

    :goto_20
    invoke-virtual {v10, v5}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->setEnabled(Z)V

    goto/16 :goto_17

    :cond_25
    if-eqz v23, :cond_26

    invoke-virtual/range {v24 .. v24}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isFlashAvailable()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-virtual/range {v24 .. v24}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isPaused()Z

    move-result v5

    if-nez v5, :cond_26

    const/4 v5, 0x1

    goto :goto_21

    :cond_26
    const/4 v5, 0x0

    :goto_21
    invoke-virtual {v10, v5}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->setEnabled(Z)V

    if-eqz v23, :cond_27

    invoke-virtual/range {v24 .. v24}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isFlashEnabled()Z

    move-result v5

    if-eqz v5, :cond_27

    const/4 v5, 0x1

    goto :goto_22

    :cond_27
    const/4 v5, 0x0

    :goto_22
    invoke-virtual {v10, v5}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_17

    :pswitch_c
    move/from16 v27, v5

    xor-int/lit8 v5, v22, 0x1

    invoke-virtual {v10, v5}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->setEnabled(Z)V

    iget-boolean v5, v0, Lcom/sightcall/universal/internal/view/CallButtonBar;->isRemote:Z

    if-eqz v5, :cond_28

    invoke-virtual {v10, v8}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_17

    :cond_28
    invoke-virtual {v10, v11}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_17

    :pswitch_d
    move/from16 v27, v5

    iget-boolean v5, v0, Lcom/sightcall/universal/internal/view/CallButtonBar;->isRemote:Z

    if-eqz v5, :cond_29

    invoke-virtual {v10, v12}, Landroid/view/View;->setActivated(Z)V

    invoke-virtual {v10, v6}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->setEnabled(Z)V

    goto/16 :goto_17

    :cond_29
    if-nez v23, :cond_2b

    if-eqz v21, :cond_2a

    goto :goto_23

    :cond_2a
    const/4 v5, 0x0

    goto :goto_24

    :cond_2b
    :goto_23
    const/4 v5, 0x1

    :goto_24
    if-eqz v5, :cond_2c

    instance-of v7, v3, Lcom/sightcall/common/MyVideoProducer;

    if-eqz v7, :cond_2c

    move-object v7, v3

    check-cast v7, Lcom/sightcall/common/MyVideoProducer;

    invoke-interface {v7}, Lcom/sightcall/common/MyVideoProducer;->isPaused()Z

    move-result v7

    if-eqz v7, :cond_2c

    const/4 v7, 0x1

    goto :goto_25

    :cond_2c
    const/4 v7, 0x0

    :goto_25
    invoke-virtual {v10, v7}, Landroid/view/View;->setActivated(Z)V

    if-eqz v5, :cond_2d

    if-eqz v25, :cond_2d

    const/4 v5, 0x1

    goto :goto_26

    :cond_2d
    const/4 v5, 0x0

    :goto_26
    invoke-virtual {v10, v5}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->setEnabled(Z)V

    goto/16 :goto_17

    :pswitch_e
    move/from16 v27, v5

    invoke-virtual/range {v18 .. v18}, Lnet/rtccloud/sdk/AudioModule;->route()Lnet/rtccloud/sdk/AudioModule$AudioRoute;

    move-result-object v5

    sget-object v7, Lnet/rtccloud/sdk/AudioModule$AudioRoute;->HEADSET:Lnet/rtccloud/sdk/AudioModule$AudioRoute;

    if-ne v5, v7, :cond_2e

    const/4 v5, 0x1

    goto :goto_27

    :cond_2e
    const/4 v5, 0x0

    :goto_27
    invoke-virtual {v10, v5}, Landroidx/appcompat/widget/AppCompatImageView;->setImageLevel(I)V

    iget-boolean v5, v0, Lcom/sightcall/universal/internal/view/CallButtonBar;->isRemote:Z

    const/16 v17, 0x1

    xor-int/lit8 v5, v5, 0x1

    invoke-virtual {v10, v5}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->setEnabled(Z)V

    goto/16 :goto_17

    :pswitch_f
    move/from16 v27, v5

    iget-boolean v5, v0, Lcom/sightcall/universal/internal/view/CallButtonBar;->isRemote:Z

    if-eqz v5, :cond_2f

    move v7, v6

    goto :goto_28

    :cond_2f
    if-eqz v25, :cond_30

    if-eqz v23, :cond_30

    const/4 v7, 0x1

    goto :goto_28

    :cond_30
    const/4 v7, 0x0

    :goto_28
    invoke-virtual {v10, v7}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->setEnabled(Z)V

    goto/16 :goto_17

    :pswitch_10
    move/from16 v27, v5

    invoke-static {}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_31

    const/4 v7, 0x0

    invoke-virtual {v10, v7}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->setEnabled(Z)V

    goto/16 :goto_17

    :cond_31
    const/4 v7, 0x0

    iget-boolean v5, v0, Lcom/sightcall/universal/internal/view/CallButtonBar;->isRemote:Z

    if-eqz v5, :cond_32

    move v5, v6

    goto :goto_29

    :cond_32
    move/from16 v5, v25

    :goto_29
    invoke-virtual {v10, v5}, Landroid/view/View;->setActivated(Z)V

    iget-boolean v5, v0, Lcom/sightcall/universal/internal/view/CallButtonBar;->isRemote:Z

    if-nez v5, :cond_34

    if-nez v14, :cond_33

    goto :goto_2a

    :cond_33
    move v5, v7

    goto :goto_2b

    :cond_34
    :goto_2a
    const/4 v5, 0x1

    :goto_2b
    invoke-virtual {v10, v5}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->setEnabled(Z)V

    goto/16 :goto_17

    :pswitch_11
    move/from16 v27, v5

    const/4 v7, 0x0

    iget-boolean v5, v0, Lcom/sightcall/universal/internal/view/CallButtonBar;->isRemote:Z

    if-eqz v5, :cond_35

    const/4 v5, 0x1

    xor-int/lit8 v7, v15, 0x1

    invoke-virtual {v10, v7}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2c

    :cond_35
    const/4 v5, 0x1

    invoke-virtual/range {v18 .. v18}, Lnet/rtccloud/sdk/AudioModule;->isStarted()Z

    move-result v7

    if-eqz v7, :cond_36

    invoke-virtual/range {v18 .. v18}, Lnet/rtccloud/sdk/AudioModule;->isRecorderMuted()Z

    move-result v7

    xor-int/2addr v7, v5

    invoke-virtual {v10, v7}, Landroid/view/View;->setActivated(Z)V

    :cond_36
    :goto_2c
    invoke-virtual {v10, v5}, Lcom/sightcall/universal/internal/view/CallButtonImageView;->setEnabled(Z)V

    :goto_2d
    add-int/lit8 v7, v26, 0x1

    move/from16 v5, v27

    goto/16 :goto_15

    :cond_37
    :goto_2e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
