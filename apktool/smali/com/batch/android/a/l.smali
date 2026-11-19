.class final Lcom/batch/android/a/l;
.super Lcom/batch/android/a/c;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/e/l0;


# static fields
.field private static final v:Ljava/lang/String; = "TrackerWebservice"


# instance fields
.field private s:Lcom/batch/android/n1/i;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/batch/android/o/b;",
            ">;"
        }
    .end annotation
.end field

.field private u:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/batch/android/n1/i;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/batch/android/n1/i;",
            "Ljava/util/List<",
            "Lcom/batch/android/o/b;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    sget-object v0, Lcom/batch/android/e/o0$c;->c:Lcom/batch/android/e/o0$c;

    sget-object v1, Lcom/batch/android/f/d;->b:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/batch/android/a/c;-><init>(Landroid/content/Context;Lcom/batch/android/e/o0$c;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/batch/android/a/l;->s:Lcom/batch/android/n1/i;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/batch/android/a/l;->t:Ljava/util/List;

    iput-boolean p4, p0, Lcom/batch/android/a/l;->u:Z

    return-void

    :cond_0
    const-string p0, "events is empty"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p0, "listener==null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.tracker.connect.timeout"

    return-object p0
.end method

.method public B()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.tracker.read.timeout"

    return-object p0
.end method

.method public C()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.tracker.retry"

    return-object p0
.end method

.method public F()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.tracker.pattern"

    return-object p0
.end method

.method public H()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.tracker.property"

    return-object p0
.end method

.method public I()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/batch/android/f1/e;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lcom/batch/android/f1/h;

    iget-object v2, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    iget-object p0, p0, Lcom/batch/android/a/l;->t:Ljava/util/List;

    invoke-direct {v1, v2, p0}, Lcom/batch/android/f1/h;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    const-string p0, "Batch/trackerws"

    return-object p0
.end method

.method public i()Z
    .locals 0

    iget-boolean p0, p0, Lcom/batch/android/a/l;->u:Z

    return p0
.end method

.method public o()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.tracker.getcryptor.mode"

    return-object p0
.end method

.method public p()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.tracker.getcryptor.type"

    return-object p0
.end method

.method public run()V
    .locals 4

    const-string v0, "TrackerWebservice"

    const-string v1, "Error on TrackerWebservice : "

    :try_start_0
    const-string v2, "tracker webservice started"

    invoke-static {v0, v2}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/batch/android/e/o0;->D()Lcom/batch/android/json/JSONObject;

    move-result-object v1
    :try_end_1
    .catch Lcom/batch/android/e/o0$d; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0, v1}, Lcom/batch/android/a/c;->c(Lcom/batch/android/json/JSONObject;)V

    const-string v1, "tracker webservice ended"

    invoke-static {v0, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/batch/android/a/l;->s:Lcom/batch/android/n1/i;

    iget-object v2, p0, Lcom/batch/android/a/l;->t:Ljava/util/List;

    invoke-interface {v1, v2}, Lcom/batch/android/n1/i;->a(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/batch/android/a/l;->s:Lcom/batch/android/n1/i;

    invoke-interface {p0}, Lcom/batch/android/n1/i;->a()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/batch/android/e/o0$d;->b()Lcom/batch/android/e/o0$d$a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/batch/android/a/l;->s:Lcom/batch/android/n1/i;

    invoke-virtual {v2}, Lcom/batch/android/e/o0$d;->a()Lcom/batch/android/FailReason;

    move-result-object v2

    iget-object v3, p0, Lcom/batch/android/a/l;->t:Ljava/util/List;

    invoke-interface {v1, v2, v3}, Lcom/batch/android/n1/i;->a(Lcom/batch/android/FailReason;Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p0, p0, Lcom/batch/android/a/l;->s:Lcom/batch/android/n1/i;

    invoke-interface {p0}, Lcom/batch/android/n1/i;->a()V

    return-void

    :goto_0
    :try_start_4
    const-string v2, "Error while reading TrackerWebservice response"

    invoke-static {v0, v2, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/batch/android/a/l;->s:Lcom/batch/android/n1/i;

    sget-object v1, Lcom/batch/android/FailReason;->UNEXPECTED_ERROR:Lcom/batch/android/FailReason;

    iget-object v2, p0, Lcom/batch/android/a/l;->t:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/batch/android/n1/i;->a(Lcom/batch/android/FailReason;Ljava/util/List;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object p0, p0, Lcom/batch/android/a/l;->s:Lcom/batch/android/n1/i;

    invoke-interface {p0}, Lcom/batch/android/n1/i;->a()V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/batch/android/a/l;->s:Lcom/batch/android/n1/i;

    invoke-interface {p0}, Lcom/batch/android/n1/i;->a()V

    throw v0
.end method

.method public v()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.tracker.postcryptor.type"

    return-object p0
.end method

.method public y()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.tracker.readcryptor.type"

    return-object p0
.end method
