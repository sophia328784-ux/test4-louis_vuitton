.class public Lcom/batch/android/messaging/view/a;
.super Lcom/batch/android/messaging/view/CloseButton;
.source "SourceFile"


# instance fields
.field private v:Z

.field private w:J

.field private x:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/batch/android/messaging/view/CloseButton;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/batch/android/messaging/view/a;->v:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/batch/android/messaging/view/a;->w:J

    iput-wide v0, p0, Lcom/batch/android/messaging/view/a;->x:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/batch/android/messaging/view/CloseButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/batch/android/messaging/view/a;->v:Z

    const-wide/16 p1, 0x0

    .line 15
    iput-wide p1, p0, Lcom/batch/android/messaging/view/a;->w:J

    .line 16
    iput-wide p1, p0, Lcom/batch/android/messaging/view/a;->x:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/batch/android/messaging/view/CloseButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/batch/android/messaging/view/a;->v:Z

    const-wide/16 p1, 0x0

    .line 19
    iput-wide p1, p0, Lcom/batch/android/messaging/view/a;->w:J

    .line 20
    iput-wide p1, p0, Lcom/batch/android/messaging/view/a;->x:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/batch/android/messaging/view/CloseButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/batch/android/messaging/view/a;->v:Z

    const-wide/16 p1, 0x0

    .line 23
    iput-wide p1, p0, Lcom/batch/android/messaging/view/a;->w:J

    .line 24
    iput-wide p1, p0, Lcom/batch/android/messaging/view/a;->x:J

    return-void
.end method

.method private e()V
    .locals 5

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/batch/android/messaging/view/a;->w:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/batch/android/messaging/view/CloseButton;->g:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/batch/android/messaging/view/a;->v:Z

    goto :goto_0

    :cond_0
    long-to-float v2, v2

    long-to-float v0, v0

    sub-float/2addr v2, v0

    iget-wide v0, p0, Lcom/batch/android/messaging/view/a;->x:J

    long-to-float v0, v0

    div-float/2addr v2, v0

    iput v2, p0, Lcom/batch/android/messaging/view/CloseButton;->g:F

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/messaging/view/a;->v:Z

    iput-wide p1, p0, Lcom/batch/android/messaging/view/a;->x:J

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/batch/android/messaging/view/a;->w:J

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/batch/android/messaging/view/CloseButton;->setCountdownProgress(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public d()Z
    .locals 0

    iget-boolean p0, p0, Lcom/batch/android/messaging/view/a;->v:Z

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/batch/android/messaging/view/CloseButton;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean p1, p0, Lcom/batch/android/messaging/view/a;->v:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/batch/android/messaging/view/a;->e()V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-wide v0, p1, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;->d:J

    iput-wide v0, p0, Lcom/batch/android/messaging/view/a;->x:J

    iget-wide v0, p1, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;->c:J

    iput-wide v0, p0, Lcom/batch/android/messaging/view/a;->w:J

    iget-boolean p1, p1, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;->b:Z

    iput-boolean p1, p0, Lcom/batch/android/messaging/view/a;->v:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;-><init>(Landroid/os/Parcelable;)V

    iget-wide v1, p0, Lcom/batch/android/messaging/view/a;->x:J

    iput-wide v1, v0, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;->d:J

    iget-wide v1, p0, Lcom/batch/android/messaging/view/a;->w:J

    iput-wide v1, v0, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;->c:J

    iget-boolean p0, p0, Lcom/batch/android/messaging/view/a;->v:Z

    iput-boolean p0, v0, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;->b:Z

    return-object v0
.end method
