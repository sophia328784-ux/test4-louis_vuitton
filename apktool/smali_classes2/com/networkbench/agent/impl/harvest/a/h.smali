.class public abstract Lcom/networkbench/agent/impl/harvest/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field protected final d:Lcom/networkbench/agent/impl/c/e;

.field protected e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/a/h;->d:Lcom/networkbench/agent/impl/c/e;

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/h;->e:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/networkbench/agent/impl/harvest/a/h;->a:Z

    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "04"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/d/c;)Lcom/networkbench/agent/impl/harvest/d/c;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/a/h;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", responseBody:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/j;->b(Ljava/lang/String;)V

    return-object p2
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/a/h;->e:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/a/h;->e:Ljava/lang/String;

    .line 59
    invoke-static {p0, p1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/networkbench/agent/impl/harvest/a/h;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "https://"

    goto :goto_0

    :cond_1
    const-string v1, "http://"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/a/h;->e:Ljava/lang/String;

    .line 61
    invoke-static {p0, p1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 3

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    iget-boolean v0, v0, Lcom/networkbench/agent/impl/util/r;->B:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/a/h;->d:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SM4_SECRET_VALUE:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/networkbench/agent/impl/harvest/a/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/networkbench/agent/impl/harvest/a/e;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/networkbench/agent/impl/harvest/a/e;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/harvest/a/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/a/h;->d:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "format secret value:"

    invoke-static {v1, v0, p0}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    const-string p0, "SymmetryKey"

    invoke-virtual {p1, p0, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public a(J)V
    .locals 0

    .line 56
    return-void
.end method

.method public b()Lcom/networkbench/agent/impl/harvest/d/c;
    .locals 0

    new-instance p0, Lcom/networkbench/agent/impl/harvest/d/b;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/d/b;-><init>()V

    return-object p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/h;->b:Ljava/lang/String;

    return-void
.end method

.method public abstract b(Ljava/net/HttpURLConnection;)V
.end method

.method public c()Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/a/h;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/net/HttpURLConnection;)V
    .locals 0

    .line 15
    return-void
.end method
