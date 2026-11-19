.class Lcom/batch/android/a/j;
.super Lcom/batch/android/a/c;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/e/l0;


# static fields
.field private static final u:Ljava/lang/String; = "PushWebservice"


# instance fields
.field private final s:Lcom/batch/android/BatchPushRegistration;

.field private final t:Lcom/batch/android/n1/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/batch/android/BatchPushRegistration;Lcom/batch/android/n1/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    sget-object v0, Lcom/batch/android/e/o0$c;->c:Lcom/batch/android/e/o0$c;

    sget-object v1, Lcom/batch/android/f/d;->c:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/batch/android/a/c;-><init>(Landroid/content/Context;Lcom/batch/android/e/o0$c;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/batch/android/a/j;->t:Lcom/batch/android/n1/g;

    iput-object p2, p0, Lcom/batch/android/a/j;->s:Lcom/batch/android/BatchPushRegistration;

    return-void

    :cond_0
    const-string p0, "listener==null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p0, "registration==null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.push.connect.timeout"

    return-object p0
.end method

.method public B()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.push.read.timeout"

    return-object p0
.end method

.method public C()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.push.retry"

    return-object p0
.end method

.method public F()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.push.pattern"

    return-object p0
.end method

.method public H()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.push.property"

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

    new-instance v1, Lcom/batch/android/f1/d;

    iget-object v2, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    iget-object p0, p0, Lcom/batch/android/a/j;->s:Lcom/batch/android/BatchPushRegistration;

    invoke-direct {v1, v2, p0}, Lcom/batch/android/f1/d;-><init>(Landroid/content/Context;Lcom/batch/android/BatchPushRegistration;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    const-string p0, "Batch/pushws"

    return-object p0
.end method

.method public o()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.push.getcryptor.mode"

    return-object p0
.end method

.method public p()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.push.getcryptor.type"

    return-object p0
.end method

.method public run()V
    .locals 4

    const-string v0, "PushWebservice"

    const-string v1, "Error on PushWebservice : "

    :try_start_0
    const-string v2, "push webservice started"

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

    const-class v1, Lcom/batch/android/g1/d;

    sget-object v2, Lcom/batch/android/f1/f;->d:Lcom/batch/android/f1/f;

    invoke-virtual {p0, v1, v2}, Lcom/batch/android/a/c;->a(Ljava/lang/Class;Lcom/batch/android/f1/f;)Lcom/batch/android/g1/e;

    move-result-object v1

    check-cast v1, Lcom/batch/android/g1/d;

    if-eqz v1, :cond_0

    const-string v1, "push webservice ended"

    invoke-static {v0, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/batch/android/a/j;->t:Lcom/batch/android/n1/g;

    invoke-interface {v1}, Lcom/batch/android/n1/g;->onSuccess()V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing push response"

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

    iget-object v1, p0, Lcom/batch/android/a/j;->t:Lcom/batch/android/n1/g;

    invoke-virtual {v2}, Lcom/batch/android/e/o0$d;->a()Lcom/batch/android/FailReason;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/batch/android/n1/g;->a(Lcom/batch/android/FailReason;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :goto_0
    const-string v2, "Error while reading PushWebservice response"

    invoke-static {v0, v2, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/batch/android/a/j;->t:Lcom/batch/android/n1/g;

    sget-object v0, Lcom/batch/android/FailReason;->UNEXPECTED_ERROR:Lcom/batch/android/FailReason;

    invoke-interface {p0, v0}, Lcom/batch/android/n1/g;->a(Lcom/batch/android/FailReason;)V

    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.push.postcryptor.type"

    return-object p0
.end method

.method public y()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.push.readcryptor.type"

    return-object p0
.end method
