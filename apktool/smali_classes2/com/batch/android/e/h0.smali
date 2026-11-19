.class public Lcom/batch/android/e/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/e/e;


# instance fields
.field private final a:Z

.field private b:Ljava/util/Date;

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/batch/android/e/h0;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/batch/android/e/h0;->a:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/batch/android/i/a;
    .locals 3

    .line 14
    new-instance v0, Lcom/batch/android/i/c;

    invoke-virtual {p0}, Lcom/batch/android/e/h0;->c()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/batch/android/i/c;-><init>(J)V

    return-object v0
.end method

.method public a(Ljava/util/Date;)V
    .locals 2

    iget-boolean v0, p0, Lcom/batch/android/e/h0;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/batch/android/e/h0;->c:J

    iput-object p1, p0, Lcom/batch/android/e/h0;->b:Ljava/util/Date;

    return-void
.end method

.method public b()Z
    .locals 1

    sget-object p0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v0, "samsung"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public c()Ljava/util/Date;
    .locals 7

    iget-object v0, p0, Lcom/batch/android/e/h0;->b:Ljava/util/Date;

    iget-boolean v1, p0, Lcom/batch/android/e/h0;->a:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/batch/android/e/h0;->c:J

    sub-long/2addr v3, v5

    add-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/util/Date;->setTime(J)V

    return-object v0

    :cond_1
    :goto_0
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    return-object p0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/batch/android/e/h0;->a:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/e/h0;->b:Ljava/util/Date;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
