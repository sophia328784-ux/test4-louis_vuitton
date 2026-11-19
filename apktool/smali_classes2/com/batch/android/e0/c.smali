.class public Lcom/batch/android/e0/c;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/e0/c$b;
    }
.end annotation


# static fields
.field private static final l:I = 0x3

.field private static final m:I = 0x0

.field private static final n:I = 0x1


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Lcom/batch/android/e0/b;

.field private f:Lcom/batch/android/e0/c$b;

.field private g:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/batch/android/e0/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private h:J

.field private i:Landroid/os/Handler;

.field private j:Ljava/lang/Runnable;

.field private k:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/batch/android/e0/b;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batch/android/e0/c;->f:Lcom/batch/android/e0/c$b;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/batch/android/e0/c;->g:Ljava/util/Queue;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/batch/android/e0/c;->h:J

    new-instance v0, Lcom/batch/android/e0/c$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/batch/android/e0/c$a;-><init>(Lcom/batch/android/e0/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/batch/android/e0/c;->i:Landroid/os/Handler;

    new-instance v0, Lf31;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Lf31;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/batch/android/e0/c;->j:Ljava/lang/Runnable;

    new-instance v0, Lcom/batch/android/e/v;

    const-string v1, "gif"

    invoke-direct {v0, v1}, Lcom/batch/android/e/v;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/e0/c;->k:Ljava/util/concurrent/Executor;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p1, p0, Lcom/batch/android/e0/c;->b:I

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x6

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/batch/android/e0/c;->a:Landroid/graphics/Paint;

    iput-object p2, p0, Lcom/batch/android/e0/c;->e:Lcom/batch/android/e0/b;

    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x3

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lcom/batch/android/e0/c;->k:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/batch/android/e0/c;->j:Ljava/lang/Runnable;

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a()V
    .locals 3

    iget-boolean v0, p0, Lcom/batch/android/e0/c;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/e0/c;->e:Lcom/batch/android/e0/b;

    invoke-interface {v0}, Lcom/batch/android/e0/b;->c()V

    new-instance v0, Lcom/batch/android/e0/c$b;

    iget-object v1, p0, Lcom/batch/android/e0/c;->e:Lcom/batch/android/e0/b;

    invoke-interface {v1}, Lcom/batch/android/e0/b;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/batch/android/e0/c;->e:Lcom/batch/android/e0/b;

    invoke-interface {v2}, Lcom/batch/android/e0/b;->f()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/batch/android/e0/c$b;-><init>(Landroid/graphics/Bitmap;I)V

    iget-object v1, p0, Lcom/batch/android/e0/c;->i:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/batch/android/e0/c;->d:Z

    iget-object p0, p0, Lcom/batch/android/e0/c;->i:Landroid/os/Handler;

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const-string p0, "Failed producing next gif frame."

    invoke-static {p0, v0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Lcom/batch/android/e0/c$b;)V
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/batch/android/e0/c;->g:Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic a(Lcom/batch/android/e0/c;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/batch/android/e0/c;->b()V

    return-void
.end method

.method public static synthetic a(Lcom/batch/android/e0/c;Lcom/batch/android/e0/c$b;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/batch/android/e0/c;->a(Lcom/batch/android/e0/c$b;)V

    return-void
.end method

.method private b()V
    .locals 2

    invoke-virtual {p0}, Lcom/batch/android/e0/c;->stop()V

    iget-object v0, p0, Lcom/batch/android/e0/c;->f:Lcom/batch/android/e0/c$b;

    iget-object v1, p0, Lcom/batch/android/e0/c;->g:Ljava/util/Queue;

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e0/c$b;

    iget-object v1, p0, Lcom/batch/android/e0/c;->g:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/batch/android/e0/c;->f:Lcom/batch/android/e0/c$b;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public static synthetic b(Lcom/batch/android/e0/c;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/batch/android/e0/c;->a()V

    return-void
.end method

.method private c()V
    .locals 9

    iget-boolean v0, p0, Lcom/batch/android/e0/c;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/batch/android/e0/c;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/batch/android/e0/c;->f:Lcom/batch/android/e0/c$b;

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/batch/android/e0/c;->h:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/batch/android/e0/c;->g:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/batch/android/e0/c$b;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/batch/android/e0/c;->f:Lcom/batch/android/e0/c$b;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lcom/batch/android/e0/c$b;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    iput-object v2, p0, Lcom/batch/android/e0/c;->f:Lcom/batch/android/e0/c$b;

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    iget v2, v2, Lcom/batch/android/e0/c$b;->b:I

    int-to-long v5, v2

    add-long/2addr v5, v0

    iget-wide v7, p0, Lcom/batch/android/e0/c;->h:J

    sub-long/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sub-long/2addr v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/batch/android/e0/c;->h:J

    iget-object v0, p0, Lcom/batch/android/e0/c;->k:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/batch/android/e0/c;->j:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-direct {p0}, Lcom/batch/android/e0/c;->c()V

    iget-object v0, p0, Lcom/batch/android/e0/c;->f:Lcom/batch/android/e0/c$b;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/batch/android/e0/c$b;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object p0, p0, Lcom/batch/android/e0/c;->a:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/batch/android/e0/c;->f:Lcom/batch/android/e0/c$b;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/batch/android/e0/c$b;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/batch/android/e0/c;->b:I

    invoke-virtual {v0, p0}, Landroid/graphics/Bitmap;->getScaledHeight(I)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/batch/android/e0/c;->e:Lcom/batch/android/e0/b;

    invoke-interface {p0}, Lcom/batch/android/e0/b;->d()I

    move-result p0

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/batch/android/e0/c;->f:Lcom/batch/android/e0/c$b;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/batch/android/e0/c$b;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/batch/android/e0/c;->b:I

    invoke-virtual {v0, p0}, Landroid/graphics/Bitmap;->getScaledWidth(I)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/batch/android/e0/c;->e:Lcom/batch/android/e0/b;

    invoke-interface {p0}, Lcom/batch/android/e0/b;->k()I

    move-result p0

    return p0
.end method

.method public getOpacity()I
    .locals 1

    iget-object p0, p0, Lcom/batch/android/e0/c;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    const/16 v0, 0xff

    if-ge p0, v0, :cond_0

    const/4 p0, -0x3

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public isRunning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/batch/android/e0/c;->c:Z

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    iget-object p0, p0, Lcom/batch/android/e0/c;->a:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 1

    iget-boolean v0, p0, Lcom/batch/android/e0/c;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/e0/c;->c:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/batch/android/e0/c;->c:Z

    return-void
.end method
