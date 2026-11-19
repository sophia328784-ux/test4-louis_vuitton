.class Lcom/batch/android/t0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/n1/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/t0/a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batch/android/t0/a;


# direct methods
.method public constructor <init>(Lcom/batch/android/t0/a;)V
    .locals 0

    iput-object p1, p0, Lcom/batch/android/t0/a$a;->a:Lcom/batch/android/t0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/e/o0$d;)V
    .locals 4

    const-string v0, "MetricManager"

    const-string v1, "Fail sending metrics."

    invoke-static {v0, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/batch/android/e/o0$d;->c()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/batch/android/e/o0$d;->c()I

    move-result p1

    int-to-long v0, p1

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0xea60

    :goto_0
    iget-object p1, p0, Lcom/batch/android/t0/a$a;->a:Lcom/batch/android/t0/a;

    invoke-static {p1}, Lcom/batch/android/t0/a;->b(Lcom/batch/android/t0/a;)Lcom/batch/android/e/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/batch/android/e/e;->a()Lcom/batch/android/i/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/batch/android/i/a;->a()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {p1, v2, v3}, Lcom/batch/android/t0/a;->a(Lcom/batch/android/t0/a;J)J

    iget-object p0, p0, Lcom/batch/android/t0/a$a;->a:Lcom/batch/android/t0/a;

    invoke-static {p0}, Lcom/batch/android/t0/a;->a(Lcom/batch/android/t0/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    const-string v0, "MetricManager"

    const-string v1, "Metrics sent with success."

    invoke-static {v0, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/batch/android/t0/a$a;->a:Lcom/batch/android/t0/a;

    invoke-static {p0}, Lcom/batch/android/t0/a;->a(Lcom/batch/android/t0/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
