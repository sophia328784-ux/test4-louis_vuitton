.class Lcom/batch/android/a/b;
.super Lcom/batch/android/a/c;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/e/l0;


# static fields
.field private static final w:Ljava/lang/String; = "AttributesSendWebservice"


# instance fields
.field private s:J

.field private t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private v:Lcom/batch/android/n1/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/util/Map;Ljava/util/Map;Lcom/batch/android/n1/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/batch/android/n1/b;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    sget-object v0, Lcom/batch/android/e/o0$c;->c:Lcom/batch/android/e/o0$c;

    sget-object v1, Lcom/batch/android/f/d;->d:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/batch/android/a/c;-><init>(Landroid/content/Context;Lcom/batch/android/e/o0$c;Ljava/lang/String;[Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    const/4 v0, 0x0

    if-lez p1, :cond_3

    if-eqz p4, :cond_2

    if-eqz p5, :cond_1

    if-eqz p6, :cond_0

    iput-object p6, p0, Lcom/batch/android/a/b;->v:Lcom/batch/android/n1/b;

    iput-wide p2, p0, Lcom/batch/android/a/b;->s:J

    iput-object p4, p0, Lcom/batch/android/a/b;->t:Ljava/util/Map;

    iput-object p5, p0, Lcom/batch/android/a/b;->u:Ljava/util/Map;

    return-void

    :cond_0
    const-string p0, "listener==null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "tags==null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string p0, "attributes==null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string p0, "version <= 0"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.attrsend.connect.timeout"

    return-object p0
.end method

.method public B()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.attrsend.read.timeout"

    return-object p0
.end method

.method public C()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.attrsend.retry"

    return-object p0
.end method

.method public F()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.attrsend.pattern"

    return-object p0
.end method

.method public H()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.attrsend.property"

    return-object p0
.end method

.method public I()Ljava/util/List;
    .locals 8
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

    new-instance v2, Lcom/batch/android/f1/b;

    iget-object v3, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    iget-wide v4, p0, Lcom/batch/android/a/b;->s:J

    iget-object v6, p0, Lcom/batch/android/a/b;->t:Ljava/util/Map;

    iget-object v7, p0, Lcom/batch/android/a/b;->u:Ljava/util/Map;

    invoke-direct/range {v2 .. v7}, Lcom/batch/android/f1/b;-><init>(Landroid/content/Context;JLjava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    const-string p0, "Batch/attrsendws"

    return-object p0
.end method

.method public o()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.attrsend.getcryptor.mode"

    return-object p0
.end method

.method public p()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.attrsend.getcryptor.type"

    return-object p0
.end method

.method public run()V
    .locals 4

    const-string v0, "AttributesSendWebservice"

    :try_start_0
    const-string v1, "Attributes send webservice started"

    invoke-static {v0, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V
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

    const-class v1, Lcom/batch/android/g1/b;

    sget-object v2, Lcom/batch/android/f1/f;->e:Lcom/batch/android/f1/f;

    invoke-virtual {p0, v1, v2}, Lcom/batch/android/a/c;->a(Ljava/lang/Class;Lcom/batch/android/f1/f;)Lcom/batch/android/g1/e;

    move-result-object v1

    check-cast v1, Lcom/batch/android/g1/b;

    if-eqz v1, :cond_0

    const-string v2, "Attributes send webservice ended"

    invoke-static {v0, v2}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/batch/android/a/b;->v:Lcom/batch/android/n1/b;

    invoke-interface {v2, v1}, Lcom/batch/android/n1/b;->a(Lcom/batch/android/g1/b;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing attributes send response"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lcom/batch/android/e/o0$d;->b()Lcom/batch/android/e/o0$d$a;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/batch/android/a/b;->v:Lcom/batch/android/n1/b;

    invoke-virtual {v1}, Lcom/batch/android/e/o0$d;->a()Lcom/batch/android/FailReason;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/batch/android/n1/b;->a(Lcom/batch/android/FailReason;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :goto_0
    const-string v2, "Error while reading response"

    invoke-static {v0, v2, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/batch/android/a/b;->v:Lcom/batch/android/n1/b;

    sget-object v0, Lcom/batch/android/FailReason;->UNEXPECTED_ERROR:Lcom/batch/android/FailReason;

    invoke-interface {p0, v0}, Lcom/batch/android/n1/b;->a(Lcom/batch/android/FailReason;)V

    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.attrsend.postcryptor.type"

    return-object p0
.end method

.method public y()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.attrsend.readcryptor.type"

    return-object p0
.end method
