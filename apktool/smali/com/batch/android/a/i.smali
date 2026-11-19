.class Lcom/batch/android/a/i;
.super Lcom/batch/android/e/u;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/e/l0;


# static fields
.field private static final p:Ljava/lang/String; = "MetricWebservice"


# instance fields
.field private final o:Lcom/batch/android/n1/f;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Lcom/batch/android/n1/f;Lcom/batch/android/b1/e;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    sget-object v0, Lcom/batch/android/f/d;->i:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, p4}, Lcom/batch/android/e/u;-><init>(Landroid/content/Context;Lcom/batch/android/b1/d;Ljava/lang/String;[Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/batch/android/a/i;->o:Lcom/batch/android/n1/f;

    return-void

    :cond_0
    const-string p0, "Listener is null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public C()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.metrics.retry"

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    const-string p0, "Batch/metricsws"

    return-object p0
.end method

.method public run()V
    .locals 2

    const-string v0, "MetricWebservice"

    const-string v1, "Webservice started"

    invoke-static {v0, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/batch/android/e/o0;->k()[B

    iget-object v0, p0, Lcom/batch/android/a/i;->o:Lcom/batch/android/n1/f;

    invoke-interface {v0}, Lcom/batch/android/n1/f;->onSuccess()V
    :try_end_0
    .catch Lcom/batch/android/e/o0$d; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/batch/android/a/i;->o:Lcom/batch/android/n1/f;

    invoke-interface {p0, v0}, Lcom/batch/android/n1/f;->a(Lcom/batch/android/e/o0$d;)V

    return-void
.end method
