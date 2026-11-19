.class Lcom/batch/android/a/g;
.super Lcom/batch/android/a/d;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/e/l0;


# static fields
.field private static final r:Ljava/lang/String; = "LocalCampaignsJITWebservice"


# instance fields
.field private final p:Lcom/batch/android/n1/d;

.field private final q:Lcom/batch/android/b1/c;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Lcom/batch/android/n1/d;Lcom/batch/android/b1/c;Lcom/batch/android/g1/c$c;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    sget-object v0, Lcom/batch/android/e/o0$c;->c:Lcom/batch/android/e/o0$c;

    sget-object v1, Lcom/batch/android/g1/c$c;->b:Lcom/batch/android/g1/c$c;

    if-ne p4, v1, :cond_0

    sget-object p4, Lcom/batch/android/f/d;->j:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p4, Lcom/batch/android/f/d;->k:Ljava/lang/String;

    :goto_0
    invoke-static {p5}, Lcom/batch/android/e/o0;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p5

    invoke-direct {p0, p1, v0, p4, p5}, Lcom/batch/android/a/d;-><init>(Landroid/content/Context;Lcom/batch/android/e/o0$c;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    iput-object p2, p0, Lcom/batch/android/a/g;->p:Lcom/batch/android/n1/d;

    iput-object p3, p0, Lcom/batch/android/a/g;->q:Lcom/batch/android/b1/c;

    return-void

    :cond_1
    const-string p0, "DataProvider is null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string p0, "Listener is null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.localcampaignsjit.connect.timeout"

    return-object p0
.end method

.method public B()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.localcampaignsjit.read.timeout"

    return-object p0
.end method

.method public C()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.localcampaignsjit.retry"

    return-object p0
.end method

.method public F()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.localcampaignsjit.pattern"

    return-object p0
.end method

.method public H()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.localcampaignsjit.property"

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    const-string p0, "Batch/localcampaignsjitws"

    return-object p0
.end method

.method public o()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.localcampaignsjit.getcryptor.mode"

    return-object p0
.end method

.method public p()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.localcampaignsjit.getcryptor.type"

    return-object p0
.end method

.method public run()V
    .locals 4

    const-string v0, "Webservice started"

    const-string v1, "LocalCampaignsJITWebservice"

    invoke-static {v1, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/batch/android/t0/b;->a:Lcom/batch/android/u0/c;

    invoke-virtual {v0}, Lcom/batch/android/u0/c;->n()V

    :try_start_0
    invoke-virtual {p0}, Lcom/batch/android/e/o0;->l()Lcom/batch/android/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0}, Lcom/batch/android/u0/c;->m()V

    sget-object v0, Lcom/batch/android/t0/b;->b:Lcom/batch/android/u0/a;

    const-string v3, "OK"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/batch/android/u0/b;->b([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/u0/a;

    invoke-virtual {v0}, Lcom/batch/android/u0/a;->l()V

    iget-object v0, p0, Lcom/batch/android/a/g;->q:Lcom/batch/android/b1/c;

    invoke-virtual {v0, v2}, Lcom/batch/android/b1/c;->a(Lcom/batch/android/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/batch/android/a/g;->p:Lcom/batch/android/n1/d;

    invoke-interface {v2, v0}, Lcom/batch/android/n1/d;->a(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/batch/android/e/o0$d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    const-string v2, "Error while parsing response"

    invoke-static {v1, v2, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/batch/android/a/g;->p:Lcom/batch/android/n1/d;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/batch/android/n1/d;->a(Lcom/batch/android/e/o0$d;)V

    goto :goto_2

    :goto_1
    sget-object v2, Lcom/batch/android/t0/b;->a:Lcom/batch/android/u0/c;

    invoke-virtual {v2}, Lcom/batch/android/u0/c;->m()V

    sget-object v2, Lcom/batch/android/t0/b;->b:Lcom/batch/android/u0/a;

    const-string v3, "KO"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/batch/android/u0/b;->b([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/batch/android/u0/a;

    invoke-virtual {v2}, Lcom/batch/android/u0/a;->l()V

    invoke-virtual {v0}, Lcom/batch/android/e/o0$d;->b()Lcom/batch/android/e/o0$d$a;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/batch/android/a/g;->p:Lcom/batch/android/n1/d;

    invoke-interface {p0, v0}, Lcom/batch/android/n1/d;->a(Lcom/batch/android/e/o0$d;)V

    :goto_2
    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.localcampaignsjit.postcryptor.type"

    return-object p0
.end method

.method public w()Lcom/batch/android/b1/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/batch/android/b1/g<",
            "Lcom/batch/android/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/batch/android/a/g;->q:Lcom/batch/android/b1/c;

    return-object p0
.end method

.method public y()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.localcampaignsjit.readcryptor.type"

    return-object p0
.end method
