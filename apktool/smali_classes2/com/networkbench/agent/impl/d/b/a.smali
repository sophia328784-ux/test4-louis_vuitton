.class public Lcom/networkbench/agent/impl/d/b/a;
.super Lcom/networkbench/agent/impl/d/b;
.source "SourceFile"


# instance fields
.field public c:J

.field public d:Ljava/lang/String;

.field private e:Lcom/networkbench/agent/impl/a/a/b;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/a/a/b;)V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/d/f;->a:Lcom/networkbench/agent/impl/d/f;

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/d/b;-><init>(Lcom/networkbench/agent/impl/d/f;)V

    iput-object p1, p0, Lcom/networkbench/agent/impl/d/b/a;->e:Lcom/networkbench/agent/impl/a/a/b;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/a/a/b;->B()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/d/b;->a(J)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/a/a/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/d/b/a;->a(Ljava/lang/String;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/networkbench/agent/impl/d/b/a;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/networkbench/agent/impl/d/b/a;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/networkbench/agent/impl/d/b/a;->e:Lcom/networkbench/agent/impl/a/a/b;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/a/a/b;->g(I)V

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/a/a/b;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/networkbench/agent/impl/d/b/a;->e:Lcom/networkbench/agent/impl/a/a/b;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/d/b/a;->e:Lcom/networkbench/agent/impl/a/a/b;

    iget-object v1, v1, Lcom/networkbench/agent/impl/a/a/b;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/networkbench/agent/impl/d/b/a;->e:Lcom/networkbench/agent/impl/a/a/b;

    iget-object v1, v1, Lcom/networkbench/agent/impl/a/a/b;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    iget-object v1, v1, Lcom/networkbench/agent/impl/util/r;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/networkbench/agent/impl/d/b/a;->e:Lcom/networkbench/agent/impl/a/a/b;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/a/a/b;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 49
    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/d/b/a;->f:Ljava/lang/String;

    if-nez p2, :cond_1

    move-object p2, v0

    .line 50
    :cond_1
    iput-object p2, p0, Lcom/networkbench/agent/impl/d/b/a;->g:Ljava/lang/String;

    return-void
.end method

.method public c()Lcom/networkbench/agent/impl/a/a/b;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/d/b/a;->e:Lcom/networkbench/agent/impl/a/a/b;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/d/b/a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/d/b/a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/d/b/a;->e:Lcom/networkbench/agent/impl/a/a/b;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/a/a/b;->r()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/d/b/a;->e:Lcom/networkbench/agent/impl/a/a/b;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "?"

    invoke-static {v0, v1}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/networkbench/agent/impl/d/b/a;->e:Lcom/networkbench/agent/impl/a/a/b;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/a/a/b;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v1, 0x400

    if-le p0, v1, :cond_1

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const-string p0, ""

    return-object p0

    :cond_2
    return-object v0
.end method

.method public g()I
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/d/b/a;->e:Lcom/networkbench/agent/impl/a/a/b;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/a/a/b;->s()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HttpActionMeasurement{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/d/b/a;->e:Lcom/networkbench/agent/impl/a/a/b;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/a/a/b;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
