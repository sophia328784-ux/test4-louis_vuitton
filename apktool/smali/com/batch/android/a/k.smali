.class Lcom/batch/android/a/k;
.super Lcom/batch/android/a/c;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/e/l0;


# static fields
.field private static final w:Ljava/lang/String; = "StartWebservice"


# instance fields
.field private s:Lcom/batch/android/n1/h;

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;ZLcom/batch/android/n1/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    sget-object v0, Lcom/batch/android/e/o0$c;->c:Lcom/batch/android/e/o0$c;

    sget-object v1, Lcom/batch/android/f/d;->a:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/batch/android/a/c;-><init>(Landroid/content/Context;Lcom/batch/android/e/o0$c;Ljava/lang/String;[Ljava/lang/String;)V

    if-eqz p5, :cond_0

    iput-object p5, p0, Lcom/batch/android/a/k;->s:Lcom/batch/android/n1/h;

    iput-boolean p2, p0, Lcom/batch/android/a/k;->t:Z

    iput-object p3, p0, Lcom/batch/android/a/k;->u:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/batch/android/a/k;->v:Z

    return-void

    :cond_0
    const-string p0, "Null listener"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.start.connect.timeout"

    return-object p0
.end method

.method public B()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.start.read.timeout"

    return-object p0
.end method

.method public C()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.start.retry"

    return-object p0
.end method

.method public F()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.start.pattern"

    return-object p0
.end method

.method public H()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.start.property"

    return-object p0
.end method

.method public I()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/batch/android/f1/e;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/batch/android/f1/g;

    iget-object v2, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/batch/android/a/k;->t:Z

    iget-object v4, p0, Lcom/batch/android/a/k;->u:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/batch/android/a/k;->v:Z

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/batch/android/f1/g;-><init>(Landroid/content/Context;ZLjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v1

    iget-object v2, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/batch/android/v0/j;->b(Landroid/content/Context;)Lcom/batch/android/BatchPushRegistration;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/batch/android/f1/d;

    iget-object p0, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    invoke-direct {v2, p0, v1}, Lcom/batch/android/f1/d;-><init>(Landroid/content/Context;Lcom/batch/android/BatchPushRegistration;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    const-string p0, "Batch/startws"

    return-object p0
.end method

.method public o()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.start.getcryptor.mode"

    return-object p0
.end method

.method public p()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.start.getcryptor.type"

    return-object p0
.end method

.method public run()V
    .locals 4

    const-string v0, "StartWebservice"

    const-string v1, "Error on StartWebservice : "

    :try_start_0
    const-string v2, "start webservice started"

    invoke-static {v0, v2}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lcom/batch/android/e/o0;->D()Lcom/batch/android/json/JSONObject;

    move-result-object v1
    :try_end_1
    .catch Lcom/batch/android/e/o0$d; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {p0, v1}, Lcom/batch/android/a/c;->c(Lcom/batch/android/json/JSONObject;)V

    const-class v1, Lcom/batch/android/g1/f;

    sget-object v2, Lcom/batch/android/f1/f;->b:Lcom/batch/android/f1/f;

    invoke-virtual {p0, v1, v2}, Lcom/batch/android/a/c;->a(Ljava/lang/Class;Lcom/batch/android/f1/f;)Lcom/batch/android/g1/e;

    move-result-object v1

    check-cast v1, Lcom/batch/android/g1/f;

    if-eqz v1, :cond_0

    const-string v1, "start webservice ended"

    invoke-static {v0, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/batch/android/a/k;->s:Lcom/batch/android/n1/h;

    invoke-interface {v1}, Lcom/batch/android/n1/h;->onSuccess()V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing start response"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v2

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

    iget-object v1, p0, Lcom/batch/android/a/k;->s:Lcom/batch/android/n1/h;

    invoke-virtual {v2}, Lcom/batch/android/e/o0$d;->a()Lcom/batch/android/FailReason;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/batch/android/n1/h;->a(Lcom/batch/android/FailReason;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :goto_0
    const-string v2, "Error while reading StartWebservice response"

    invoke-static {v0, v2, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/batch/android/a/k;->s:Lcom/batch/android/n1/h;

    sget-object v0, Lcom/batch/android/FailReason;->UNEXPECTED_ERROR:Lcom/batch/android/FailReason;

    invoke-interface {p0, v0}, Lcom/batch/android/n1/h;->a(Lcom/batch/android/FailReason;)V

    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.start.postcryptor.type"

    return-object p0
.end method

.method public y()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.start.readcryptor.type"

    return-object p0
.end method
