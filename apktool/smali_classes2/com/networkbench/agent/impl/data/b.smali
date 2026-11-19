.class public Lcom/networkbench/agent/impl/data/b;
.super Lcom/networkbench/agent/impl/socket/p;
.source "SourceFile"


# instance fields
.field private i:Ljava/lang/String;

.field private j:I

.field private k:D

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/socket/p;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/b;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/b;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/b;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/b;->q:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/b;->i:Ljava/lang/String;

    return-object p0
.end method

.method public a(D)V
    .locals 0

    .line 5
    iput-wide p1, p0, Lcom/networkbench/agent/impl/data/b;->k:D

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/networkbench/agent/impl/data/b;->j:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/b;->q:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 0

    .line 3
    iget p0, p0, Lcom/networkbench/agent/impl/data/b;->j:I

    return p0
.end method

.method public b(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/networkbench/agent/impl/data/b;->m:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/b;->i:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/b;->l:Ljava/lang/String;

    return-object p0
.end method

.method public c(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/networkbench/agent/impl/data/b;->n:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/networkbench/agent/impl/data/b;->l:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/data/b;->m:I

    return p0
.end method

.method public d(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/networkbench/agent/impl/data/b;->o:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/networkbench/agent/impl/data/b;->p:Ljava/lang/String;

    return-void
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/data/b;->n:I

    return p0
.end method

.method public f()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/data/b;->o:I

    return p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/b;->p:Ljava/lang/String;

    return-object p0
.end method

.method public h()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/networkbench/agent/impl/socket/p;->a:I

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/b;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/networkbench/agent/impl/data/b;->q:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/"

    invoke-static {v0, v1}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/data/b;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/networkbench/agent/impl/socket/p;->b:Ljava/lang/String;

    iget v0, p0, Lcom/networkbench/agent/impl/data/b;->j:I

    iput v0, p0, Lcom/networkbench/agent/impl/socket/p;->c:I

    iget v0, p0, Lcom/networkbench/agent/impl/data/b;->m:I

    iput v0, p0, Lcom/networkbench/agent/impl/socket/p;->d:I

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/b;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/socket/p;->e:Ljava/lang/String;

    return-void
.end method

.method public i()D
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/data/b;->k:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DnsEvent{host=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/data/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', dnsConsumeTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/data/b;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", beginTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/data/b;->k:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", destIpList=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/data/b;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', isHttp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/networkbench/agent/impl/socket/p;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", errorNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/data/b;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", retValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/data/b;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/data/b;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", desc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/b;->p:Ljava/lang/String;

    const-string v1, "\'}"

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
