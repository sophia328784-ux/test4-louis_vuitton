.class public Lcom/networkbench/agent/impl/data/l;
.super Lcom/networkbench/agent/impl/socket/p;
.source "SourceFile"


# instance fields
.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:I

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/socket/p;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/l;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/l;->i:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/networkbench/agent/impl/data/l;->k:I

    iput v0, p0, Lcom/networkbench/agent/impl/data/l;->l:I

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/socket/p;->f:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/data/l;->n:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/socket/p;->g:Z

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/networkbench/agent/impl/data/l;->m:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/networkbench/agent/impl/data/l;->i:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/data/l;->n:Z

    return-void
.end method

.method public a()Z
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/data/l;->n:Z

    return p0
.end method

.method public b(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/networkbench/agent/impl/data/l;->k:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/networkbench/agent/impl/data/l;->j:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/socket/p;->f:Z

    return-void
.end method

.method public b()Z
    .locals 0

    .line 3
    iget-boolean p0, p0, Lcom/networkbench/agent/impl/socket/p;->f:Z

    return p0
.end method

.method public c(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/networkbench/agent/impl/data/l;->l:I

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/socket/p;->g:Z

    return-void
.end method

.method public c()Z
    .locals 0

    .line 3
    iget-boolean p0, p0, Lcom/networkbench/agent/impl/socket/p;->g:Z

    return p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/l;->i:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/l;->j:Ljava/lang/String;

    return-object p0
.end method

.method public f()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/data/l;->k:I

    return p0
.end method

.method public g()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/data/l;->l:I

    return p0
.end method

.method public h()V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/networkbench/agent/impl/socket/p;->a:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/data/l;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/data/l;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/socket/p;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/l;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/data/l;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/socket/p;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/socket/p;->b:Ljava/lang/String;

    :cond_0
    iget v0, p0, Lcom/networkbench/agent/impl/data/l;->l:I

    iput v0, p0, Lcom/networkbench/agent/impl/socket/p;->c:I

    iget v0, p0, Lcom/networkbench/agent/impl/data/l;->m:I

    iput v0, p0, Lcom/networkbench/agent/impl/socket/p;->d:I

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/socket/p;->e:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hostname :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/data/l;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  hostAddress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/data/l;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   port:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/data/l;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "   connectPeriod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/networkbench/agent/impl/data/l;->l:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
