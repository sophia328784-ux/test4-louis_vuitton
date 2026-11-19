.class public Lcom/batch/android/j0/a;
.super Landroid/widget/ProgressBar;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/s0/c;


# static fields
.field private static final d:Ljava/lang/String; = "CountdownView"

.field private static final e:I = 0x3e8


# instance fields
.field private a:Z

.field private b:J

.field private c:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x103001f

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/batch/android/j0/a;->a:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/batch/android/j0/a;->b:J

    iput-wide v0, p0, Lcom/batch/android/j0/a;->c:J

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const/16 p1, 0x3e8

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method private a()V
    .locals 5

    .line 89
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 90
    iget-wide v2, p0, Lcom/batch/android/j0/a;->b:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 92
    iput-boolean v0, p0, Lcom/batch/android/j0/a;->a:Z

    goto :goto_0

    :cond_0
    long-to-float v2, v2

    long-to-float v0, v0

    sub-float/2addr v2, v0

    .line 93
    iget-wide v0, p0, Lcom/batch/android/j0/a;->c:J

    long-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v0

    float-to-int v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 94
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/batch/android/j0/a;->a:Z

    .line 85
    iput-wide p1, p0, Lcom/batch/android/j0/a;->c:J

    .line 86
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/batch/android/j0/a;->b:J

    const/16 p1, 0x3e8

    .line 87
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/batch/android/o0/b;->a(Landroid/view/View;Ljava/util/Map;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "color"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/batch/android/j0/a;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unparsable color ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CountdownView"

    invoke-static {v2, v0, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isAnimating()Z
    .locals 0

    iget-boolean p0, p0, Lcom/batch/android/j0/a;->a:Z

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean p1, p0, Lcom/batch/android/j0/a;->a:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/batch/android/j0/a;->a()V

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

    invoke-super {p0, v0}, Landroid/widget/ProgressBar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-wide v0, p1, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;->d:J

    iput-wide v0, p0, Lcom/batch/android/j0/a;->c:J

    iget-wide v0, p1, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;->c:J

    iput-wide v0, p0, Lcom/batch/android/j0/a;->b:J

    iget-boolean p1, p1, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;->b:Z

    iput-boolean p1, p0, Lcom/batch/android/j0/a;->a:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;

    invoke-super {p0}, Landroid/widget/ProgressBar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;-><init>(Landroid/os/Parcelable;)V

    iget-wide v1, p0, Lcom/batch/android/j0/a;->c:J

    iput-wide v1, v0, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;->d:J

    iget-wide v1, p0, Lcom/batch/android/j0/a;->b:J

    iput-wide v1, v0, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;->c:J

    iget-boolean p0, p0, Lcom/batch/android/j0/a;->a:Z

    iput-boolean p0, v0, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;->b:Z

    return-object v0
.end method

.method public setColor(I)V
    .locals 3

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/drawable/ClipDrawable;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
