.class public Lcom/batch/android/o/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/o/h$b;
    }
.end annotation


# static fields
.field public static final h:Ljava/lang/String; = "RetryTimer"

.field private static final i:I = 0x3


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/util/Timer;

.field private f:Ljava/util/TimerTask;

.field private g:Lcom/batch/android/o/h$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/batch/android/o/h$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/batch/android/o/h;->a:I

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/batch/android/o/h;->e:Ljava/util/Timer;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/batch/android/o/h;->g:Lcom/batch/android/o/h$b;

    invoke-static {p1}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p2

    const-string v0, "tracker.delay.initial"

    invoke-virtual {p2, v0}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/batch/android/o/h;->b:I

    iput p2, p0, Lcom/batch/android/o/h;->d:I

    invoke-static {p1}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p1

    const-string p2, "tracker.delay.max"

    invoke-virtual {p1, p2}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/batch/android/o/h;->c:I

    return-void

    :cond_0
    const-string p0, "listener==null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "context==null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic a(Lcom/batch/android/o/h;)I
    .locals 2

    .line 22
    iget v0, p0, Lcom/batch/android/o/h;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/batch/android/o/h;->a:I

    return v0
.end method

.method private a()V
    .locals 2

    iget v0, p0, Lcom/batch/android/o/h;->d:I

    iget v1, p0, Lcom/batch/android/o/h;->b:I

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/batch/android/o/h;->d:I

    return-void

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/batch/android/o/h;->d:I

    iget v1, p0, Lcom/batch/android/o/h;->c:I

    if-le v0, v1, :cond_1

    iput v1, p0, Lcom/batch/android/o/h;->d:I

    :cond_1
    return-void
.end method

.method public static synthetic b(Lcom/batch/android/o/h;)Lcom/batch/android/o/h$b;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/batch/android/o/h;->g:Lcom/batch/android/o/h$b;

    return-object p0
.end method


# virtual methods
.method public b()Z
    .locals 0

    iget-object p0, p0, Lcom/batch/android/o/h;->f:Ljava/util/TimerTask;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lcom/batch/android/o/h;->f:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_0
    invoke-direct {p0}, Lcom/batch/android/o/h;->a()V

    new-instance v0, Lcom/batch/android/o/h$a;

    invoke-direct {v0, p0}, Lcom/batch/android/o/h$a;-><init>(Lcom/batch/android/o/h;)V

    iput-object v0, p0, Lcom/batch/android/o/h;->f:Ljava/util/TimerTask;

    iget v1, p0, Lcom/batch/android/o/h;->a:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    const-string v0, "RetryTimer"

    const-string v1, "The event sender has reached the max retries threshold."

    invoke-static {v0, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/batch/android/o/h;->d()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/batch/android/o/h;->e:Ljava/util/Timer;

    iget p0, p0, Lcom/batch/android/o/h;->d:I

    int-to-long v2, p0

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/batch/android/o/h;->f:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batch/android/o/h;->f:Ljava/util/TimerTask;

    iget-object v0, p0, Lcom/batch/android/o/h;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/batch/android/o/h;->a:I

    iget v0, p0, Lcom/batch/android/o/h;->b:I

    iput v0, p0, Lcom/batch/android/o/h;->d:I

    return-void
.end method
