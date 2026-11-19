.class public Lcom/batch/android/a/h;
.super Lcom/batch/android/a/c;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/e/l0;


# static fields
.field private static final t:Ljava/lang/String; = "LocalCampaignsWebservice"


# instance fields
.field private s:Lcom/batch/android/n1/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/batch/android/n1/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    sget-object v0, Lcom/batch/android/e/o0$c;->c:Lcom/batch/android/e/o0$c;

    sget-object v1, Lcom/batch/android/f/d;->f:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/batch/android/a/c;-><init>(Landroid/content/Context;Lcom/batch/android/e/o0$c;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p2, p0, Lcom/batch/android/a/h;->s:Lcom/batch/android/n1/e;

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.localcampaigns.connect.timeout"

    return-object p0
.end method

.method public B()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.localcampaigns.read.timeout"

    return-object p0
.end method

.method public C()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.localcampaigns.retry"

    return-object p0
.end method

.method public F()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.localcampaigns.pattern"

    return-object p0
.end method

.method public H()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.localcampaigns.property"

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

    new-instance v1, Lcom/batch/android/f1/c;

    invoke-static {}, Lcom/batch/android/n/f;->a()Lcom/batch/android/s/a;

    move-result-object v2

    iget-object p0, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/batch/android/f1/c;-><init>(Lcom/batch/android/s/a;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    const-string p0, "Batch/localcampaignsws"

    return-object p0
.end method

.method public o()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.localcampaigns.getcryptor.mode"

    return-object p0
.end method

.method public p()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.localcampaigns.getcryptor.type"

    return-object p0
.end method

.method public run()V
    .locals 5

    const-string v0, "LocalCampaignsWebservice"

    const-string v1, "Error while getting local campaigns list : "

    :try_start_0
    const-string v2, "local campaigns webservice started"

    invoke-static {v0, v2}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/batch/android/t0/b;->c:Lcom/batch/android/u0/c;

    invoke-virtual {v2}, Lcom/batch/android/u0/c;->n()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lcom/batch/android/e/o0;->D()Lcom/batch/android/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2}, Lcom/batch/android/u0/c;->m()V
    :try_end_1
    .catch Lcom/batch/android/e/o0$d; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {p0, v3}, Lcom/batch/android/a/c;->c(Lcom/batch/android/json/JSONObject;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-class v2, Lcom/batch/android/g1/c;

    sget-object v3, Lcom/batch/android/f1/f;->g:Lcom/batch/android/f1/f;

    invoke-virtual {p0, v2, v3}, Lcom/batch/android/a/c;->a(Ljava/lang/Class;Lcom/batch/android/f1/f;)Lcom/batch/android/g1/e;

    move-result-object v2

    check-cast v2, Lcom/batch/android/g1/c;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/batch/android/g1/c;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Local campaigns response contains an error : "

    invoke-virtual {v2}, Lcom/batch/android/g1/c;->f()Lcom/batch/android/g1/c$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/batch/android/g1/c$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/batch/android/n/f;->a()Lcom/batch/android/s/a;

    move-result-object v2

    iget-object v3, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/batch/android/s/a;->b(Landroid/content/Context;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/batch/android/n/f;->a()Lcom/batch/android/s/a;

    move-result-object v3

    iget-object v4, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Lcom/batch/android/s/a;->c(Landroid/content/Context;Lcom/batch/android/g1/c;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v2, "Missing In-App Campaigns response"

    invoke-static {v0, v2}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v2, "local campaigns webservice ended"

    invoke-static {v0, v2}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/batch/android/a/h;->s:Lcom/batch/android/n1/e;

    invoke-interface {v2, v1}, Lcom/batch/android/n1/e;->a(Ljava/util/List;)V

    return-void

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

    sget-object v1, Lcom/batch/android/t0/b;->c:Lcom/batch/android/u0/c;

    invoke-virtual {v1}, Lcom/batch/android/u0/c;->m()V

    iget-object v1, p0, Lcom/batch/android/a/h;->s:Lcom/batch/android/n1/e;

    invoke-virtual {v2}, Lcom/batch/android/e/o0$d;->a()Lcom/batch/android/FailReason;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/batch/android/n1/e;->a(Lcom/batch/android/FailReason;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :goto_1
    const-string v2, "Error while reading LocalCampaigns response"

    invoke-static {v0, v2, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/batch/android/a/h;->s:Lcom/batch/android/n1/e;

    sget-object v0, Lcom/batch/android/FailReason;->UNEXPECTED_ERROR:Lcom/batch/android/FailReason;

    invoke-interface {p0, v0}, Lcom/batch/android/n1/e;->a(Lcom/batch/android/FailReason;)V

    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.localcampaigns.postcryptor.type"

    return-object p0
.end method

.method public y()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.localcampaigns.readcryptor.type"

    return-object p0
.end method
